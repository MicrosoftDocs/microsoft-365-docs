---
title: Requirements for Microsoft Defender for Business
description: Microsoft Defender for Business license, hardware, and software requirements
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/26/2021
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
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Defender for Endpoint Plan 1 (preview).

The following table lists the basic requirements to configure and use Microsoft Defender for Business. <br/><br/>

| Requirement | Description |
|:---|:---|
| Subscription and licensing | Microsoft Defender for Business (currently in preview!)<br/>[Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD). Azure AD is included with any Microsoft 365 subscription, including Microsoft Defender for Business.) <br/><br/>*If your company is a small or midsized business (300 or fewer users) and you would like to sign up for the Microsoft Defender for Business preview program, visit [https://aka.ms/MDB-Preview](https://aka.ms/MDB-Preview)* |
| User accounts | User accounts created <br/>Microsoft Defender for Business licenses assigned (See [Add users and assign licenses](../../admin/add-users/add-users.md)) |
| Permissions  | Permissions are assigned through [roles in Azure AD](mdb-roles-permissions.md) <br/> To access the Microsoft 365 Defender portal, you must have the Security Reader, Security Admin, or Global Admin role assigned<br/>To learn more, see [Roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md). |
| Browser requirements | Microsoft Edge <br/>Google Chrome |
| Operating system | To manage devices using the simplified configuration process in Microsoft Defender for Business, your devices must be running Windows 10, version 1709 or later. <br/>If you are already managing devices in Microsoft Intune (or Microsoft Endpoint Manager), your devices must be running one of the operating systems that are supported in Microsoft Defender for Endpoint (see [Microsoft Defender for Endpoint Hardware and software requirements](../defender-endpoint/minimum-requirements.md)). |

## Next steps

- [Get Microsoft Defender for Business](get-defender-business.md)

- [Learn more about  Microsoft Defender for Business](mdb-overview.md)