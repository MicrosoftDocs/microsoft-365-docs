---
title: "Microsoft Compliance Score setup"
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn how to access, customize, work with Microsoft Compliance Score to help manage compliance for your organization."
---

# Microsoft Compliance Score setup (Preview)

## Before you begin

The Microsoft 365 global administrator for your organization will likely be the first user to access Compliance Score. We recommend signing in and setting permissions as outlined below when visiting Compliance Score for the first time.

## Sign in

1. Go to the [Microsoft Compliance Center](https://compliance.microsoft.com/) and **sign in** with your Microsoft 365 global admin account.
2. Select **Compliance Score** on the left navigation pane. You should then see your [Compliance Score dashboard with your score](#understand-the-compliance-score-dashboard).

## Set user permissions

Compliance Score uses a role-based access control (RBAC) permission model. Only users who are assigned a user role may access Compliance Score, and the actions allowed by each user are restricted by role type.

### Where to set permissions

The global admin for your organization can set user permissions in three places: in the Microsoft 365 compliance center or in Compliance Manager for all user roles, or in Azure Active Directory (Azure AD) for read-only access.

- **If you set user permissions in the Microsoft 365 compliance center** - those permissions will automatically apply in Compliance Manager.
- **If you set user permissions only in Compliance Manager** - those permissions will automatically apply to the Microsoft 365 compliance center, including Compliance Score.
- **If you assign the Global Reader role in Azure AD** - this will apply to users of the Microsoft 365 compliance center, Compliance Score, and Compliance Manager

The table below shows how user role titles in the Microsoft 365 compliance center map to user role titles in Compliance Manager.


| User can: | Microsoft 365 compliance center role | Compliance Manager role | 
| :------------- | :-------------: | :------------: |
| **Read but not edit data**| Azure AD global reader  | Azure AD global reader | 
| **Read but not edit data**| Security reader | Compliance Manager reader  | 
| **Edit data**| Compliance administrator | Compliance Manager contributor | 
| **Edit test results**| Compliance administrator | Compliance Manager assessor | 
| **Manage assessments, and template and tenant data**| Compliance administrator<br>Compliance data administrator<br>Security administrator | Compliance Manager administrator | 
| **Assign users***| Global administrator | Portal admin | 

*The global admin and the portal admin can add other users in their organization to the reader, contributor, assessor, and administrator roles. Only the global admin can add users to, or remove them from, the portal admin role.

### Set permissions in the Microsoft 365 compliance center

To set permissions from the Microsoft 365 compliance center, follow these steps:

1. Go to the [Microsoft Compliance Center](https://compliance.microsoft.com) and sign in with your global admin account.
2. Select **Permissions** on the left navigation pane. From here, you can view roles and assign permissions.

For details, read [roles and permissions in the Microsoft 365 compliance center](../security/office-365-security/microsoft-security-and-compliance.md#required-licenses-and-permissions).

### Set permissions in Compliance Manager

The Compliance Manager portal admin can set permissions for other users in Compliance Manager. [View a table](working-with-compliance-manager.md#permissions) showing details about the actions allowed for each permission.

Follow these steps to set user permissions:

1. Go to the [Service Trust Portal](https://servicetrust.microsoft.com/). 

2. Select **Compliance Manager** (not **Compliance Manager (classic)**) and sign in with your global admin or portal admin account.

4. When the Non-Disclosure Agreement is displayed, read it, and select **Agree** to continue. You must agree once, and then the Compliance Manager dashboard is displayed.

5. From the top **More** drop-down menu, select **Admin**, then **Settings**.

6. Select the role you want to assign, then select **+ Add** to add the employee you want to assign to that role. Users will then be able to perform the actions assigned to that role.

### Set read-only permissions in Azure AD

Users who are assigned the **Global Reader** role in Azure AD have read-only permission to access Compliance Score and the Microsoft 365 compliance center. However, they cannot edit data or perform any actions within Compliance Manager. Read instructions on assigning the [Global Reader role in Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader).

## Understand the Compliance Score dashboard

The Compliance Score dashboard is designed to provide you an at-a-glance view of your current compliance posture.

![Compliance Score - dashboard](media/compliance-score-dashboard.png)

### Overall compliance score

Your compliance score, featured prominently at the top, shows a percentage based on points achievable for completing improvement actions addressing key data protection standards and regulations. When you come to Compliance Score for the first time, you're presented with a custom score based on the built-in Microsoft 365 Data Protection Baseline—a set of controls that includes key regulations and standards. Because Compliance Score scans your system to take inventory of your existing Microsoft 365 solutions, it can give an initial assessment of your compliance posture based on privacy and security settings currently enabled by your organization.

As you work to customize Compliance Score, your score number becomes even more relevant and meaningful to your organization. Learn more about [how your score is calculated](compliance-score-methodology.md).

### Key improvement actions

This section lists the top improvement actions you can take right now to make the largest positive impact on your overall compliance score. It lists status of actions that are not completed, completed, and not in scope—which means ???

### Solutions that affect your score

This section shows which solution areas within Microsoft 365 contain actions that have the greatest opportunity to positively impact your score, and how many outstanding improvement actions you have in each solution area.

### Compliance Score breakdown

This section gives you a more detailed view of your score in two different ways:

- **Categories**: this view shows the percentage of your overall score within compliance categories, such as “protect information” or “manage devices.”
- **Assessments**: this view shows the percentage of your progress in managing assessments for particular compliance and data protection standards, regulations, or laws, such as GDPR or NIST 800-53.

### Customizing your view

You can filter your dashboard view to see only the items related to particular regulations and standards, solutions, or action types. Filtering your view in this way will also filter the score on your dashboard, showing how many points you’ve achieved out of total possible points based on your filter criteria.  To filter your view, select **Filter** on the upper-right side of the dashboard. Then select your filter criteria from the flyout **Filters** pane, then select **Apply**.

![Compliance Score - dashboard filter view](media/compliance-score-filter.png)

You will see your score adjusted in real-time, and you will only see improvement actions, solutions, and score breakdown information that correspond to your filter criteria.

## Next step

Visit [Working with Compliance Score](working-with-compliance-score.md) to understand the workflow of how to take actions to improve your score.