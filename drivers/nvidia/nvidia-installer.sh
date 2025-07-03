#!/bin/bash

echo "=== Language / Język ==="
echo "1. English"
echo "2. Polski"
read -p "Choose your language / Wybierz język [1-2]: " lang

if [ "$lang" == "1" ]; then
  echo "=== NVIDIA Driver Installer For MicroOS ==="
  echo "Choose the driver to install:"
  echo "1. NVIDIA legacy (340.x)"
  echo "2. NVIDIA standard (470.x)"
  echo "3. Exit"

  read -p "Your choice [1-3]: " choice

  case $choice in
    1)
      echo "Installing legacy drivers..."
      sudo apt install nvidia-340
      ;;
    2)
      echo "Installing current drivers..."
      sudo apt install nvidia-driver
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
  echo "=== Instalator sterowników NVIDIA Dla MicroOS ==="
  echo "Wybierz sterownik:"
  echo "1. NVIDIA legacy (340.x)"
  echo "2. NVIDIA standard (470.x)"
  echo "3. Wyjście"

  read -p "Twój wybór [1-3]: " choice

  case $choice in
    1)
      echo "Instaluję legacy sterowniki..."
      sudo apt install nvidia-340
      ;;
    2)
      echo "Instaluję aktualne sterowniki..."
      sudo apt install nvidia-driver
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
