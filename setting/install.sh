#!/bin/bash

# Function to prompt user for installation
prompt_install() {
    read -p "Do you want to install $1? (y/n): " choice
    case "$choice" in
        y|Y ) return 0;;
        n|N ) return 1;;
        * ) echo "Invalid choice. Please enter 'y' or 'n'.";;
    esac
}

# Update package lists
sudo apt update

# Install g++
if prompt_install "g++"; then
    sudo apt install -y g++
    sudo apt install -y build-essential
    sudo apt install -y g++-multilib
    sudo apt install -y gcc-multilib
fi

# Install CMake
if prompt_install "CMake"; then
    sudo apt install -y cmake
fi

# Install python
if prompt_install "python"; then
    sudo apt install -y python3
    sudo apt install -y pip
fi

# install font
if prompt_install "font"; then
    sudo apt install -y ttf-mscorefonts-installer  # マイクロソフト社のフォント
fi
