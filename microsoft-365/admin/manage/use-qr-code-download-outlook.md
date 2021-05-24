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
> This feature is only available to organizations that have turned on Targeted Release in the Microsoft 365 admin center. To turn on Targeted release and learn more about how it works, see [Set up the Standard or Targeted release options](release-options-in-office-365.md). We’ll be expanding to more organizations in the coming weeks through public preview. Public preview provides early access to Microsoft 365 features.

As the Microsoft 365 administrator, you can enable your users to sign in to Outlook for Android or iOS app on their mobile devices without having to enter their username and password. By scanning a QR code, users can securely authenticate and sign in to Outlook mobile.

In Outlook on the web or other desktop Outlook applications, users may see notifications informing them that they can use Outlook on their mobile device. These notifications can be managed by the administrator using Exchange Powershell. If users choose to send themselves an SMS text message to download the app on their mobile device, a QR code will appear on their computer. They will be able to scan the QR code to log into Outlook on their phone or tablet. This QR code is a short lived token that can only be redeemed once.

> [!NOTE]
> In some cases, your users must re-authenticate on their computer to generate the QR code.

## Use Exchange PowerShell

This feature is on by default. To disable this feature, follow the steps below.

1. [Connect to Exchange PowerShell](/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps).
2. Using PowerShell, you can disable the notifications informing your users about the Outlook mobile apps. This also prevents the QR code sign-in flow from being shown.

```powershell
Set-OrganizationConfig -MobileAppEducationEnabled <Boolean>
```

## Related content

[Set up the Standard or Targeted release options](release-options-in-office-365.md) (article)\
[Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig?view=exchange-ps) (article)