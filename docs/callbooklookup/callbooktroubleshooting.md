## Overview

This page includes troubleshooting information for Aether's callbook lookup feature. This page is a work in progress.

## QRZ.com Subscription Lookups

If you're using a paid QRZ.com subscription for callbook lookups, the first thing to check is that Aether is able to log in to your QRZ.com XML account. See the instructions for setting up QRZ.com XML lookups [here](/callbooklookup/callbooklookup/#configuring-qrzcom-xml-lookups). In particular, make sure the login test in steps 7 and 8 works. If you see "Failed", the most common problem is that your username and password is incorrect. Double check that they work by logging into QRZ.com's [subscriber test page](http://xmldata.qrz.com/xcheck). If you are unable to log in there, please contact QRZ.com's [support](https://forums.qrz.com/support). If you _are_ able to log in to QRZ.com's account test page, but are still unable to login using Aether, contact [Aether support](https://www.aetherlog.com/contact.html).

## Debug Log

If you're having trouble with callbook lookup, and need to [contact Aether support](https://www.aetherlog.com/contact.html) for help, it can be very useful to have a debug log. This log often will contain additional information I can use to help track down the problem. To generate a debug log, please do the following:

1. Quit Aether.
2. Start Aether up from your dock while holding down the shift key. (If Aether is not in your dock, put it there temporarily by dragging it there from Finder.) This will put Aether in debug mode.
3. You'll know that it worked if you see a Debug menu to the right of the Help menu.
4. Attempt a callbook lookup, hopefully provoking the problem you're having.
6. Choose Save Debug Log from the Debug menu:

    ![Save Debug Log menu item](/images/SaveDebugLog.png)

7. Choose a name and location for the debug log. Your desktop is a good choice.
8. Attach the log you saved to an email to [me](mailto:support@aetherlog.com).

Please note that this currently is only possible in the non-app store version of Aether. If you've having trouble and are running the app store version, please [contact Aether support](https://www.aetherlog.com/contact.html).

## More Help

As always, if you have a problem that isn't fixed by the suggestions here, or have further questions, please feel free to contact [Aether support](https://www.aetherlog.com/contact.html).
