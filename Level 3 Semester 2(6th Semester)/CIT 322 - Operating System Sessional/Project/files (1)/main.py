#!/usr/bin/env python3
"""
main.py
=======
Central entry point of the OS Concepts Simulator.

Architecture:
  - theme.py               shared colors/fonts
  - widgets.py              shared header widget
  - home_page.py            colorful dashboard (landing page)
  - scheduling_page.py       Module 1: CPU Scheduling
  - process_thread_page.py   Module 2: Process & Thread lifecycle
  - sync_page.py              Module 3: Synchronization (Producer-Consumer)
  - deadlock_page.py          Module 4: Deadlock (Banker's Algorithm)
  - memory_page.py            Module 5: Memory Management (Contiguous + Paging)

The App class is a simple page-switching controller: every page is a
ttk.Frame stacked in the same container; show_page(name) raises the
requested one to the front. Each module page is fully independent of the
others and can be opened directly from the home dashboard.

Run with:  python3 main.py
"""

import tkinter as tk
from tkinter import ttk

import theme
from home_page import HomePage
from scheduling_page import SchedulingPage
from process_thread_page import ProcessThreadPage
from sync_page import SyncPage
from deadlock_page import DeadlockPage
from memory_page import MemoryPage


class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("OS Concepts Simulator")
        self.geometry("1100x760")
        self.configure(bg=theme.BG_APP)

        style = ttk.Style(self)
        theme.style_ttk(style)

        container = tk.Frame(self, bg=theme.BG_APP)
        container.pack(fill="both", expand=True)
        container.grid_rowconfigure(0, weight=1)
        container.grid_columnconfigure(0, weight=1)

        self.pages = {}
        page_classes = {
            "home":       HomePage,
            "scheduling": SchedulingPage,
            "process":    ProcessThreadPage,
            "sync":       SyncPage,
            "deadlock":   DeadlockPage,
            "memory":     MemoryPage,
        }
        for name, PageClass in page_classes.items():
            page = PageClass(container, self)
            self.pages[name] = page
            page.grid(row=0, column=0, sticky="nsew")

        self.show_page("home")

    def show_page(self, name):
        self.pages[name].tkraise()


if __name__ == "__main__":
    app = App()
    app.mainloop()
