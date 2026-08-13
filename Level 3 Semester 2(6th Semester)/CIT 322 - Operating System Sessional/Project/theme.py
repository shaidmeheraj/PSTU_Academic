"""
theme.py
========
Central place for colors, fonts and small style helpers, so every page
in the app looks consistent and "student friendly" (bright, high-contrast,
clearly labeled).
"""

# ---- Palette -----------------------------------------------------------
BG_APP        = "#0F172A"   # dark navy app background
BG_CARD       = "#1E293B"   # card background on home page
BG_PANEL      = "#F8FAFC"   # light panel background inside module pages
TEXT_LIGHT    = "#F1F5F9"
TEXT_DARK     = "#0F172A"
TEXT_MUTED    = "#94A3B8"

ACCENT_BLUE   = "#3B82F6"
ACCENT_GREEN  = "#22C55E"
ACCENT_ORANGE = "#F97316"
ACCENT_RED    = "#EF4444"
ACCENT_PURPLE = "#A855F7"
ACCENT_TEAL   = "#14B8A6"
ACCENT_YELLOW = "#EAB308"

# Each module on the home page gets its own accent color + emoji icon
MODULE_STYLE = {
    "scheduling": {"color": ACCENT_BLUE,   "icon": "⏱️", "title": "CPU Scheduling"},
    "process":    {"color": ACCENT_GREEN,  "icon": "🧩", "title": "Process & Threads"},
    "sync":       {"color": ACCENT_ORANGE, "icon": "🔒", "title": "Synchronization"},
    "deadlock":   {"color": ACCENT_RED,    "icon": "⚠️", "title": "Deadlock (Banker's)"},
    "memory":     {"color": ACCENT_PURPLE, "icon": "💾", "title": "Memory Management"},
}

GANTT_COLORS = ["#3B82F6", "#F97316", "#22C55E", "#EF4444", "#A855F7",
                "#14B8A6", "#EAB308", "#EC4899", "#64748B", "#0EA5E9"]

FONT_TITLE   = ("Segoe UI", 22, "bold")
FONT_SUB     = ("Segoe UI", 12)
FONT_HEADING = ("Segoe UI", 14, "bold")
FONT_BODY    = ("Segoe UI", 10)
FONT_MONO    = ("Consolas", 10)


def style_ttk(style):
    """Configure ttk widget styles used across pages."""
    style.theme_use("clam")

    style.configure("App.TFrame", background=BG_APP)
    style.configure("Panel.TFrame", background=BG_PANEL)
    style.configure("Card.TFrame", background=BG_CARD)

    style.configure("Title.TLabel", background=BG_APP, foreground=TEXT_LIGHT, font=FONT_TITLE)
    style.configure("Sub.TLabel", background=BG_APP, foreground=TEXT_MUTED, font=FONT_SUB)
    style.configure("PanelHeading.TLabel", background=BG_PANEL, foreground=TEXT_DARK, font=FONT_HEADING)
    style.configure("PanelBody.TLabel", background=BG_PANEL, foreground=TEXT_DARK, font=FONT_BODY)
    style.configure("CardTitle.TLabel", background=BG_CARD, foreground=TEXT_LIGHT, font=FONT_HEADING)
    style.configure("CardDesc.TLabel", background=BG_CARD, foreground=TEXT_MUTED, font=FONT_BODY)

    style.configure("Nav.TButton", font=("Segoe UI", 10, "bold"), padding=8)
    style.configure("Accent.TButton", font=("Segoe UI", 10, "bold"), padding=8,
                     background=ACCENT_BLUE, foreground="white")
    style.map("Accent.TButton", background=[("active", "#2563EB")])

    style.configure("TNotebook", background=BG_PANEL)
    style.configure("TNotebook.Tab", font=("Segoe UI", 10, "bold"), padding=(12, 6))
