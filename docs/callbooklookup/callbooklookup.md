## Overview

Aether includes the ability to lookup callbook information for logged callsigns. Using this feature, when you log a QSO with a station, Aether can automatically fill in details such as name, address, latitude and longitude, etc. This data is useful for a number of purposes, including sending QSL cards, determining distance and direction to the other station, tracking awards, etc.

This page includes information about Aether's callbook lookup feature in general, detailed information about the sources Aether uses for callbook data, along with instructions for setting it up.

## Callbook Sources

Aether supports the use of a number of source of callbook data. When a lookup is performed, Aether will try multiple sources to find callbook data. It starts with the most preferred source, then if callbook data is not found, goes on to try the next source, and so on. The sources Aether uses are as follows, in order:

- [QRZ.com](http://www.qrz.com/page/xml_data.html) XML subscription (if configured, requires paid subscription)
- [HamQTH.com](https://www.hamqth.com) (if configured, requires login)
- [WM7D.net](http://www.wm7d.net/) (US callsigns only)
- [Callook.info](https://callook.info) (US Callsigns only)

In general, QRZ.com's XML subscription service has the highest quality, most complete data for the highest number of callsigns. I subscribe to it myself, and find it well worth it. However, it is a paid subscription service. See the set up section below for more details.

HamQTH.com also has very good callbook data for both US and non-US callsigns. Its data is not as complete as QRZ.com, however in some cases HamQTH.com has data for callsigns that don't exist in the QRZ.com database. Use of HamQTH.com is completely free, however it does require you to register an account. See the set up section below for more details.

Aether has built in support for free callbook lookups for US callsigns using [WM7D.net](http://www.wm7d.net/), and [Callook.info](https://callook.info). Use of these sources does not require any configuration.

## Configuring Callbook lookups

Aether includes a few configurable options related to callbook lookup. This section explains these options.

### Configuring QRZ.com XML lookups

If you're a paid QRZ.com subscriber, you can configure Aether to use the QRZ.com XML feed for callbook lookups. To do so:

1. Open Aether Preferences by selecting "Preferences" from the Aether menu.
2. Select the Logging tab.
3. At the bottom of the window, notice a section for "Callbook Source".

    ![QRZ Subscription Settings](/images/QRZSubscriptionSettings.png)

4. Make sure QRZ.com is selected in the dropdown.
5. Check the Enable checkbox.
6. Enter your QRZ.com username (usually your callsign) and password.
7. Click the Test Login button.
8. If logging in was successful, you will see "Successful" appear below the button.

Aether will now use QRZ.com's XML feed as its first choice for all callbook lookups.

If you see "Failed", check to make sure you've correctly entered your username and password. Also check to make sure your QRZ.com subscription is active, which you can do on [this page](http://xmldata.qrz.com/xcheck). If you continue to have trouble, as always, please [contact Aether support](http://www.aetherlog.com/contact.html).

### Configuring HamQTH.com XML lookups

If you have a HamQTH.com account, you can configure Aether to use HamQTH.com for callbook lookups. To do so:

1. Open Aether Preferences by selecting "Preferences" from the Aether menu.
2. Select the Logging tab.
3. At the bottom of the window, notice a section for "Callbook Source".

    ![HamQTH.com Subscription Settings](/images/HamQTHSubscriptionSettings.png)

4. Make sure HamQTH.com is selected in the dropdown.
5. Check the Enable checkbox.
6. Enter your HamQTH.com username (usually your callsign) and password.
7. Click the Test Login button.
8. If logging in was successful, you will see "Successful" appear below the button.

Aether will now use HamQTH.com's XML feed for callbook lookups.

If you see "Failed", check to make sure you've correctly entered your username and password. Also check to make sure your QRZ.com subscription is active, which you can do on [this page](http://xmldata.qrz.com/xcheck). If you continue to have trouble, as always, please [contact Aether support](http://www.aetherlog.com/contact.html).

### Automatic Callbook Lookup

By default, Aether will do a callbook lookup anytime you enter a callsign and hit return. This behavior can be configured by changing the "Automatically Lookup Callbook Info" setting in [Aether 's Logging Preferences](/preferences/loggingpreferences).

![Automatically Lookup Callbook Info Setting](/images/AutoCallbookLookupPreference.png)

Regardless of this setting, you can always manually initiate a callbook lookup of the selected QSO(s) by choosing "Lookup Callsign Data" from the Log menu, or by pressing command-L.

![Lookup Callsign Data Menu Option](/images/LookupCallsignDataMenuItem.png)

## Looking Up Callbook Data for Multiple QSOs

Sometimes, it's useful to be able to lookup callbook data for more than one QSO at once. A common scenario is that you're operating portable and logging QSOs without an internet connection. When you return home, you want to lookup callbook data for the QSOs you made while portable. Aether supports this scenario by allowing you to lookup callbook data for multiple QSOs. To do so:

1. Select the QSOs for which you want to lookup callbook data in the QSO table. You can do this by shift clicking on a range of QSOs, or by command clicking on the QSOs you want to select. If you want to do callbook lookup for all QSOs in your log, you can select one, then do Edit->Select All (or press command-A).
2. Choose "Lookup Callsign Data" from the Log menu, or press command-L. Aether will begin looking up callbook data for all the selected QSOs, and will show a progress bar while it does so.

![Multiple QSO Callbook Lookup](/images/MultipleCallbookLookup.png)
