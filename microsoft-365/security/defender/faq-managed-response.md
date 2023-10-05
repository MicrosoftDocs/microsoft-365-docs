---
title: FAQ's related to Microsoft Defender Experts for XDR managed response
ms.reviewer:
description: Frequently asked questions related to managed response notifications
keywords: managed response, xdr, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, real-time visibility with XDR experts, FAQ's related to XDR
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 10/04/2023
---

# Understanding managed response

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

The following section lists down questions you or your SOC team might have regarding [managed response](start-using-mdex-xdr.md#managed-detection-and-response).

| Questions | Answers |
|---------|---------|
| **What is managed response?** | Microsoft Defender Experts for XDR offers **managed response** where our experts manage the entire remediation process for incidents that require them. This process includes investigating the incident to identify the root cause, determining the required response actions, and taking those actions on your behalf.|
| **What actions are in scope for managed response?** | All actions specific to devices and users that aren't excluded in the Defender Experts for XDR service are in scope for managed response. All device actions are listed in [machineAction resource](/microsoft-365/security/defender-endpoint/api/machineaction), while user actions can be found in the [user resource type page](/MicrosoftDocs/ATADocs/blob/main/ATPDocs/remediation-actions). |
| **Can I customize the extent of managed response?** | You can configure the extent to which our experts do managed response actions on your behalf by excluding certain devices and users (individually or by groups) either during onboarding or later by modifying your service's settings. |
| **What support do Defender Experts offer for excluded assets?** | If our experts determine that you need to perform response actions on excluded devices or users, we notify you through various customizable methods and direct you to your Microsoft 365 Defender portal. From your portal, you can then view a detailed summary of our investigation process and the required response actions in the portal, and perform these required actions directly. Similar capabilities are also available through Defender APIs, in case you prefer using a security information and event management (SIEM), IT service management (ITSM), or any other third-party tool. |
| **How am I going to be informed about the response actions?** | Response actions that our experts have completed on your behalf and any pending ones that you need to perform on your excluded assets are displayed in the **Managed response** panel in your Microsoft 365 Defender portal's **Incidents** page. |
| **Can I customize managed response based on actions?** | No. If you have devices or users that are considered high-value or sensitive, you can add them to your exclusion list. Our experts will NOT take any action on them and will only provide guidance if they're impacted by an incident.

### See also

[Start using Defender Experts for XDR service](start-using-mdex-xdr.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
