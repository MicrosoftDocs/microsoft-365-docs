---
title: "Working with Microsoft Compliance Score"
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

# Working with Microsoft Compliance Score (Preview)

## Getting started: sign in and set permissions

The Microsoft 365 global administrator for your organization will likely be the first user to access Compliance Score. We recommend signing in and setting permissions as outlined below when visiting Compliance Score for the first time.

### Sign in to Compliance Score

1. Go to the [Microsoft Compliance Center](https://compliance.microsoft.com/) and **sign in** with your Microsoft 365 global admin account.
2. Select **Compliance Score** on the left navigation pane. You should then see your [Compliance Score dashboard with your score](#understanding-the-compliance-score-dashboard).

### Set user permissions

Compliance Score uses a role-based access control (RBAC) permission model. Only users who are assigned a user role may access Compliance Score, and the actions allowed by each user are restricted by role type.

**Where to set permissions**

You can set user permissions in three places: in the Microsoft 365 compliance center or in Compliance Manager for all user roles, or in Azure Active Directory (Azure AD) for read-only access.

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

*The Global Administrator and the Portal Admin can add other users in their organization to the reader, contributor, assessor, and administrator roles. Only Global Administrator role in your organization add users to, or remove them from, the Portal Admin role.

#### Set permissions in the Microsoft 365 compliance center

To set permissions from the Microsoft 365 compliance center, follow these steps:

1. Go to the [Microsoft Compliance Center](https://compliance.microsoft.com) and sign in with your global admin account.
2. Select **Permissions** on the left navigation pane. From here, you can view roles and assign permissions.

For details, read [roles and permissions in the Microsoft 365 compliance center](../security/office-365-security/microsoft-security-and-compliance.md#required-licenses-and-permissions).

#### Set permissions in Compliance Manager

The Compliance Manager portal admin can set permissions for other users in Compliance Manager. [View a table](working-with-compliance-manager.md#permissions) showing details about the actions allowed for each permission.

Follow these steps to set user permissions:

1. Go to the [Service Trust Portal](https://servicetrust.microsoft.com/). 

2. Select **Compliance Manager** (not **Compliance Manager (classic)**) and sign in with your global admin or portal admin account.

4. When the Non-Disclosure Agreement is displayed, read it, and select **Agree** to continue. You must agree once, and then the Compliance Manager dashboard is displayed.

5. From the top **More** drop-down menu, select **Admin**, then **Settings**.

6. Select the role you want to assign, then select **+ Add** to add the employee you want to assign to that role. Users will then be able to perform the actions assigned to that role.

#### Set read-only permissions in Azure AD

Users who are assigned the **Global Reader** role in Azure AD have read-only permission to access Compliance Score and the Microsoft 365 compliance center. However, they cannot edit data or perform any actions within Compliance Manager. Read instructions on assigning the [Global Reader role in Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader).

## Understanding the Compliance Score dashboard

The Compliance Score dashboard is designed to provide you an at-a-glance view of your current compliance posture.

![Compliance Score - dashboard](media/compliance-score-dashboard.png)

### Overall compliance score

Your compliance score, featured prominently at the top, shows a percentage based on points achievable for completing improvement actions addressing key data protection standards and regulations. When you come to Compliance Score for the first time, you're presented with a custom score based on the built-in Microsoft Data Protection Standard (MSDP)—a set of controls that includes key regulations and standards. Because Compliance Score scans your system to take inventory of your existing Microsoft 365 solutions, it can give an initial assessment of your compliance posture based on privacy and security settings currently enabled by your organization.

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

You can filter your dashboard view to see only the items related to particular regulations and standards, solutions, or action types. Filtering your view in this way will also filter the score on your dashboard, showing how many points you’ve achieved out of total possible points based on your filter criteria.  To filter your view, select **Filter** on the upper-right side of the dashboard:

![Compliance Score - dashboard filter button](media/compliance-score-filter.png)

Then select your filter criteria from the flyout **Filters** pane, then select **Apply**.

![Compliance Score - dashboard filter pane](media/compliance-score-filter-pane.png)

You will see your score adjusted in real-time, and you will only see improvement actions, solutions, and score breakdown information that correspond to your filter criteria.

## Managing compliance activities with improvement actions

The work you do to implement controls is done through the improvement actions in Compliance Score.

### What are improvement actions

Improvement actions are the key elements of the workflow process in Compliance Score. They exist within Compliance Manager as a type of task, a centralized work item you use to conduct work on [controls for particular assessments](compliance-score.md#key-components-controls-assessments-templates--groups). Within an improvement action, you assign users in your organization to carry out the recommended actions, store documentation around implementation and testing details, and track testing status. Below are the key features of improvement actions and how to work with them.

### View your improvement actions

The home screen of Compliance Score shows your **key improvement actions**—the ones with the most available points which address the more important issues. To view all of your improvement actions, select **View all improvement actions** underneath the list of key improvement actions, or select **Improvement actions** on the top navigation.

![Compliance Score - improvement actions navigation](media/compliance-score-improvement-actions-navigation.png)

On the improvement actions screen, you can see all of your organization’s improvement actions, which can be a long list. It may be helpful to filter your view by selecting **Filter** above the list, and then selecting the desired criteria based on regulations and standards, solution, and group.

You can also customize your view by selecting **Group**, and from that drop-down menu, select to view by group, solution, category, action type, or status. 

![Compliance Score - improvement actions screen](media/compliance-score-improvement-actions.png)

### Improvement actions details - where you begin your workflow

To go into the detailed view of an improvement action, double-click anywhere in the row of your intended improvement action. A details page opens Once the detailed view opens, you can perform tasks such as assigning it to users for work, updating its status, and uploading documentation. 

![Compliance Score - improvement actions details](media/compliance-score-improvement-actions-details.png)

This view contains implementation instructions, along with the following details:

- **Score impact**: the points by which your overall score will increase by completing the action
- **Regulations**: the applicable regulation or standard that the action seeks to satisfy
- **Group**: the group to which you assigned the action
- **Solutions**: the applicable Microsoft solutions; where you go to perform the action
- **Assessments**: the assessment in which the action resides
- **Categories**: the grouping of actions based on the compliance area (i.e., protect information, manage devices, etc.)
- **Status**: shows current state of the action as one of four states:
    - **None**: no state detected yet; this would occur when no work has begun on the improvement action
    - **Not assessed**: ???
    - **Not in scope**: ???
    - **Partially tested**: testing on the improvement action is in progress
    - **Failed high risk**: testing of the improvement action has failed and the risk of falling out of compliance with the applicable standard is high
    - **Passed**: the improvement action has been successfully tested 
- **Pointed achieved**: lists progress in points achieved out of the maximum potential to be earned

### Assign improvement actions

To assign an improvement action to a user, select **Edit status**. In the edit status flyout pane, click or tap in the **Assigned to** box, which will populate a list of all available users, labled **Suggested people**. You can either select the user from that list, or begin typing the name or email address of your selected user and selecting from results. Select **Save and close** to complete the assignment. The assigned user will receive an email that the improvement action has been assigned to them, and they can then open the improvement action from their dashboard.

![Compliance Score - improvement actions assign to user](media/compliance-score-improvement-actions-assign.png)

> [!NOTE]
> The **Suggested people** list pulls from the users roles assigned when you set up permissions. Therefore, be sure the assigned user has the [role](#getting-started-sign-in-and-set-permissions
) that gives them the proper level of access to perform necessary functions. 

### Store documentation in improvement actions

abc

### Change improvement action status

abc

### Edit implementation notes

abc

### Apply filter on overview(?)

abc

## Viewing solutions

The Solutions screen shows you the share of earned and potential points that are available to you as organized by improvement actions taken within specific Microsoft solutions. The **Solutions that affect your score** section on your Compliance Score dashboard shows the solutions with the greatest potential to positively impact your score. View all your solutions by selecting **Solutions** on the top menu bar or **View all solutions**.

SCREENSHOT SOLUTIONS FROM DASHBOARD

### How Compliance Score monitors your solutions

Compliance Score automatically scans through your Microsoft 365 environment and detect your system settings, continuously and automatically updating your technical control status. For example, if you turned on multi-factor authentication (MFA) in the Azure AD portal, Compliance Score detects the setting and reflect that in the access control details. Conversely, if you didn’t turn on MFA, Compliance Score flags that as a recommended action for you to take.

> [!NOTE]
> Compliance Score and Secure Score do not cover everything in Office 365 or Microsoft Intune. The data they provide is to increase understanding of your compliance posture to help you make informed risk-based decisions.

### Monitoring and taking action

The solutions screen displays all of your organization’s Microsoft solutions. The table lists each solution's contribution to your overall score, the score-enhancing points achieved and possible within that solution, and the remaining number of improvement actions grouped in that solution that can increase your score. Select **Open** underneath the **Open Solution** column to work on that particular solution. For instance, in the example below, selecting **Open** takes you to your Azure AD Identity Protection instance so that you can take the action recommended in the **Description** column.

SCREENSHOT SOLUTIONS PAGE OPEN LINK

## Viewing assessments

The assessments screen lists all the assessments set up for your organization by both you and Microsoft. It lists only assessments that have yet to begin work, are in progress, or are not yet compliant. Assessments which you have previously tested and implemented are archived in Compliance Manager.

SCREENSHOT ASSESSMENTS PAGE

On the assessments screen you can quickly view important information about each assessment:

- **Status**: the status toward completion of all the improvement actions in the assessment will be listed as either:
    - **Non-compliant**: the improvement actions in the assessment have not been implemented and successfully tested; work has not yet begun
    - **In progress**: work is underway in implementing or testing the improvement actions; this could mean, for example, that an improvement action in the assessment has been assigned for work, is in the process of being tested
- **Assessment progress**: the percentage of the work done towards final completion of the assessment, as measured by the number of controls successfully tested.
- **Customer-managed actions**: the number of completed actions to satisfy implementation of  your customer-managed controls
- **Microsoft-managed actions**: the number of completed actions to satisfy implementation of Microsoft-managed controls
- **Assessment group**: name of the group you created, in which the assessment resides
- **Related services**: associated Microsoft 365 service
- **Related regulations**: the regulatory standard, policy, or law which the assessment seeks to satisfy

**Note:** Note: during public preview, functionality for creating, exporting, and archiving assessments remains in the Compliance Manager tool. To manage your assessments, select **Manage Assessments in Compliance Manager**, as seen below. [View detailed instructions for working with assessments](working-with-compliance-manager.md#assessments).

SCREENSHOT ASSSESMENTS SCREEN MANAGE IN CM LINK

### Customizing your view

You can filter you view by selecting **Filter**, then on the filter flyout **Filters** pane, make your selections based on regulation and standard or group, then choose the **Apply** button.

2 SCREENSHOTS ASSESSMENT FILTER BUTTON AND FLYOUT PANE

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down. The example below shows a view of assessments grouped by regulation:

SCREENSHOT ASSESSMENT GROUP DROPDOWN

To view an assessment: ?? waint for SDF to catch up

To view or manage an action, select the linked text under **Customer-managed actions** or **Microsoft-managed actions**. This will take you the improvement actions screen with a filtered view of the actions for the group of actions you chose.

SCREENSHOT ASSESSMENT PAGE LINK TO CUST MANAGED ACTIONS

## Reporting

Link to reporting in compliance center..do those tools pull data from Compliance Score?...https://docs.microsoft.com/en-us/microsoft-365/compliance/reports-in-security-and-compliance