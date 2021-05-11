---
title: Troubleshoot Microsoft 365 Defender service issues
description: Find solutions and workarounds to known Microsoft 365 Defender issues
keywords: troubleshoot  Microsoft 365 Defender, troubleshoot, Microsoft Defender for Identity, issues, add-on, settings page
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Troubleshoot Microsoft 365 Defender service issues

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

This section addresses issues that might arise as you use the Microsoft 365 Defender service.

## I don't see Microsoft 365 Defender content

If you don't see capabilities on the navigation pane such as the Incidents, Action Center, or Hunting in your portal, you'll need to verify that your tenant has the appropriate licenses.

For more information, see [Prerequisites](prerequisites.md).

## Microsoft Defender for Identity alerts are not showing up in the Microsoft 365 Defender incidents

If you have Microsoft Defender for Identity deployed in your environment but you're not seeing Defender for Identity alerts as part of Microsoft 365 Defender incidents, you'll need to ensure that the Microsoft Cloud App Security and Defender for Identity integration is enabled.

For more information, see [Microsoft Defender for Identity integration](/cloud-app-security/mdi-integration).

## Where is the settings page for turning on the service?

To turn on Microsoft 365 Defender, access **Settings** from the navigation pane in the Microsoft 365 security center. This navigation item is visible only if you have the [prerequisite permissions and licenses](m365d-enable.md#check-license-eligibility-and-required-permissions).

## How do I create an exception for my file/URL?

A false positive is a file or URL that is detected as malicious but is not a threat. You can create indicators and define exclusions to unblock and allow certain files/URLs. See [Address false positives/negatives in Defender for Endpoint](/microsoft-365/security/defender-endpoint/defender-endpoint-false-positives-negatives).


