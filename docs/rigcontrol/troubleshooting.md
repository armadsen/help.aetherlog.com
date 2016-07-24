## Overview

This page gives information about troubleshooting problems with Aether's [rig control](rigcontrol.md) feature. Before troubleshooting problems, please make sure you've followed all the steps to set up rig control. You can find step by step instructions on [this page](rigcontrol/#set-up).

This troubleshooting page is organized into sections based on common problems. Find the section for the problem you're having for information about troubleshooting and solving it.

## Missing or Incorrect Serial Port Options

One common problem is that the dropdown to select a serial port in Aether's rig control settings does not contain any options except for 'No Value'.

![Serial Port dropdown with only No Value](/images/SerialPortNoValue.png)

This indicates that Aether is unable to detect the USB to serial adapter interface used to connect your radio. Check the items below to troubleshoot this:

1. Make sure that the interface is connected to Aether. If your radio has a USB port for rig control, meaning it contains an internal USB to serial adapter, make sure the radio is powered on.

2. Make sure you have installed the correct driver for your interface. Most USB to serial adapters as well as radios with a built in adapter require the installation of a driver. Find more information about drivers on [this page](rigdrivers.md).

3. If your interface is connected, and you're sure the driver is installed, you can check to see if the OS X operating system itself can see your interface. To do so, open Terminal, which you can find in `/Applications/Utilities` (Go->Utilities in Finder, or search for 'Terminal' with Spotlight). In the window that appears, type or copy and paste the following commands pressing return after each line:


    `cd /dev`  
    `ls tty.*`

    ![Terminal ls tty.*](/images/lsdevtty.png)

    This will list all the serial ports on your system. Any that contain 'Bluetooth' represent your Mac's internal Bluetooth hardware and should be ignored. If your USB to serial adapter is working, you should see an entry for it. The name of this entry will vary, but it should not include 'Bluetooth'. If you do not see any non-Bluetooth entries, the problem is not specific to Aether, and usually indicates an incorrect driver or bad USB to serial hardware.

4. If you _did_ see your serial port using the process described in Step 3, but still don't see it in Aether, please [contact Aether support](mailto:support@aetherlog.com) for further troubleshooting assistance.

## Rig Data Doesn't Show Up

If you believe [set up](rigcontrol/#set-up) and enabled rig control correctly but are not seeing data coming back from your radio, check the items below to troubleshoot the problem:

1. Make sure the baud rate you've selected matches the rig's baud rate. It is critical that these values match. If they don't, rig control will not work. Most radios include a setting in the menu that allows you to select the baud rate. Refer to your rig's manual for information about how to change this as it varies between radios.

2. Make sure that rig control is enabled on your radio. Some radios include a menu setting to enable or disable rig control (aka CAT). Refer to your rig's manual for information about how to change this as it varies between radios.

3. Disable/enable rig control in Aether. You can reset the rig control system in Aether by disabling rig control, waiting a few moments, then enabling it again.

4. Try toggling the 'microHAM Interface' checkbox. This checkbox is meant to prevent problems with microHAM's USB Interface II and III by avoiding using RTS/CTS flow control which can cause these interfaces to key down the transmitter anytime rig control is enabled. If this checkbox is enabled when it shouldn't be, it can cause problems with rig control on some rigs.

## Rig Data Is Not Filled Into New QSOs

If rig control is working (you can see current info from your radio in the lower left corner of your Aether logbook window), this information should be filled in automatically for new QSOs as they're logged. Note that this is _only_ done upon pressing return or tabbing away after entering a callsign for a new QSO. You can force the latest rig control information to be entered for the currently selected QSO by selecting "Update QSO With Current Rig Values" from the Log menu, or by pressing command-R.

## Debug Log

If you're having trouble with rig control, and need to [contact Aether support](https://www.aetherlog.com/contact.html) for help, it can be very useful to have a debug log. This log often will contain additional information I can use to help track down the problem. To generate a debug log, please do the following:

1. Disable Rig Control, then quit Aether.
2. Start Aether up from your dock while holding down the shift key. (If Aether is not in your dock, put it there temporarily by dragging it there from Finder.) This will put Aether in debug mode.
3. You'll know that it worked if you see a Debug menu to the left of the Help menu.
4. Enable rig control and let Aether run for a few minutes to gather data.
6. Choose Save Debug Log from the Debug menu:

    ![Save Debug Log menu item](/images/SaveDebugLog.png)

7. Choose a name and location for the debug log. Your desktop is a good choice.
8. Attach the log you saved to an email to [me](mailto:support@aetherlog.com).

Please note that this currently is only possible in the non-app store version of Aether. If you've having trouble and are running the app store version, please [contact Aether support](https://www.aetherlog.com/contact.html).

## More Help

If you're unable to solve the problem with rig control using the information on this page, please [contact Aether support](https://www.aetherlog.com/contact.html). Please make sure to attach a debug log to your email.
