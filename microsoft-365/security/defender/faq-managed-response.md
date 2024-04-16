---
title: FAQs related to Microsoft Defender Experts for XDR Managed response
ms.reviewer:
description: Frequently asked questions related to managed response notifications
ms.service: defender-experts
ms.subservice: dex-xdr
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
ms.date: 01/30/2024
---

# Understanding Managed response

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)

The following section lists down questions you or your SOC team might have regarding [Managed response](managed-detection-and-response-xdr.md).

| Questions | Answers |
|---------|---------|
|**What is Managed response?** | Microsoft Defender Experts for XDR offers **Managed response** where our experts manage the entire remediation process for incidents that require them. This process includes investigating the incident to identify the root cause, determining the required response actions, and taking those actions on your behalf.|
|**What actions are in scope for Managed response?** | All actions found below are in scope for Managed response for any device and user that isn't excluded.<br><br>*For devices* *(Available now)*<ul><li>Isolate machine<br><li>Release machine from isolation<br><li>Stop and quarantine file<br><li>Restrict app execution<br><li>Remove app restriction</ul><br>*For users (Coming soon)*<ul><li>Force password reset<br><li>Disable user<br><li>Enable user<br><li>Soft delete emails </ul> |
|**Can I customize the extent of Managed response?** | You can configure the extent to which our experts do Managed response actions on your behalf by excluding certain devices and users (individually or by groups) either during onboarding or later by modifying your service's settings. [Read more about excluding device groups](../defender/get-started-xdr.md#exclude-devices-from-remediation) |
|**What support do Defender Experts offer for excluded assets?** | If our experts determine that you need to perform response actions on excluded devices or users, we notify you through various customizable methods and direct you to your Microsoft Defender XDR portal. From your portal, you can then view a detailed summary of our investigation process and the required response actions in the portal and perform these required actions directly. Similar capabilities are also available through Defender APIs, in case you prefer using a security information and event management (SIEM), IT service management (ITSM), or any other third-party tool. |
|**How am I going to be informed about the response actions?** | Response actions that our experts have completed on your behalf and any pending ones that you need to perform on your excluded assets are displayed in the **Managed response** panel in your Defender portal's **Incidents** page. <br><br>In addition, you'll also receive an email containing a link to the incident and instructions to view the Managed response in the portal. Moreover, if you have integration with Microsoft Sentinel or APIs, you'll also be notified within those tools by looking for Defender Experts statuses. For more information, see [FAQs related to Microsoft Defender Experts for XDR incident notifications](../defender/faq-incident-notifications-xdr.md).|
|**Can I customize Managed response based on actions?** | No. If you have devices or users that are considered high-value or sensitive, you can add them to your exclusion list. Our experts will NOT take any action on them and will only provide guidance if they're impacted by an incident.|

### See also

- [Managed detection and response](managed-detection-and-response-xdr.md)
- [FAQs related to Microsoft Defender Experts for XDR incident notifications](../defender/faq-incident-notifications-xdr.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
