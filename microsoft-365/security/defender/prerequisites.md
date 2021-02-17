---
title: Microsoft 365 Defender prerequisites
description: Learn about the licensing, hardware and software requirements, and other configuration settings for Microsoft 365 Defender
keywords: requirements, prerequisites, hardware, software, browser, MTP, M365, license, E5, A5, EMS, purchase
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

# Microsoft 365 Defender prerequisites

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Learn about licensing and other requirements for provisioning and using [Microsoft 365 Defender](microsoft-threat-protection.md).

## Licensing requirements
Any of these licenses gives you access to Microsoft 365 Defender features in Microsoft 365 security center without additional cost:

- Microsoft 365 E5 or A5
- Microsoft 365 E5 Security or A5 Security
- Windows 10 Enterprise E5 or A5
- Enterprise Mobility + Security (EMS) E5 or A5 
- Office 365 E5 or A5
- Microsoft Defender for Endpoint
- Microsoft Defender for Identity 
- Microsoft Cloud App Security
- Defender for Office 365 (Plan 2)

> [!NOTE]
> Trial licenses for Office 365 currently do not provide access to Microsoft 365 Defender.

For more information, [view the Microsoft 365 Enterprise service plans](https://www.microsoft.com/licensing/product-licensing/microsoft-365-enterprise).

> Don't have license yet? [Try or buy a Microsoft 365 subscription](https://docs.microsoft.com/microsoft-365/commerce/try-or-buy-microsoft-365?view=o365-worldwide)

### Check your existing  licenses
Go to Microsoft 365 admin center ([admin.microsoft.com](https://admin.microsoft.com/)) to view your existing licenses. In the admin center, go to **Billing** > **Licenses**.

>[!NOTE]
> You need to be assigned either the **Billing admin** or **Global reader** [role in Azure AD](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles) to be able to see license information. If you encounter access problems, contact a global admin.

## Required permissions
You must be a **global administrator** or a **security administrator** in Azure Active Directory to turn on Microsoft 365 Defender. For the list of roles required to use Microsoft 365 Defender and information on how access to data is regulated, read about [managing access to Microsoft 365 Defender](mtp-permissions.md).

## Browser requirements
Access Microsoft 365 Defender in the Microsoft 365 security center using Microsoft Edge, Internet Explorer 11, or any HTML 5 compliant web browser.

## Availability to US GCC, GCC High, and other US government institutions
Currently, Microsoft 365 Defender is *not* available to:
- US Government Community Cloud (GCC)
- US Government Community Cloud High (GCC High)
- US Department of Defense
- All US government institutions with commercial licenses

## Related topics
- [Microsoft 365 Defender overview](microsoft-threat-protection.md)
- [Turn on Microsoft 365 Defender](mtp-enable.md)
- [Manage access and permissions](mtp-permissions.md)
