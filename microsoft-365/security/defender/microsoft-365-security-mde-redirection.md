---
title: Redirecting from the Microsoft Defender Security Center to the Microsoft Defender portal
description: How to redirect accounts and sessions from the Defender for Endpoint to Microsoft Defender XDR.
ms.service: defender-xdr
ms.mktglfcycl: deploy
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 02/14/2024
---

# Redirecting from the Microsoft Defender Security Center to the Microsoft Defender portal

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR
- Defender for Endpoint

In alignment with Microsoft's cross-domain approach to threat protection with SIEM and Extended Detection and Response (XDR), we've rebranded Microsoft Defender Advanced Threat Protection as Microsoft Defender for Endpoint and unified it into a single integrated portal: the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

This guide explains how to enable automatic redirection from the former Microsoft Defender Security Center (securitycenter.windows.com or securitycenter.microsoft.com), to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender portal</a>.

> [!NOTE]
> Microsoft Defender for Endpoint in the Microsoft Defender portal supports [granting access to managed security service providers (MSSPs)](/windows/security/threat-protection/microsoft-defender-atp/grant-mssp-access) in the same that way access is [granted in the former Microsoft Defender Security Center](./mssp-access.md).

## What to expect

Once automatic redirection is enabled, accounts accessing the former Microsoft Defender Security Center at securitycenter.windows.com or securitycenter.microsoft.com are automatically routed to the Microsoft Defender portal at <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank"><security.microsoft.com></a>.

Learn more about what's changed: [Microsoft Defender for Endpoint](microsoft-365-security-center-mde.md).

These changes include redirection for direct access to the former portal via browser, including links pointing towards the former securitycenter.windows.com portal, such as links in email notifications, and links returned by SIEM API calls.

External links from email notifications or SIEM APIs currently contain links to both portals. Once redirection is enabled, both links point to the new Microsoft Defender portal until the old link is eventually removed. We encourage you to adopt the new link pointing to the Microsoft Defender portal.

Refer to the following table for more on links and routing.

## SIEM API routing

| Property | Destination when redirection is OFF | Destination when redirection is ON |
|---------|---------|---------|
| LinkToWDATP | Alert page in securitycenter.windows.com | Alert page in security.microsoft.com |
| IncidentLinkToWDATP | Incident page in securitycenter.windows.com | Incident page in security.microsoft.com |
| LinkToMTP | Alert page in security.microsoft.com | Alert page in security.microsoft.com |
| IncidentLinkToMTP | Incident page in security.microsoft.com | Incident page in security.microsoft.com |

## Email alert notifications

| Property | Destination when redirection is OFF** | Destination when redirection is ON |
|---------|---------|---------|
| Alert page | Alert page in securitycenter.windows.com | Alert page in security.microsoft.com |
| Incident page |Incident page in securitycenter.windows.com | Incident page in security.microsoft.com |
| Alert page in Defender for Cloud portal | Alert page in security.microsoft.com | Alert page in security.microsoft.com |
| Incident page in Defender for Cloud portal | Incident page in security.microsoft.com | Incident page in security.microsoft.com |

## When does this take effect?

Once enabled, this update might take effect almost immediately for some accounts. But the redirection might take longer to propagate to every account in your organization. Accounts in active sessions while this setting is applied won't be ejected from their session and will only be routed to Microsoft Defender XDR after ending their current session and signing back in again.

### Set up portal redirection

To start routing accounts to Microsoft Defender XDR:

1. Make sure you're a global administrator or have security administrator permissions in Microsoft Entra ID.

2. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender portal</a>.

3. Navigate to **Settings** \> **Endpoints** \> **General** \> **Portal redirection** or [click here](https://security.microsoft.com/preferences2/portal_redirection).

4. Toggle the **Automatic redirection** setting to **On**.

5. Select **Enable** to apply automatic redirection to the Microsoft Defender portal.

> [!IMPORTANT]
> Enabling this setting doesn't terminate active user sessions. Accounts who are in an active session while this setting is applied are directed to the Microsoft Defender portal after ending their current session and signing in again.

## Can I go back to using the former portal?

If something isn't working for you or if there's anything you're unable to complete through the Microsoft Defender portal, we want to hear about it. If you've encountered any issues with redirection, we encourage you to let us know by using the **Give feedback** submission form.

To revert to the former Microsoft Defender Security Center:

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender portal</a> as a global administrator or using and account with security administrator permissions in Microsoft Entra ID.

2. Navigate to **Settings** \> **Endpoints** \> **General** \> **Portal redirection** or [open the page here](https://security.microsoft.com/preferences2/portal_redirection).

3. Toggle the **Automatic redirection** setting to **Off**.

4. Select **Disable** & share feedback when prompted.

This setting can be enabled again at any time.

Once disabled, accounts aren't routed to security.microsoft.com, and you'll have access to the former portal - securitycenter.windows.com or securitycenter.microsoft.com.

## Related information

- [Microsoft Defender XDR overview](microsoft-365-defender.md)
- [Microsoft Defender for Endpoint in Microsoft Defender XDR](microsoft-365-security-center-mde.md)
- [Microsoft delivers unified SIEM and XDR to modernize security operations](https://www.microsoft.com/security/blog/?p=91813)
- [About Microsoft Defender XDR](https://www.microsoft.com/microsoft-365/security/microsoft-365-defender)
- [Microsoft security portals and admin centers](portals.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
