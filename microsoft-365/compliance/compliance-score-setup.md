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
description: "Learn how to sign in, set up permissions, and understand your dashboard for Microsoft Compliance Score, which helps simplify and automate risk assessments."
---

# Microsoft Compliance Score (Preview) setup

## Before you begin

The Microsoft 365 global administrator for your organization will likely be the first user to access Compliance Score. We recommend the global admin sign in and set user permissions as outlined below when visiting Compliance Score for the first time.

## Sign in

1. Go to the [Microsoft 365 compliance center](https://compliance.microsoft.com/) and **sign in** with your Microsoft 365 global admin account.
2. Select **Compliance Score** on the left navigation pane. You should then see your [Compliance Score dashboard with your score](#understand-the-compliance-score-dashboard).

## Set user permissions and assign roles

Compliance Score uses a role-based access control (RBAC) permission model. Only users who are assigned a role may access Compliance Score, and the actions allowed by each user are restricted by role type.

### Where to set permissions

The global admin for your organization can set user permissions in the Microsoft 365 compliance center or in Azure Active Directory (Azure AD). Once roles are set in either of these locations, users will be able to access Compliance Score (as well as  Compliance Manager).

Note that existing Compliance Manger roles **do not** transfer over to Compliance Score.  This means that if you were previously assigned a role in Compliance Manager, that role will not grant you access to Compliance Score. Your global admin will need to set permissions and a role for you in the Microsoft 365 compliance center or Azure AD so that you can access Compliance Score.

### Role types

The table below shows how each Microsoft 365 compliance center role maps to existing Compliance Manger roles, and the functions allowed by each role.


| User can: | Microsoft 365 compliance center role | Compliance Manager role | 
| :------------- | :-------------: | :------------: |
| **Read but not edit data**| Azure AD global reader  | Azure AD global reader | 
| **Read but not edit data**| Security reader | Compliance Manager reader  | 
| **Edit data**| Compliance administrator | Compliance Manager contributor | 
| **Edit test results**| Compliance administrator | Compliance Manager assessor | 
| **Manage assessments, and template and tenant data**| Compliance administrator<br>Compliance data administrator<br>Security administrator | Compliance Manager administrator | 
| **Assign users**| Global administrator | Portal admin | 

> [!NOTE]
> When you go from Compliance Score to Compliance Manager to complete a task (for example, to manage assessments), your browser will open a new tab and a dialog box appears. In the top section with the header, “Already a Microsoft cloud services customer? Sign in to your account,” select **Sign In** to access Compliance Manager; you will not need to re-enter your credentials.

### How to set permissions and roles in the Microsoft 365 compliance center

To set permissions in the Microsoft 365 compliance center:

1. Go to the [Microsoft 365 compliance center](https://compliance.microsoft.com) and sign in with your global admin account.
2. Select **Permissions** on the left navigation pane. From here, you can view roles and assign permissions.

## Understand the Compliance Score dashboard

The Compliance Score dashboard is designed to provide you an at-a-glance view of your current compliance posture.

![Compliance Score - dashboard](media/compliance-score-dashboard.png "Compliance Score dashboard")

### Overall compliance score

Your compliance score, featured prominently at the top, shows a percentage based on points achievable for completing improvement actions addressing key data protection standards and regulations. 

When you come to Compliance Score for the first time, your initial score is based on the built-in Microsoft 365 data protection baseline—a set of controls that includes common industry regulations and standards. Because Compliance Score scans your system of existing Microsoft 365 solutions, it gives an initial assessment of your compliance posture based on privacy and security settings currently enabled by your organization.

As you add assessments that are relevant to your organization, your score becomes even more meaningful. Learn more about [how your score is calculated](compliance-score-methodology.md).

### Key improvement actions

This section lists the top improvement actions you can take right now to make the largest positive impact on your overall compliance score. It lists actions that are not completed or failed with the assessment with high risks.

### Solutions that affect your score

This section shows which solutions contain actions with the greatest opportunity to positively impact your score, and how many outstanding improvement actions you have in each solution.

### Compliance Score breakdown

This section gives you a more detailed view of your score in two different ways:

- **Categories**: shows the percentage of your overall score within data protection categories, such as “protect information” or “manage devices.”
- **Assessments**: shows the percentage of your progress in managing assessments for particular compliance and data protection standards, regulations, or laws, such as GDPR or NIST 800-53.

### Filtering your dashboard view

You can filter your dashboard view to see only the items related to particular regulations and standards, solutions, type of action, groups, or data protection categories. Filtering your view in this way will also filter the score on your dashboard, showing how many points you’ve achieved out of total possible points based on your filter criteria.

To apply filters:

1. Select **Filter** on the upper-right side of the dashboard.
2. Select your filter criteria from the flyout **Filters** pane, then select **Apply**.

You will see your score adjusted in real-time, and you will only see improvement actions, solutions, and score breakdown information that correspond to your filter criteria. If you sign out of Compliance Score, your filtered view remains when you sign back in.

To remove filters:

- At the **Applied filters** heading above your compliance score, select the **X** next to the individual filter you want to remove; or
- Select **Filter** on the upper-right side of your dashboard, then select **Clear filters**.

## Next step

Visit [Working with Compliance Score](working-with-compliance-score.md) to understand the workflow of how to take actions to improve your score.