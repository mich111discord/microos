#!/bin/bash

echo "=== Language / Język ==="
echo "1. English"
echo "2. Polski"
read -p "Choose your language / Wybierz język: " lang

if [ "$lang" == "1" ]; then
  echo "=== Broadcom Wi-Fi Installer For MicroOS ==="
  echo "Installing bcmwl-kernel-source..."
  sudo apt update
  sudo apt install bcmwl-kernel-source
  echo "✅ Installation complete. Please reboot your system."

elif [ "$lang" == "2" ]; then
  echo "=== Instalator Wi-Fi Broadcom Dla MicroOS ==="
  echo "Instaluję bcmwl-kernel-source..."
  sudo apt update
  sudo apt install bcmwl-kernel-source
  echo "✅ Instalacja zakończona. Uruchom ponownie system."

else
  echo "Invalid language selection / Nieprawidłowy wybór języka"
fi
