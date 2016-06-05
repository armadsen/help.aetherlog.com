## Overview

This page is meant to help you understand the options for interfaces that allow you to connect your radio to your Mac to use with Aether's rig control feature.

Many radios use a regular RS-232 port. Icom radios use a "CI-V" port, which requires a CI-V adapter (more on this below). Many Yaesu radios (especially older ones) use a round, DIN connector and a different voltage level than standard RS-232, and therefore require a CT-62 interface (more info below). Many rigs released in the last few years include a standard USB jack, and don't require any interface hardware beyond a standard USB cable. The interface you need depends on your radio. Your rig's user manual may tell you more about the interface you need, but this post attempts to provide some guidance along with links to interfaces you can buy.

## Kenwood, Elecraft, Ten-Tec

Most Kenwood, Elecraft, and Ten Tec rigs have a standard RS-232 port with a  DB-9 connector. To connect to these rigs, you need a USB to serial adapter and an RS-232 cable with the correct gender DB-9 connectors on each end. I recommend Keyspan's USA-19HS USB to serial adapter, which can be <a href="http://www.amazon.com/gp/product/B0000VYJRY/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0000VYJRY&linkCode=as2&tag=aether0f-20">purchased from Amazon.com.</a><img src="http://ir-na.amazon-adsystem.com/e/ir?t=aether0f-20&l=as2&o=1&a=B0000VYJRY" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />.

**Important Note:** There are cheaper USB to serial adapters available, but in my experience, Keyspan's are the most reliable, and they do the best job with Mac OS X support. Many generic, cheap USB to serial adapters are built using a chipset made by Prolific Technology, Inc. Prolific-based adapters and drivers are notoriously buggy, and I recommend avoiding them. Adapters using chipsets made by FTDI or Silicon Labs are both fine.

## Icom

If you use an Icom rig, and it does not have a USB port for rig control, you'll need a CI-V interface. There are two kinds of CI-V interfaces available. The first has one or more CI-V ports, and a DB9 RS-232 port. Using this type will require the use of a separate USB to serial adapter to connect it to your Mac. The second type has a USB connection instead of RS-232. This type simply has a USB to serial adapter built in. I don't use an Icom rig myself, and therefore don't have personal experience with CI-V interfaces. However, I have had good reports about Black Cat Systems' [USB CI-V interfaces](http://www.blackcatsystems.com/usbciv/usb_icom_ci-v_interface.html). Black Cat Systems is a longtime Mac developer, and therefore provides excellent support for OS X.

## Yaesu

Many Yaesu radios use a round DIN connector for their CAT connection, and requires a CT-62 or compatible interface, which includes a built in level shifter. There are several options here. I don't have direct experience with any of these, as I don't use Yaesu radios, however any USB CT-62 adapter that uses an FTDI chip is likely to work well.

## Rigs with USB

Recent rigs that have a standard USB jack for rig control can be used with Aether without any special interface hardware. A standard USB cable is all that is required. Internally, however, these rigs simply contain their own USB to RS-232 adapter. You _will_ need a driver for them (see next paragraph).

Once you have purchased an appropriate interface, the next step is to install the correct drivers. See [this page](rigdrivers.md) for detailed information about USB to serial adapter drivers, including links to download them.

## Note About "Fancy" interfaces

Several companies sell full featured rig interface boxes, including CAT support, audio support, CW keying, etc. Some examples of these are West Mountain Radio's RIGBlasters, microHAM's various interfaces, etc. For the most part, any of these kinds of devices that present a simple USB to serial interface and have available OS X drivers should work. Note that microHAM's various microKeyers *do not* present a simple USB to serial interface, and require control software to use a complicated and proprietary protocol to communicate. For this reason, I do not provide support for these kinds of interfaces. For use with Aether, I recommend the simple (and less expensive!) options outlined in the rig-specific sections above.

## What's Next

Once you have installed the driver, the next step is installing the proper driver. See [this page](/rigcontrol/rigdrivers.md) for more information.
