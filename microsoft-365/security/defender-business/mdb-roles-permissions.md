---
title: Assign roles and permissions in Microsoft Defender for Business
description: Learn how to assign roles and permissions in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/11/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Assign roles and permissions

To perform tasks in the Microsoft 365 Defender portal, such as configuring Microsoft Defender for Business, or taking response actions on detected threats, appropriate permissions must be assigned to your security team. Permissions are granted through roles that are assigned in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). 

The following table describes the roles you can assign in Microsoft Defender for Business. [Learn more about admin roles](../../admin/add-users/about-admin-roles.md). <br/><br/>

| Permission level | Description |
|:---|:---|
| Global administrators (also referred to as global admins) <br/><br/> *As a best practice, limit the number of global admins.* | Global admins can perform all kinds of tasks. The person who signed up your company for Microsoft 365 or for Microsoft Defender for Business is a global administrator by default. <br/><br/> Global admins are able to access/change settings across all Microsoft 365 portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) <br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |
| Security administrators (also referred to as security admins) | Security admins can perform the following tasks: <br/>- View and manage security policies and settings <br/>- View and manage security threats and alerts (these activities include taking response actions on endpoints) <br/>- View security information and reports |
| Security reader | Security readers can perform the following tasks: <br/>- View security policies and settings <br/>- View security threats and alerts <br/>- View security information and reports  |

> [!IMPORTANT]
> Microsoft recommends granting people access to only what they need to perform their tasks. We call this concept *least privilege* for permissions. To learn more, see [Best practices for least-privileged access for applications](/azure/active-directory/develop/secure-least-privileged-access). 


## Next steps

- [Set up email notifications](mdb-email-notifications.md)