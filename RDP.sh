# wget https://raw.githubusercontent.com/Administrator676875/RDP/main/RDP.sh &> /dev/null

#! /bin/bash
printf "Dang tien hanh cai RDP. Vui long cho doi trong giay lat ... " >&2
{
sudo useradd -m Administrator
sudo adduser Administrator sudo
echo 'Administrator:8943216' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
printf "apt install nautilus nano vim net-tools iproute2 gedit neofetch " >&2
sudo apt install nautilus nano vim net-tools iproute2 gedit neofetch -y
printf "sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target " >&2
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
sudo adduser Administrator chrome-remote-desktop
sudo apt -y install icedtea-netx icedtea-plugin
} &> /dev/null &&
printf "\nCai dat hoang tat " >&2 ||
printf "\nCo loi xay ra " >&2
printf '\nTruy cap vao https://remotedesktop.google.com/headless. Nhan Next de den buoc xac thuc Gmail.\nTien hanh xac thuc.\nSao chep lenh cua Debian Linux va dan xuong ben duoi.\n Sau do nhap 2 lan ma PIN de dat mat khau phien.\n'
read -p "Dan vao day va nhan Enter: " CRP
su - Administrator -c """$CRP"""
printf 'Truy cap vao https://remotedesktop.google.com/access/ de remote vao may chu\n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nCap nhat hoan tat " >&2
else
    printf "\n\nXay ra loi " >&2
fi
