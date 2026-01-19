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

