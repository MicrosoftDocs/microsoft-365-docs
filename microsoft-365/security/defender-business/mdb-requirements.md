---
title: Requirements for Microsoft Defender for Business
description: Microsoft Defender for Business license, hardware, and software requirements
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 03/15/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Microsoft Defender for Business requirements

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

This article describes the requirements for Microsoft Defender for Business.

## What to do

1. [Review the requirements and make sure you meet them](#review-the-requirements).

2. [Proceed to your next steps](#next-steps).

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## Review the requirements

The following table lists the basic requirements to configure and use Microsoft Defender for Business. <br/><br/>

| Requirement | Description |
|:---|:---|
| Subscription | Microsoft 365 Business Premium <br/>--- or ---<br/>Microsoft Defender for Business (standalone; currently in preview). <br/><br/> See [How to get Microsoft Defender for Business](get-defender-business.md).<br/><br/>Note that if you have multiple subscriptions, the highest subscription takes precedence. For example, if you have Microsoft Defender for Endpoint Plan 2 (purchased or trial subscription), and you get Microsoft Defender for Business, Defender for Endpoint Plan 2 takes precedence. In this case, you won't see the Defender for Business experience.  |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |
| User accounts | User accounts are created in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/><br/>Microsoft Defender for Business licenses are assigned in the Microsoft 365 admin center<br/><br/>To get help with this task, see [Add users and assign licenses](../../admin/add-users/add-users.md). |
| Permissions  | To sign up for Microsoft Defender for Business, you must be a Global Admin.<br/><br/>To access the Microsoft 365 Defender portal, users must have one of the following [roles in Azure AD](mdb-roles-permissions.md) assigned: <br/>- Security Reader<br/>- Security Admin<br/>- Global Admin<br/><br/>To learn more, see [Roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md). |
| Browser requirements | Microsoft Edge or Google Chrome |
| Operating system | To manage devices in Microsoft Defender for Business, your devices must be running one of the following operating systems: <br/>- Windows 10 Business or later <br/>- Windows 10 Professional or later <br/>- Windows 10 Enterprise or later <br/><br/>Make sure that [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541) is installed. <br/><br/>If you're already managing devices in Microsoft Intune (or Microsoft Endpoint Manager), you can onboard those devices to Defender for Business. |
| Integration with Microsoft Endpoint Manager  | If you plan to onboard devices using [Microsoft Defender for Business security configuration](mdb-onboard-devices.md#microsoft-defender-for-business-security-configuration), then the following requirements must be met:<br/><br/>Prerequisites must be met for [Security Management for Microsoft Defender for Endpoint](/mem/intune/protect/mde-security-integration).<br/>- Azure AD must be configured such that trust is created between your company's devices and Azure AD. <br/>- Defender for Business must have security management enabled in Microsoft Endpoint Manager.<br/><br/>Devices must be able to connect to the following URLs:<br/>- `enterpriseregistration.windows.net` (for registration in Azure AD)<br/>- `login.microsoftonline.com` (for registration in Azure AD)<br/>- `*.dm.microsoft.com` (The wildcard (*) supports the cloud-service endpoints that are used for enrollment, check-in, and reporting, and can change as the service scales.) |

> [!NOTE]
> [Azure Active Directory (Azure AD)](/azure/active-directory/fundamentals/active-directory-whatis) is used to manage user permissions and device groups. Azure AD is included in your Defender for Business subscription. 
> - If you do not have a Microsoft 365 subscription before you start your trial, Azure AD will be provisioned for you during the activation process. 
> - If you do have another Microsoft 365 subscription when you start your Defender for Business trial, you can use your existing Azure AD service. 
> - If you are using [Microsoft 365 Business Premium](../../business/index.yml) when you start your Defender for Business trial, you will have the option to manage devices in Microsoft Intune. 

## Next steps

Proceed to:

- [Step 2: Assign roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md) 
 