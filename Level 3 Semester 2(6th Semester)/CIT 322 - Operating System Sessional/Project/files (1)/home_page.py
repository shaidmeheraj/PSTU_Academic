"""
home_page.py
============
The landing page / dashboard. Shows a colorful grid of "cards", one per
OS topic. Clicking a card opens that module. Designed to be visually clear
for students: icon + title + one-line description per topic.
"""

import tkinter as tk
from tkinter import ttk
import theme


class HomePage(ttk.Frame):
    def __init__(self, parent, controller):
        super().__init__(parent, style="App.TFrame")
        self.controller = controller

        header = ttk.Frame(self, style="App.TFrame")
        header.pack(fill="x", pady=(30, 10), padx=40)
        ttk.Label(header, text="🖥️  OS Concepts Simulator", style="Title.TLabel").pack(anchor="w")
        ttk.Label(header,
                  text="Click any topic below to open its own interactive page. "
                       "Every module works independently — explore them in any order.",
                  style="Sub.TLabel", wraplength=850, justify="left").pack(anchor="w", pady=(6, 0))

        grid_frame = ttk.Frame(self, style="App.TFrame")
        grid_frame.pack(fill="both", expand=True, padx=40, pady=20)

        descriptions = {
            "scheduling": "FCFS, SJF, Round Robin, Priority & Multilevel Queue with live Gantt charts.",
            "process":    "Step through the process lifecycle: New → Ready → Running → Waiting → Terminated.",
            "sync":       "Producer-Consumer problem solved live with real threads & semaphores.",
            "deadlock":   "Banker's Algorithm: test if a resource-allocation state is safe.",
            "memory":     "Contiguous allocation (First/Best/Worst Fit) and Paging, side by side.",
        }

        cols = 3
        for i, (key, style_info) in enumerate(theme.MODULE_STYLE.items()):
            r, c = divmod(i, cols)
            card = self._make_card(grid_frame, key, style_info, descriptions[key])
            card.grid(row=r, column=c, padx=15, pady=15, sticky="nsew")

        for c in range(cols):
            grid_frame.columnconfigure(c, weight=1)

        footer = ttk.Label(self, text="Operating Systems Course Project  •  Built with Python & Tkinter",
                            style="Sub.TLabel")
        footer.pack(side="bottom", pady=14)

    def _make_card(self, parent, key, style_info, description):
        color = style_info["color"]
        card = tk.Frame(parent, bg=theme.BG_CARD, highlightbackground=color,
                         highlightthickness=2, bd=0, width=260, height=170)
        card.grid_propagate(False)

        icon_lbl = tk.Label(card, text=style_info["icon"], font=("Segoe UI Emoji", 30),
                             bg=theme.BG_CARD, fg=color)
        icon_lbl.pack(pady=(18, 6))

        title_lbl = tk.Label(card, text=style_info["title"], font=theme.FONT_HEADING,
                              bg=theme.BG_CARD, fg=theme.TEXT_LIGHT)
        title_lbl.pack()

        desc_lbl = tk.Label(card, text=description, font=("Segoe UI", 9), bg=theme.BG_CARD,
                             fg=theme.TEXT_MUTED, wraplength=220, justify="center")
        desc_lbl.pack(pady=(6, 10), padx=10)

        open_lbl = tk.Label(card, text="Open  →", font=("Segoe UI", 9, "bold"),
                             bg=theme.BG_CARD, fg=color)
        open_lbl.pack(pady=(0, 10))

        widgets = [card, icon_lbl, title_lbl, desc_lbl, open_lbl]

        def on_enter(_e):
            card.config(bg="#27344A")
            for w in widgets:
                if w is not card:
                    w.config(bg="#27344A")

        def on_leave(_e):
            card.config(bg=theme.BG_CARD)
            for w in widgets:
                if w is not card:
                    w.config(bg=theme.BG_CARD)

        def on_click(_e=None):
            self.controller.show_page(key)

        for w in widgets:
            w.bind("<Enter>", on_enter)
            w.bind("<Leave>", on_leave)
            w.bind("<Button-1>", on_click)
            w.config(cursor="hand2")

        return card
