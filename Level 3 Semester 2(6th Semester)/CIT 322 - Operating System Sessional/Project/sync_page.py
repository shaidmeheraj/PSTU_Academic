"""
sync_page.py
============
Producer-Consumer problem solved with real Python threads and
threading.Semaphore (mutex / empty / full) — the classic synchronization
tool taught in OS courses.
"""

import tkinter as tk
from tkinter import ttk
import threading
import time
import random

import theme
from widgets import page_header


class SyncPage(ttk.Frame):
    def __init__(self, parent, controller):
        super().__init__(parent, style="Panel.TFrame")
        self.controller = controller
        self.buffer = []
        self.buffer_size = 5
        self.running = False
        self.mutex = threading.Semaphore(1)
        self.empty = threading.Semaphore(self.buffer_size)
        self.full = threading.Semaphore(0)

        page_header(self, controller, theme.MODULE_STYLE["sync"]["icon"],
                    "Synchronization: Producer–Consumer", theme.MODULE_STYLE["sync"]["color"],
                    "Bounded buffer solved with semaphores (mutex, empty, full)")
        self._build_ui()

    def _build_ui(self):
        body = ttk.Frame(self, style="Panel.TFrame")
        body.pack(fill="both", expand=True, padx=20, pady=15)

        info = ("Two threads share a fixed-size buffer. The Producer waits on 'empty' "
                "before adding an item, and the Consumer waits on 'full' before removing "
                "one. 'mutex' guarantees only one thread touches the buffer at a time — "
                "this prevents race conditions.")
        tk.Label(body, text="💡 " + info, wraplength=950, justify="left", bg="#FEF3C7",
                 fg="#78350F", font=("Segoe UI", 9, "italic"), padx=10, pady=8,
                 relief="solid", bd=1).pack(fill="x", pady=(0, 15))

        ctrl = ttk.Frame(body, style="Panel.TFrame")
        ctrl.pack(pady=5)
        ttk.Button(ctrl, text="▶ Start", style="Accent.TButton", command=self.start).pack(side="left", padx=5)
        ttk.Button(ctrl, text="■ Stop", style="Accent.TButton", command=self.stop).pack(side="left", padx=5)

        tk.Label(body, text="Bounded Buffer (5 slots):", bg=theme.BG_PANEL,
                 font=("Segoe UI", 10, "bold")).pack(pady=(15, 5), anchor="w")
        self.canvas_frame = tk.Frame(body, bg=theme.BG_PANEL)
        self.canvas_frame.pack(pady=5)
        self.slots = []
        for i in range(self.buffer_size):
            lbl = tk.Label(self.canvas_frame, text="", width=7, height=3,
                            relief="solid", bd=2, bg="white", font=("Segoe UI", 11, "bold"))
            lbl.grid(row=0, column=i, padx=4)
            self.slots.append(lbl)

        tk.Label(body, text="Live Log:", bg=theme.BG_PANEL, font=("Segoe UI", 10, "bold")).pack(anchor="w", pady=(15, 5))
        self.log = tk.Text(body, height=13, width=100, font=theme.FONT_MONO, bg="#0F172A", fg="#22C55E")
        self.log.pack(fill="both", expand=True)

    def _log(self, msg, tag=None):
        self.log.insert(tk.END, msg + "\n")
        self.log.see(tk.END)

    def _refresh_slots(self):
        for i, lbl in enumerate(self.slots):
            if i < len(self.buffer):
                color = theme.GANTT_COLORS[self.buffer[i] % len(theme.GANTT_COLORS)]
                lbl.config(text=str(self.buffer[i]), bg=color, fg="white")
            else:
                lbl.config(text="", bg="white")

    def start(self):
        if self.running:
            return
        self.running = True
        self.buffer = []
        self.empty = threading.Semaphore(self.buffer_size)
        self.full = threading.Semaphore(0)
        self._log(">>> Started Producer and Consumer threads.")
        threading.Thread(target=self._producer, daemon=True).start()
        threading.Thread(target=self._consumer, daemon=True).start()

    def stop(self):
        self.running = False
        self._log(">>> Stopped.")

    def _producer(self):
        item = 0
        while self.running:
            time.sleep(random.uniform(0.6, 1.2))
            self.empty.acquire()
            self.mutex.acquire()
            self.buffer.append(item)
            self.after(0, self._refresh_slots)
            self.after(0, self._log, f"[Producer] produced item {item}  (buffer={len(self.buffer)}/{self.buffer_size})")
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
                self.after(0, self._log, f"[Consumer] consumed item {val}  (buffer={len(self.buffer)}/{self.buffer_size})")
            self.mutex.release()
            self.empty.release()

    def after(self, delay, func, *args):
        self.winfo_toplevel().after(delay, lambda: func(*args))
