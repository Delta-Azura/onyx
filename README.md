# Onyx
My personnal Pkgfile repo for Onyx (LFS/BLFS SYSTEM) using cards. 

The recipes are all inspired from the LFS/BLFS/SLFS documentation, thanks to them for their work.

The Pkgfiles should compile correctly if executed by cards 3.2.3 and built on a 13.0 LFS systemd platform. 

The Pkgfiles may not provide the expected results because some configuration or post-installation manipulations are recquired, please refer to the LFS/BLFS/SLFS documentation.

Some packages may need a systemd service, if they are not provided, please refer again to the BLFS documentation and download the tarball called blfs-systemd-units, then refer to the documentation as usual.


# ROADMAP
The spirit of Onyx and the roadmap are clear: allow anyone to install the distro's core collection in a chroot and do everything themselves with tools already provided through documentation, using my recipes, then use my wrapper to fetch those recipes, update, and compile everything; or alternatively start from an already-built LFS and continue the journey on their own.

The goal is to be as flexible as possible and let everyone have their own distro based on Onyx, whether they forge their own path, follow mine completely, or make minor or major modifications along the way.

The goal is also to maintain a good relationship with Onyx's two cousins, NuTyX and Great-OS, NuTyX being the mother of Cards, which I use. Naturally I'll contribute here and there if that's welcomed.

In terms of update policy: once a year we rebuild core and everything that needs it; otherwise, only surface-level packages are updated on a rolling basis as things come along.

In the core collection, updates between years will only happen for security issues, or for systemd and the kernel, which will be kept as up-to-date as possible so that everyone can use Onyx. Firmware is not provided, and anything related to graphics drivers is TBD, but given the target user base, I don't think I'll need to worry about that. My kernel is compiled for my own setup and QEMU, but everyone is free to maintain their own kernel; it's not an excessive amount of work.

For bugs, I'll probably create a Telegram group once people start using Onyx, so support will be accessible there, though it will of course be strongly recommended to read the LFS/BLFS documentation and check what's happening over at Arch, as I already do for certain packages.


# How to install 
Contact me to get the core packages you will need to install with the pkgutils after settings up cards.
Then install the packages contained in the core collections i sent you, therefore, edit some essentials files like the fstab and compile your own kernel. 
Therefore, you are ready to use the system. Install azura from the base collections, the functions install and build are already working, every Pkgfile should build correctly.
I'm still working on the update function of azura, it should be available soon.
I recommend you to use the grub used by the system you used to setup Onyx because even if the uefi packages are present, I haven't tried them yet.
Please refer to the BLFS documentation to set it up. 



# Scripts
Both of the scripts aren't from me, they come from the GREAT-OS project, i just modified the name and the archpackage script in order for it to suits my needs.
Thanks guys. 

# Thanks
Thank you to the guys from NuTyX for cards, the great-os team for their support and the writers of LFS/BLFS/SLFS

