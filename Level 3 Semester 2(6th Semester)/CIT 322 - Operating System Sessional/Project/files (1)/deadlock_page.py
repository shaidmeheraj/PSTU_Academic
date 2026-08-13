"""
deadlock_page.py
=================
Deadlock avoidance demo: Banker's Algorithm safety check, with editable
Allocation / Max matrices and an Available vector.
"""

import tkinter as tk
from tkinter import ttk, messagebox
import random

import theme
from widgets import page_header


class DeadlockPage(ttk.Frame):
    def __init__(self, parent, controller):
        super().__init__(parent, style="Panel.TFrame")
        self.controller = controller
        self.n_proc = tk.IntVar(value=5)
        self.n_res = tk.IntVar(value=3)

        page_header(self, controller, theme.MODULE_STYLE["deadlock"]["icon"],
                    "Deadlock Avoidance: Banker's Algorithm", theme.MODULE_STYLE["deadlock"]["color"],
                    "Check whether a resource-allocation state is SAFE")
        self._build_ui()

    def _build_ui(self):
        body = ttk.Frame(self, style="Panel.TFrame")
        body.pack(fill="both", expand=True, padx=20, pady=15)

        info = ("Deadlock = a set of processes are each waiting for a resource held by "
                "another process in the set, forever. The Banker's Algorithm checks, "
                "BEFORE granting requests, whether the system can still find some order "
                "to finish all processes (a 'safe sequence'). If yes, the state is safe; "
                "if no such order exists, granting more requests risks deadlock.")
        tk.Label(body, text="💡 " + info, wraplength=950, justify="left", bg="#FEF3C7",
                 fg="#78350F", font=("Segoe UI", 9, "italic"), padx=10, pady=8,
                 relief="solid", bd=1).pack(fill="x", pady=(0, 15))

        top = ttk.Frame(body, style="Panel.TFrame")
        top.pack(fill="x", pady=5)
        ttk.Label(top, text="Processes:", style="PanelBody.TLabel").grid(row=0, column=0)
        ttk.Entry(top, textvariable=self.n_proc, width=5).grid(row=0, column=1)
        ttk.Label(top, text="Resource Types:", style="PanelBody.TLabel").grid(row=0, column=2, padx=(15, 0))
        ttk.Entry(top, textvariable=self.n_res, width=5).grid(row=0, column=3)
        ttk.Button(top, text="🔄 Build Tables", style="Accent.TButton", command=self._build_tables).grid(row=0, column=4, padx=15)

        self.tables_frame = ttk.Frame(body, style="Panel.TFrame")
        self.tables_frame.pack(fill="x", pady=10)

        ttk.Button(body, text="🔎 Check Safety", style="Accent.TButton", command=self.run).pack(pady=8)

        self.out = tk.Text(body, height=14, width=110, font=theme.FONT_MONO, bg="white", relief="solid", bd=1)
        self.out.pack(fill="both", expand=True)
        self.out.tag_config("safe", foreground="#15803D", font=(theme.FONT_MONO[0], theme.FONT_MONO[1], "bold"))
        self.out.tag_config("unsafe", foreground="#B91C1C", font=(theme.FONT_MONO[0], theme.FONT_MONO[1], "bold"))

        self._build_tables()

    def _build_tables(self):
        for w in self.tables_frame.winfo_children():
            w.destroy()
        n, m = max(1, self.n_proc.get()), max(1, self.n_res.get())

        ttk.Label(self.tables_frame, text="Allocation", style="PanelHeading.TLabel").grid(row=0, column=1, columnspan=m)
        ttk.Label(self.tables_frame, text="Max", style="PanelHeading.TLabel").grid(row=0, column=m + 2, columnspan=m)

        self.alloc_entries, self.max_entries = [], []
        for i in range(n):
            arow, mrow = [], []
            color = theme.GANTT_COLORS[i % len(theme.GANTT_COLORS)]
            tk.Label(self.tables_frame, text=f"P{i}", fg="white", bg=color, width=4,
                     font=("Segoe UI", 9, "bold")).grid(row=i + 1, column=0, padx=2, pady=2)
            for j in range(m):
                e = ttk.Entry(self.tables_frame, width=4)
                e.insert(0, str(random.randint(0, 3)))
                e.grid(row=i + 1, column=j + 1)
                arow.append(e)
            for j in range(m):
                e = ttk.Entry(self.tables_frame, width=4)
                e.insert(0, str(random.randint(3, 6)))
                e.grid(row=i + 1, column=m + 2 + j)
                mrow.append(e)
            self.alloc_entries.append(arow)
            self.max_entries.append(mrow)

        ttk.Label(self.tables_frame, text="Available:", style="PanelBody.TLabel").grid(row=n + 2, column=0, sticky="w", pady=(10, 0))
        self.avail_entries = []
        for j in range(m):
            e = ttk.Entry(self.tables_frame, width=4)
            e.insert(0, str(random.randint(2, 5)))
            e.grid(row=n + 2, column=j + 1, pady=(10, 0))
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
        self.out.insert(tk.END, "Need = Max - Allocation:\n")
        for i, row in enumerate(need):
            self.out.insert(tk.END, f"  P{i}: {row}\n")

        if all(finish):
            self.out.insert(tk.END, "\n✅ SYSTEM IS IN A SAFE STATE\n", "safe")
            self.out.insert(tk.END, f"Safe sequence: {' -> '.join(safe_seq)}\n")
        else:
            stuck = [f"P{i}" for i in range(n) if not finish[i]]
            self.out.insert(tk.END, "\n⚠️ SYSTEM IS NOT SAFE (deadlock risk)\n", "unsafe")
            self.out.insert(tk.END, f"Stuck processes (cannot guarantee completion): {stuck}\n")
