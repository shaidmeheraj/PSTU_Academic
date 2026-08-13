"""
process_thread_page.py
=======================
Process state lifecycle visualizer + a simple process-vs-thread comparison,
to help students see the difference clearly.
"""

import tkinter as tk
from tkinter import ttk
import matplotlib
matplotlib.use("TkAgg")
import matplotlib.patches as patches
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

import theme
from widgets import page_header


class ProcessThreadPage(ttk.Frame):
    STATES = ["New", "Ready", "Running", "Waiting", "Terminated"]

    def __init__(self, parent, controller):
        super().__init__(parent, style="Panel.TFrame")
        self.controller = controller
        self.state_idx = 0
        page_header(self, controller, theme.MODULE_STYLE["process"]["icon"],
                    "Process & Thread Lifecycle", theme.MODULE_STYLE["process"]["color"],
                    "See how a process moves through its states during execution")
        self._build_ui()

    def _build_ui(self):
        body = ttk.Frame(self, style="Panel.TFrame")
        body.pack(fill="both", expand=True, padx=20, pady=15)

        info = ("A process moves through these states during its life. A thread is the "
                "smallest unit of CPU execution: it shares the process's memory/code/files "
                "but has its OWN stack, registers and program counter, so multiple threads "
                "of one process can run 'in parallel' while sharing data easily.")
        tk.Label(body, text="💡 " + info, wraplength=950, justify="left", bg="#FEF3C7",
                 fg="#78350F", font=("Segoe UI", 9, "italic"), padx=10, pady=8,
                 relief="solid", bd=1).pack(fill="x", pady=(0, 15))

        self.fig = Figure(figsize=(8, 2.4), dpi=90)
        self.ax = self.fig.add_subplot(111)
        self.canvas = FigureCanvasTkAgg(self.fig, master=body)
        self.canvas.get_tk_widget().pack(fill="x")

        btns = ttk.Frame(body, style="Panel.TFrame")
        btns.pack(pady=15)
        ttk.Button(btns, text="◀ Previous State", style="Accent.TButton", command=self.prev_state).pack(side="left", padx=5)
        ttk.Button(btns, text="Next State ▶", style="Accent.TButton", command=self.next_state).pack(side="left", padx=5)
        ttk.Button(btns, text="Send to Waiting (I/O)", style="Accent.TButton", command=self.to_waiting).pack(side="left", padx=5)

        self.state_desc = tk.Label(body, text="", font=("Segoe UI", 11, "bold"), bg=theme.BG_PANEL, fg=theme.TEXT_DARK)
        self.state_desc.pack(pady=10)

        # Process vs Thread comparison table
        compare = ttk.Frame(body, style="Panel.TFrame")
        compare.pack(fill="x", pady=20)
        ttk.Label(compare, text="Process vs Thread", style="PanelHeading.TLabel").pack(anchor="w")
        cols = ("Aspect", "Process", "Thread")
        tree = ttk.Treeview(compare, columns=cols, show="headings", height=5)
        for c in cols:
            tree.heading(c, text=c)
            tree.column(c, width=280)
        rows = [
            ("Memory", "Has its own separate address space", "Shares address space with parent process"),
            ("Creation cost", "Heavyweight (slow to create)", "Lightweight (fast to create)"),
            ("Communication", "Needs IPC (pipes, sockets, shared memory)", "Easy — shares variables directly"),
            ("Crash impact", "One process crashing does not affect others", "One thread crashing can crash the whole process"),
            ("Example", "Two separate running apps (e.g. browser & editor)", "Browser tabs/rendering + network threads in one app"),
        ]
        for r in rows:
            tree.insert("", "end", values=r)
        tree.pack(fill="x")

        self._draw()
        self._update_desc()

    STATE_DESC = {
        "New": "The process is being created (e.g. fork()/exec() just called).",
        "Ready": "The process is loaded into memory and waiting for the CPU scheduler to pick it.",
        "Running": "Instructions are actively being executed on the CPU.",
        "Waiting": "The process is blocked, usually waiting for I/O (disk, network, user input) to complete.",
        "Terminated": "The process has finished execution and is being removed from the system.",
    }

    def _update_desc(self):
        s = self.STATES[self.state_idx]
        self.state_desc.config(text=f"Current state: {s} — {self.STATE_DESC[s]}")

    def _draw(self):
        self.ax.clear()
        n = len(self.STATES)
        colors = theme.GANTT_COLORS
        for i, s in enumerate(self.STATES):
            color = colors[i] if i == self.state_idx else "#E2E8F0"
            text_color = "white" if i == self.state_idx else "#475569"
            box = patches.FancyBboxPatch((i * 1.6, 0), 1.3, 0.9, boxstyle="round,pad=0.06",
                                          fc=color, ec="black", linewidth=1.2)
            self.ax.add_patch(box)
            self.ax.text(i * 1.6 + 0.65, 0.45, s, ha="center", va="center",
                         color=text_color, fontsize=10, fontweight="bold")
            if i < n - 1:
                self.ax.annotate("", xy=(i * 1.6 + 1.42, 0.45), xytext=(i * 1.6 + 1.3, 0.45),
                                  arrowprops=dict(arrowstyle="->", linewidth=1.5))
        # Waiting -> Ready loop arrow
        self.ax.annotate("", xy=(1 * 1.6 + 0.65, 1.05), xytext=(3 * 1.6 + 0.65, 1.05),
                          arrowprops=dict(arrowstyle="->", linewidth=1.2, color="#64748B",
                                          connectionstyle="arc3,rad=-0.3"))
        self.ax.text(2.4, 1.35, "I/O or event completion", ha="center", fontsize=8, color="#64748B")

        self.ax.set_xlim(-0.3, n * 1.6)
        self.ax.set_ylim(-0.3, 1.6)
        self.ax.axis("off")
        self.canvas.draw()

    def next_state(self):
        if self.state_idx < len(self.STATES) - 1:
            self.state_idx += 1
        self._draw(); self._update_desc()

    def prev_state(self):
        if self.state_idx > 0:
            self.state_idx -= 1
        self._draw(); self._update_desc()

    def to_waiting(self):
        self.state_idx = self.STATES.index("Waiting")
        self._draw(); self._update_desc()
