---
title: Requirements for Microsoft Defender for Business
description: Microsoft Defender for Business license, hardware, and software requirements
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 07/19/2023
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
 - SMB
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# Microsoft Defender for Business requirements

This article describes the requirements for Defender for Business.

## What to do

1. [Review the requirements and make sure you meet them](#review-the-requirements).
2. [Proceed to your next steps](#next-steps).


## Review the requirements

The following table lists the basic requirements you need to configure and use Defender for Business.

| Requirement | Description |
|:---|:---|
| Subscription | Microsoft 365 Business Premium or Defender for Business (standalone). <br/>See [How to get Defender for Business](get-defender-business.md).  |
| Datacenter | One of the following datacenter locations:  <br/>- European Union <br/>- United Kingdom <br/>- United States |
| User accounts | - User accounts are created in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)). <br/>- Licenses for Defender for Business (or Microsoft 365 Business Premium) are assigned in the Microsoft 365 admin center.<br/><br/>To get help with this task, see [Add users and assign licenses](mdb-add-users.md). |
| Permissions  | To sign up for Defender for Business, you must be a Global Admin.<br/><br/>To access the Microsoft 365 Defender portal, users must have one of the following [roles in Azure AD](mdb-roles-permissions.md) assigned: <br/>- Security Reader <br/>- Security Admin <br/>- Global Admin<br/><br/>To learn more, see [Roles and permissions in Defender for Business](mdb-roles-permissions.md). |
| Browser | Microsoft Edge or Google Chrome |
| Client computer operating system  | To manage devices in the Microsoft 365 Defender portal, your devices must be running one of the following operating systems:  <br/>- Windows 10 or 11 Business <br/>- Windows 10 or 11 Professional <br/>- Windows 10 or 11 Enterprise <br/>- Mac (the three most-current releases are supported) <br/><br/>Make sure that [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541) is installed on the Windows devices.  |
| Mobile devices | To onboard mobile devices, such as iOS or Android OS, you can use [Mobile threat defense capabilities](mdb-mtd.md) or Microsoft Intune (see note 1 below).<br/><br/>For more details about onboarding devices, including requirements for mobile threat defense, see [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md). |
| Server license | To onboard a device running Windows Server or Linux Server, you'll need an additional license, such as [Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers) (see note 2 below). |
| Additional server requirements | Windows Server endpoints must meet the [requirements for Defender for Endpoint](/microsoft-365/security/defender-endpoint/minimum-requirements#hardware-and-software-requirements), and enforcement scope must be turned on.<br/>1. In the Microsoft 365 Defender portal, go to **Settings** > **Endpoints** > **Configuration management** > **Enforcement scope**. <br/>2. Select **Use MDE to enforce security configuration settings from MEM**, select  **Windows Server**.  <br/>3. Select **Save**.<br/><br/>Linux Server endpoints must meet the [prerequisites for Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md#prerequisites). |

> [!NOTE]
> 1. Microsoft Intune is not included in the standalone version of Defender for Business, but Intune can be added on. Intune is included in Microsoft 365 Business Premium.
> 
> 2. To onboard servers, we recommend using [Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers). Alternately, you could use [Microsoft Defender for Servers Plan 1 or Plan 2](/azure/defender-for-cloud/plan-defender-for-servers). To learn more, see [What happens if I have a mix of Microsoft endpoint security subscriptions?](mdb-faq.yml#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions) and [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).
> 
> 3. [Azure Active Directory (Azure AD)](/azure/active-directory/fundamentals/active-directory-whatis) is used to manage user permissions and device groups. Azure AD is included in your Defender for Business subscription. 
>    - If you don't have a Microsoft 365 subscription before you start your trial, Azure AD will be provisioned for you during the activation process. 
>    - If you do have another Microsoft 365 subscription when you start your Defender for Business trial, you can use your existing Azure AD service. 
> 
> 4. Security defaults are included in Defender for Business. If you prefer to use Conditional Access policies instead, you'll need Azure AD Premium Plan 1 (included in [Microsoft 365 Business Premium](../../business-premium/index.md)). To learn more, see [Multi-factor authentication](../../business-premium/m365bp-turn-on-mfa.md).

## Next steps

- If you don't already have Defender for Business, see [Get and provision Microsoft Defender for Business](get-defender-business.md).
- If you're starting a trial subscription, see the [Trial user guide: Microsoft Defender for Business](trial-playbook-defender-business.md).
- If you're ready to set up Defender for Business for your organization, see [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md).
