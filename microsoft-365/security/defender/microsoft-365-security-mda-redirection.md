---
title: Redirecting accounts from Microsoft Defender for Cloud Apps to Microsoft 365 Defender
description: How to redirect accounts and sessions from Defender for Cloud Apps to Microsoft 365 Defender.
keywords: Microsoft 365 Defender, Getting started with Microsoft 365 Defender, security center redirection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: bagol
author: batamig
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
---
# Redirecting accounts from Microsoft Defender for Cloud Apps to Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Defender for Cloud Apps

This guide explains how to route accounts to Microsoft 365 Defender by enabling automatic redirection from the former Microsoft Defender for Cloud Apps portal (`portal.cloudappsecurity.com`), to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>.

Customers using preview features are now automatically redirected to Microsoft 365 Defender from the classic Microsoft Defender for Cloud Apps portal. Admins can still update the redirect setting to continue using the classic Defender for Cloud Apps portal.

## What to expect

Once the redirection setting is enabled, any requests to the standalone Defender for Cloud Apps portal (`portal.cloudappsecurity.com`) will be redirected to Microsoft 365 Defender (<https://security.microsoft.com>) along with any direct links to its functionality. Accounts accessing the former Microsoft Defender for Cloud Apps portal will be automatically routed to the Microsoft 365 Defender portal.

## When does this take effect?

Once enabled, this update might take effect almost immediately for some accounts. But the redirection might take longer to propagate to every account in your organization. Accounts in active sessions while this setting is applied won't be ejected from their session and will only be routed to Microsoft 365 Defender after ending their current session or opening a new tab.  

### Set up portal redirection

To start routing accounts to Microsoft 365 Defender:

1. Make sure you have global administrator, security admin or Cloud App Security admin permissions in Azure Active Directory, or you're a local global admin in Microsoft Defender for Cloud Apps.
1. You can select **Configure automatic redirection** from the banner in the Microsoft Defender for Cloud Apps portal.
1. Alternatively, sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>.
1. Then navigate to **Settings** > **Cloud Apps** > **System** > **Redirection to Microsoft 365 Defender** or [go directly to the Redirection setting](https://security.microsoft.com/cloudapps/settings?tabid=autoRedirection).

    :::image type="content" source="../../media/defender-cloud-apps-portal-redirection.png" alt-text="Screenshot that shows Portal redirection."lightbox="../../media/defender-cloud-apps-portal-redirection.png":::

1. Toggle the Automatic redirection setting to **On**.

>[!IMPORTANT]
>Enabling this setting will not terminate active user sessions. Accounts who are in an active session while this setting is applied will only be directed to Microsoft 365 Defender after ending their current session or opening a new tab.

>[!NOTE]
>To enable or disable this setting, you must have global administrator, security admin, or Cloud App Security admin permissions in Azure Active Directory, or local global admin permissions in Microsoft Defender for Cloud Apps.  

## Can I go back to using the former portal?

If something isn't working for you or if there's anything you're unable to complete through Microsoft 365 Defender, we want to hear about it. If you've encountered any issues with redirection, we encourage you to let us know by using the Give feedback submission form.

To revert to the former Microsoft Defender for Cloud Apps portal:

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> as a global administrator, security administrator or Cloud App Security administrator in Azure Active directory, or a local global admin in Microsoft Defender for Cloud Apps.

1. Navigate to **Settings** > **Cloud Apps** > **System** > **Redirection to Microsoft 365 Defender** or [go directly to the Redirection setting](https://security.microsoft.com/cloudapps/settings?tabid=autoRedirection).

1. Toggle the Automatic redirection setting to **Off**.

This setting can be enabled again at any time.

Once disabled, accounts will no longer be routed to security.microsoft.com.

## Related information

- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [About Microsoft 365 Defender](https://www.microsoft.com/microsoft-365/security/microsoft-365-defender)
- [Microsoft security portals and admin centers](portals.md)
- [Microsoft Defender for Cloud Apps in Microsoft 365 Defender](microsoft-365-security-center-defender-cloud-apps.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
