## Overview

Some rig control (CAT) interfaces include support for triggering the connected rig's Push To Talk (PTT) line in order to switch the rig into transmit mode under computer control. Often this keying is done using one of the handshake lines on the serial port (RTS or DTR). Because it is only possible for one application to use a given serial port, Aether allows other applications to trigger PTT keying via AppleScript. This way, Aether can be used for rig control for logging QSOs while another application (e.g. [cocoaModem](http://www.w7ay.net/site/Applications/cocoaModem/)) can trigger PTT. This page provides more information about this feature.

**Note**: This is an advanced feature intended to be used by those with experience setting up computer controlled PTT over a serial CAT interface. It was added at the request of some users for whom it was very useful. However, as an advanced, mostly hidden feature, intended to facilitate use of Aether with applications written by others, I am unable to provide technical support for it beyond the information on this page.

## AppleScript interface

Aether's support for PTT keying is limited solely to an AppleScript command, `key transmitter`. This command takes a single boolean parameter, `true` or `false`. For example, to trigger PTT in an AppleScript:  
```
tell application "Aether" to key transmitter true
```

To unkey PTT:

```
tell application "Aether" to key transmitter false
```

## RTS vs DTR

By default, Aether will use the RTS line for PTT. If your interface uses the DTR line, you can configure Aether to use DTR instead by running the following command in Terminal:

```
defaults write com.openreelsoftware.Aether UseRTSForPTT -bool false
```

Issue the same command with `true` to switch back to using RTS.

## Use With Other Apps

The intended use for this feature is to allow other applications, e.g. digital mode programs like [cocoaModem](http://www.w7ay.net/site/Applications/cocoaModem/) to trigger PTT through Aether. I can't provide support for this, nor do I have specific instructions for doing this set up, but fundamentally, the idea is that you set the other application up to run an AppleScript in order to key/unkey PTT. For cocoaModem in particular, I have a set of scripts [here](https://www.aetherlog.com/files/scripts/cocoaModemScripts.zip) which can be used to do this.
