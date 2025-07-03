yay(){
  echo "Installing yay"
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  pushd yay
  makepkg -si
  popd
}

pkgs_pacman(){
  echo "Installing pacman packages"
  grep -vE '^\s*#' ./pkgs/pacman.txt | while read -r pkg; do
    if sudo pacman -Qi "$pkg" &>/dev/null; then
      echo "[✔] $pkg is already installed"
    else
      echo "[+] installing $pkg"
      sudo pacman -S --noconfirm "$pkg"
    fi
  done
}

pkgs_yay(){
  echo "Installing yay packages"
  grep -vE '^\s*#' ./pkgs/yay.txt | while read -r pkg; do
    if yay -Qi "$pkg" &>/dev/null; then
      echo "[✔] $pkg is installed"
    else
      echo "[+] Installing $pkg"
    fi
  done
}

tpm(){
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  tmux source ~/.tmux.conf
}

services(){
  echo "Enabling and starting services"
  services=(
    bluetooth.service 
    warp-svc.service
    docker.service
    libvirtd.service
  )

  for service in "$services[@]"; do 
    sudo systemctl enable "$service"
    sudo systemctl start "$service"
  done
}

yay
pkgs_pacman
pkgs_yay
tpm
services
