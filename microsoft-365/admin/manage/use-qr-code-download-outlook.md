---
title: "Use a QR code to sign-in to the Outlook mobile apps"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 09/30/2024
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
> As of September2024, this feature will turned off indefinitely for Enterprise users. For more details on the settings and controls for this feature see, [Conditional Access: Authentication flows (Preview)](/entra/identity/conditional-access/concept-authentication-flows).

As the Microsoft 365 administrator, you can allow your users to sign in to the Outlook for Android or iOS app on their mobile devices without having to enter their username and password. By scanning a QR code, users can securely authenticate and sign in to Outlook mobile.

In Outlook on the web or Outlook desktop app, users now have a button labeled Outlook mobile. Once a user selects the button, a QR code will appear. Users then can scan QR code with their Outlook mobile app to sign in. Outlook will use their identity from Azure Active Directory to securely log them into the app on their mobile device. The QR code is a temporary token that can only be used once per session.

> [!NOTE]
> In some cases, your users must re-authenticate on their computer to generate the QR code.

## Use Exchange PowerShell to turn of QR code sign in

This feature is on by default but you can turn it off by setting the Set-OWAMailboxPolicy command, **AccountTransferEnabled** to false. Users that have already used this feature won’t be signed out.

1. [Connect to Exchange PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Using PowerShell, you can disable the button from being shown to your users and prevent the QR code sign-in flow from being used.

   ```powershell
   Set-OwaMailboxPolicy --Identity EMEA\Contoso\Corporate -AccountTransferEnabled $false
   ```

> [!NOTE]
> When using the Exchange PowerShell command, changes may take up to 8 hours to propagate.

## Related content

[Set up the Standard or Targeted release options](release-options-in-office-365.md) (article)\
[Set-OwaMailboxPolicy](/powershell/module/exchange/set-owamailboxpolicy) (article)
[Conditional Access: Authentication flows (Preview)](/entra/identity/conditional-access/concept-authentication-flows)
