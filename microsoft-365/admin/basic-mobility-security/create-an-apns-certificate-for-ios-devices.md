---
title: "Create an APNs certificate for iOS devices"
f1.keywords: NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom: 
- AdminSurgePortfolio
- basic-mobility-security
description: "To manage iOS devices such as iPads and iPhones in Basic Mobility and Security, begin by creating an Apple Push Notification service (APNs) certificate."
---

# Create an APNs certificate for iOS devices

To manage iOS devices like iPad and iPhones, you need to create an Apple Push Notification service (APNs) certificate.

1. Sign in to Microsoft Azure with your Intune administrator account.

1. Go to [Configure MDM Push Certificate](https://portal.azure.com/#view/Microsoft_Intune_Enrollment/APNSCertificateUploadBlade).

1. Select **I agree** to authorize Microsoft to communicate with Apple.

1. Select **Download your CSR** and save the certificate signing request to a location on your computer that you'll remember. 

1. Select **Create your MDM push certificate** to open the Apple Push Certificates Portal.

   a. Sign in with an Apple ID.

     > [!IMPORTANT]
     > Use a company Apple ID associated with an email account that will remain with your organization even if the user who manages the account leaves. Save this ID because you'll need to use the same ID when it's time to renew the certificate.

   b. Select **Create a Certificate** and accept the **Terms of Use**.

   c. Browse to the certificate signing request that you downloaded to your computer from Microsoft 365 and then select **Upload**.

   d. Download the APNs certificate created by the Apple Push Certificate Portal to your computer.

     > [!TIP]
     > If you're having trouble downloading the certificate, refresh your browser.

1. Go back to Microsoft Azure and browse to the APNs certificate that you downloaded from the Apple Push Certificates Portal.

1. Select **Upload**.

To complete setup, go back to [Basic Mobility and Security](https://compliance.microsoft.com/basicmobilityandsecurity).
