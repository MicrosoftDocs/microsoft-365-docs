---
title: Redirecting accounts from Microsoft Defender for Identity to Microsoft 365 Defender
description: How to redirect accounts and sessions from Defender for Identity to Microsoft 365 Defender.
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
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 04/28/2022
---

# Redirecting accounts from Microsoft Defender for Identity to Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This guide explains how to route accounts to Microsoft 365 Defender by enabling automatic redirection from the former Microsoft Defender for Identity portal (portal.atp.azure.com), to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>.

## What to expect

Starting January 31, 2023, the portal redirection setting will be automatically enabled for each tenant. Once the redirection setting is enabled, any requests to the standalone Defender for Identity portal (`portal.atp.azure.com`) will be redirected to Microsoft 365 Defender (<https://security.microsoft.com>) along with any direct links to its functionality. Accounts accessing the former Microsoft Defender for Identity portal will be automatically routed to the Microsoft 365 Defender portal.

## When does this take effect?

Once enabled, this update might take effect almost immediately for some accounts. But the redirection might take longer to propagate to every account in your organization. Accounts in active sessions while this setting is applied won't be ejected from their session and will only be routed to Microsoft 365 Defender after ending their current session and signing back in again.

### Set up portal redirection

To start routing accounts to Microsoft 365 Defender:

1. Make sure you're a global administrator or have security administrator permissions in Azure Active Directory.

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>.

1. Navigate to **Settings** > **Identities** > **General** > **Portal redirection** or [go here](https://security.microsoft.com/preferences2/portal_redirection).

    :::image type="content" source="../../media/portal-redirection.png" alt-text="Portal redirection."lightbox="../../media/portal-redirection.png":::

1. Toggle the Automatic redirection setting to **On**.

> [!IMPORTANT]
> Enabling this setting will not terminate active user sessions. Accounts who are in an active session while this setting is applied will only be directed to Microsoft 365 Defender after ending their current session and signing in again.

> [!NOTE]
> You must be a global administrator or have security administrator permissions in Azure Active Directory to enable or disable this setting.

## Can I go back to using the former portal?

If something isn't working for you or if there's anything you're unable to complete through Microsoft 365 Defender, we want to hear about it. If you've encountered any issues with redirection, we encourage you to let us know by using the Give feedback submission form.

To revert to the former Microsoft Defender for Identity portal:

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> as a global administrator or using and account with security administrator permissions in Azure Active directory.

2. Navigate to **Settings** > **Identities** > **General** > **Portal redirection** or [open the page here](https://security.microsoft.com/preferences2/portal_redirection).

3. Toggle the Automatic redirection setting to **Off**.

This setting can be enabled again at any time.

Once disabled, accounts will no longer be routed to security.microsoft.com.

> [!NOTE]
> For tenants created after March 15, 2023, the option to disable the setting toggle is not available.

## Related information

- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [Deploy Microsoft Defender for Identity with Microsoft 365 Defender](/defender-for-identity/deploy-defender-identity)
- [About Microsoft 365 Defender](https://www.microsoft.com/microsoft-365/security/microsoft-365-defender)
- [Microsoft security portals and admin centers](portals.md)
