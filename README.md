🍏 A one-click script to make your Pop!\_OS look and feel like macOS — clean, elegant, and fast.

---

## 🧱 Repo Structure

```
popos-macos-style/
├── popos-macos-style.sh      # Minimal theming (icons, dock, cursors)
├── popos-macos-full-style.sh # Full version (includes wallpapers, Ulauncher)
└── README.md
```

---

## 📄 `README.md` (copy this into your repo)

````markdown
# 🍏 Pop!_OS macOS Style Theming Script

Turn your **Pop!_OS** desktop into a beautiful, fast, and elegant **macOS-like system** with one script.

---

## ✨ Features

- WhiteSur GTK + Icon + Cursor themes
- Plank (macOS-style bottom dock)
- Fonts (Inter / optional SF Pro)
- GNOME tweaks and left-aligned window buttons
- macOS wallpapers (Monterey style)
- Optional Ulauncher (Spotlight-style app launcher)
- Snap-free, fast, clean setup

---

## 🚀 Quick Start

### 1. Clone the repo

```bash
git clone https://github.com/YOUR_USERNAME/popos-macos-style.git
cd popos-macos-style
````

### 2. Run the full theming script

```bash
chmod +x popos-macos-full-style.sh
./popos-macos-full-style.sh
```

> Or for a minimal version (no wallpapers or Ulauncher):

```bash
chmod +x popos-macos-style.sh
./popos-macos-style.sh
```

---

## 🖼 Screenshots

| Light Mode                      | Dark Mode                     |
| ------------------------------- | ----------------------------- |
| ![light](screenshots/light.jpg) | ![dark](screenshots/dark.jpg) |

---

## 📁 Wallpapers

Wallpapers are saved to:
`~/Pictures/macos-wallpapers`

Change them via **Settings → Background**

---

## 🔍 Optional

* Use `Ulauncher` for macOS Spotlight-like app search (Alt+Space)
* Add SF Pro font manually (via Apple Developer site)
* You can tweak Plank with `plank --preferences`

---

## 📦 Tested On

* ✅ Pop!\_OS 22.04 LTS
* ✅ GNOME 42

---

## ❤️ Credits

* Theme by [vinceliuice/WhiteSur](https://github.com/vinceliuice/WhiteSur-gtk-theme)
* Wallpapers by [marcopixel](https://github.com/marcopixel/monterey-wallpapers)

---
