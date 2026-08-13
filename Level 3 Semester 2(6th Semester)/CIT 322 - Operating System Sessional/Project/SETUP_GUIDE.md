# OS Concepts Simulator — Setup Guide (Manjaro Linux)

A single Tkinter desktop app that combines, in one window with separate tabs:
1. **CPU Scheduling** — FCFS, SJF, Round Robin, Priority, Multilevel Queue (with Gantt chart)
2. **Process & Threads** — process state lifecycle visualizer
3. **Synchronization** — Producer-Consumer problem (real threads + semaphores)
4. **Deadlock** — Banker's Algorithm (safe-state check)
5. **Memory Management** — Contiguous allocation (First/Best/Worst Fit) + Paging

Each tab works completely independently — you can use any one of them without touching the others.

---

## Step 1 — Update system & install Python/Tk

Manjaro ships Python by default, but Tk and pip are sometimes missing. Open a terminal:

```bash
sudo pacman -Syu
sudo pacman -S python python-pip tk
```

Verify:
```bash
python3 --version
python3 -m tkinter      # a tiny test window should pop up; close it to continue
```

## Step 2 — Install Python dependencies

The app uses `matplotlib` for the Gantt chart / diagrams (everything else is standard library: `tkinter`, `threading`, `time`, `random`).

```bash
pip install --user matplotlib
```

If you prefer pacman instead of pip:
```bash
sudo pacman -S python-matplotlib
```

## Step 3 — Get the project files

Copy the `os_simulator` folder (containing `os_simulator.py`) to your machine, e.g.:

```bash
mkdir -p ~/Projects && cd ~/Projects
# copy os_simulator.py here
```

## Step 4 — Run it

```bash
cd ~/Projects/os_simulator
python3 os_simulator.py
```

A window titled **"OS Concepts Simulator"** opens with 5 tabs across the top.

---

## How to use each tab

### 1. CPU Scheduling
- Pick an algorithm from the dropdown (FCFS / SJF / Round Robin / Priority / Multilevel Queue).
- Set the number of processes and click **Generate Table** — a table of editable Arrival/Burst (and Priority/Queue, when relevant) values appears, pre-filled randomly so you can run instantly, or edit them yourself.
- For Round Robin or Multilevel Queue, set the **Time Quantum**.
- Click **Run Scheduler** to see the Gantt chart plus a table of Completion Time, Turnaround Time, Waiting Time, and the averages.

### 2. Process & Threads
- Shows the classic process state diagram: New → Ready → Running → Waiting/Terminated.
- Use **Next/Previous State** or **Move to Waiting (I/O)** to step through transitions and see the highlighted state.

### 3. Synchronization
- Demonstrates the bounded-buffer Producer-Consumer problem using `threading.Semaphore` (`mutex`, `empty`, `full`) — the textbook synchronization tool.
- Click **Start**; a producer thread and a consumer thread run concurrently, filling/emptying a 5-slot buffer shown visually, with a live log of every produce/consume event. Click **Stop** to end.

### 4. Deadlock (Banker's Algorithm)
- Set the number of processes and resource types, then **Build Tables** to get editable Allocation and Max matrices plus an Available vector (pre-filled randomly, fully editable).
- Click **Check Safety** — runs the Banker's safety algorithm and reports whether the system is in a safe state, along with a safe execution sequence, or which processes are stuck (deadlock risk) otherwise.

### 5. Memory Management
- **Contiguous Allocation** sub-tab: enter memory block sizes and process sizes, choose First Fit / Best Fit / Worst Fit, and see which process goes into which block plus leftover free space.
- **Paging** sub-tab: enter process size, page size, and number of free frames to get the page table (page → frame mapping), the number of pages needed, and internal fragmentation.

---

## Optional: create a desktop launcher

```bash
cat > ~/.local/share/applications/os-simulator.desktop << 'EOF'
[Desktop Entry]
Name=OS Concepts Simulator
Exec=python3 /home/$USER/Projects/os_simulator/os_simulator.py
Type=Application
Terminal=false
Categories=Education;
EOF
```
Replace `/home/$USER/Projects/...` with the actual full path. It will then appear in your application menu.

## Troubleshooting

- **`ModuleNotFoundError: No module named 'tkinter'`** → `sudo pacman -S tk`
- **`ModuleNotFoundError: No module named 'matplotlib'`** → `pip install --user matplotlib` (or `sudo pacman -S python-matplotlib`)
- **Blank/odd-looking window** → make sure you're on X11/Wayland session with a desktop environment (XFCE/KDE/GNOME on Manjaro all work fine).
