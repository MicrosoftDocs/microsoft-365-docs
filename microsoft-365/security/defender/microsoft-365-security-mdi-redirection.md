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
ms.author: bagol
author: batamig
ms.localizationpriority: medium
manager: raynew
audience: ITPro
ms.collection:
  - m365-security
  - tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 06/26/2023
---

# Redirecting accounts from Microsoft Defender for Identity to Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This article explains how Microsoft Defender for Identity accounts are routed to Microsoft 365 Defender by an automatic redirection from the former Microsoft Defender for Identity portal (portal.atp.azure.com), to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>.

## What to expect

Starting January 31, 2023, the portal redirection setting is automatically enabled for each tenant, and any requests to the standalone Defender for Identity portal (`portal.atp.azure.com`) are redirected to Microsoft 365 Defender (<https://security.microsoft.com>) along with any direct links to its functionality. Accounts accessing the former Microsoft Defender for Identity portal are automatically routed to the Microsoft 365 Defender portal.

## Can I go back to using the former portal?

As of July 2, 2023, the option to revert back to the classic portal is no longer available. All customers still using the classic Microsoft Defender for Identity portal are automatically redirected to Microsoft 365 Defender.

If something isn't working for you or if there's anything you're unable to complete through Microsoft 365 Defender, we want to hear about it. If you've encountered any issues with redirection, we encourage you to let us know by using the Give feedback submission form.


## Related information

- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [Deploy Microsoft Defender for Identity with Microsoft 365 Defender](/defender-for-identity/deploy-defender-identity)
- [About Microsoft 365 Defender](https://www.microsoft.com/microsoft-365/security/microsoft-365-defender)
- [Microsoft security portals and admin centers](portals.md)
