---
title: Microsoft Defender XDR prerequisites
description: Learn about the licensing, hardware and software requirements, and other configuration settings for Microsoft Defender XDR
ms.service: defender-xdr
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
ms.date: 12/5/2023
---

# Microsoft Defender XDR prerequisites

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

Learn about licensing and other requirements for provisioning and using [Microsoft Defender XDR](microsoft-365-defender.md).

## Licensing requirements
Any of these licenses gives you access to Microsoft Defender XDR features via the Microsoft Defender portal without additional cost:

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
- Microsoft Defender for Office 365 (Plan 2)
- Microsoft 365 Business Premium
- Microsoft Defender for Business

For more information, [view the Microsoft 365 Enterprise service plans](https://www.microsoft.com/licensing/product-licensing/microsoft-365-enterprise).

> Don't have license yet? [Try or buy a Microsoft 365 subscription](../../commerce/try-or-buy-microsoft-365.md)

### Check your existing  licenses

Go to Microsoft 365 admin center ([admin.microsoft.com](https://admin.microsoft.com/)) to view your existing licenses. In the admin center, go to **Billing** \> **Licenses**.

> [!NOTE]
> You need to be assigned either the **Billing admin** or **Global reader** [role in Microsoft Entra ID](/azure/active-directory/roles/permissions-reference) to be able to see license information. If you encounter access problems, contact a global admin.

## Required permissions

You must be a **global administrator** or a **security administrator** in Microsoft Entra ID to turn on Microsoft Defender XDR. For the list of roles required to use Microsoft Defender XDR and information on how access to data is regulated, read about [managing access to Microsoft Defender XDR](m365d-permissions.md).

## Browser requirements

Access Microsoft Defender XDR in the Microsoft Defender portal using Microsoft Edge, Internet Explorer 11, or any HTML 5 compliant web browser.

## Availability to US GCC, GCC High, and other US government institutions

For information related to US Government customers, see [Microsoft Defender XDR for US Government customers](usgov.md).

Currently, the Microsoft Defender for Office 365 integration into the unified Microsoft Defender XDR features are not available to customers in the following Office 365 datacenter locations:

- Norway
- South Africa
- United Arab Emirates
- Sweden
- Singapore


## Related articles

- [Microsoft Defender XDR overview](microsoft-365-defender.md)
- [Turn on Microsoft Defender XDR](m365d-enable.md)
- [Manage access and permissions](m365d-permissions.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
