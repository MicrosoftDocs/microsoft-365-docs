---
title: Assign security roles and permissions in Microsoft Defender for Business
description: Assign roles to your cybersecurity team. Learn about these roles and permissions in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 06/28/2023
ms.reviewer: efratka, nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365solution-mdb-setup
- highpri
- tier1
---

# Assign security roles and permissions in Microsoft Defender for Business

This article describes how to assign security roles and permissions in Defender for Business.

:::image type="content" source="media/mdb-setup-step3.png" alt-text="Visual depicting step 3 - assign security roles and permissions in Defender for Business.":::

Your organization's security team needs certain permissions to perform tasks, such as

- Configuring Defender for Business
- Onboarding (or removing) devices
- Viewing reports about devices and threat detections
- Viewing incidents and alerts
- Taking response actions on detected threats

Permissions are granted through certain roles in the [Azure Active Directory](/azure/active-directory/roles/manage-roles-portal). These roles can be assigned in the Microsoft 365 admin center or in the Microsoft Entra admin center.

## What to do

1. [Learn about roles in Defender for Business](#roles-in-defender-for-business).
2. [View or edit role assignments for your security team](#view-and-edit-role-assignments).
3. [Proceed to your next steps](#next-steps).


## Roles in Defender for Business

The following table describes the three roles that can be assigned in Defender for Business. [Learn more about admin roles](../../admin/add-users/about-admin-roles.md).

| Permission level | Description |
|:---|:---|
| **Global administrators** (also referred to as global admins) <br/><br/> *As a best practice, limit the number of global admins. See [Security guidelines for assigning roles](/microsoft-365/admin/add-users/about-admin-roles#security-guidelines-for-assigning-roles).* | Global admins can perform all kinds of tasks. The person who signed up your company for Microsoft 365 or for Defender for Business is a global administrator by default. Global admins typically complete the setup and configuration process in Defender for Business, including onboarding devices.<br/><br/> Global admins are able to modify settings across all Microsoft 365 portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |
| **Security administrators** (also referred to as security admins) | Security admins can perform the following tasks: <br/>- View and manage security policies<br/>- View, respond to, and manage alerts <br/>- Take response actions on devices with detected threats<br/>- View security information and reports <br/><br/>In general, security admins use the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) to perform security tasks. |
| **Security reader** | Security readers can perform the following tasks:<br/>- View a list of onboarded devices<br/>- View security policies<br/>- View alerts and detected threats<br/>- View security information and reports <br/><br/>Security readers can't add or edit security policies, nor can they onboard devices. |

## View and edit role assignments

> [!IMPORTANT]
> Microsoft recommends that you grant people access to only what they need to perform their tasks. We call this concept *least privilege* for permissions. To learn more, see [Best practices for least-privileged access for applications](/azure/active-directory/develop/secure-least-privileged-access). 

You can use the Microsoft 365 admin center or the Microsoft Entra admin center to view and edit role assignments.

## [**Microsoft 365 admin center**](#tab/M365Admin)

1. Go to the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) and sign in. 

2. In the navigation pane, go to **Users** > **Active users**.

3. Select a user account to open their flyout pane.

4. On the **Account** tab, under **Roles**, select **Manage roles**.

5. To add or remove a role, use one of the following procedures:

   | Task | Procedure |
   |---|---|
   | Add a role to a user account | 1. Select **Admin center access**, scroll down, and then expand **Show all by category**.<br/><br/>2. Select one of the following roles:<br/><br/>- Global Administrator (listed under **Global**)<br/>- Security Administrator (listed under **Security & Compliance**)<br/>- Security Reader (listed under **Read-only**)<br/><br/>3. Select **Save changes**. |
   | Remove a role from a user account | 1. Either select **User (no admin center access)** to remove *all* admin roles, or clear the checkbox next to one or more of the assigned roles. <br/><br/>2. Select **Save changes**. |

## [**Microsoft Entra admin center**](#tab/Entra)

1. Go to the Microsoft Entra admin center ([https://entra.microsoft.com](https://entra.microsoft.com/)) and sign in.

2. In the navigation pane, go to **Users** > **All users**.

3. Select a user account to open their profile.

4. To add or remove a role, use one of the following procedures:

   | Task | Procedure |
   |---|---|
   | Add a role to a user account | 1. Under **Manage**, select **Assigned roles**, and then choose **+ Add assignments**.<br/><br/>2. Search for one of the following roles, select it, and then choose **Add** to assign that role to the user account.<br/><br/>- Global Administrator<br/>- Security Administrator<br/>- Security Reader |
   | Remove a role from a user account | 1. Under **Manage**, select **Assigned roles**.<br/><br/>2. Select one or more administrative roles, and then select **X Remove assignments**. |

---

## Next steps

- Proceed to [Step 4: Set up email notifications for your security team](mdb-email-notifications.md).
- [Step 5: Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)
