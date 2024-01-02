---
title: Troubleshoot Microsoft Defender XDR service issues
description: Find solutions and workarounds to known Microsoft Defender XDR issues
keywords: troubleshoot Microsoft Defender XDR, troubleshoot, Microsoft Defender for Identity, issues, add-on, settings page
search.product: eADQiWindows 10XVcnh
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance
- tier3
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 02/16/2021
---

# Troubleshoot Microsoft Defender XDR service issues

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

This section addresses issues that might arise as you use the Microsoft Defender XDR service.

<a name='i-dont-see-microsoft-365-defender-content'></a>

## I don't see Microsoft Defender XDR content

If you don't see capabilities on the navigation pane such as the Incidents, Action center, or Hunting in your portal, you'll need to verify that your tenant has the appropriate licenses.

For more information, see [Prerequisites](prerequisites.md).

<a name='microsoft-defender-for-identity-alerts-are-not-showing-up-in-the-microsoft-365-defender-incidents'></a>

## Microsoft Defender for Identity alerts are not showing up in the Microsoft Defender XDR incidents

If you have Microsoft Defender for Identity deployed in your environment but you're not seeing Defender for Identity alerts as part of Microsoft Defender XDR incidents, you'll need to ensure that the Microsoft Defender for Cloud Apps and Defender for Identity integration is enabled.

For more information, see [Microsoft Defender for Identity integration](/cloud-app-security/mdi-integration).

## Where is the settings page for turning on the service?

To turn on Microsoft Defender XDR, access **Settings** from the navigation pane in the Microsoft Defender portal. This navigation item is visible only if you have the [prerequisite permissions and licenses](m365d-enable.md#check-license-eligibility-and-required-permissions).

## How do I create an exception for my file/URL?

A false positive is a file or URL that is detected as malicious but is not a threat. You can create indicators and define exclusions to unblock and allow certain files/URLs. See [Address false positives/negatives in Defender for Endpoint](/microsoft-365/security/defender-endpoint/defender-endpoint-false-positives-negatives).
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
