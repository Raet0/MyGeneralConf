# Config -> Zellij

# How config boot-grub 
## FEDORA
### Theme
Follow the next steps:
Create themes folder or verificate if exist:
sudo mkdir -p /boot/grub2/themes

After download a theme and paste inside themes, example:
sudo cp -r ~/Descargas/Vimix /boot/grub2/themes/

Change config file grub

sudo nvim /etc/default/grub

add next line:
GRUB_THEME="/boot/grub2/themes/Vimix/theme.txt"

end:
reload grub
UEFI:
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
BIOS(Legacy):
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

# How configurate git for linux 

1.if you session is new, recommend create a new key
ssh-keygen -t ed25519 -C "tu_email@ejemplo.com"
2. copy to new public key
cat ~/.ssh/id_ed25519.pub
3. copy text and upload to Github how new key
4. link your count on global config
git config --global user.name "Rafael"
git config --global user.email "tu_correo@ejemplo.com"
