## Overview

![QSL Preferences Tab](/images/QSLPreferences.png)

The QSL tab of the preferences window contains settings related to using Aether with Logbook of The World (LoTW) and eQSL.cc. These are both deep topics, and much more information about them can be found in the [LoTW Guide](/lotw/lotwsetup) and the [eQSL.cc Guide](/eqsl/eqsl).

## Logbook of The World Settings

The Logbook of The World section of the QSL tab includes boxes for your LoTW username and password, which Aether uses to synchronize your log with the LoTW servers. It also includes the following:

#### Automatically sync log with LoTW

When the "Automatically sync log with LoTW" option is enabled, Aether will automatically sync your log with LoTW anytime a new QSO is logged. This includes uploading the new QSOs, as well as downloading new synchronizations. This process can be inefficient, especially for users with many QSOs in their Aether or LoTW logbooks, and is therefore **disabled** by default. It is important to note that this option **does not** need to be enabled to use Aether with LoTW, and in fact for most users, it is recommended to leave it disabled. Syncing with LoTW can always be manually initiated using the Log->Synchronize all QSOs with LoTW option (or pressing control-S). There are also other ways to initiate manual synchronizations.

#### Manage Certificates...

![Manage Certificates Window](/images/ExportP12/ManageCertificatesFull.png)

The "Manage Certificates..." button opens the Manage LoTW Certificates window. Using this window, you can view your installed LoTW certificates, request a new certificate, as well as import and export certificates. This is all covered in detail in the Certificates section of the LoTW Guide, starting on [this page](/lotw/requestcertificate).

## eQSL.cc Settings

The eQSL.cc section of the QSL tab includes boxes for your eQSL.cc username and password, which Aether uses to synchronize your log with the eQSL.cc servers. It also includes the following:

#### QTH Nickname

eQSL.cc allows you to create multiple QTH nicknames on your account, which is useful for example if you operate from multiple QTHs. This setting allows you to control which QTH Nickname Aether uses when uploading QSOs to your eQSL.cc account.

#### Automatically sync log with LoTW

When the "Automatically sync log with LoTW" option is enabled, Aether will automatically sync your log with eQSL.cc anytime a new QSO is logged. This includes uploading the new QSOs, as well as downloading new synchronizations. This process can be inefficient, especially for users with many QSOs in their Aether or LoTW logbooks, and is therefore **disabled** by default. It is important to note that this option **does not** need to be enabled to use Aether with eQSL.cc, and in fact for most users, it is recommended to leave it disabled. Syncing with LoTW can always be manually initiated using the Log->Synchronize all QSOs with eQSL.cc option (or pressing control-shift-S). There are also other ways to initiate manual synchronizations.
