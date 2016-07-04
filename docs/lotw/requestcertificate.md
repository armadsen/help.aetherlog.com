## Overview

Before you can begin using LoTW, you need a certificate which is used by the LoTW system to securely sign QSOs that you upload. This page describes the process for requesting a certificate using Aether.

The ARRL's TQSL software can also be used to request and install LoTW certificates. Most instructions for setting up LoTW describe how to use TQSL. Please note that TQSL is **not** required to use Aether with LoTW. In fact, if you are exclusively using Aether to do your logging, it is generally easier not to use TQSL at all. That said, Aether and TQSL can happily coexist. If you have already requested a certificate using TQSL and installed it there, you do not need to (and should not) request a new certificate using Aether. Instead, you can export the certificate you have in TQSL to Aether using the instructions on [this page](/lotw/exportp12fromtqsl.md).

## Requesting A Certificate

Follow the instructions below to request a certificate using Aether:

1. Open Aether.
2. Open Aether preferences by choosing "Preferences..." from the Aether menu, or pressing command-comma.

    ![Aether Preferences Menu Item](/images/AetherPreferencesMenuItem.png)

3. Select the QSL tab of preferences.
4. Click the "Manage Certificates..." button:

    ![Aether Manage Certificates Button](/images/ExportP12/AetherQSLPreferencesManageCertificates.png)

5. In the Manage LoTW Certificates window, click the "Request Certificate..." button:

    ![Aether Request Certificate Button](/images/RequestCertificate/ManageCertificatesRequestButton.png)

6. You will be asked to enter information about the request. Start by entering your callsign:

    ![Aether Certificate Request Page 1](/images/RequestCertificate/CertificateRequestPage1.png)

7. The DXCC entity should be filled in automatically. If it is not, select it manually.

8. Select an appropriate QSO start date. Generally, this should be the date your callsign was originally granted. If you leave this date at the default (today), you will **not** be able to upload older QSOs to LoTW. The QSO end date can be left at its default (3 years from today).

9. Click Next.

10. Fill in your name, email address, and mailing address. If possible, Aether will pre-fill this information using callbook data for your callsign. When you're done, click Next.

    ![Aether Certificate Request Page 2](/images/RequestCertificate/CertificateRequestPage2.png)

11. Optionally, enter a password for your certificate. If you'd rather not, you can leave these fields blank. Click Next when you're done.

    ![Aether Certificate Request Page 3](/images/RequestCertificate/CertificateRequestPage3.png)

12. (Conditinal) If you already have one valid certificate and are request another (e.g. for a different callsign), Aether will give you the option to sign your request using your existing certificate. Doing so is optional, but can expedite receiving your new certificate. Choose whether to sign your request, along with selecting the existing certificate you'd like to use to do so, then click next. If you chose to sign your request, you will be asked to provide the password for the _existing_ certificate being used to sign the request.

    ![Aether Certificate Request Page 4](/images/RequestCertificate/CertificateRequestPage4.png)

13. Make sure all the information looks right. If it does, click Submit to upload your certificate request to the ARRL.

    ![Aether Certificate Request Page 5](/images/RequestCertificate/CertificateRequestPage5.png)

14. If all goes well, you'll see a success message. At this point you can click Done, and wait for your certificate to arrive from the ARRL via email. It is a slow process, and if this is the first time you've requested a certificate, you'll be required to verify your address and license. The process varies depending on whether you're a US citizen or not, and is described in steps 5 and 6 on [this page](https://lotw.arrl.org/lotw-help/certreq/).

    ![Aether Certificate Request Submission Success](/images/RequestCertificate/CertificateRequestSubmissionSucceeded.png)

15. If a failure occurred during upload, you'll see a message indicating such. You have the option of exporting your certificate request file by clicking the Export button. You can then upload it to the ARRL manually at [https://www.arrl.org/lotw]().

    ![Aether Certificate Request Submission Failure](/images/RequestCertificate/CertificateRequestSubmissionFailed.png)

16. After you have finished requesting a certificate, you'll notice a new entry in the Manage Certificates window, with a status of "Requested". This indicates that Aether has a [private key](lotwtroubleshootingoverview/#requesting-a-certificate) for the newly created request, and is awaiting a certificate file to be granted by the ARRL.

    ![Aether Manage Certificates With Requested Certificate](/images/RequestCertificate/ManageCertificatesRequested.png)

17. When you receive your certificate file from the ARRL, it will be a .tq6 file. See [this page](installcertificate.md) for instructions for installing the certificate.

## More Help

As always, if you have a problem following the instructions here, or have further questions, please feel free to contact [Aether support](https://www.aetherlog.com/contact.html) for help.
