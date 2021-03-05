---
title: Redirecting accounts from Microsoft Defender for Endpoint to the Microsoft 365 security center
description: How to redirect accounts and sessions from the Defender for Endpoint to the Microsoft 365 security center.
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
# Redirecting accounts from Microsoft Defender for Endpoint to the Microsoft 365 security center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

[!INCLUDE [Prerelease](../includes/prerelease.md)]

**Applies to:**
- Microsoft 365 Defender
- Defender for Endpoint

In alignment with Microsoft’s cross-domain approach to threat protection with SIEM and Extended detection and response (XDR), we’ve rebranded Microsoft Defender Advanced Threat Protection as Microsoft Defender for Endpoint and unified it into a single integrated portal - the Microsoft 365 security center.

This guide explains how to route accounts to the Microsoft 365 security center by enabling automatic redirection from the former Microsoft Defender for Endpoint portal (securitycenter.windows.com or securitycenter.microsoft.com), to the Microsoft 365 security center portal (security.microsoft.com).

## What to expect
Once automatic redirection is enabled, accounts accessing the former Microsoft Defender for Endpoint portal at securitycenter.windows.com or securitycenter.microsoft.com, will be automatically routed to the Microsoft 365 security center portal at security.microsoft.com.
 
Learn more about what’s changed: [Microsoft Defender for Endpoint in the Microsoft 365 security center](microsoft-365-security-center-mde.md).

This includes redirection for direct access to the former portal via browser, including links pointing towards the former securitycenter.windows.com portal - such as links in email notifications, and links returned by SIEM API calls.  

 External links from email notifications or SIEM APIs currently contain links to both portals. Once redirection is enabled, both links will point to the Microsoft 365 security center until the old link is eventually removed. We encourage you to adopt the new link pointing to the Microsoft 365 security center.

Refer to the table below for more on links and routing.
## SIEM API routing

|**Property**  |**Destination when redirection is OFF**  |**Destination when redirection is ON** | 
|---------|---------|---------|
| LinkToWDATP | Alert page in securitycenter.windows.com | Alert page in security.microsoft.com  |
| IncidentLinkToWDATP | Incident page in securitycenter.windows.com  | Incident page in security.microsoft.com  |
| LinkToMTP | Alert page in security.microsoft.com | Alert page in security.microsoft.com  |
| IncidentLinkToMTP | Incident page in security.microsoft.com  | Incident page in security.microsoft.com  

## Email alert notifications

|**Property**  |**Destination when redirection is OFF**  |**Destination when redirection is ON** |
|---------|---------|---------|
| Alert page  | Alert page in securitycenter.windows.com  | Alert page in security.microsoft.com  |
| Incident page  |Incident page in securitycenter.windows.com  | Incident page in security.microsoft.com  
| Alert page in security center portal | Alert page in security.microsoft.com | Alert page in security.microsoft.com | 
| Incident page in security center portal | Incident page in security.microsoft.com  | Incident page in security.microsoft.com  |

## When does this take effect? 
Once enabled, this update might take effect almost immediately for some accounts. But the redirection might take longer to propagate to every account in your organization. Accounts in active sessions while this setting is applied will not be ejected from their session and will only be routed to the Microsoft 365 security center after ending their current session and signing back in again.  

### Set up portal redirection
To start routing accounts to the Microsoft 365 security center:
1. Make sure you’re a global administrator or have security administrator permissions in Azure Active directory 

2. [Sign in](https://security.microsoft.com/) to the Microsoft 365 security center.

3. Navigate to **Settings** > **Endpoints** > **General** > **Portal redirection** or [click here](https://security.microsoft.com/preferences2/portal_redirection).  

4. Toggle the Automatic redirection setting to **On**.

5. Click **Enable** to apply automatic redirection to the Microsoft 365 security center portal.

>[!IMPORTANT]
>Enabling this setting will not terminate active user sessions. Accounts who are in an active session while this setting is applied will only be directed to the Microsoft 365 security center after ending their current session and signing in again.

>[!NOTE]
>You must be a global administrator or have security administrator permissions in Azure Active Directory to enable or disable this setting.  

## Can I go back to using the former portal?
If something isn’t working for you or if there’s anything you’re unable to complete through the Microsoft 365 security center portal, we want to hear about it. If you’ve encountered any issues with redirection, we encourage you to let us know by using the Give feedback submission form.

To revert to the former Microsoft Defender for Endpoint portal:

1. [Sign in](https://security.microsoft.com/) to the Microsoft 365 security center as a global administrator or using and account with security administrator permissions in Azure Active directory.

2. Navigate to **Settings** > **Endpoints** > **General** > **Portal redirection** or [open the page here](https://security.microsoft.com/preferences2/portal_redirection).  

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