## Overview

Aether's rig control feature allows you to connect your radio to your Mac and have Aether automatically read -- and log -- your current frequency, mode, and power. This capability is made possible by the fact that nearly all HF amateur radios sold within the last 30 years include a serial port. However, Macs haven't included built in serial ports for quite some time. The solution to this problem is to use a USB to serial adapter.

USB to serial adapters are available from a variety of sources. While some of them look like a simple cable with a USB connector on one end and an RS-232 serial connector on the other, all of these adapters actually contain electronics do the conversion between USB and RS-232. OS X requires a driver to talk to these conversion electronics. Their are four companies that make the chipsets used in these adapters:

- Keyspan / Tripp-Lite
- FTDI
- Silicon Labs
- Prolific Technology

Each company has its own driver for adapters built using its chipsets.  In order to use your USB to serial adapter, you must install the correct driver. Determining which driver to install can be a little difficult, so I'm including some information that can help narrow that down. Links to all available drivers can be found later on in this post. As always, please [email me](mailto:support@aetherlog.com) if you need assistance in finding the correct driver.

### Keyspan

Keyspan / Tripp-Lite sells its own branded adapters. They do not sell their chipsets to third-party manufacturers. So, you'll know you need the Keyspan driver if you have a Keyspan branded adapter.

###Prolific
Prolific is probably the most common chipset used in third-party, "generic" USB to serial adapters, especially the really cheap ones you find on eBay, etc. Unfortunately, Prolific's drivers are notoriously buggy, and have a nasty tendency to hang the entire OS. They've also recently had a problem with counterfeiters making and selling chips that are even worse than the real ones. **Please stay away from Prolific-based adapters.** It is definitely worth it to pay a little more for a name-brand cable with available support than to buy a cheap no-name cable on eBay.

### FTDI

FTDI's chips are also popular and used in many brands of USB to serial adapters. Fortunately, FTDI's adapter chips and drivers are high quality and reliable. As of OS X 10.9, Apple includes a driver for FTDI USB to serial adapters in the OS, so manually installing a driver for an FTDI-based adapter is no longer necessary. If you're using OS X 10.8 or older, you must still install a driver.

### Silicon Labs
Finally, Silicon Labs' chips are most commonly found built into newer rigs that have a standard USB port on the back. Despite appearances, these rigs actually have a USB to serial adapter internally, and Aether (and other software) still communicates with them exactly the same way as with other rigs. This also means that these rigs still require a USB to serial adapter driver to be installed to use their USB ports for rig control. So far, every rig I've encountered with a built in USB port has used a Silicon Labs' chip internally, so their driver is the one to install. I do not recall seeing an off the shelf USB to serial adapter cable that uses a Silicon Labs chip, but they may exist.

## Links to Drivers

Here are links to drivers for all four chipsets:

- Keyspan driver: [http://www.tripplite.com/high-speed-usb-to-serial-adapter-keyspan~USA19HS/](http://www.tripplite.com/high-speed-usb-to-serial-adapter-keyspan~USA19HS/) (Click Support, then find the appropriate driver.)
- FTDI: [http://www.ftdichip.com/Drivers/VCP.htm](http://www.ftdichip.com/Drivers/VCP.htm) (only needed on OS X 10.8 and lower)
- Silicon Labs: [https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers](https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers)
- Prolific: [http://www.prolific.com.tw/US/supportDownload.aspx?FileType=56&FileID=133&pcid=85&Page=0](http://www.prolific.com.tw/US/supportDownload.aspx?FileType=56&FileID=133&pcid=85&Page=0) (login with GUEST/GUEST)
- Third-party, open source Prolific driver: [https://github.com/mpepping/osx-pl2303/](https://github.com/mpepping/osx-pl2303/)

## What's Next

Once you have installed the driver, the next step is setting up rig control in Aether. See [this page](/rigcontrol/rigcontrol) for more information.
