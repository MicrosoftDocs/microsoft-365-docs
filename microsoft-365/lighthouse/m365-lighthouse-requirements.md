---
title: "Requirements for Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs), get a list of requirements to use Microsoft 365 Lighthouse."
---

# Requirements for Microsoft 365 Lighthouse

Microsoft 365 Lighthouse is an admin portal that helps Managed Service Providers (MSPs) secure and manage devices, data, and users at scale for small- and medium-sized business (SMB) customers.

MSPs must be enrolled in the Cloud Solution Provider (CSP) program as an Indirect Reseller or Direct Bill partner to use Lighthouse.

In addition, each MSP customer tenant must qualify for Lighthouse by meeting the following requirements:

- Must have delegated access set up for the Managed Service Provider (MSP) to be able to manage the customer tenant*
- Must have at least one Microsoft 365 Business Premium, Microsoft 365 E3, Microsoft 365 E5, Windows 365 Business, or Microsoft Defender for Business license
- Must have no more than 2500 licensed users

\* Either Granular Delegated Admin Privileges (GDAP or a Delegated Admin Privileges (DAP) relationship is required to onboard customers to Lighthouse. An indirect reseller relationship is no longer required to onboard to Lighthouse. If DAP and GDAP coexist in a customer tenant, GDAP permissions take precedence for MSP technicians in GDAP-enabled security groups.

## Requirements for enabling device management

To view customer tenant devices on the device management pages, an MSP must:

- Enroll all customer devices in Microsoft Endpoint Manager (MEM). For more information, see [Enroll devices in Microsoft Intune](/mem/intune/enrollment/).
- Assign compliance policies to all customer devices. For more information, see [Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy).

## Requirements for enabling user management

For customer data to show up in reports on user management pages, including Risky users, Multifactor authentication, and Password reset, customer tenants must have licenses for Azure Active Directory Premium P1 or later. Azure AD Premium P1 is included with Microsoft 365 Business Premium and Microsoft 365 E3. Azure AD Premium P2 is included with Microsoft 365 E5.

## Requirements for enabling threat management

To view customer tenant devices and threats on the threat management pages, you must enroll all customer tenant devices in Microsoft Endpoint Manager (MEM) and protect them by running Microsoft Defender Antivirus.

For more information, see [Enroll devices in Microsoft Intune](/mem/intune/enrollment/).

Microsoft Defender Antivirus is part of the Windows operating system and is enabled by default on devices running Windows 10.

> [!NOTE]
> If you're using a non-Microsoft antivirus solution and not Microsoft Defender Antivirus, Microsoft Defender Antivirus is disabled automatically. When you uninstall the non-Microsoft antivirus solution, Microsoft Defender Antivirus is activated automatically to protect your Windows devices from threats.

## Related content

[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Overview of the Device compliance page in Microsoft 365 Lighthouse](m365-lighthouse-device-compliance-page-overview.md) (article)\
[Overview of the Users page in Microsoft 365 Lighthouse](m365-lighthouse-users-page-overview.md) (article)\
[Overview of the Threat management page in Microsoft 365 Lighthouse](m365-lighthouse-threat-management-page-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
