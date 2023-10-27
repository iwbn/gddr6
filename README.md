## GDDR6/GDDR6X GPU Memory Temperature Reader for Linux

Reads GDDR6/GDDR6X VRAM memory temperatures from multiple supported NVIDIA GPUs found in a host Linux system.
These findings are based on reverse engineering of the NVIDIA GPU Linux driver.

## Dependencies
- libpci-dev 
```
sudo apt install libpci-dev -y
```

- Kernel boot parameter: iomem=relaxed
```
sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash iomem=relaxed"' /etc/default/grub
sudo update-grub
sudo reboot
```

## Clone & Run
```
git clone https://github.com/iwbn/gddr6.git
cd gddr6 && make && sudo ./gddr6
```

## Supported GPUs
- RTX A6000 (AD102)
- RTX 4090 (AD102)
- RTX 4080 (AD103)
- RTX 4070 Ti (AD104)
- RTX 4070 (AD104)
- RTX 3090 (GA102)
- RTX 3090 Ti (GA102)
- RTX 3080 Ti (GA102)
- RTX 3080 (GA102)
- RTX 3080 LHR (GA102)
- RTX 3070 (GA104)
- RTX 3070 LHR (GA104)
- RTX A2000 (GA106)
- RTX A4500 (GA102)
- L4 (AD104)

![](https://github.com/olealgoritme/gddr6/blob/master/gddr6_use.gif)
