---
title: "Create an APNs certificate for iOS devices"
f1.keywords: NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 08/27/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
description: "To manage iOS devices such as iPads and iPhones in Basic Mobility and Security, begin by creating an APNs certificate."
---

# Create an APNs certificate for iOS devices

To manage iOS devices such as iPads and iPhones in Basic Mobility and Security, create an APNs certificate.

1. Sign in to Microsoft 365 with your global admin account.

1. Go to the [Microsoft 365 admin center](https://portal.office.com/adminportal/home?#/MifoDevices), and choose **APNs Certificate for iOS**.

1. On the Apple Push Notification Certificate Settings page, choose **Next**.

1. Select Download your CSR file and save the certificate signing request to somewhere on your computer that you'll remember. Select **Next**.

1. On the Create an APNs certificate page:

    1. Select Apple APNS Portal to open the Apple Push Certificates Portal.

    2. Sign in with an Apple ID.

       > [!IMPORTANT]
       > Use a company Apple ID associated with an email account that will remain with your organization even if the user who manages the account leaves. Save this ID because you'll need to use the same ID when it's time to renew the certificate.

    3. Select **Create a Certificate** and accept the Terms of Use.

    4. Browse to the certificate signing request you downloaded to your computer from Microsoft 365, and select **Upload**.

       Download the APNs certificate created by the Apple Push Certificate Portal to your computer.

       > [!TIP]
       > If you're having trouble downloading the certificate, refresh your browser.

1. Go back to Microsoft 365, and select **Next** to get to the **Upload APNS certificate** page.

1. Browse to the APN certificate you downloaded from the Apple Push Certificates Portal.

1. Select **Finish**.

To complete setup, go back to the Security & Compliance Center \> **Security policies** \> **Device management** \> **Manage settings**.
