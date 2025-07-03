#!/bin/bash

echo "=== Language / Język ==="
echo "1. English"
echo "2. Polski"
read -p "Choose your language / Wybierz język [1-2]: " lang

if [ "$lang" == "1" ]; then
  echo "=== Intel & Generic GPU Installer For MicroOS ==="
  echo "Choose your option:"
  echo "1. Intel Graphics (open-source)"
  echo "2. Generic Mesa drivers (fallback)"
  echo "3. Exit"

  read -p "Your choice [1-3]: " choice

  case $choice in
    1)
      echo "Installing Intel open-source drivers..."
      sudo apt update
      sudo apt install xserver-xorg-video-intel mesa-vulkan-drivers firmware-misc-nonfree
      ;;
    2)
      echo "Installing Mesa fallback drivers..."
      sudo apt update
      sudo apt install xserver-xorg-video-all mesa-utils
      ;;
    3)
      echo "Exiting installer."
      exit
      ;;
    *)
      echo "Invalid choice!"
      ;;
  esac

elif [ "$lang" == "2" ]; then
  echo "=== Instalator Intel i Mesa (GPU ogólne) Dla MicroOS ==="
  echo "Wybierz opcję:"
  echo "1. Grafika Intel (otwarte sterowniki)"
  echo "2. Uniwersalne sterowniki Mesa (fallback)"
  echo "3. Wyjście"

  read -p "Twój wybór [1-3]: " choice

  case $choice in
    1)
      echo "Instaluję otwarte sterowniki Intel..."
      sudo apt update
      sudo apt install xserver-xorg-video-intel mesa-vulkan-drivers firmware-misc-nonfree
      ;;
    2)
      echo "Instaluję sterowniki Mesa (fallback)..."
      sudo apt update
      sudo apt install xserver-xorg-video-all mesa-utils
      ;;
    3)
      echo "Zamykam instalator."
      exit
      ;;
    *)
      echo "Nieprawidłowy wybór!"
      ;;
  esac

else
  echo "Invalid language selection / Nieprawidłowy wybór języka"
fi
