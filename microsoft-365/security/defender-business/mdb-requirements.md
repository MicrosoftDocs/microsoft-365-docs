---
title: Requirements for Microsoft Defender for Business
description: Microsoft Defender for Business license, hardware, and software requirements
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/04/2021
ms.prod: m365-security
ms.technology: mdb
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

1. [Review the requirements](#review-the-requirements) and make sure you meet them.
2. [Proceed to your next steps](#next-steps).

## Review the requirements

The following table lists the basic requirements to configure and use Microsoft Defender for Business. <br/><br/>

| Requirement | Description |
|:---|:---|
| Subscription | Microsoft Defender for Business (currently in preview!) (See [How to get Microsoft Defender for Business](get-defender-business.md))<br/><br/>**TIP**: You're not required to have another Microsoft 365 subscription to try Microsoft Defender for Business. |
| User accounts | User accounts created<br/><br/>Microsoft Defender for Business licenses are assigned. (To get help with this, see [Add users and assign licenses](../../admin/add-users/add-users.md).) |
| Permissions  | To access the Microsoft 365 Defender portal, users must have the Security Reader, Security Admin, or Global Admin role assigned. These permissions are assigned through [roles in Azure AD](mdb-roles-permissions.md), either by going to the Azure portal or as part of your initial setup process for Defender for Business.<br/><br/>To learn more, see [Roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md). |
| Browser requirements | Microsoft Edge or Google Chrome |
| Operating system | To manage devices using the simplified configuration process in Microsoft Defender for Business, your devices must be running Windows 10, version 1709 or later. <br/><br/>If you are already managing devices in Microsoft Intune (or Microsoft Endpoint Manager), or if you are using a non-Microsoft device management solution, your devices must be running one of the [operating systems that are supported in Microsoft Defender for Endpoint](../defender-endpoint/minimum-requirements.md). |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |

## Next steps

Proceed to:

- [Step 2: Assign roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md)