"""
scheduling_page.py
===================
CPU Scheduling module: FCFS, SJF, Round Robin, Priority, Multilevel Queue.
Shows a live Gantt chart + metrics table + a short, dynamic explanation of
the selected algorithm so students understand *what* is happening, not just
the numbers.
"""

import tkinter as tk
from tkinter import ttk, messagebox
import random
from collections import deque

import matplotlib
matplotlib.use("TkAgg")
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

import theme
from widgets import page_header

ALGO_EXPLANATIONS = {
    "FCFS": ("First Come First Served: processes are executed strictly in the order "
             "they arrive. Simple, but can cause the 'convoy effect' — short jobs "
             "stuck behind a long one."),
    "SJF (Non-Preemptive)": ("Shortest Job First: among the processes that have arrived, "
             "the one with the smallest CPU burst runs next. Minimizes average waiting "
             "time, but needs to know burst times in advance and can starve long jobs."),
    "Round Robin": ("Each ready process gets a small fixed time slice (quantum). If it "
             "doesn't finish, it goes to the back of the queue. Fair and great for "
             "interactive/time-sharing systems; a very small quantum increases overhead."),
    "Priority (Non-Preemptive)": ("Each process has a priority number (here, lower number "
             "= higher priority). The highest-priority ready process runs next. Low "
             "priority processes can starve unless aging is used."),
    "Multilevel Queue": ("Processes are split into separate queues by type — e.g. a "
             "'System' queue (FCFS, runs first) and a 'User' queue (Round Robin). "
             "Each queue has its own scheduling algorithm; here System always has "
             "priority over User."),
}


class SchedulingPage(ttk.Frame):
    def __init__(self, parent, controller):
        super().__init__(parent, style="Panel.TFrame")
        self.controller = controller
        self.rows = []
        page_header(self, controller, theme.MODULE_STYLE["scheduling"]["icon"],
                    "CPU Scheduling", theme.MODULE_STYLE["scheduling"]["color"],
                    "Visualize how the CPU decides which process runs next")
        self._build_ui()

    # ---------------------------------------------------------------- UI
    def _build_ui(self):
        body = ttk.Frame(self, style="Panel.TFrame")
        body.pack(fill="both", expand=True, padx=15, pady=15)

        top = ttk.Frame(body, style="Panel.TFrame")
        top.pack(fill="x", pady=(0, 10))

        ttk.Label(top, text="Algorithm:", style="PanelBody.TLabel").grid(row=0, column=0, sticky="w")
        self.algo = tk.StringVar(value="FCFS")
        algo_box = ttk.Combobox(top, textvariable=self.algo, state="readonly", width=26,
                                 values=list(ALGO_EXPLANATIONS.keys()))
        algo_box.grid(row=0, column=1, padx=5)
        algo_box.bind("<<ComboboxSelected>>", lambda e: (self._make_table(), self._update_explanation()))

        ttk.Label(top, text="Time Quantum (RR):", style="PanelBody.TLabel").grid(row=0, column=2, sticky="w", padx=(15, 0))
        self.quantum = tk.IntVar(value=2)
        ttk.Entry(top, textvariable=self.quantum, width=5).grid(row=0, column=3)

        ttk.Label(top, text="# Processes:", style="PanelBody.TLabel").grid(row=0, column=4, sticky="w", padx=(15, 0))
        self.n_proc = tk.IntVar(value=4)
        ttk.Entry(top, textvariable=self.n_proc, width=5).grid(row=0, column=5)
        ttk.Button(top, text="🔄 Generate Table", style="Accent.TButton",
                   command=self._make_table).grid(row=0, column=6, padx=10)

        self.explain_lbl = tk.Label(body, text="", wraplength=950, justify="left",
                                     bg="#FEF3C7", fg="#78350F", font=("Segoe UI", 9, "italic"),
                                     padx=10, pady=8, relief="solid", bd=1)
        self.explain_lbl.pack(fill="x", pady=(0, 10))

        self.table_frame = ttk.Frame(body, style="Panel.TFrame")
        self.table_frame.pack(fill="x")

        ttk.Button(body, text="▶ Run Scheduler", style="Accent.TButton",
                   command=self.run).pack(pady=10)

        out = ttk.Frame(body, style="Panel.TFrame")
        out.pack(fill="both", expand=True)

        self.result_text = tk.Text(out, height=10, width=42, font=theme.FONT_MONO,
                                    bg="white", relief="solid", bd=1)
        self.result_text.pack(side="left", fill="y", padx=(0, 10))

        self.fig = Figure(figsize=(6.4, 3.2), dpi=90)
        self.ax = self.fig.add_subplot(111)
        self.canvas = FigureCanvasTkAgg(self.fig, master=out)
        self.canvas.get_tk_widget().pack(side="right", fill="both", expand=True)

        self._make_table()
        self._update_explanation()

    def _update_explanation(self):
        self.explain_lbl.config(text="💡 " + ALGO_EXPLANATIONS[self.algo.get()])

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
            ttk.Label(self.table_frame, text=h, style="PanelHeading.TLabel").grid(row=0, column=c, padx=4, pady=4)

        n = max(1, self.n_proc.get())
        for r in range(1, n + 1):
            color = theme.GANTT_COLORS[(r - 1) % len(theme.GANTT_COLORS)]
            pid_lbl = tk.Label(self.table_frame, text=f"P{r}", fg="white", bg=color,
                                width=4, font=("Segoe UI", 9, "bold"))
            pid_lbl.grid(row=r, column=0, padx=2, pady=2)

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
            p = {"pid": f"P{i+1}",
                 "arrival": int(row["arrival"].get()),
                 "burst": int(row["burst"].get()),
                 "remaining": int(row["burst"].get())}
            if "priority" in row:
                p["priority"] = int(row["priority"].get())
            if "queue" in row:
                p["queue"] = int(row["queue"].get())
            procs.append(p)
        return procs

    # ------------------------------------------------------------- run
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

    # ---- algorithms ----
    def _fcfs(self, procs):
        procs = sorted(procs, key=lambda p: p["arrival"])
        t, timeline = 0, []
        for p in procs:
            t = max(t, p["arrival"])
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
        return timeline

    def _sjf(self, procs):
        remaining, t, timeline = procs[:], 0, []
        while remaining:
            ready = [p for p in remaining if p["arrival"] <= t]
            if not ready:
                t = min(p["arrival"] for p in remaining)
                continue
            p = min(ready, key=lambda x: x["burst"])
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
            remaining.remove(p)
        return timeline

    def _priority(self, procs):
        remaining, t, timeline = procs[:], 0, []
        while remaining:
            ready = [p for p in remaining if p["arrival"] <= t]
            if not ready:
                t = min(p["arrival"] for p in remaining)
                continue
            p = min(ready, key=lambda x: x["priority"])
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
            remaining.remove(p)
        return timeline

    def _round_robin(self, procs, quantum):
        procs = sorted(procs, key=lambda p: p["arrival"])
        queue, t, timeline = deque(), 0, []
        i, n = 0, len(procs)
        while i < n and procs[i]["arrival"] <= t:
            queue.append(procs[i]); i += 1
        if not queue and n:
            t = procs[0]["arrival"]; queue.append(procs[0]); i = 1
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
            if not queue and i < n:
                t = procs[i]["arrival"]; queue.append(procs[i]); i += 1
        return timeline

    def _mlq(self, procs, quantum):
        sys_q = sorted([p for p in procs if p.get("queue", 0) == 0], key=lambda p: p["arrival"])
        user_q = sorted([p for p in procs if p.get("queue", 0) == 1], key=lambda p: p["arrival"])
        timeline, t = [], 0
        for p in sys_q:
            t = max(t, p["arrival"])
            timeline.append((p["pid"], t, t + p["burst"]))
            t += p["burst"]
        queue, i, n = deque(), 0, len(user_q)
        while i < n and user_q[i]["arrival"] <= t:
            queue.append(user_q[i]); i += 1
        if not queue and n:
            t = max(t, user_q[0]["arrival"]); queue.append(user_q[0]); i = 1
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
            if not queue and i < n:
                t = max(t, user_q[i]["arrival"]); queue.append(user_q[i]); i += 1
        return timeline

    # ---- drawing & metrics ----
    def _draw_gantt(self, timeline):
        self.ax.clear()
        pid_color = {}
        for pid, start, end in timeline:
            if pid not in pid_color:
                pid_color[pid] = theme.GANTT_COLORS[len(pid_color) % len(theme.GANTT_COLORS)]
            self.ax.barh(0, end - start, left=start, color=pid_color[pid], edgecolor="black")
            self.ax.text((start + end) / 2, 0, pid, ha="center", va="center", color="white", fontsize=9, fontweight="bold")
        self.ax.set_yticks([])
        self.ax.set_xlabel("Time")
        self.ax.set_title("Gantt Chart", fontweight="bold")
        self.canvas.draw()

    def _show_metrics(self, timeline, procs):
        self.result_text.delete("1.0", tk.END)
        completion = {}
        for pid, start, end in timeline:
            completion[pid] = end
        total_wt = total_tat = 0
        self.result_text.insert(tk.END, "PID  AT  BT  CT  TAT  WT\n")
        self.result_text.insert(tk.END, "-" * 28 + "\n")
        for p in procs:
            ct = completion.get(p["pid"], 0)
            tat = ct - p["arrival"]
            wt = tat - p["burst"]
            total_wt += wt
            total_tat += tat
            self.result_text.insert(tk.END, f"{p['pid']:<4} {p['arrival']:<3} {p['burst']:<3} {ct:<3} {tat:<4} {wt:<3}\n")
        n = len(procs)
        self.result_text.insert(tk.END, f"\nAvg Waiting Time   : {total_wt/n:.2f}\n")
        self.result_text.insert(tk.END, f"Avg Turnaround Time: {total_tat/n:.2f}\n")
