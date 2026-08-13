"""
memory_page.py
===============
Memory Management module: Contiguous Allocation (First/Best/Worst Fit) and
Paging, as two sub-tabs inside one page.
"""

import tkinter as tk
from tkinter import ttk, messagebox
import random

import theme
from widgets import page_header


class MemoryPage(ttk.Frame):
    def __init__(self, parent, controller):
        super().__init__(parent, style="Panel.TFrame")
        self.controller = controller
        page_header(self, controller, theme.MODULE_STYLE["memory"]["icon"],
                    "Memory Management", theme.MODULE_STYLE["memory"]["color"],
                    "Contiguous allocation strategies and paging, side by side")

        body = ttk.Frame(self, style="Panel.TFrame")
        body.pack(fill="both", expand=True, padx=15, pady=15)

        nb = ttk.Notebook(body)
        nb.pack(fill="both", expand=True)
        self.contig = ContiguousFrame(nb)
        self.paging = PagingFrame(nb)
        nb.add(self.contig, text="📦 Contiguous Allocation")
        nb.add(self.paging, text="📄 Paging")


class ContiguousFrame(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent, style="Panel.TFrame")
        self.blocks_var = tk.StringVar(value="100,500,200,300,600")
        self.procs_var = tk.StringVar(value="212,417,112,426")
        self.strategy = tk.StringVar(value="First Fit")
        self._build_ui()

    def _build_ui(self):
        info = ("Fixed-size blocks of memory exist; each new process is placed into a "
                 "block big enough to hold it. First Fit picks the first block that fits, "
                 "Best Fit picks the smallest block that still fits (less waste, slower), "
                 "Worst Fit picks the largest block (leaves a bigger leftover chunk).")
        tk.Label(self, text="💡 " + info, wraplength=900, justify="left", bg="#FEF3C7",
                 fg="#78350F", font=("Segoe UI", 9, "italic"), padx=10, pady=8,
                 relief="solid", bd=1).pack(fill="x", padx=10, pady=10)

        f = ttk.Frame(self, style="Panel.TFrame")
        f.pack(fill="x", padx=10, pady=5)
        ttk.Label(f, text="Memory blocks (KB, comma-separated):", style="PanelBody.TLabel").grid(row=0, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.blocks_var, width=40).grid(row=0, column=1)
        ttk.Label(f, text="Processes (KB, comma-separated):", style="PanelBody.TLabel").grid(row=1, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.procs_var, width=40).grid(row=1, column=1)
        ttk.Label(f, text="Strategy:", style="PanelBody.TLabel").grid(row=2, column=0, sticky="w")
        ttk.Combobox(f, textvariable=self.strategy, state="readonly",
                     values=["First Fit", "Best Fit", "Worst Fit"]).grid(row=2, column=1, sticky="w")
        ttk.Button(f, text="▶ Allocate", style="Accent.TButton", command=self.run).grid(row=3, column=0, pady=10, sticky="w")

        self.out = tk.Text(self, height=16, width=100, font=theme.FONT_MONO, bg="white", relief="solid", bd=1)
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
            else:
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
        super().__init__(parent, style="Panel.TFrame")
        self.proc_size = tk.IntVar(value=4500)
        self.page_size = tk.IntVar(value=1024)
        self.frames_total = tk.IntVar(value=8)
        self._build_ui()

    def _build_ui(self):
        info = ("A process's logical address space is split into equal-size PAGES; "
                 "physical memory is split into equal-size FRAMES of the same size. "
                 "The page table maps each page to a frame. If a page's size doesn't "
                 "evenly divide the process size, the last page wastes some space — "
                 "this waste is called internal fragmentation.")
        tk.Label(self, text="💡 " + info, wraplength=900, justify="left", bg="#FEF3C7",
                 fg="#78350F", font=("Segoe UI", 9, "italic"), padx=10, pady=8,
                 relief="solid", bd=1).pack(fill="x", padx=10, pady=10)

        f = ttk.Frame(self, style="Panel.TFrame")
        f.pack(fill="x", padx=10, pady=5)
        ttk.Label(f, text="Process size (bytes):", style="PanelBody.TLabel").grid(row=0, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.proc_size, width=10).grid(row=0, column=1)
        ttk.Label(f, text="Page size (bytes):", style="PanelBody.TLabel").grid(row=1, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.page_size, width=10).grid(row=1, column=1)
        ttk.Label(f, text="Total free frames:", style="PanelBody.TLabel").grid(row=2, column=0, sticky="w")
        ttk.Entry(f, textvariable=self.frames_total, width=10).grid(row=2, column=1)
        ttk.Button(f, text="▶ Compute Paging Table", style="Accent.TButton", command=self.run).grid(row=3, column=0, pady=10, sticky="w")

        self.out = tk.Text(self, height=16, width=100, font=theme.FONT_MONO, bg="white", relief="solid", bd=1)
        self.out.pack(padx=10, pady=5, fill="both", expand=True)

    def run(self):
        size = self.proc_size.get()
        page = self.page_size.get()
        frames = self.frames_total.get()
        if page <= 0:
            messagebox.showerror("Input error", "Page size must be > 0")
            return

        num_pages = -(-size // page)
        internal_frag = num_pages * page - size

        self.out.delete("1.0", tk.END)
        self.out.insert(tk.END, f"Process size         : {size} bytes\n")
        self.out.insert(tk.END, f"Page size            : {page} bytes\n")
        self.out.insert(tk.END, f"Number of pages      : {num_pages}\n")
        self.out.insert(tk.END, f"Internal fragmentation: {internal_frag} bytes\n\n")

        if num_pages > frames:
            self.out.insert(tk.END, f"Only {frames} free frames available -> "
                                     f"{frames} pages load immediately, the rest cause page "
                                     "faults until frames are freed (demand paging).\n\n")
        random.seed(42)
        available_frames = list(range(frames))
        random.shuffle(available_frames)
        self.out.insert(tk.END, "Page Table (Page No -> Frame No):\n")
        for p in range(num_pages):
            frame = available_frames[p % frames] if frames else "-"
            note = "" if p < frames else "  (would require page replacement)"
            self.out.insert(tk.END, f"  Page {p:>3}  ->  Frame {frame}{note}\n")
