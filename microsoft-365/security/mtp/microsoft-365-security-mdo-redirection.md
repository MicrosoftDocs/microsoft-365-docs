---
title: Redirecting accounts from Microsoft Defender for Office 365 to the new Microsoft 365 security center
description: How to redirect from the Defender for Office 365 to the Microsoft 365 security center.
keywords: Microsoft 365 security center, Getting started with the Microsoft 365 security center, security center redirection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---
# Redirecting accounts from Microsoft Defender for Office 365 to the Microsoft 365 security center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Defender for Office 365

This article explains how to route accounts to the Microsoft 365 security center by enabling automatic redirection from the former Microsoft Security and Compliance Center (protection.office.com or securitycenter.microsoft.com), to the Microsoft 365 security center (security.microsoft.com).

>[!NOTE]
> Portal redirection capability is available for Office 365 E5 and Microsoft Defender for Office P2 customers only

## What to expect
Once automatic redirection is enabled and active, users accessing the security-related capabilities in  Office 365 Security and Compliance (protection.office.com), will be automatically routed to the Microsoft 365 security center (https://security.microsoft.com).  

Learn more about what’s changed: [Microsoft Defender for Office 365 in the Microsoft 365 security center](microsoft-365-security-center-mdo.md).

With automatic redirection turned on, users will be routed to Microsoft 365 security center when they use security capabilities in the Office 365 Security and Compliance Center.

These include capabilities in the Threat Management section and the Threat Management dashboard and reports. Items in the Office 365 Security and Compliance Center that are not related to security are not redirected to the Microsoft 365 security center.

Compliance-related items can be found in the Microsoft 365 compliance center, and mail-flow related items can be found in the Exchange admin center.

All other capabilities, whether compliance-related or capabilities that serve both are not affected by redirection. Office 365 security alerts appear in both the Microsoft 365 security center and the Office 365 Security and Compliance center, without redirection.  

### Set up portal redirection
To start routing accounts to the Microsoft 365 security center at security.microsoft.com:

1. Make sure you’re a global administrator or have security administrator permissions in Azure Active directory.
2. [Sign in](https://security.microsoft.com/) to the Microsoft 365 security center.
3. Navigate to **Settings** > **Email & collaboration** > **Portal redirection**.  
4. Toggle the Automatic redirection setting to **On**.
5. Click **Enable** to apply automatic redirection to the Microsoft 365 security center portal.

> [!NOTE]
> After redirection is enabled, accounts in active sessions while this setting is applied will not be ejected from their session and will only be routed to the Microsoft 365 security center after ending their current session and signing back in again.

## Can I go back to using the former portal?
If something isn’t working for you or if there’s anything you’re unable to complete through the Microsoft 365 security center portal, we want to hear about it using the portal feedback option. If you’ve encountered any issues with redirection, we encourage you to reach out to your PM buddy directly through private preview or let us know via the Give feedback submission form.

To revert to the former portal:

1. [Sign in](https://security.microsoft.com/) to the Microsoft 365 security center as a global administrator or using and account with security administrator permissions in Azure Active directory.

2. Navigate to **Settings** > **Endpoints** > **General** > **Portal redirection**.  

3. Toggle the Automatic redirection setting to **Off**.

4. Click **Disable** & share feedback when prompted.

This setting can be enabled again at any time.

Once disabled, accounts will no longer be routed to security.microsoft.com, and you will once again have access to the former portal - securitycenter.windows.com or securitycenter.microsoft.com.

## Related information
- [Microsoft 365 security center overview](overview-security-center.md)
- [Microsoft Defender for Endpoint in the Microsoft 365 security center](microsoft-365-security-center-mde.md)
- [Microsoft delivers unified SIEM and XDR to modernize security operations](https://www.microsoft.com/security/blog/?p=91813) 
- [XDR versus SIEM infographic](https://afrait.com/blog/xdr-versus-siem/) 
- [The New Defender](https://afrait.com/blog/the-new-defender/) 
- [About Microsoft 365 Defender](https://www.microsoft.com/microsoft-365/security/microsoft-365-defender) 
- [Microsoft security portals and admin centers](portals.md)