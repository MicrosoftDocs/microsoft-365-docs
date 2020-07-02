---
title: Frequently asked questions when turning on Microsoft Threat Protection
description: Get answers to the most commonly asked questions about licensing, permissions, initial settings, and other products and services related to enabling Microsoft Threat Protection  
keywords: frequently asked questions, FAQ, GCC, get started, enable MTP, Microsoft Threat Protection, M365, security, data location, required permissions, license eligibility, settings page
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Frequently asked questions when turning on Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

Read responses to the most commonly asked questions about turning on [Microsoft Threat Protection](microsoft-threat-protection.md), including required licenses and permissions, deploying support services, and initial settings.

For instructions on how to turn on the service, [read Turn on Microsoft Threat Protection](mtp-enable.md).

## I don’t have a Microsoft 365 E5 license. Can I still use Microsoft Threat Protection?

Customers with the following non-E5 licenses can use Microsoft Threat Protection:

- Microsoft Defender Advanced Threat Protection
- Azure Advanced Threat Protection
- Microsoft Cloud App Security
- Office 365 Advanced Threat Protection (Plan 2)
 
For a full list of supported licenses, [read the licensing requirements](prerequisites.md#licensing-requirements).

## Do I need to install or deploy anything to start using Microsoft Threat Protection?

No, Microsoft Threat Protection consolidates data from Microsoft 365 security services that you have already deployed. Once you turn it on, incident, automation, and hunting experiences will start working within the scope of the deployed products. If none of these products are properly deployed, Microsoft Threat Protection will not display any data and is unable to take any action.

To optimize your Microsoft Threat Protection experiences, we recommend deploying *all* supported [Microsoft 365 security products and services](deploy-supported-services.md).

## Where does Microsoft Threat Protection process and store my data?
Microsoft Threat Protection automatically selects an optimal location for the data center where consolidated data is processed and stored. If you have Microsoft Defender ATP, it selects the same location used by Microsoft Defender ATP.

>[!NOTE]
>Microsoft Defender ATP automatically provisions in European Union (EU) data centers when turned on through Azure Security Center. Microsoft Threat Protection will automatically provision in the same EU data center for customers who have provisioned Microsoft Defender ATP in this manner. 

The data center location is shown before and after the service is provisioned in the settings page for Microsoft Threat Protection (**Settings > Microsoft Threat Protection**). If you prefer to use another data center location, select **Need help?** in the Microsoft 365 security center to contact Microsoft support.

## Where can I access Microsoft Threat Protection?

Microsoft Threat Protection is available in Microsoft 365 security center. To go to the security center, browse to the URL [https://security.microsoft.com](https://security.microsoft.com).

##	What permissions do I need to access Microsoft Threat Protection in Microsoft 365 security center?

Accounts assigned the following Azure Active Directory (AD) roles can access Microsoft Threat Protection functionality and data:

- Global administrator
- Security administrator
- Security Operator
- Global Reader
- Security Reader

>[!NOTE]
>Role-based access control settings in Microsoft Defender ATP influence access to data. For more information, read about [managing access to Microsoft Threat Protection](mtp-permissions.md).

## What time zone does Microsoft Threat Protection default to?
By default, Microsoft Threat Protection displays time information in the UTC time zone. You can change this setting to use your local time zone. [Learn about setting the time zone](mtp-time-zone.md)

## How can I learn about new Microsoft Threat Protection feature and UI updates?

Microsoft regularly provides information through the various channels, including:

- The [message center](../../admin/manage/message-center.md) in Microsoft 365 admin center
- Blogposts in the [Microsoft 365 security & compliance tech community](https://techcommunity.microsoft.com/t5/security-privacy-and-compliance/bg-p/securityprivacycompliance)

Get the latest publicly available experiences by turning on [preview features](preview.md).

## Is Microsoft Threat Protection available for US Government Community Cloud (GCC) or GCC High?
At the moment, it is not available.

## Related topics

- [Microsoft Threat Protection overview](microsoft-threat-protection.md)
- [Turn on Microsoft Threat Protection](mtp-enable.md).
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Turn on preview features](preview.md)