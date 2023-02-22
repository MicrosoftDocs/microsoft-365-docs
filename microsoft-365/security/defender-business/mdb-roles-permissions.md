---
title: Assign security roles and permissions in Microsoft Defender for Business
description: Assign roles to your cybersecurity team. Learn about these roles and permissions in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 02/14/2023
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365solution-mdb-setup
- highpri
- tier1
---

# Assign security roles and permissions in Microsoft Defender for Business

To perform tasks in the Microsoft 365 Defender portal, such as configuring Defender for Business, viewing reports, or taking response actions on detected threats, appropriate permissions must be assigned to your security team. Permissions are granted through roles that are assigned in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or in [Azure Active Directory](/azure/active-directory/roles/manage-roles-portal). 

## What to do

1. [Learn about roles in Defender for Business](#roles-in-defender-for-business).
2. [View or edit role assignments for your security team](#view-or-edit-role-assignments).
3. [Proceed to your next steps](#next-steps).


## Roles in Defender for Business

The following table describes the three roles that can be assigned in Defender for Business. [Learn more about admin roles](../../admin/add-users/about-admin-roles.md).

| Permission level | Description |
|:---|:---|
| **Global administrators** (also referred to as global admins) <p> *As a best practice, limit the number of global admins.* | Global admins can perform all kinds of tasks. The person who signed up your company for Microsoft 365 or for Defender for Business is a global administrator by default. <p> Global admins are able to modify settings across all Microsoft 365 portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |
| **Security administrators** (also referred to as security admins) | Security admins can perform the following tasks: <br/>- View and manage security policies<br/>- View and manage security threats and alerts (these activities include taking response actions on endpoints)<br/>- View security information and reports |
| **Security reader** | Security readers can perform the following tasks:<br/>- View security policies<br/>- View security threats and alerts<br/>- View security information and reports  |

## View or edit role assignments

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Permissions & roles**, and then under **Azure AD**, select **Roles**.

3. Select one of the following roles to open its side pane:

   - Global administrator
   - Security administrator
   - Security reader

   > [!IMPORTANT]
   > Microsoft recommends that you grant people access to only what they need to perform their tasks. We call this concept *least privilege* for permissions. To learn more, see [Best practices for least-privileged access for applications](/azure/active-directory/develop/secure-least-privileged-access). 

4. In the side pane, select the **Manage members in Azure AD** link. This action takes you to Azure Active Directory (Azure AD), where you can view and manage your role assignments.

5. Select a user to open their profile, and then choose **Assigned roles**.

   - To add a role, choose **+ Add assignments**.
   - To remove a role, choose **X Remove assignments**. 

## Next steps

- [Set up email notifications](mdb-email-notifications.md) for your security team.
- Proceed to [Step 4: Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md). 
