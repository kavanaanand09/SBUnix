qemu-system-x86_64 -curses -cdrom $USER.iso -drive id=disk,file=$USER.img,if=none -device ahci,id=ahci -device ide-drive,drive=disk,bus=ahci.0 -net nic -net user,hostfwd=tcp::10080-:80 -net user,hostfwd=tcp::10023-:23 --no-reboot -gdb tcp::9998

