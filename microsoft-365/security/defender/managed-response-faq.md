---
title: FAQs related to managed response notifications in Microsoft Defender Experts for XDR
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

# FAQ's on managed response notifications

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

| Questions | Answers |
|---------|---------|
| **What is Managed Response** | Defender Experts offers Managed response where we manage the entire remediation process for incidents that require response. This includes investigating the incident to identify the root cause, determine the required response actions and taking those actions on the customer's behalf.|
| **What actions are in scope for Managed Response?** | All actions that are specific to Devices and Users are in scope for Managed Response. |
| **Do we have a list of actions that are supported as a part of Managed Response?** | All device actions found in [machineAction resource](/microsoft-365/security/defender-endpoint/api/machineaction) type and [user actions](/microsoft-365/security/defender-endpoint/api/user) are in scope for Managed Response for any device and user that is not excluded. |
| **What can the customers customize?** | Customers can configure the extent in which Defender Experts will do the Managed Response actions on their behalf. This can be done by excluding certain devices and users (individually or by groups) from Managed Response, either during onboarding or later on via settings. See **insert link** on how to do this. |
| **What support does DEX offer for excluded assets?** | If Defender Experts determine that response actions need to be taken on excluded devices or users, we notify customers in various, customizable, methods and direct them to Defender portal, where they can view detailed summary of our investigation process and the required response actions, which can be executed in a single click directly from the portal. Identical capabilities are available through Defender APIs, in case the customer prefers to use a SIEM, ITSM or any other external tool. |
| **How is the customer informed about the actions?** | Customers are informed in the incident home page via the Managed Response side panel on the actions that Defender Experts completed on their behalf plus any pending actions (if any) that they'd have to complete on assets that were excluded. |
| **Do customers have an option to customize Managed Response based on actions?** | No. If certain devices or users are considered High Value or Sensitive, customers can add them to the exclusion list and Defender Experts will NOT take any actions on them and only offer guidance if they were found to be impacted in an incident.

### See also

[How Microsoft Defender Experts for XDR permissions work](dex-xdr-permissions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
