# RESPOSITORY ------------------------------------------------------------
REMOTE=https://raw.github.com/altercation/archblocks/dev

# CONFIG -----------------------------------------------------------------
HOSTNAME=tau
USERNAME=es
USERSHELL=/bin/bash
FONT=Lat2-Terminus16
FONT_MAP=8859-1_to_uni
LANGUAGE=en_US.UTF-8
KEYMAP=us
TIMEZONE=US/Pacific
MODULES="dm_mod dm_crypt aes_x86_64 ext2 ext4 vfat intel_agp drm i915"
HOOKS="base udev autodetect pata scsi sata usb usbinput consolefont encrypt filesystems fsck"
KERNEL_PARAMS="quiet" # set/used in FILESYSTEM,INIT,BOOTLOADER blocks (this gets added to)
INSTALL_DRIVE=/dev/sda # this overrides any default value set in FILESYSTEM block

# BLOCKS -----------------------------------------------------------------
TIME=common/time_ntp_utc
FILESYSTEM=filesystem/gpt_luks_passphrase_ext4
BOOTLOADER=bootloader/efi_gummiboot
NETWORK=network/wired_wireless_minimal
AUDIO=common/audio_alsa
POWER=common/power_acpi
XORG=xorg/xorg_wacom_fonts
VIDEO=xorg/video_mesa_default
DESKTOP=xorg/desktop_xmonad_minimal
HARDWARE=hardware/laptop/lenovo_thinkpad_x220
APPSETS="appsets/cli_utils appsets/edu_utils appsets/vim_core appsets/mutt_core appsets/git_default appsets/server_utils"
PACKAGES="git"
AURPACKAGES=

# EXECUTE ----------------------------------------------------------------
. <(curl -fsL "${REMOTE}/blocks/_lib/helpers.sh"); _loadblock "_lib/core"
