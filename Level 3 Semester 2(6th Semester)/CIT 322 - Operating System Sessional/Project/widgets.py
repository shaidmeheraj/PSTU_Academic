"""
widgets.py
==========
Small reusable UI pieces shared across module pages, so every page has a
consistent colorful header with a "Back to Home" button.
"""

import tkinter as tk
from tkinter import ttk
import theme


def page_header(parent, controller, icon, title, color, subtitle=""):
    """Creates a colored header bar with a back button + page title.
       Returns the header frame (already packed)."""
    bar = tk.Frame(parent, bg=color, height=70)
    bar.pack(fill="x", side="top")
    bar.pack_propagate(False)

    back_btn = tk.Button(bar, text="⟵ Home", command=lambda: controller.show_page("home"),
                          font=("Segoe UI", 10, "bold"), bg="white", fg=color,
                          relief="flat", padx=12, pady=4, cursor="hand2")
    back_btn.pack(side="left", padx=20)

    title_frame = tk.Frame(bar, bg=color)
    title_frame.pack(side="left", padx=10)
    tk.Label(title_frame, text=f"{icon}  {title}", font=("Segoe UI", 16, "bold"),
             bg=color, fg="white").pack(anchor="w")
    if subtitle:
        tk.Label(title_frame, text=subtitle, font=("Segoe UI", 9), bg=color,
                  fg="#FFFFFFCC" if False else "white").pack(anchor="w")
    return bar


def section_label(parent, text):
    return ttk.Label(parent, text=text, style="PanelHeading.TLabel")
