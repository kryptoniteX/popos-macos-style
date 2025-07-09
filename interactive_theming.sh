#!/bin/bash

set -e

clear
echo "\n🍏 Welcome to Pop!_OS macOS Style Installer (Interactive Mode)"
echo "-------------------------------------------------------------"
echo

# Helper function
choose_option() {
  echo "$1"
  shift
  local i=1
  for opt in "$@"; do
    echo "  $i) $opt"
    i=$((i+1))
  done
  read -rp "Enter choice [1-${#@}]: " choice
  echo
  echo "$choice"
}

# User selects theme
theme_choice=$(choose_option "Choose a GTK Theme:" \
  "WhiteSur" \
  "McMojave" \
  "Orchis" \
  "Sweet")

# User selects icon pack
icon_choice=$(choose_option "Choose an Icon Theme:" \
  "WhiteSur" \
  "macOS Big Sur" \
  "Tela" \
  "Papirus")

# User selects cursor theme
cursor_choice=$(choose_option "Choose a Cursor Theme:" \
  "WhiteSur" \
  "macOS Monterey" \
  "Bibata Modern" \
  "Capitaine")

# User selects launcher
launcher_choice=$(choose_option "Choose a Launcher (Spotlight Alternative):" \
  "Ulauncher" \
  "Albert" \
  "Cerebro" \
  "None")

# User selects dock
dock_choice=$(choose_option "Choose a Dock:" \
  "Plank" \
  "Dash to Dock" \
  "Docky" \
  "None")

# Blur option
blur_choice=$(choose_option "Enable Blur Effects in Top Bar & Menus?" \
  "Yes" \
  "No")

# Global menu option
globalmenu_choice=$(choose_option "Enable Global Menu (macOS-style App Menu)?" \
  "Yes" \
  "No")

# Wallpaper install
wallpaper_choice=$(choose_option "Install macOS Wallpapers?" \
  "Yes" \
  "No")

# Font option
font_choice=$(choose_option "Choose a Font:" \
  "Inter" \
  "SF Pro (Manual)" \
  "Ubuntu Font" \
  "System Default")

# Save user choices (Optional)
echo "Saving config..."
mkdir -p ~/.macos-style-installer
cat <<EOF > ~/.macos-style-installer/config
GTK_THEME=$theme_choice
ICON_THEME=$icon_choice
CURSOR_THEME=$cursor_choice
LAUNCHER=$launcher_choice
DOCK=$dock_choice
BLUR=$blur_choice
GLOBAL_MENU=$globalmenu_choice
WALLPAPER=$wallpaper_choice
FONT=$font_choice
EOF

# Begin installation
bash <(curl -s https://raw.githubusercontent.com/YOUR_GITHUB/popos-macos-style/main/scripts/install-core.sh) \
  "$theme_choice" "$icon_choice" "$cursor_choice" "$launcher_choice" "$dock_choice" \
  "$blur_choice" "$globalmenu_choice" "$wallpaper_choice" "$font_choice"

echo "\n✅ Installation triggered based on your selections. Enjoy your macOS-style Pop!_OS! 🍎"
