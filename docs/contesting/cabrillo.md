## Overview

Cabrillo is a file format used for submitting contest logs to contest sponsors. It contains information about your station's classification in the contest (number of stations, operators, power category, etc.) along with the QSOs themselves. Aether is able to export Cabrillo files for many contests.

This page provides information about exporting Cabrillo files from Aether, as well as instructions for importing them into Aether.

## Exporting a Cabrillo file

In order to export a Cabrillo file, you first must fill in details about the contest in the Contest tab of Aether's Station Info window:

1. Choose "Show Contest Info" from the View menu (or press option-command-I):

    ![Show Contest Info Menu Item](/images/ShowContestInfo.png)

2. In the Contest Info window, first select the contest you're working.

    ![Contest Info Window](/images/ContestInfoWindow.png)

3. Fill in appropriate values for the various fields in the window. See the rules for the particular contest for information about each field.

With contest info properly filled in for your log, you're ready to export a Cabrillo file:

1. Choose "Export..." from the File menu (or press command-E):

    ![Export Menu Item](/images/FileExportMenuItem.png)

2. In the sheet that appears, choose a name and location for the exported Cabrillo file.

3. Select Cabrillo for the file type:

    ![Cabrillo Export Sheet](/images/CabrilloExportPanel.png)

4. Normally, you'll want to Export "All QSOs". If your logbook file also contains non-contest QSOs, you can select only those QSO that were made from the contest in the QSO table, then choose Selected QSOs instead.

5. Click "Save" to save the Cabrillo file.

6. You can now submit the exported Cabrillo file to the contest sponsor. The exact process depends on the contest and sponsor. See their website for details.

## Importing a Cabrillo file

Aether is also able to import Cabrillo files. To do so, do the folllowing:

1. Select "Import" from the file menu.
2. Choose the Cabrillo file you want to import (note that the file extension must be ".log").
3. If you already have another logbook file open, you will be asked whether you want to import the QSOs from the Cabrillo file into the existing open log, or a new one:

    ![Import into new or existing log prompt](/images/CabrilloImportNewOrExistingLog.png)

4. Aether will display its progress as it imports the file (only for large files).
5. When the import is complete, you'll see the QSOs from the Cabrillo file in your Aether logbook.

**Note**: It is important to be aware that Cabrillo files contain only that information required by contest sponsors, rather than the full range of information normally logged for a QSO. If possible, use ADIF to transfer logs from one logging program to another.

## Important Note

Aether currently only supports Cabrillo version 2.0 which has been superseded by Cabrillo 3.0. Most contest sponsors still accept Cabrillo 2.0, so this isn't usually a problem. A future update to Aether will add support for Cabrillo 3.0.
