---
title: Assign roles and permissions in Microsoft Defender for Business
description: Learn how to assign roles and permissions in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 09/13/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Assign roles and permissions

To perform tasks in the Microsoft 365 Defender portal, such as configuring Microsoft Defender for Business, or taking response actions on detected threats, appropriate permissions must be assigned to your security team. Microsoft recommends granting people access to only what they need to perform their tasks. We call this concept *least privilege* for permissions. To learn more, see [Best practices for least-privileged access for applications](/azure/active-directory/develop/secure-least-privileged-access). 

The following table describes roles to consider as you plan for Microsoft Defender for Business. [Learn more about admin roles](../../admin/add-users/about-admin-roles.md). <br/><br/>

| Permission level | Description |
|:---|:---|
| Global administrators (also referred to as global admins) <p> *As a best practice, limit the number of global administrators.* | Global admins can perform all kinds of tasks. The person who signed up your company for Microsoft 365 or for Microsoft Defender for Business is a global administrator by default. <p> Global admins are able to access/change settings across all Microsoft 365 portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) <br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))  |
| Security administrators (also referred to as security admins) | Security admins can perform security operator tasks plus the following tasks: <br/>- Monitor security-related policies <br/>- Manage security threats and alerts <br/>- View reports |
| Security reader | Security readers can perform the following tasks: <br/>- View security-related policies across Microsoft 365 services <br/>- View security threats and alerts <br/>- View reports  |

## Next steps

- [Choose where to manage your policies and settings](mdb-choose-portal.md)

- [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)

- [View or edit device policies in Microsoft Defender for Business](mdb-view-edit-device-policies.md)
