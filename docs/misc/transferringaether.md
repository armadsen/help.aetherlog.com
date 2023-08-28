This page contains information about transferring Aether and your logbooks from one Mac to another. For example, if you purchase a new Mac and want to move your Aether logging setup from your old Mac to the new one, this page should help.

# Migration Assistant

The simplest way to transfer Aether and its associated files to a new Mac is to use the built in Migration Assistant. Apple has a good overview of using this tool here: [https://support.apple.com/en-us/HT204350](https://support.apple.com/en-us/HT204350). Note that this tool is provided by Apple, and Aether doesn't do anything special to support it, so questions about its use should be directed to Apple. That said, it is a longstanding, useful tool, and one that I myself use nearly every time I set up a new Mac. It makes the entire processs of transferring Aether and all your other apps and settings *much* simpler, and as such I **strongly recommend** using it unless you have a good, specific reason not to. **If you decide to use Migration Assistant, the rest of this guide is unnecessary**, as Aether, its registration, settings, and all of your logbook files should be transfered automatically.

# Manually Transferring

While Migration Assistant works well for transferring all of the data from one Mac to another, in some cases you may want to have finer-grained control over the data being transfered, or otherwise may need to manually copy Aether and its associated files to a new Mac. The rest of this guide explains that process. 

## Transferring Aether

If you purchased Aether on the Mac App Store, you should install it on your new Mac using the Mac App Store on the new Mac. You can find instruction for that process on [this page](/installing/#installing-from-the-mac-app-store).

If you purchased Aether directly from the Aether website, you can also simply reinstall it by downloading a fresh copy on the new computer. You can find instruction for that process on [this page](/installing/#installing-from-aether-website). You'll need to re-enter your Aether license key on the new computer. You can find it in the original email sent when your purchased Aether. If you don't have your license key or the original email, please [contact support](mailto:support@aetherlog.com) to have it sent to you.

## Transferring Settings

In either case, your Aether settings will not be transfered, and you will have to transfer them separately. While it is possible to transfer the settings without manually re-entering them, it's a somewhat involved process, and you may find it easier to simply set Aether's preferences back up to your liking manually on the new Mac.

If you're an advanced Mac user, and know about how it stores preferences, know that Aether only stores settings in the usual `~/Library/Containers/com.openreelsoftware.aether/Data/Library/Preferences/com.openreelsoftware.aether.plist` where you'd expect it. Other user data is stored in `~/Library/Containers/com.openreelsoftware.aether/Data/Library/Application Support/Aether/`, including LoTW certificates, custom awards definitions, etc. You should be able to copy the files in both locations to the same location on your new Mac. Make sure Aether is *not* running when you do this copy.

**Note:** There is no straightforward way to manually transfer saved passwords, e.g. for QRZ.com, eQSL.cc, LoTW, etc. from your old Mac to your new Mac. Migration Assistant will do this for you, but if you're not using Migration Assistant, you'll need to re-enter them manually.

## Transferring Logbooks

Aether's Logbook files are just regular files and get stored wherever you choose to save them. You can copy them to your new Mac via your local network using File Sharing, by copying them onto a USB drive, emailing them to yourself, using Airdrop, or any other method you usually use to transfer files between computers.

If you need help finding your Logbook file(s), see [this page](/faq/lostlog).

## Transferring LoTW Certificates

LoTW certificates that you have installed in Aether must first be exported in .p12 format before copying them to your new Mac and importing them back into Aether. You can find instructions for doing so on [this page](/lotw/exportp12/#export-p12-from-aether).
