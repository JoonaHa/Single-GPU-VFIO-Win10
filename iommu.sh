#!/bin/bash
# Source: https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF#Enabling_IOMMU
for d in /sys/kernel/iommu_groups/*/devices/*; do
  n=${d#*/iommu_groups/*}; n=${n%%/*}
  printf 'IOMMU Group %s ' "$n"
  lspci -nns "${d##*/}"
done
