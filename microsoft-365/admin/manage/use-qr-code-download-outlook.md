---
title: "Use a QR code to sign-in to the Outlook mobile apps"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/26/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
description: "Learn how to use a QR code to authenticate and download Outlook mobile."
---

# Use a QR code to sign-in to the Outlook mobile apps

> [!IMPORTANT]
> As of August 2021, this experience has been put on _hold_ indefinitely for commercial and enterprise users due to organizations' lack of control over them. The work involved in providing these controls is extensive and the Identity team continues to work on them. We rolled back this experience on commercial and enterprise users since we wanted to provide more security and customization for all the different cases they managed.


As the Microsoft 365 administrator, you can enable your users to sign in to Outlook for Android or iOS app on their mobile devices without having to enter their username and password. By scanning a QR code, users can securely authenticate and sign in to Outlook mobile.

In Outlook on the web or other desktop Outlook applications, users may see notifications informing them that they can use Outlook on their mobile device. These notifications can be managed by the administrator using Exchange PowerShell. If users choose to send themselves an SMS text message to download the app on their mobile device, a QR code will appear on their computer. They will be able to scan the QR code to log into Outlook on their phone or tablet. This QR code is a short lived token that can only be redeemed once.

The notification is only generated if the following conditions are met:

1. The QR code experience is enabled for the tenant (this experience is enabled by default).

2. The user is not already using Outlook for iOS and Android.

3. The user has an empty state at reading pane (does not select the option of auto opening the first email).

4. The user did not dismiss the notification.

> [!NOTE]
> In some cases, your users must re-authenticate on their computer to generate the QR code.

## Use Exchange PowerShell

This feature is on by default. To disable this feature, follow the steps below.

1. [Connect to Exchange PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
2. Using PowerShell, you can disable the notifications informing your users about the Outlook mobile apps. This also prevents the QR code sign-in flow from being shown.

```powershell
Set-OrganizationConfig -MobileAppEducationEnabled <Boolean>
```

> [!NOTE]
> When using the Exchange PowerShell command, changes may take up to 8 hours to propagate.

## Related content

[Set up the Standard or Targeted release options](release-options-in-office-365.md) (article)\
[Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig) (article)
