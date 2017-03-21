## Overview

Aether includes the built in ability to track several awards. It is also possible to create custom award definitions to allow tracking additional awards. This page describes how to create these custom awards definition files. Note that this feature is intended for advanced users of Aether. This feature was introduced in version 1.6.3 of Aether and is not supported in earlier versions.

## File Format

Aether awards definition files are plain text files whose contents are [JSON](http://www.json.org) data. The top level item in the JSON file must be a dictionary whose contents describe the award being defined. The order of fields in the dictionary is not important. An awards definition file may only contain the definition of a single award. For example, for a DXCC award definition, the contents of the file would be:

```
{
  "awardName" : "DX Century Club",
  "awardShortName" : "DXCC",
  "awardSponsor" : "ARRL",
  "awardWebsite" : "http:\/\/www.arrl.org\/dxcc",
  "numberOfQSOsRequired" : 100,
  "mainQualifierKeyPathInQSO" : "callbookInfo.dxcc",
  "additionalRelevantKeys" : [
    "callbookInfo.country"
  ]
}
```

A detailed description of the available fields, their purpose, and example values are given in the [Award Definition Fields](#award-definition-fields) section of this page.

A JSON linter like [jsonlint.com]() can be used to verify that your file is correctly formatted according to the JSON standard. Note that this *does not* verify that e.g. the field names Aether expects are correct, merely that the file is structurally correct.

Files must be saved with the extension `.awardsdef` to be recognized by Aether. See the [Loading Into Aether](#loading-into-aether) section below for details on installing a custom award definition file in Aether.

I've posted the awards definition files that Aether ships with on GitHub: https://github.com/armadsen/AetherAwards . They can be used as reference examples when creating your own custom award definition files. You can also modify these files and load them to customize tracking for the built in awards.

## Award Definition Fields

Awards definitions in Aether include several fields. The table below lists these fields, including a description of the field's purpose, and whether or not it is optional. The descriptions use the example of the ARRL's Worked All States award to illustrate how they work.

|         Field Name         | Description                                                               | Optional |
|:--------------------------:|:--------------------------------------------------------------------------|:---------|
|         awardName          | Full name of the award (e.g. "Worked All States")                         | NO       |
|       awardShortName       | Abbreviated name of the award (e.g. "WAS")                                | NO       |
|        awardSponsor        | Name of the award's sponsor (e.g. "ARRL")                                 | YES      |
|        awardWebsite        | URL for the award's website (e.g. "http://www.arrl.org/was")              | YES      |
| mainQualifierKeyPathInQSO  | QSO key path for main qualifier value (e.g. "callbookInfo.state")         | NO       |
|    numberOfQSOsRequired    | Number of QSOs required to receive the award (e.g. 50)                    | YES      |
|     achievementLevels      | List of number of QSO thresholds for additional achievements              | YES      |
|   possibleMainKeyValues    | Possible values for the main qualifier value (e.g. List of the 50 states) | YES      |
|   additionalRelevantKeys   | Key paths for values to show as additional columns in the awards window   | YES      |
|        uniquingKeys        | Key paths for values that cause QSOs to be treated as unique              | YES      |
| requiredFixedKeysAndValues | Key paths and corresponding values that must be set for a QSO to count    | YES      |

Some of these fields, like `awardName` are fairly self explanatory. For those that are not, see the detailed descriptions below.

#### mainQualifierKeyPathInQSO

This field is a [key paths](#key-paths) for the main qualifier value for the award. The main qualifier value for an award is the value that must be unique for each QSO in the award. For example, for Worked All States, it's the contacted station's U.S. state. For DXCC, it's the DXCC entity number. For Worked All Zones, it's the CQ zone.

This field is the most important one in an awards definition file and is required.

#### achievementLevels

This field is an array (a list) of additional achievement levels for the award. For example, the [RSGB IOTA program](http://www.rsgbiota.org) offers awards for confirmed QSOs with 100 islands, 200 islands, 300 islands, and so on. Using the `achievementLevels` field, a single award definition can be used to continually track progress toward the next achievement level you're working on.

This field is optional. When the `achievementLevels` field is present, the awards tracking window will show your progress to the next level beyond that you've already achieved (based on confirmed QSOs in your log).

#### possibleMainKeyValues

In some cases, it is desirable to make the awards tracking system only accept QSOs whose main qualifier value is one of a predefined list of valid values. For example, for Worked All States, this is a list of all 50 states. For IOTA, it could be a list of all registered IOTA designators, etc. This field is optional, and if it is not included, any (non-empty) value for the main qualifier key path will be considered valid.

#### additionalRelevantKeys

The `additionalRelevantKeys` field is a list of [key paths](#key-paths) for values that are interesting or relevant but which are not used for the actual awards tracking calculations. Aether will display columns for these key paths in the QSO table in the awards tracking window. Aether uses this field for the USA Counties award to also show each QSO's state.

#### uniquingKeys

For some awards, multiple QSOs with the same main qualifier value should be counted towards an award. For example, for the [5 Band DXCC award](http://www.arrl.org/5-band-dxcc-application), up to five QSOs with the same DXCC entity may be counted as long as they're on separate bands.

The `uniquingKeys` field is an optional list of [key paths](#key-paths). If any of the values for these key paths differ between two QSOs being considered for awards tracking, both QSOs will be considered unique and valid contributions to the award.

To illustrate, consider an award where this list includes "band", and the `mainQualifierKeyPathInQSO` is `callbookInfo.dxcc`. In this case, two QSOs with a DXCC number of 291, where the first has a band of "20m", and the other is "40m" will both be counted toward the award.

#### requiredFixedKeysAndValues

For some awards, it can be useful to require one or more key paths to have one of a predefined list of valid values, even though these key paths are not used directly in the awards tracking calculations.

The `requiredFixedKeysAndValues` field is a dictionary whose keys are [key paths](#key-paths), and whose values are arrays/lists of allowable values for the corresponding key path.

For example, for Worked All States, this field is used to specify that QSO's must have a country value of "United States", "USA", "US", etc. to be considered valid. That way, QSOs with other countries will not be considered valid for the award, _even if_ they happen to have an otherwise valid two letter state abbreviation filled in for their state.

## Key Paths

Several of the fields in an award definition have a value that is a [key path](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/KeyValueCoding/Articles/BasicPrinciples.html#//apple_ref/doc/uid/20002170-183455) for a QSO. The table below lists the key path for several common values. If one you'd like to use isn't listed here, please [contact Aether support](mailto:support@aetherlog.com) for assistance.

| Value              | Key path                | Type   | Example Value              |
|:-------------------|:------------------------|:-------|:---------------------------|
| Callsign           | callsign                | String | "AC7CF"                    |
| Operating Mode     | mode                    | String | "CW"                       |
| Frequency (in MHz) | frequency               | Number | 14.060                     |
| Band               | band                    | String | "20m"                      |
| State              | callbookInfo.state      | String | "UT"                       |
| County             | callbookInfo.county     | String | "Salt Lake"                |
| Country            | callbookInfo.country    | String | "United States of America" |
| Grid Square        | callbookInfo.gridSquare | String | DN40br                     |
| DXCC Number        | callbookInfo.dxcc       | Number | 291                        |
| CQ Zone            | callbookInfo.ituZone    | Number | 6                          |
| CQ Zone            | callbookInfo.cqZone     | Number | 5                          |
| IOTA island        | callbookInfo.iota       | String | "NA-065"                   |

## Loading Into Aether

To load an awards definition file into Aether, drag it onto Aether's icon in the Dock while holding down the command and option keys. You'll be asked if you'd like to install it. Click Install, and Aether will install it for you. You can also manually install awards definition files by copying them into ~/Library/Containers/com.openreelsoftware.aether/Data/Library/Application Support/Aether.

Note that currently, if an awards tracking window is already open, it will not show a newly installed award. To workaround this, you should quit and restart Aether after installing a new awards definition file. This is a limitation that will be fixed in a future release of Aether.
