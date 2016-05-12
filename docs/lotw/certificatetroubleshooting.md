## Problems Importing Certificates

This section talks about trouble importing a newly requested certificate or a certificate already installed on another computer or another LoTW-compatible program along with how to solve this problem.

The most common reason for a failure when importing a certificate is due to a missing private key. As explained on the [overview page](lotwtroubleshootingoverview.md) in this series, when Aether (or tqslcert) requests a new certificate, it saves a private key in a file on the hard drive. When the TQ6 file sent by the ARRL is imported, it must match with this previously saved private key. For this reason, the TQ6 file will only work on the computer and with the software used to request the certificate in the first place. You can't request a certificate on one computer, then install the received TQ6 on a different computer. Similarly, if you've used LoTW on a computer, and for example, buy a new computer, you cannot simply redownload the TQ6 file on the new computer and import it to reinstall your LoTW certificates, because the private key file doesn't exist on the new computer.

There are two simple solutions to this problem. The first is to export your certificate(s) after successful installation into a file that contains both the private key and the certificate data sent by the ARRL. This file is called a ["PKCS12" file](http://en.wikipedia.org/wiki/PKCS12), or ".p12" for short, and can be exported in Aether by opening the Manage Certificates window (Aether->Preferences->QSL->Manage Certificates) and selecting one or more certificates, then clicking "Export". You will be asked where you'd like to save the P12 file and for the password you selected when you requested the certificate(s) being exported. This file can be transferred to another computer and successfully imported to install your LoTW certificate(s) on that computer. It's a good idea to save this and keep a backup of it in case you need to transfer your certificates or even simply restore them on the same computer for some reason. The second solution is to simply request a new certificate on the new computer.

## Missing Certificates

This section describes a problem where an error like the following is shown when trying to sync a log with LoTW:

![Missing Certificates Error Message](/images/MissingValidLoTWCertificates.png)

This error is shown when Aether is unable to match one or more QSOs with a valid certificate as explained in upload step 2 of the [LoTW troubleshooting overview page](lotwtroubleshootingoverview.md). As the error message indicates, this will show up even if only one QSO was unable to be matched with a certificate. This can be caused by a few things. The most common is that one or more QSOs have a date that doesn't fall within the valid QSO start and end dates for any installed certificate. This might happen because the QSO's date is in error, in which case the fix is to correct the bad date. If the QSO's date is correct, the solution is to request a new certificate(s) with QSO start and end dates that cover the QSO(s) you want to upload.

Another cause of this error is that the information in the station info for the log is either missing or doesn't match the callsign and DXCC entity number of the certificate needed for signing and uploading QSOs in the log. This can be fixed by selecting "Show My Station Info" from Aether's View menu, then filling in the correct callsign and DXCC entity number (and other information) in the station info panel.

## More Help

As always, if you have a problem that isn't fixed by the suggestions here, or have further questions, please feel free to contact [Aether support](https://www.aetherlog.com/contact.html) for help.
