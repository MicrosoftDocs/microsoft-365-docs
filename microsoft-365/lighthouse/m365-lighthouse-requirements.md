---
title: "Requirements for Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
ms.date: 1/17/2024
audience: Admin
ms.topic: checklist
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-get-started
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs), get a list of requirements to use Microsoft 365 Lighthouse."
---

# Requirements for Microsoft 365 Lighthouse

Microsoft 365 Lighthouse is an admin portal that provides advanced capabilities for Managed Service Providers (MSPs) to manage customers at scale through proactive account management, simplified onboarding, efficient tenant configuration, device protection, and alerts. Lighthouse provides insights into customer acquisition, retention, and growth opportunities, as well as multi-tenant views across customer devices, data, and users to help customers get the most value from Microsoft 365.  

Lighthouse is available to partners enrolled in the Cloud Solution Provider (CSP) program, including both indirect resellers and direct-bill partners.  

> [!NOTE]
> Only partners are required to enroll in the CSP program; the customers they manage don't need to enroll in the CSP program.

In addition, each customer tenant must meet the following requirements to be actively monitored and managed in Lighthouse:

- Must have delegated access set up for the partner to be able to manage the customer tenant
    > [!NOTE]
    > Either granular delegated administrative privileges (GDAP) or a delegated administrative privileges (DAP) relationship is required to onboard customers to Lighthouse. An indirect reseller relationship is no longer required to onboard to Lighthouse. If DAP and GDAP coexist in a customer tenant, GDAP permissions take precedence for MSP technicians in GDAP-enabled security groups.
    > [!NOTE]
    > To use Lighthouse to view opportunities in Sales Advisor, you don't need additional delegated access permissions from the customer.
- Must have at least one Enterprise, Business, Frontline, or Education subscription of Microsoft 365, Office 365, Exchange Online, Windows 365 Business, or Microsoft Defender for Business
- Must have no more than 2500 licensed users
- Must reside in the same geographic region (Americas, European Union, or Asia plus Australia) as the partner organization that manages them

Customer tenants that don't meet these requirements will have access to only a limited set of experiences in Lighthouse, including GDAP setup and management, user search, user details, tenant tagging, and service health.

## Requirements for enabling device management

To view customer tenant devices on the device management pages, an MSP must:

- Enroll all customer devices in Microsoft Intune. For more information, see [Enroll devices in Microsoft Intune](/mem/intune/enrollment/).
- Assign compliance policies to all customer devices. For more information, see [Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy).

## Requirements for enabling user management

For customer data to show up in reports on user management pages, including Risky users, Multifactor authentication, and Self-service password reset, customer tenants must have licenses for Azure Active Directory Premium P1 or later. Azure AD Premium P1 is included with Microsoft 365 Business Premium and Microsoft 365 E3. Azure AD Premium P2 is included with Microsoft 365 E5.

## Requirements for enabling threat management

To view customer tenant devices and threats on the threat management pages, you must enroll all customer tenant devices in Microsoft Intune and protect them by running Microsoft Defender Antivirus.

For more information, see [Enroll devices in Microsoft Intune](/mem/intune/enrollment/).

Microsoft Defender Antivirus is part of the Windows operating system and is enabled by default on devices running Windows 10.

> [!NOTE]
> If you're using a non-Microsoft antivirus solution and not Microsoft Defender Antivirus, Microsoft Defender Antivirus is disabled automatically. When you uninstall the non-Microsoft antivirus solution, Microsoft Defender Antivirus is activated automatically to protect your Windows devices from threats.

## Requirements for enabling Sales Advisor

To use Sales Advisor to view customer opportunities, you must hold the Account Manager role in Lighthouse. If you don't hold the Account Manager role, reach out to someone who holds the Administrator role in Lighthouse and ask them to assign the role to you.

For more information, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md).

## Related content

[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Overview of the Device compliance page in Microsoft 365 Lighthouse](m365-lighthouse-device-compliance-page-overview.md) (article)\
[Overview of the Users page in Microsoft 365 Lighthouse](m365-lighthouse-users-page-overview.md) (article)\
[Overview of the Threat management page in Microsoft 365 Lighthouse](m365-lighthouse-threat-management-page-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
