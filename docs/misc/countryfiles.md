## Overview

When you enter a callsign for a new QSO, Aether can automatically fill in some important information including DXCC number, CQ zone, ITU zone, and country, based on the callsign's prefix. To do this, it uses information stored in a "country file", also called a "prefix file". A prefix file is simply a file containing this data for various callsign prefixes. These files are created and maintained by Jim Reisert, AD1C and can be used in many logging programs.

Aether includes a built in prefix file, which I update whenever a new version of Aether is released. However, often changes to the DXCC list, etc. are made in between updates to Aether, and Jim releases updated prefix files. It is possible update Aether's country file yourself without waiting for an update to Aether. This page explains how to do so.

## Installing An Updated Country File

1. Download the latest prefix file in CSV format. It is available on [www.country-files.com](http://www.country-files.com/contest/aether/), but [this link](http://www.country-files.com/cty/cty.csv) always points to the latest version as well.

2. Drag the newly downloaded cty.csv file on to Aether's icon on the dock, or select it using File->Open.

3. You will be prompted to install the file. Click Install to proceed:

    ![Install prefix file prompt](/images/InstallPrefixFilePrompt.png)

4. Assuming the installation was successful, you'll see a success window. Click OK to continue

    ![Install prefix file successful](/images/PrefixFileInstallSuccessful.png)

From now on, Aether will use this file to lookup the DXCC number, CQ zone, ITU zone, and country for newly entered callsigns.

## Important Note

Manually installed prefix files *always* take precedence over Aether's built in prefix file. This means that if you manually install a prefix file, then later update Aether to a version with a newer built-in file, the older, manually installed file will continue to be used. You should continue to manually update the prefix file as needed. Alternatively, if you'd like to remove a manually installed prefix file to cause Aether to use its built in file, follow the steps below:

1. Quit Aether
2. Open `~/Library/Containers/com.openreelsoftware.aether/Data/Library/Application Support/Aether`. The easiest way to do this is to choose Go->Go to Folder from the Finder's menu (or press command-shift-G), then enter this path.
3. Delete the file cty.csv, which is the manually installed prefix file. Do not delete any other files in this folder.
4. Relaunch Aether.
