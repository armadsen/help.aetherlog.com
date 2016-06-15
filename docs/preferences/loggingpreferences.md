## Overview

![Logging Preferences Tab](/images/LoggingPreferences.png)

The Logging tab of preferences consists of three sections from top to bottom:

- Dupe Checking Settings
- Automatically default to most recently entered
- Automatically lookup
- Callbook Source Settings

## Dupe Checking Settings

#### Automatically check for past QSOs

When the "Automatically check for past QSOs" setting is enabled, Aether will automatically check for past QSOs (dupes) with the same station when a new QSO is logged. By default, this setting is **enabled**. If Aether finds previous QSOs, it will show the total number of QSOs with that station (including the new one) and a button to show them:

![Dupes found indicator](/images/DupesIndicator.png)

#### Autofill callbook data from most recent QSO

If the "Autofill callbook data from most recent QSO" setting is enabled, when a new QSO with a previously contacted station is logged Aether will automatically reuse callbook information from the previous QSO instead of doing an online callbook lookup. This is useful if you've made additions or corrections to a station's callbook information, because when you work them again, your corrected callbook data will automatically be reused. You can always manually do an online callbook lookup using the Log->Lookup Callsign Data menu option (or pressing command-L). The default for this setting is **enabled**.

## Automatically default to most recently entered

This section allows you to control whether Aether automatically fills in certain values for new QSOs using the most recently entered value. This is useful because it lessens the amount of information you must manually type in for each QSO you log. For example, if you're working a contest and are always sending the same TX Exchange for every QSO, instead of typing it in every time, Aether can automatically fill it in for you. Similarly, often while working, you may stay on a single frequency and work several stations by calling CQ, so manually reentering the frequency every time is tedious. With the option to automatically default to the most recently entered frequency enabled, you only need enter the frequency for the first QSOs after it has changed, and subsequent QSOs will automatically have the same value filled in.

Auto defaults for each of the fields in this section can be enabled or disabled independently, and should be self explanatory. By default, the frequency, mode, and power settings are **enabled**, while the rest are **disabled**. Autofill for TX Exchange behaves slightly differently for some contest logs as explained below:

#### TX Exchange

Many contests include a consecutive serial number as part of the exchange for each QSO. For these contests, the TX exchange will not be exactly the same for each QSO, but will instead include an incremented serial number for each one. For contests that Aether knows about, it can automatically increment the serial number in the TX Exchange for each QSO, preventing you from having to manually keep track of it and type it in for each QSO.

This auto increment feature only works if you have enabled the Automatically default to most recently entered TX exchange setting, **have specified the contest in the Contest Info panel**. Also, of course, this feature only applies to contests whose exchanges contain a serial number.

## Automatically lookup

When a new QSO is logged, Aether can automatically lookup certain information based on the entered callsign. The settings in these sections allow you to control which fields Aether will automatically lookup and fill in for newly QSOs.

#### Callbook Info

When this option is enabled, Aether will automatically lookup callbook info for the entered callsign as soon as you hit the return key or tab away from the callsign field. By default, this option is **enabled**. This lookup is done online, and requires an active internet connection. Callbook lookup is a larger topic, and more information can be found in the [Callbook Lookup Guide](/callbooklookup/callbooklookup.md). Note that you can always manually do a callbook lookup for the selected QSO(s) by choosing "Lookup Callsign Data" from the Log menu, or by pressing command-L.

#### DXCC Code, ITU Zone, Country, CQ Zone

For these options, Aether uses the callsign prefix to determine the correct values. To do so, it uses a [country file](http://www.country-files.com/contest/aether/) from AD1C. This does not require an internet connection. It is important to note that the country field's value will be overwritten by data from an online callbook source. For more information on Aether's support for country files, along with information about updating/modifying the country file Aether uses, see [this page](/misc/countryfiles.md).

## Callbook Source Settings

Aether can lookup callbook data using a number of callbook sources. Some of these require logging in using a username and password. This section can be used to configure those. For more information see [here](/callbooklookup/#callbook-sources).
