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
ms.date: 10/12/2023
---

# Understanding managed response

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

The following section lists down questions you or your SOC team might have regarding [managed response](start-using-mdex-xdr.md#managed-detection-and-response).

| Questions | Answers |
|---------|---------|
| **What is managed response?** | Microsoft Defender Experts for XDR offers **managed response** where our experts manage the entire remediation process for incidents that require them. This process includes investigating the incident to identify the root cause, determining the required response actions, and taking those actions on your behalf.|

| **What actions are in scope for managed response?** |

All actions found below are in scope for Managed Response for any device and user that is not excluded.
<br><br>
| **Category** | **Actions** |
|------------|--------|
<br><br>
| **Device** | <br><br>Isolate machine<br><br>Release from isolation<br><br>Run antivirus scan<br><br>Stop and quarantine file<br><br>Release from quarantine<br><br>Restrict app execution<br><br>Remove app restriction|
<br><br>
**User** | Force password reset<br><br>Disable user<br><br>Enable user<br><br>Suspend user<br><br>Unsuspend user<br><br>Revoke user tokens<br><br>Soft delete emails |
|
| **Can I customize the extent of managed response?** | You can configure the extent to which our experts do managed response actions on your behalf by excluding certain devices and users (individually or by groups) either during onboarding or later by modifying your service's settings. |
|
| **What support do Defender Experts offer for excluded assets?** | If our experts determine that you need to perform response actions on excluded devices or users, we notify you through various customizable methods and direct you to your Microsoft 365 Defender portal. From your portal, you can then view a detailed summary of our investigation process and the required response actions in the portal, and perform these required actions directly. Similar capabilities are also available through Defender APIs, in case you prefer using a security information and event management (SIEM), IT service management (ITSM), or any other third-party tool. |
|
| **How am I going to be informed about the response actions?** | Response actions that our experts have completed on your behalf and any pending ones that you need to perform on your excluded assets are displayed in the **Managed response** panel in your Microsoft 365 Defender portal's **Incidents** page. In addition, you will also receive an email containing a link to the incident and instructions to view the managed response in the portal. Moreover if you have integration with Microsoft Sentinel or API integration, you will also be notified within those tools by looking for DEX statuses. For more details, see FAQs related to Microsoft Defender Experts for XDR incident notifications. |
|
| **Can I customize managed response based on actions?** | No. If you have devices or users that are considered high-value or sensitive, you can add them to your exclusion list. Our experts will NOT take any action on them and will only provide guidance if they're impacted by an incident.|

### See also

[Start using Defender Experts for XDR service](start-using-mdex-xdr.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
