#!/usr/bin/env bash
mkdir -p ./iso/boot/grub
cp /usr/lib/grub/x86_64-efi/* ./iso/boot/grub
cp ./grub.cfg ./iso/boot/grub
grub-mkrescue -o vfio_boot.iso ./iso
rm -rf ./iso
