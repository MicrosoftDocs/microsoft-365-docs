---
title: Requirements for Microsoft Defender for Business
description: Microsoft Defender for Business license, hardware, and software requirements
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/16/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Microsoft Defender for Business requirements

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

This article describes the requirements for Microsoft Defender for Business.

## What to do

1. [Review the requirements and make sure you meet them](#review-the-requirements).
2. [Proceed to your next steps](#next-steps).

## Review the requirements

The following table lists the basic requirements to configure and use Microsoft Defender for Business. <br/><br/>

| Requirement | Description |
|:---|:---|
| Subscription | Microsoft Defender for Business (currently in preview!) (See [How to get Microsoft Defender for Business](get-defender-business.md))<br/><br/>**TIP**: You're not required to have another Microsoft 365 subscription to try Microsoft Defender for Business. |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |
| Azure Active Directory (Azure AD) | Azure AD is required for user permissions and device groups.<br/><br/> Azure AD is included in your Defender for Business subscription. To learn more, see [What is Azure AD?](/azure/active-directory/fundamentals/active-directory-whatis) |
| User accounts | User accounts are created<br/><br/>Microsoft Defender for Business licenses are assigned. <br/><br/>To get help with this, see [Add users and assign licenses](../../admin/add-users/add-users.md). |
| Permissions  | To access the Microsoft 365 Defender portal, users must one of the following [roles in Azure AD](mdb-roles-permissions.md) assigned: <br/>- Security Reader<br/>- Security Admin<br/>- Global Admin<br/><br/>To learn more, see [Roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md). |
| Browser requirements | Microsoft Edge or Google Chrome |
| Operating system | To manage devices in Microsoft Defender for Business, your devices must be running Windows 10 Professional/Enterprise or later (with [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541)). <br/><br/>If you are already managing devices in Microsoft Intune (or Microsoft Endpoint Manager), or if you are using a non-Microsoft device management solution, your devices must be running one of the [operating systems that are supported in Microsoft Defender for Endpoint](../defender-endpoint/minimum-requirements.md). |
| Integration with Microsoft Endpoint Manager  |  If you plan to onboard devices to Defender for Business manually by using downloadable packages for Microsoft Endpoint Manager, Group Policy, System Center Configuration Manager, or Mobile Device Management, the following requirements must be met: <br/><br/>Devices must be running Windows 10 or 11 Professional/Enterprise (with [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541) applied). <br/><br/>Prerequisites must be met for [Security Management for Microsoft Defender for Endpoint](/mem/intune/protect/mde-security-integration).<br/>- Azure AD must be configured such that trust is created between your company's devices and Azure AD. <br/>- Defender for Business must have security management enabled in Microsoft Endpoint Manager.<br/><br/>Devices must be able to connect to the following URLs:<br/>`enterpriseregistration.windows.net` (for registration in Azure AD)<br/>`login.microsoftonline.com` (for registration in Azure AD)<br/>`*.dm.microsoft.com` (The wildcard (*) supports the cloud-service endpoints that are used for enrollment, check-in, and reporting, and can change as the service scales.) |


## Next steps

Proceed to:

- [Step 2: Assign roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md)