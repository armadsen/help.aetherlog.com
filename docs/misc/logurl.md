## Overview

Aether has full-featured support for being scripted using AppleScript. However, in addition to this, it also supports a very simple URL-based system for logging QSOs in Aether from other applications. This page describes this system and how to use it.

## aether:// URLs

Aether supports URLs using a custom `aether` scheme. Currently a single "host" is supported, `logqso`, which creates and logs a new QSO in the frontmost open Aether document. An example URL that will log a QSO with AC7CF on 20m CW is shown below:

[aether://logqso?callsign=ac7cf&band=20m&mode=CW&lookupCallbookInfo=true](aether://logqso?callsign=ac7cf&band=20m&mode=CW&lookupCallbookInfo=true)

If you are running Aether 1.6.3 (1531) or later, clicking the above link will open Aether and log a QSO!

The below table shows the complete list of supported query parameters:

| Key                | Examples                    |
|:-------------------|:----------------------------|
| callsign           | AC7CF, w1aw                 |
| band               | 20m, 160m, 2m, 10cm, etc.   |
| frequency          | 14.060, 146.76, 28.200      |
| mode               | CW, USB, RTTY               |
| power              | 100, 5 (do not include 'W') |
| txExchange         | 027%20UT                    |
| rxExchange         | 042%20CA                    |
| txRST              | 599, 59                     |
| rxRST              | 599, 59                     |
| note               | FB%20QSO%21                 |
| lookupCallbookInfo | true, false                 |

If `lookupCallbookInfo` is true, Aether will perform an online callbook lookup for the new QSO after it is logged.

Note that the values for each query parameter must be strings, with special characters [percent encoded](https://en.wikipedia.org/wiki/Percent-encoding) as is common for URLs.

## Caveats

This feature is currently only available in the current [beta version](/faq/beta) of Aether. It will be released widely as part of Aether 1.6.3. Also, this feature is only available when Aether is running on OS X 10.9 Mavericks or later.
