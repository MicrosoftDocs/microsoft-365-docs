---
title: "Use a QR code to sign-in to Outlook mobile apps"
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

# Use a QR code to download Outlook mobile

As the Microsoft 365 administrator, you can allow your users to sign-in to the Outlook for Android or iOS apps on their mobile devices without having to enter their username and password. You can turn on the setting in the Microsoft 365 admin center that allows your users to scan a QR code to authenticate themselves in the Outlook mobile apps.

In Outlook on the web or other desktop Outlook applications, there are notifications promoting the Outlook mobile apps, which can be managed by the administrator using Exchange Powershell.
When a user interacts with them and sends themselves an SMS text message to download the app on their mobile device, a QR code will appear on their computer. Your users will be able to scan the QR code to log in to Outlook on their phone. This QR code is a short-lived token that can only be redeemed once. You can mange this feature from the Microsoft admin center.

> [!NOTE]
> In some cases, your users will have to re-authenticate on their computer to generate the QR code.
  
## Before you begin

You need to be a global administrator to initiate sign-out.

## Use the Microsoft admin center

> [!NOTE]
> This setting will be on by default.

1. In the Microsoft 365 admin center, go to **Settings** -> **Org Settings**.
2. On the Org Settings page, select **Security & privacy**.
3. Select **Mobile app sign-in**.
4. Select the toggle to turn off the ability to use a QR code.

## Use Exchange PowerShell

1. Connect to [Connect to Exchange PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps).
2. Using PowerShell, you can disable the QR code option for your users.
```powershell
Set-Organization -MobileAppEducationEnabled <Boolean>
```

For more information, check out [Set-OrganizationConfig
](https://docs.microsoft.com/powershell/module/exchange/set-organizationconfig?view=exchange-ps).