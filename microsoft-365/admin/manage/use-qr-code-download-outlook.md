---
title: "Use a QR code to sign-in to the Outlook mobile apps"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
description: "Learn how to use a QR code to authenticate and download Outlook mobile."
---

# Use a QR code to sign-in to the Outlook mobile apps

> [!IMPORTANT]
> This Microsoft 365 feature is in public preview right now. Public preview provides early access to Microsoft 365 features.

As the Microsoft 365 administrator, you can enable your users to sign in to Outlook for Android or iOS app on their mobile devices without having to enter their username and password. By scanning a QR code, users can securely  authenticate and sign in to Outlook mobile.  The setting can be managed in the Microsoft 365 admin center..

In Outlook on the web or other desktop Outlook applications, users may see notifications informing them that they can use Outlook on their mobile device. These notifications can be managed by the administrator using Exchange Powershell. If users choose to send themselves an SMS text message to download the app on their mobile device, a QR code will appear on their computer. They will be able to scan the QR code to log into Outlook on their phone or tablet. This QR code is a short-lived token that can only be redeemed once. You can manage this feature from the Microsoft admin center.

> [!NOTE]
> In some cases, your users will have to re-authenticate on their computer to generate the QR code.
  
## Before you begin

You need to be a global administrator to configure these settings.

## Use the Microsoft admin center

> [!NOTE]
> The QR code setting is on by default.

1. In the Microsoft 365 admin center, go to **Settings** -> **Org Settings**.
2. On the Org Settings page, select **Security & privacy**.
3. Select **Mobile app sign-in**.
4. Select the toggle to turn off the the QR code functionality.

## Use Exchange PowerShell

1. [Connect to Exchange PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps).
2. Using PowerShell, you can disable the notifications informing your users about the Outlook mobile apps.

```powershell
Set-Organization -MobileAppEducationEnabled <Boolean>
```

Related topics

[Set-OrganizationConfig](https://docs.microsoft.com/powershell/module/exchange/set-organizationconfig?view=exchange-ps)