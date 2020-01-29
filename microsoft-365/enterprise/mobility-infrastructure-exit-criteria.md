---
title: Mobile device management infrastructure exit criteria
description: Microsoft 365 Enterprise includes mobile device management using Microsoft Intune. Review the requirements and prerequisites, set up Intune using your Azure Active Directory resource, enroll iOS, macOS, Android, and Windows devices, deploy apps, create a configure profile, use a compliance policy, and enable Conditional Access for mobile device management with Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, mobile device management, Intune
author: JoeDavies-MSFT 
f1.keywords:
- NOCSH
ms.author: josephd 
manager: laurawi
ms.date: 10/03/2019
ms.topic: article 
ms.prod: microsoft-365-enterprise
ms.service: 
ms.technology: 
ms.assetid: fb4182e6-5e78-45d0-9641-d791c4519441
audience: ITPro
ms.custom: microsoft-intune
---

# Mobile device management infrastructure exit criteria

![Phase 5: Mobile Device Management](./media/deploy-foundation-infrastructure/mobiledevicemgmt_icon-small.png)

*This applies to the E3 and E5 versions of Microsoft 365 Enterprise*

Ensure that your configuration meets the following requirements for mobile device management infrastructure.

- Intune is set up, including the creation of Azure Active Directory (Azure AD) users and groups to apply your organization's rules for devices.
- You have enrolled devices in Intune so that the devices can receive the policies you create.
- Apps are added to devices so your users get access to your organization's Microsoft 365 cloud services, such as Exchange Online and SharePoint Online.
- Features and settings are configured and applied to your devices using the Azure AD users and groups you create, which might include enabling anti-virus and restricting specific apps.
- Compliance policies are in place to require a firewall or a password length on a device. If devices aren't compliant, Conditional Access blocks access to your organization's data.

## Results and next steps

Your devices are enrolled in Intune and configured with the appropriate policies.

|||
|:-------|:-----|
|![Phase 6: Information Protection](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)| If you're following the phases for the end-to-end deployment of Microsoft 365 Enterprise, your next phase is [information protection](infoprotect-infrastructure.md). |
