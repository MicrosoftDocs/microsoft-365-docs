---
title: "Requirements for Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "Managed Service Providers (MSPs) can use Microsoft 365 Lighthouse to secure and manage customer devices, data, and users at scale for small- and medium-sized business (SMB) customers."
---

# Requirements for Microsoft 365 Lighthouse

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the requirements listed in this article. If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](sign-up-m365-lighthouse.md).

Microsoft 365 Lighthouse is an admin portal that helps Managed Service Providers (MSPs) secure and manage devices, data, and users at scale for small- and medium-sized business (SMB) customers.  

MSPs must be enrolled in the Cloud Solution Provider (CSP) program as an Indirect Reseller or Direct Bill partner to use Microsoft 365 Lighthouse.  

In addition, each MSP customer tenant must qualify for Microsoft 365 Lighthouse by meeting the following requirements: 
 
- Delegated Admin Privileges (DAP) for the MSP 

- At least one Microsoft 365 Business Premium license 

- Fewer than 500 licensed users  

## Requirements for enabling device management   

To view customer tenant devices on the device management pages, a MSP must:    

- Enroll all customer devices in Microsoft Endpoint Manager (MEM). For more information, see [Enroll devices in Microsoft Intune](/mem/intune/enrollment/).

- Assign compliance policies to all customer devices. For more information, see [Create a compliance policy in Microsoft Intune](/mem/intune/protect/create-compliance-policy). 

## Requirements for enabling user management 

For user management pages including Risky users, Multifactor authentication, and Password reset, customer tenants must have licenses for Azure Active Directory Premium P1 or later for customer data to show up in reports. Azure AD Premium P1 is included with Microsoft 365 Business Premium.   

## Requirements for enabling threat management 

To view customer tenant devices and threats on the threat management pages, you must enroll all customer tenant devices in Microsoft Endpoint Manager (MEM) and protect them by running Microsoft Defender Antivirus.  

For more information, see [Enroll devices in Microsoft Intune](/mem/intune/enrollment/).  

Microsoft Defender Antivirus is part of the Windows operating system and is enabled by default on devices running Windows 10.  

> [!NOTE] 
> If you're using a non-Microsoft antivirus solution and not Microsoft Defender Antivirus, Microsoft Defender Antivirus is disabled automatically. When you uninstall the non-Microsoft antivirus solution, Microsoft Defender Antivirus is activated automatically to protect your Windows devices from threats.    

## Related content   

[Overview of device management]() (article)\
[Overview of user management]() (article)\
[Overview of threat management]() (article)\
[Microsoft 365 Lighthouse FAQs](m365-lighthouse-faq.yml) (article)

