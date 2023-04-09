# Installing Qubes-OS

1. [Installation Guide](https://www.qubes-os.org/doc/installation-guide/)
  - Rufus using Windows then choose `Install Qubes` instead of testing
  - F2 to access BIOS
    - Enable Intel® Virtualization Technology
      - Advanced
      - CPU Configuration
      - Intel® Virtualization Technology = Enabled
    - Enable VT-d
      - Advanced
      - System Agent Configuration
      - VT-d = Enabled
    - [Full guide for reference](https://us.informatiweb.net/tutorials/it/bios/enable-iommu-or-vt-d-in-your-bios.html)
2. First Boot
  - [Enable keyboard and mouse when logging in by allowing usb deviced root access](https://www.qubes-os.org/doc/autostart-troubleshooting/)
    - E to enter GRUB menu
    - Add `qubes.skip_autostart` at the end of the first `module2`
    - Ctrl-X to start
    - Delete the sys-usb Qube
    - Restart
  - Disable Tor when first prompted
    - To enable `sudo --set-home anon-connection-wizard`
  - Setup dual screen
    - First enter mirror display mode (otherwise the mouse will be incorrect)
      - System Tools
      - Display
      - Mirror Displays
      - Apply
    - Then correctly update the layout
      - Choose the correct Primary Display
      - Apply
