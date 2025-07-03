#!/bin/bash

echo "=== Language / Język ==="
echo "1. English"
echo "2. Polski"
read -p "Choose your language / Wybierz język [1-2]: " lang

if [ "$lang" == "1" ]; then
  echo "=== Realtek Driver Installer For MicroOS==="
  echo "Choose your component:"
  echo "1. Realtek Audio"
  echo "2. Realtek Ethernet LAN"
  echo "3. Realtek Wi-Fi / Bluetooth"
  echo "4. Exit"

  read -p "Your choice [1-4]: " choice

  case $choice in
    1)
      echo "Installing Realtek audio drivers..."
      sudo apt update
      sudo apt install alsa-base alsa-utils pulseaudio firmware-realtek
      ;;
    2)
      echo "Installing Realtek LAN driver..."
      sudo apt install r8168-dkms
      ;;
    3)
      echo "Installing Realtek Wi-Fi & Bluetooth..."
      sudo apt install rtl8723bt-firmware firmware-realtek bluez
      ;;
    4)
      echo "Exiting installer."
      exit
      ;;
    *)
      echo "Invalid choice!"
      ;;
  esac

elif [ "$lang" == "2" ]; then
  echo "=== Instalator sterowników Realtek Dla MicroOS ==="
  echo "Wybierz komponent:"
  echo "1. Dźwięk Realtek"
  echo "2. Realtek Ethernet LAN"
  echo "3. Realtek Wi-Fi / Bluetooth"
  echo "4. Wyjście"

  read -p "Twój wybór [1-4]: " choice

  case $choice in
    1)
      echo "Instaluję sterowniki audio Realtek..."
      sudo apt update
      sudo apt install alsa-base alsa-utils pulseaudio firmware-realtek
      ;;
    2)
      echo "Instaluję sterownik LAN Realtek..."
      sudo apt install r8168-dkms
      ;;
    3)
      echo "Instaluję sterowniki Wi-Fi i Bluetooth Realtek..."
      sudo apt install rtl8723bt-firmware firmware-realtek bluez
      ;;
    4)
      echo "Zamykam instalator."
      exit
      ;;
    *)
      echo "Nieprawidłowy wybór!"
      ;;
  esac

else
  echo "Nieprawidłowy wybór języka / Invalid language selection"
fi
