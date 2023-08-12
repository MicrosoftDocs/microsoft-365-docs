---
title: Microsoft 365 Defender prerequisites
description: Learn about the licensing, hardware and software requirements, and other configuration settings for Microsoft 365 Defender
ms.service: microsoft-365-security
ms.subservice: m365d
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 07/21/2023
---

# Microsoft 365 Defender prerequisites

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Learn about licensing and other requirements for provisioning and using [Microsoft 365 Defender](microsoft-365-defender.md).

## Licensing requirements
Any of these licenses gives you access to Microsoft 365 Defender features via the Microsoft 365 Defender portal without additional cost:

- Microsoft 365 E5 or A5
- Microsoft 365 E3 with the Microsoft 365 E5 Security add-on
- Microsoft 365 E3 with the Enterprise Mobility + Security E5 add-on
- Microsoft 365 A3 with the Microsoft 365 A5 Security add-on
- Windows 10 Enterprise E5 or A5
- Windows 11 Enterprise E5 or A5
- Enterprise Mobility + Security (EMS) E5 or A5 
- Office 365 E5 or A5
- Microsoft Defender for Endpoint
- Microsoft Defender for Identity 
- Microsoft Defender for Cloud Apps or [Cloud App Discovery](/defender-cloud-apps/editions-cloud-app-security-aad)
- Microsoft Defender for Office 365 (Plan 1 or 2)
- Microsoft 365 Business Premium
- Microsoft Defender for Business

For more information, [view the Microsoft 365 Enterprise service plans](https://www.microsoft.com/licensing/product-licensing/microsoft-365-enterprise).

> Don't have license yet? [Try or buy a Microsoft 365 subscription](../../commerce/try-or-buy-microsoft-365.md)

### Check your existing  licenses
Go to Microsoft 365 admin center ([admin.microsoft.com](https://admin.microsoft.com/)) to view your existing licenses. In the admin center, go to **Billing** > **Licenses**.

> [!NOTE]
> You need to be assigned either the **Billing admin** or **Global reader** [role in Azure AD](/azure/active-directory/roles/permissions-reference) to be able to see license information. If you encounter access problems, contact a global admin.

## Required permissions
You must be a **global administrator** or a **security administrator** in Azure Active Directory to turn on Microsoft 365 Defender. For the list of roles required to use Microsoft 365 Defender and information on how access to data is regulated, read about [managing access to Microsoft 365 Defender](m365d-permissions.md).

## Browser requirements
Access Microsoft 365 Defender in the Microsoft 365 Defender portal using Microsoft Edge, Internet Explorer 11, or any HTML 5 compliant web browser.

## Availability to US GCC, GCC High, and other US government institutions

For information related to US Government customers, see [Microsoft 365 Defender for US Government customers](usgov.md).

Currently, the Microsoft Defender for Office 365 integration into the unified Microsoft 365 Defender features are not available to customers in the following Office 365 datacenter locations:

- Norway 
- South Africa 
- United Arab Emirates 
- Sweden 
- Singapore 


## Related topics
- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [Turn on Microsoft 365 Defender](m365d-enable.md)
- [Manage access and permissions](m365d-permissions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]


