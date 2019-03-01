---
title: Mobile device management infrastructure exit criteria
description: Microsoft 365 Enterprise includes mobile device management using Microsoft Intune. Review the requirements and prerequisites, set up Intune using your Azure Active Directory resource, enroll iOS, macOS, Android, and Windows devices, deploy apps, create a configure profile, use a compliance policy, and enable conditional access for mobile device management with Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, mobile device management, Intune
author: MandiOhlinger 
ms.author: mandia 
manager: dougeby 
ms.date: 08/10/2018 
ms.topic: article 
ms.prod: microsoft-365-enterprise
ms.service: 
ms.technology: 
ms.assetid: fb4182e6-5e78-45d0-9641-d791c4519441
audience: ITPro
ms.custom: microsoft-intune
---

# Mobile device management infrastructure exit criteria

![](./media/deploy-foundation-infrastructure/mobiledevicemgmt_icon-small.png)

*This applies to the E3 and E5 versions of Microsoft 365 Enterprise*

Before you move on to the next phase in the deployment process, ensure that your configuration meets the following requirements for mobile device management infrastructure.

- Intune is set up, including the creation of Azure AD users and groups to apply your organization's rules for devices.
- You have enrolled devices in Intune so that the devices can receive the policies you create.
- Apps are added to devices so your users get access to your organization's Microsoft 365 cloud services, such as Exchange Online and SharePoint Online.
- Features and settings are configured and applied to your devices using the Azure AD users and groups you create, which might include enabling anti-virus and restricting specific apps.
- Compliance policies are in place to require a firewall or a password length on a device. If devices aren't compliant, conditional access blocks access to your organization's data.

## Next phase

|||
|:-------|:-----|
|![](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)| Your next phase in the end-to-end deployment process for Microsoft 365 Enterprise is [information protection](infoprotect-infrastructure.md). |
