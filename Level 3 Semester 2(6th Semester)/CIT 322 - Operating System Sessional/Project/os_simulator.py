#!/usr/bin/env python3
"""
OS Concepts Simulator
======================
A single-window Tkinter application that brings together the core topics of
an Operating Systems course as separate, individually-working tabs:

  1. CPU Scheduling   -> FCFS, SJF (non-preemptive), Round Robin, Priority, Multilevel Queue
  2. Process & Thread  -> simple process/thread state visualizer
  3. Synchronization   -> Producer-Consumer using a real Python thread + semaphores
  4. Deadlock          -> Banker's Algorithm (safety check + resource request test)
  5. Memory Management -> Contiguous allocation (First/Best/Worst Fit) + Paging

Run with:  python3 os_simulator.py
Tested on Manjaro Linux with the system Python (3.10+) and Tk installed.
"""

import tkinter as tk
from tkinter import ttk, messagebox
import threading
import time
import random

import matplotlib
matplotlib.use("TkAgg")
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

COLORS = ["#4C72B0", "#DD8452", "#55A868", "#C44E52", "#8172B2",
          "#937860", "#DA8BC3", "#8C8C8C", "#CCB974", "#64B5CD"]


# ======================================================================
# TAB 1 : CPU SCHEDULING
# ======================================================================
class SchedulingTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)
        self.rows = []  # entry widgets per process row
        self._build_ui()

    def _build_ui(self):
        top = ttk.Frame(self)
        top.pack(fill="x", padx=10, pady=10)

        ttk.Label(top, text="Algorithm:").grid(row=0, column=0, sticky="w")
        self.algo = tk.StringVar(value="FCFS")
        algo_box = ttk.Combobox(top, textvariable=self.algo, state="readonly",
                                 values=["FCFS", "SJF (Non-Preemptive)", "Round Robin",
                                         "Priority (Non-Preemptive)", "Multilevel Queue"])
        algo_box.grid(row=0, column=1, padx=5)
        algo_box.bind("<<ComboboxSelected>>", lambda e: self._toggle_fields())

        ttk.Label(top, text="Time Quantum (RR):").grid(row=0, column=2, sticky="w", padx=(15, 0))
        self.quantum = tk.IntVar(value=2)
        ttk.Entry(top, textvariable=self.quantum, width=5).grid(row=0, column=3)

        ttk.Label(top, text="# Processes:").grid(row=0, column=4, sticky="w", padx=(15, 0))
        self.n_proc = tk.IntVar(value=4)
        ttk.Entry(top, textvariable=self.n_proc, width=5).grid(row=0, column=5)
        ttk.Button(top, text="Generate Table", command=self._make_table).grid(row=0, column=6, padx=10)

        self.table_frame = ttk.Frame(self)
        self.table_frame.pack(fill="x", padx=10)

        ttk.Button(self, text="Run Scheduler", command=self.run).pack(pady=8)

        # Output area: text + chart
        out = ttk.Frame(self)
        out.pack(fill="both", expand=True, padx=10, pady=5)

        self.result_text = tk.Text(out, height=8, width=45)
        self.result_text.pack(side="left", fill="y")

        self.fig = Figure(figsize=(6, 3), dpi=90)
        self.ax = self.fig.add_subplot(111)
        self.canvas = FigureCanvasTkAgg(self.fig, master=out)
        self.canvas.get_tk_widget().pack(side="right", fill="both", expand=True)

        self._make_table()

    def _toggle_fields(self):
        self._make_table()

    def _make_table(self):
        for w in self.table_frame.winfo_children():
            w.destroy()
        self.rows = []

        algo = self.algo.get()
        headers = ["PID", "Arrival", "Burst"]
        if algo.startswith("Priority") or algo == "Multilevel Queue":
            headers.append("Priority")
        if algo == "Multilevel Queue":
            headers.append("Queue(0=System,1=User)")

        for c, h in enumerate(headers):
            ttk.Label(self.table_frame, text=h, font=("Arial", 9, "bold")).grid(row=0, column=c, padx=4, pady=4)

        n = max(1, self.n_proc.get())
        for r in range(1, n + 1):
            entries = {}
            entries["pid"] = ttk.Label(self.table_frame, text=f"P{r}")
            entries["pid"].grid(row=r, column=0)

            e_arr = ttk.Entry(self.table_frame, width=6)
            e_arr.insert(0, str(random.randint(0, 5)))
            e_arr.grid(row=r, column=1)

            e_burst = ttk.Entry(self.table_frame, width=6)
            e_burst.insert(0, str(random.randint(1, 9)))
            e_burst.grid(row=r, column=2)

            row = {"arrival": e_arr, "burst": e_burst}

            col = 3
            if algo.startswith("Priority") or algo == "Multilevel Queue":
                e_prio = ttk.Entry(self.table_frame, width=6)
                e_prio.insert(0, str(random.randint(1, 5)))
                e_prio.grid(row=r, column=col)
                row["priority"] = e_prio
                col += 1
            if algo == "Multilevel Queue":
                e_q = ttk.Entry(self.table_frame, width=6)
                e_q.insert(0, str(random.randint(0, 1)))
                e_q.grid(row=r, column=col)
                row["queue"] = e_q

            self.rows.append(row)

    def _read_processes(self):
        procs = []
        for i, row in enumerate(self.rows):
            p = {
                "pid": f"P{i+1}",
                "arrival": int(row["arrival"].get()),
                "burst": int(row["burst"].get()),
                "remaining": int(row["burst"].get()),
            }
            if "priority" in row:
                p["priority"] = int(row["priority"].get())
            if "queue" in row:
                p["queue"] = int(row["queue"].get())
            procs.append(p)
        return procs

    def run(self):
        try:
            procs = self._read_processes()
        except ValueError:
            messagebox.showerror("Input error", "All fields must be integers.")
            return

        algo = self.algo.get()
        if algo == "FCFS":
            timeline = self._fcfs(procs)
        elif algo == "SJF (Non-Preemptive)":
            timeline = self._sjf(procs)
        elif algo == "Round Robin":
            timeline = self._round_robin(procs, self.quantum.get())
        elif algo == "Priority (Non-Preemptive)":
            timeline = self._priority(procs)
        else:
            timeline = self._mlq(procs, self.quantum.get())

        self._draw_gantt(timeline)
        self._show_metrics(timeline, procs)

    # ---- algorithms (each returns a list of (pid, start, end)) ----
    def _fcfs(self, procs):
        procs = sorted(procs, key=lambda p: p["arrival"])
        t = 0
        timeline = []
        for p in procs:
            t = max(t, p["arrival"])
            timeline.append((p["pid"], t, t + p["burst"]))
            p["completion"] = t + p["burst"]
            t += p["burst"]
        return timeline

    def _sjf(self, procs):
        remaining = procs[:]
        t = 0
        timeline = []
        completed = []
        while remaining:
            ready = [p for p in remaining if p["arrival"] <= t]
            if not ready:
                t = min(p["arrival"] for p in remaining)
                continue
            p = min(ready, key=lambda x: x["burst"])
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
            p["completion"] = t
            completed.append(p)
            remaining.remove(p)
        return timeline

    def _priority(self, procs):
        remaining = procs[:]
        t = 0
        timeline = []
        while remaining:
            ready = [p for p in remaining if p["arrival"] <= t]
            if not ready:
                t = min(p["arrival"] for p in remaining)
                continue
            p = min(ready, key=lambda x: x["priority"])  # lower number = higher priority
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
            p["completion"] = t
            remaining.remove(p)
        return timeline

    def _round_robin(self, procs, quantum):
        from collections import deque
        procs = sorted(procs, key=lambda p: p["arrival"])
        queue = deque()
        t = 0
        timeline = []
        i = 0
        n = len(procs)
        while i < n and procs[i]["arrival"] <= t:
            queue.append(procs[i]); i += 1
        if not queue and n:
            t = procs[0]["arrival"]
            queue.append(procs[0]); i = 1

        while queue:
            p = queue.popleft()
            run_time = min(quantum, p["remaining"])
            timeline.append((p["pid"], t, t + run_time))
            t += run_time
            p["remaining"] -= run_time

            while i < n and procs[i]["arrival"] <= t:
                queue.append(procs[i]); i += 1

            if p["remaining"] > 0:
                queue.append(p)
            else:
                p["completion"] = t

            if not queue and i < n:
                t = procs[i]["arrival"]
                queue.append(procs[i]); i += 1
        return timeline

    def _mlq(self, procs, quantum):
        """Queue 0 = System (FCFS, higher priority), Queue 1 = User (Round Robin)."""
        sys_q = sorted([p for p in procs if p.get("queue", 0) == 0], key=lambda p: p["arrival"])
        user_q = sorted([p for p in procs if p.get("queue", 0) == 1], key=lambda p: p["arrival"])

        timeline = []
        t = 0
        # Run all system-queue processes first (FCFS), then user queue (RR)
        for p in sys_q:
            t = max(t, p["arrival"])
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
            p["completion"] = t

        from collections import deque
        queue = deque()
        i = 0
        n = len(user_q)
        while i < n and user_q[i]["arrival"] <= t:
            queue.append(user_q[i]); i += 1
        if not queue and n:
            t = max(t, user_q[0]["arrival"])
            queue.append(user_q[0]); i = 1
        while queue:
            p = queue.popleft()
            run_time = min(quantum, p["remaining"])
            timeline.append((p["pid"], t, t + run_time))
            t += run_time
            p["remaining"] -= run_time
            while i < n and user_q[i]["arrival"] <= t:
                queue.append(user_q[i]); i += 1
            if p["remaining"] > 0:
                queue.append(p)
            else:
                p["completion"] = t
            if not queue and i < n:
                t = max(t, user_q[i]["arrival"])
                queue.append(user_q[i]); i += 1
        return timeline

    # ---- drawing & metrics ----
    def _draw_gantt(self, timeline):
        self.ax.clear()
        pid_color = {}
        for idx, (pid, start, end) in enumerate(timeline):
            if pid not in pid_color:
                pid_color[pid] = COLORS[len(pid_color) % len(COLORS)]
            self.ax.barh(0, end - start, left=start, color=pid_color[pid], edgecolor="black")
            self.ax.text((start + end) / 2, 0, pid, ha="center", va="center", color="white", fontsize=9)
        self.ax.set_yticks([])
        self.ax.set_xlabel("Time")
        self.ax.set_title("Gantt Chart")
        self.canvas.draw()

    def _show_metrics(self, timeline, procs):
        self.result_text.delete("1.0", tk.END)
        # completion = last end time per pid
        completion = {}
        for pid, start, end in timeline:
            completion[pid] = end

        total_wt, total_tat = 0, 0
        self.result_text.insert(tk.END, "PID  AT  BT  CT  TAT  WT\n")
        for p in procs:
            ct = completion.get(p["pid"], 0)
            tat = ct - p["arrival"]
            wt = tat - p["burst"]
            total_wt += wt
            total_tat += tat
            self.result_text.insert(
                tk.END, f"{p['pid']:<4} {p['arrival']:<3} {p['burst']:<3} {ct:<3} {tat:<4} {wt:<3}\n")
        n = len(procs)
        self.result_text.insert(tk.END, f"\nAvg Waiting Time: {total_wt/n:.2f}\n")
        self.result_text.insert(tk.END, f"Avg Turnaround Time: {total_tat/n:.2f}\n")


# ======================================================================
# TAB 2 : PROCESS & THREAD STATE VISUALIZER
# ======================================================================
class ProcessThreadTab(ttk.Frame):
    STATES = ["New", "Ready", "Running", "Waiting", "Terminated"]

    def __init__(self, parent):
        super().__init__(parent)
        self.state_idx = 0
        self._build_ui()

    def _build_ui(self):
        info = ("Process states: New -> Ready -> Running -> (Waiting <-> Ready) -> Terminated\n"
                "A thread shares the process's address space but has its own stack, "
                "registers and program counter. Use the buttons to step a sample "
                "process through its lifecycle.")
        ttk.Label(self, text=info, wraplength=700, justify="left").pack(padx=10, pady=10, anchor="w")

        self.fig = Figure(figsize=(7, 2.2), dpi=90)
        self.ax = self.fig.add_subplot(111)
        self.canvas = FigureCanvasTkAgg(self.fig, master=self)
        self.canvas.get_tk_widget().pack(fill="x", padx=10)

        btns = ttk.Frame(self)
        btns.pack(pady=10)
        ttk.Button(btns, text="<< Previous State", command=self.prev_state).pack(side="left", padx=5)
        ttk.Button(btns, text="Next State >>", command=self.next_state).pack(side="left", padx=5)
        ttk.Button(btns, text="Move to Waiting (I/O)", command=self.to_waiting).pack(side="left", padx=5)

        self._draw()

    def _draw(self):
        self.ax.clear()
        n = len(self.STATES)
        for i, s in enumerate(self.STATES):
            color = COLORS[0] if i == self.state_idx else "#DDDDDD"
            self.ax.add_patch(matplotlib.patches.FancyBboxPatch(
                (i * 1.5, 0), 1.2, 0.8, boxstyle="round,pad=0.05",
                fc=color, ec="black"))
            self.ax.text(i * 1.5 + 0.6, 0.4, s, ha="center", va="center",
                         color="white" if i == self.state_idx else "black", fontsize=9)
            if i < n - 1:
                self.ax.annotate("", xy=(i * 1.5 + 1.3, 0.4), xytext=(i * 1.5 + 1.2, 0.4),
                                  arrowprops=dict(arrowstyle="->"))
        self.ax.set_xlim(-0.3, n * 1.5)
        self.ax.set_ylim(-0.3, 1.1)
        self.ax.axis("off")
        self.canvas.draw()

    def next_state(self):
        if self.state_idx < len(self.STATES) - 1:
            self.state_idx += 1
        self._draw()

    def prev_state(self):
        if self.state_idx > 0:
            self.state_idx -= 1
        self._draw()

    def to_waiting(self):
        self.state_idx = self.STATES.index("Waiting")
        self._draw()


import matplotlib.patches  # noqa: E402  (needed by ProcessThreadTab)


# ======================================================================
# TAB 3 : SYNCHRONIZATION (Producer-Consumer with semaphores)
# ======================================================================
class SyncTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)
        self.buffer = []
        self.buffer_size = 5
        self.running = False
        self.mutex = threading.Semaphore(1)
        self.empty = threading.Semaphore(self.buffer_size)
        self.full = threading.Semaphore(0)
        self._build_ui()

    def _build_ui(self):
        ttk.Label(self, text="Producer-Consumer Problem (bounded buffer, semaphores: mutex, empty, full)",
                  font=("Arial", 10, "bold")).pack(pady=8)

        ctrl = ttk.Frame(self)
        ctrl.pack(pady=5)
        ttk.Button(ctrl, text="Start", command=self.start).pack(side="left", padx=5)
        ttk.Button(ctrl, text="Stop", command=self.stop).pack(side="left", padx=5)

        self.canvas_frame = ttk.Frame(self)
        self.canvas_frame.pack(pady=10)
        self.slots = []
        for i in range(self.buffer_size):
            lbl = tk.Label(self.canvas_frame, text="", width=6, height=2,
                            relief="solid", bg="white")
            lbl.grid(row=0, column=i, padx=3)
            self.slots.append(lbl)

        self.log = tk.Text(self, height=14, width=90)
        self.log.pack(padx=10, pady=10, fill="both", expand=True)

    def _log(self, msg):
        self.log.insert(tk.END, msg + "\n")
        self.log.see(tk.END)

    def _refresh_slots(self):
        for i, lbl in enumerate(self.slots):
            if i < len(self.buffer):
                lbl.config(text=str(self.buffer[i]), bg="#A8D5BA")
            else:
                lbl.config(text="", bg="white")

    def start(self):
        if self.running:
            return
        self.running = True
        self.buffer = []
        self.empty = threading.Semaphore(self.buffer_size)
        self.full = threading.Semaphore(0)
        threading.Thread(target=self._producer, daemon=True).start()
        threading.Thread(target=self._consumer, daemon=True).start()

    def stop(self):
        self.running = False

    def _producer(self):
        item = 0
        while self.running:
            time.sleep(random.uniform(0.6, 1.2))
            self.empty.acquire()
            self.mutex.acquire()
            self.buffer.append(item)
            self.after(0, self._refresh_slots)
            self.after(0, self._log, f"[Producer] produced item {item} (buffer={len(self.buffer)})")
            item += 1
            self.mutex.release()
            self.full.release()

    def _consumer(self):
        while self.running:
            time.sleep(random.uniform(0.8, 1.5))
            self.full.acquire()
            self.mutex.acquire()
            if self.buffer:
                val = self.buffer.pop(0)
                self.after(0, self._refresh_slots)
                self.after(0, self._log, f"[Consumer] consumed item {val} (buffer={len(self.buffer)})")
            self.mutex.release()
            self.empty.release()

    def after(self, delay, func, *args):
        # bridge from worker threads to the Tk main loop safely
        self.winfo_toplevel().after(delay, lambda: func(*args))


# ======================================================================
# TAB 4 : DEADLOCK - Banker's Algorithm
# ======================================================================
class DeadlockTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)
        self.n_proc = tk.IntVar(value=5)
        self.n_res = tk.IntVar(value=3)
        self._build_ui()

    def _build_ui(self):
        top = ttk.Frame(self)
        top.pack(fill="x", padx=10, pady=10)
        ttk.Label(top, text="Processes:").grid(row=0, column=0)
        ttk.Entry(top, textvariable=self.n_proc, width=5).grid(row=0, column=1)
        ttk.Label(top, text="Resource Types:").grid(row=0, column=2, padx=(15, 0))
        ttk.Entry(top, textvariable=self.n_res, width=5).grid(row=0, column=3)
        ttk.Button(top, text="Build Tables", command=self._build_tables).grid(row=0, column=4, padx=15)

        self.tables_frame = ttk.Frame(self)
        self.tables_frame.pack(fill="x", padx=10)

        ttk.Button(self, text="Check Safety (Banker's Algorithm)", command=self.run).pack(pady=8)

        self.out = tk.Text(self, height=14, width=100)
        self.out.pack(padx=10, pady=5, fill="both", expand=True)

        self._build_tables()

    def _build_tables(self):
        for w in self.tables_frame.winfo_children():
            w.destroy()
        n, m = max(1, self.n_proc.get()), max(1, self.n_res.get())

        ttk.Label(self.tables_frame, text="Allocation", font=("Arial", 9, "bold")).grid(row=0, column=0, columnspan=m)
        ttk.Label(self.tables_frame, text="Max", font=("Arial", 9, "bold")).grid(row=0, column=m + 1, columnspan=m)

        self.alloc_entries, self.max_entries = [], []
        for i in range(n):
            arow, mrow = [], []
            ttk.Label(self.tables_frame, text=f"P{i}").grid(row=i + 1, column=-0)
            for j in range(m):
                e = ttk.Entry(self.tables_frame, width=4)
                e.insert(0, str(random.randint(0, 3)))
                e.grid(row=i + 1, column=j)
                arow.append(e)
            for j in range(m):
                e = ttk.Entry(self.tables_frame, width=4)
                e.insert(0, str(random.randint(3, 6)))
                e.grid(row=i + 1, column=m + 1 + j)
                mrow.append(e)
            self.alloc_entries.append(arow)
            self.max_entries.append(mrow)

        ttk.Label(self.tables_frame, text="Available:").grid(row=n + 2, column=0, sticky="w")
        self.avail_entries = []
        for j in range(m):
            e = ttk.Entry(self.tables_frame, width=4)
            e.insert(0, str(random.randint(2, 5)))
            e.grid(row=n + 2, column=j + 1)
            self.avail_entries.append(e)

    def run(self):
        try:
            alloc = [[int(e.get()) for e in row] for row in self.alloc_entries]
            mx = [[int(e.get()) for e in row] for row in self.max_entries]
            avail = [int(e.get()) for e in self.avail_entries]
        except ValueError:
            messagebox.showerror("Input error", "All entries must be integers.")
            return

        n, m = len(alloc), len(avail)
        need = [[mx[i][j] - alloc[i][j] for j in range(m)] for i in range(n)]
        for i in range(n):
            for j in range(m):
                if need[i][j] < 0:
                    messagebox.showerror("Invalid", f"P{i}: Max < Allocation for resource {j}")
                    return

        work = avail[:]
        finish = [False] * n
        safe_seq = []

        changed = True
        while changed:
            changed = False
            for i in range(n):
                if not finish[i] and all(need[i][j] <= work[j] for j in range(m)):
                    for j in range(m):
                        work[j] += alloc[i][j]
                    finish[i] = True
                    safe_seq.append(f"P{i}")
                    changed = True

        self.out.delete("1.0", tk.END)
        self.out.insert(tk.END, "Need matrix (Max - Allocation):\n")
        for i, row in enumerate(need):
            self.out.insert(tk.END, f"  P{i}: {row}\n")

        if all(finish):
            self.out.insert(tk.END, f"\nSYSTEM IS IN A SAFE STATE.\nSafe sequence: {' -> '.join(safe_seq)}\n")
        else:
            stuck = [f"P{i}" for i in range(n) if not finish[i]]
            self.out.insert(tk.END, f"\nSYSTEM IS NOT SAFE (deadlock possible).\nStuck processes: {stuck}\n")


# ======================================================================
# TAB 5 : MEMORY MANAGEMENT (Contiguous Allocation + Paging)
# ======================================================================
class MemoryTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)
        nb = ttk.Notebook(self)
        nb.pack(fill="both", expand=True)
        self.contig = ContiguousFrame(nb)
        self.paging = PagingFrame(nb)
        nb.add(self.contig, text="Contiguous Allocation")
        nb.add(self.paging, text="Paging")


class ContiguousFrame(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)
        self.blocks_var = tk.StringVar(value="100,500,200,300,600")
        self.procs_var = tk.StringVar(value="212,417,112,426")
        self.strategy = tk.StringVar(value="First Fit")
        self._build_ui()

    def _build_ui(self):
        f = ttk.Frame(self)
        f.pack(fill="x", padx=10, pady=10)
        ttk.Label(f, text="Memory blocks (KB, comma-separated):").grid(row=0, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.blocks_var, width=40).grid(row=0, column=1)
        ttk.Label(f, text="Processes (KB, comma-separated):").grid(row=1, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.procs_var, width=40).grid(row=1, column=1)
        ttk.Label(f, text="Strategy:").grid(row=2, column=0, sticky="w")
        ttk.Combobox(f, textvariable=self.strategy, state="readonly",
                     values=["First Fit", "Best Fit", "Worst Fit"]).grid(row=2, column=1, sticky="w")
        ttk.Button(f, text="Allocate", command=self.run).grid(row=3, column=0, pady=8)

        self.out = tk.Text(self, height=16, width=90)
        self.out.pack(padx=10, pady=5, fill="both", expand=True)

    def run(self):
        try:
            blocks = [int(x) for x in self.blocks_var.get().split(",") if x.strip()]
            procs = [int(x) for x in self.procs_var.get().split(",") if x.strip()]
        except ValueError:
            messagebox.showerror("Input error", "Use comma-separated integers.")
            return

        remaining = blocks[:]
        allocation = [-1] * len(procs)
        strat = self.strategy.get()

        for pi, psize in enumerate(procs):
            candidates = [(bi, bsize) for bi, bsize in enumerate(remaining) if bsize >= psize]
            if not candidates:
                continue
            if strat == "First Fit":
                bi, bsize = candidates[0]
            elif strat == "Best Fit":
                bi, bsize = min(candidates, key=lambda x: x[1])
            else:  # Worst Fit
                bi, bsize = max(candidates, key=lambda x: x[1])
            allocation[pi] = bi
            remaining[bi] -= psize

        self.out.delete("1.0", tk.END)
        self.out.insert(tk.END, f"Strategy: {strat}\n\n")
        self.out.insert(tk.END, "Process No.\tSize\tBlock No.\n")
        for pi, psize in enumerate(procs):
            block = allocation[pi]
            block_str = f"Block {block} (orig {blocks[block]}KB)" if block != -1 else "Not Allocated"
            self.out.insert(tk.END, f"P{pi+1}\t\t{psize}\t{block_str}\n")
        self.out.insert(tk.END, "\nRemaining free space per block:\n")
        for bi, free in enumerate(remaining):
            self.out.insert(tk.END, f"  Block {bi} (orig {blocks[bi]}KB): {free}KB free\n")


class PagingFrame(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)
        self.proc_size = tk.IntVar(value=4500)
        self.page_size = tk.IntVar(value=1024)
        self.frames_total = tk.IntVar(value=8)
        self._build_ui()

    def _build_ui(self):
        f = ttk.Frame(self)
        f.pack(fill="x", padx=10, pady=10)
        ttk.Label(f, text="Process size (bytes):").grid(row=0, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.proc_size, width=10).grid(row=0, column=1)
        ttk.Label(f, text="Page size (bytes):").grid(row=1, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.page_size, width=10).grid(row=1, column=1)
        ttk.Label(f, text="Total free frames:").grid(row=2, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.frames_total, width=10).grid(row=2, column=1)
        ttk.Button(f, text="Compute Paging Table", command=self.run).grid(row=3, column=0, pady=8)

        self.out = tk.Text(self, height=16, width=90)
        self.out.pack(padx=10, pady=5, fill="both", expand=True)

    def run(self):
        size = self.proc_size.get()
        page = self.page_size.get()
        frames = self.frames_total.get()
        if page <= 0:
            messagebox.showerror("Input error", "Page size must be > 0")
            return

        num_pages = -(-size // page)  # ceil division
        internal_frag = num_pages * page - size

        self.out.delete("1.0", tk.END)
        self.out.insert(tk.END, f"Process size       : {size} bytes\n")
        self.out.insert(tk.END, f"Page size          : {page} bytes\n")
        self.out.insert(tk.END, f"Number of pages    : {num_pages}\n")
        self.out.insert(tk.END, f"Internal fragmentation: {internal_frag} bytes\n\n")

        if num_pages > frames:
            self.out.insert(tk.END, f"Only {frames} free frames available -> "
                                     f"{frames} pages can be loaded, the rest cause page faults "
                                     "until frames are freed (demand paging).\n\n")
        random.seed(42)
        available_frames = list(range(frames))
        random.shuffle(available_frames)
        self.out.insert(tk.END, "Page Table (Page No -> Frame No):\n")
        for p in range(num_pages):
            frame = available_frames[p % frames] if frames else "-"
            note = "" if p < frames else "  (would require page replacement)"
            self.out.insert(tk.END, f"  Page {p:>3}  ->  Frame {frame}{note}\n")


# ======================================================================
# MAIN APPLICATION
# ======================================================================
class OSApp(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("OS Concepts Simulator")
        self.geometry("1000x720")

        notebook = ttk.Notebook(self)
        notebook.pack(fill="both", expand=True)

        notebook.add(SchedulingTab(notebook), text="CPU Scheduling")
        notebook.add(ProcessThreadTab(notebook), text="Process & Threads")
        notebook.add(SyncTab(notebook), text="Synchronization")
        notebook.add(DeadlockTab(notebook), text="Deadlock (Banker's)")
        notebook.add(MemoryTab(notebook), text="Memory Management")


if __name__ == "__main__":
    app = OSApp()
    app.mainloop()
