# OS Concepts Simulator v2 — Multi-file, Colorful Edition (Manjaro Linux)

This version splits the project into **separate files**, one per topic, all
connected through a colorful **home dashboard** (`main.py`). Click a card on
the home page to open that module; click "⟵ Home" inside any module to come
back. Every module still works 100% independently.

## Project structure

```
os_simulator_v2/
├── main.py                 # Central controller / entry point — RUN THIS
├── theme.py                 # Shared colors, fonts, ttk styling
├── widgets.py                # Shared colorful page header (Back button + title)
├── home_page.py               # Dashboard with clickable topic cards
├── scheduling_page.py          # Module: CPU Scheduling (FCFS/SJF/RR/Priority/MLQ)
├── process_thread_page.py       # Module: Process & Thread lifecycle
├── sync_page.py                  # Module: Synchronization (Producer-Consumer)
├── deadlock_page.py               # Module: Deadlock (Banker's Algorithm)
└── memory_page.py                  # Module: Memory Management (Contiguous + Paging)
```

`main.py` imports every page class and stacks them in one window; `show_page(name)`
switches which one is visible — like a mini single-page app, but in Tkinter.

---

## Step 1 — Update system & install Python/Tk

```bash
sudo pacman -Syu
sudo pacman -S python python-pip tk
```

Verify:
```bash
python3 --version
python3 -m tkinter      # a tiny test window should appear; close it
```

## Step 2 — Install dependencies

Only `matplotlib` is external (everything else — `tkinter`, `threading`, `time`,
`random` — is in the Python standard library):

```bash
pip install --user matplotlib
# or:  sudo pacman -S python-matplotlib
```

## Step 3 — Copy the project & run

```bash
mkdir -p ~/Projects && cd ~/Projects
# copy the whole os_simulator_v2 folder here
cd os_simulator_v2
python3 main.py
```

A window titled **"OS Concepts Simulator"** opens showing the colorful home
dashboard with 5 cards: CPU Scheduling, Process & Threads, Synchronization,
Deadlock, Memory Management. Click any card to open it.

---

## What each module teaches

| Module | File | What it shows |
|---|---|---|
| 🟦 CPU Scheduling | `scheduling_page.py` | FCFS, SJF, Round Robin, Priority, Multilevel Queue — editable process table, live Gantt chart, waiting/turnaround time, and an explanation box that updates per algorithm |
| 🟩 Process & Threads | `process_thread_page.py` | Process state diagram (New→Ready→Running→Waiting→Terminated) you can step through, plus a Process-vs-Thread comparison table |
| 🟧 Synchronization | `sync_page.py` | Producer–Consumer problem using real Python threads and `threading.Semaphore` (mutex/empty/full), live buffer animation + log |
| 🟥 Deadlock | `deadlock_page.py` | Banker's Algorithm — editable Allocation/Max matrices + Available vector, reports SAFE/UNSAFE with the safe sequence |
| 🟪 Memory Management | `memory_page.py` | Contiguous allocation (First/Best/Worst Fit) and Paging (page table + internal fragmentation), as two sub-tabs |

## Customizing / extending

- Want a new module? Create `your_page.py` with a class `YourPage(ttk.Frame)`
  following the same pattern as the others (use `page_header()` from
  `widgets.py` for the colored title bar), add it to `page_classes` in
  `main.py`, and add a card for it in `theme.MODULE_STYLE` + `home_page.py`.
- Colors/fonts: edit `theme.py` only — every page picks up the change automatically.

## Optional: desktop launcher

```bash
cat > ~/.local/share/applications/os-simulator.desktop << 'EOF'
[Desktop Entry]
Name=OS Concepts Simulator
Exec=python3 /home/$USER/Projects/os_simulator_v2/main.py
Type=Application
Terminal=false
Categories=Education;
EOF
```
(Replace the path with your actual project location.)

## Troubleshooting

- **`ModuleNotFoundError: No module named 'tkinter'`** → `sudo pacman -S tk`
- **`ModuleNotFoundError: No module named 'matplotlib'`** → `pip install --user matplotlib`
- **Emoji icons show as boxes** → install a color-emoji font, e.g. `sudo pacman -S noto-fonts-emoji`
