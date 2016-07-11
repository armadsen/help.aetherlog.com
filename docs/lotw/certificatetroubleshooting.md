## Problems Importing Certificates

For information about troubleshooting failures when importing an LoTW certificate, see [here](installcertificate.md#troubleshooting)

## Missing Certificates

This section describes a problem where an error like the following is shown when trying to sync a log with LoTW:

![Missing Certificates Error Message](/images/MissingValidLoTWCertificates.png)

This error is shown when Aether is unable to match one or more QSOs with a valid certificate as explained in upload step 2 of the [LoTW troubleshooting overview page](lotwtroubleshootingoverview.md). As the error message indicates, this will show up even if only one QSO was unable to be matched with a certificate. This can be caused by a few things. The most common is that one or more QSOs have a date that doesn't fall within the valid QSO start and end dates for any installed certificate. This might happen because the QSO's date is in error, in which case the fix is to correct the bad date. If the QSO's date is correct, the solution is to request a new certificate(s) with QSO start and end dates that cover the QSO(s) you want to upload.

Another cause of this error is that the information in the station info for the log is either missing or doesn't match the callsign and DXCC entity number of the certificate needed for signing and uploading QSOs in the log. This can be fixed by selecting "Show My Station Info" from Aether's View menu, then filling in the correct callsign and DXCC entity number (and other information) in the station info panel.

## More Help

As always, if you have a problem that isn't fixed by the suggestions here, or have further questions, please feel free to contact [Aether support](https://www.aetherlog.com/contact.html) for help.
