## Overview

Once you've [requested](requestcertificate.md) and received your Logbook of The World (LoTW) certificate, you need to install it in Aether. This page describes the process for doing so.

## Installing a Certificate

Follow the instructions below to install an LoTW certificate in Aether:

1. Save the attached .tq6 file from the email you received from the ARRL:

    ![Certificate request response email](/images/ImportCertificate/CertificateReceiptEmail.png)

2. Open Aether preferences by choosing "Preferences..." from the Aether menu, or pressing command-comma.

    ![Aether Preferences Menu Item](/images/AetherPreferencesMenuItem.png)

3. Select the QSL tab of preferences.
4. Click the "Manage Certificates..." button:

    ![Aether Manage Certificates Button](/images/ExportP12/AetherQSLPreferencesManageCertificates.png)

5. You should see your certificate request, with the status "Requested" already in the list of certificates.
6. In the Manage LoTW Certificates window, click the "Import..." button:

    ![Aether Import Certificate Button](/images/ImportCertificate/ManageCertificatesImportButton.png)

7. In the open panel that appears, select your .tq6 file, then click Open:

    ![Aether Install Certificate Select TQ6 File](/images/ImportCertificate/InstallCertificateSelectTQ6.png)

8. Assuming the import was successful, you should see a message indicating that:

    ![Aether Install Certificate Successful](/images/ImportCertificate/InstallCertificateSuccessful.png)

9. Your certificate's status in the manage certificates window should show "Valid":

![Aether Install Certificate Valid](/images/ImportCertificate/InstallCertificateValid.png)

## Troubleshooting

![Aether Install Certificate Failed](/images/ImportCertificate/InstallCertificateFailed.png)

The most common reason for a failure when importing a certificate is due to a missing private key. As explained on the LoTW [troubleshooting overview page](lotwtroubleshootingoverview), when Aether (or tqslcert) requests a new certificate, it saves a private key in a file on the hard drive. When the TQ6 file sent by the ARRL is imported, it must match with this previously saved private key. For this reason, the TQ6 file will only work on the computer and with the software used to request the certificate in the first place. You can't request a certificate on one computer, then install the received TQ6 on a different computer. Similarly, if you've used LoTW on a computer, and for example, buy a new computer, you cannot simply redownload the TQ6 file on the new computer and import it to reinstall your LoTW certificates, because the private key file doesn't exist on the new computer.

There are two simple solutions to this problem:

- The first is to export your certificate(s) after successful installation into a file that contains both the private key and the certificate data sent by the ARRL. This file is called a "PKCS12" file, or ".p12" for short. You can find instructions for exporting a .p12 file from TQSL [here](exportp12). This file can be transferred to another computer and successfully imported to install your LoTW certificate(s) on that computer. It's a good idea to save this and keep a backup of it in case you need to transfer your certificates or even simply restore them on the same computer for some reason.

- The second solution is to simply [request](requestcertificate) a new certificate on the new computer.
