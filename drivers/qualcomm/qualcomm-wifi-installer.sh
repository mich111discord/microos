#!/bin/bash

echo "=== Language / Język ==="
echo "1. English"
echo "2. Polski"
read -p "Choose your language / Wybierz język: " lang

if [ "$lang" == "1" ]; then
  echo "=== Qualcomm Wi-Fi Installer – For MicroOS ==="
  echo "Installing firmware-atheros and ath10k drivers..."
  sudo apt update
  sudo apt install firmware-atheros linux-firmware
  echo "✅ Installation complete. Please reboot your system."

elif [ "$lang" == "2" ]; then
  echo "=== Instalator Wi-Fi Qualcomm – Dla MicroOS ==="
  echo "Instaluję firmware-atheros i sterowniki ath10k..."
  sudo apt update
  sudo apt install firmware-atheros linux-firmware
  echo "✅ Instalacja zakończona. Uruchom ponownie system."

else
  echo "Nieprawidłowy wybór języka / Invalid language selection"
fi
