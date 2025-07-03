#!/bin/bash

echo "=== Language / Język ==="
echo "1. English"
echo "2. Polski"
read -p "Choose your language / Wybierz język [1-2]: " lang

if [ "$lang" == "1" ]; then
  echo "=== AMD Driver Installer For MicroOS ==="
  echo "Choose your driver:"
  echo "1. AMDGPU Open Source (recommended)"
  echo "2. AMDGPU-PRO (proprietary)"
  echo "3. Exit"

  read -p "Your choice [1-3]: " choice

  case $choice in
    1)
      echo "Installing open-source AMDGPU driver..."
      sudo apt install xserver-xorg-video-amdgpu mesa-vulkan-drivers firmware-amd-graphics
      ;;
    2)
      echo "Downloading and installing AMDGPU-PRO (requires manual steps)..."
      echo "Visit: https://www.amd.com/en/support to download the correct version for your distro."
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
  echo "=== Instalator sterowników AMD Dla MicroOS ==="
  echo "Wybierz sterownik:"
  echo "1. AMDGPU Open Source (zalecane)"
  echo "2. AMDGPU-PRO (zamknięty)"
  echo "3. Wyjście"

  read -p "Twój wybór [1-3]: " choice

  case $choice in
    1)
      echo "Instaluję otwarte sterowniki AMDGPU..."
      sudo apt install xserver-xorg-video-amdgpu mesa-vulkan-drivers firmware-amd-graphics
      ;;
    2)
      echo "Pobierz AMDGPU-PRO ręcznie ze strony: https://www.amd.com/en/support"
      echo "Instalacja wymaga dopasowania wersji do systemu."
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
  echo "Nieprawidłowy wybór języka / Invalid language selection."
fi  
