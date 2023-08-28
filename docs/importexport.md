## Overview

Aether has the ability to import and export files in a number of formats. These are listed in the table below:

|      Format      | Extension | Import | Export | Version |
|:----------------:|:---------:|:------:|:------:|:--------|
|     [ADIF][]     | adi, adif |   Y    |   Y    | 2.2.6   |
|   [Cabrillo][]   | log, cab  |   Y    |   Y    | 2       |
|     [CSV][]      |    csv    |   N    |   Y    | N/A     |
| [Google Earth][] |    kml    |   N    |   Y    | N/A     |

## Importing

To import a supported file into Aether, select Import from the File menu, then choose the file to import and click Open. You can also import supported files by dragging and dropping them onto Aether's dock icon.

## Exporting

To export a file from Aether do the following:

1. Choose Export from the File menu (or press command-E).
2. In the sheet that appears, choose a name and location for the file you're exporting.

    ![File Export Sheet](images/ExportSheet.png)

3. Choose the file type you'd like to export from the File Type dropdown.
4. Choose whether you'd like to export all the QSOs in your logbook, or just those that are selected in the QSO table.
5. Click Save to save the exported file.

## More Info

For more information about each of the the file formats Aether supports, see the following pages:

- [ADIF][] - Amateur Data Interchange Format. Widely supported by ham radio logging software on all platforms.
- [Cabrillo][] - Used for contest logs submitted to contest sponsors.
- [CSV][] - Can be imported into spreadsheet software such as Microsoft Excel, or Apple Numbers.
- [Google Earth][] - Can be imported into Google Earth to show the locations of stations you've contacted.

[ADIF]: http://www.adif.org
[Cabrillo]: contesting/cabrillo.md
[CSV]: https://en.wikipedia.org/wiki/Comma-separated_values
[Google Earth]: misc/googleearth.md
