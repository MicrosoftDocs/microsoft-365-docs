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

## Getting started: sign in, set permissions, invite collaborators

The Microsoft 365 global administrator will likely be the first user type to access and work within Compliance Score. To access Compliance Score and set it up for maximum benefit at the outset, we recommend following each of the actions below upon your first visit to Compliance Score.

### Sign in to Compliance Score

- Go to the [Microsoft Compliance Center](https://compliance.microsoft.com/) and **sign in** with your M365 global administrator account
- Select **Compliance Score** on the left-hand navigation. You should then see your Compliance Score dashboard with your score (learn more about your dashboard LINK TO section right below>)

### Set user permissions

Compliance Score uses a role-based access control (RBAC) permission model. Only users who are assigned a user role may access Compliance Score, and the actions allowed by each user are restricted by role type. View a table showing the actions allowed for each permission. (Note that Compliance Manager permissions work in the same way; for example …) 

The portal admin for Compliance Manager can set permissions for other users in within Compliance Manager by following these steps:

1. From the top **More** drop-down menu, select **Admin**, then **Settings**.
2. Select the role you want to assign and then add the employee you want to assign to that role. Users will then be able to perform certain actions.

In addition, users who are assigned the [Global Reader role in Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader) have read-only permission to access Compliance Manager; however they cannot edit data or perform any actions within Compliance Manager.

### Invite collaborators who work on compliance for your organization

The most productive initial action you can take to make Compliance Score work best for you is to invite other users to the feature so that you can begin collaborating with them and assigning them tasks. When you invite users, they receive an email inviting them to collaborate. To invite users, follow these steps: ???......

## Understanding the Compliance Score dashboard

The Compliance Score dashboard is configured to provide you an at-a-glance view of your current compliance posture.

SCREENSHOT DASHBOARD

### Overall compliance score

Your compliance score, featured prominently at the top, shows a percentage based on points achievable for performing improvement actions that help address key data protection standards and regulations. When you come to Compliance Score for the first time, your score represents an initial figure based on the built-in Microsoft Data Protection Standard. As you work to customize Compliance Score, your score number becomes even more relevant and meaningful to your organization. Learn more about [how your score is calculated](compliance-score-methodology.md).

### Key improvement actions

This section lists the top improvement actions you can take right now to make the largest positive impact on your overall score.

### Solutions that affect your score

This section shows which solution areas within Microsoft 365 contain actions that have the greatest opportunity to positively impact your score, and how many outstanding improvement actions you have in each solution area.

### Compliance Score breakdown

This section gives you a more detailed view of your score in two different ways:

- **Categories**: Viewing your score by category shows the percentage of your overall score within compliance categories, such as “protect information” or “manage devices.”
- **Assessments**: Viewing your score by assessment shows the percentage of your progress in implementing/managing assessments for particular compliance and data protection standards, regulations, or laws, such as GDPR or NIST 800-53.

### Customizing your view

You can filter your dashboard view to see only the items related to particular regulations and standards, solutions, or action types. Filtering your view in this way will also filter the score on your dashboard so you can see how many points you’ve achieved out of total possible points based on your filter criteria.  To filter your view, select **Filter** on the upper-right side of the dashboard:

SCREENSHOT DASHBOARD FILTER BUTTON

Then select your filter criteria from the flyout **Filters** pane, then select **Apply**.

SCREENSHOT DASHBOARD FILTERS FLYOUT

You will see your score adjusted in real-time, and you will only see improvement actions, solutions, and score breakdown information that correspond to your filter criteria.

## The workflow: managing compliance with improvement actions

### What are improvement actions

Improvement actions are the key elements of the workflow process in Compliance Score. You use them to conduct work on [controls for particular assessments](compliance-score.md#key-components-controls-assessments-templates--groups). You can assign them to users in your organization to carry out the recommended actions, store documentation around implementation and testing details, and track implementation and testing status. Below are the key features of improvement actions and how to work with them.

### View your improvement actions

The home screen of Compliance Score shows your **key improvement actions**—the ones with the most available points which address the more important issues. To view all of your improvement actions, select **View all improvement actions** underneath the list of key improvement actions, or select **Improvement actions** on the top navigation.

SCREENSHOT IMPROVEMENT ACTIONS FROM DASHBOARD

On the improvement actions screen, you can see all of your organization’s improvement actions, which can be a very long list. It may be helpful to filter your view by selecting **Filter** above the list, and then selecting the desired criteria based on regulations and standards, solution, and group.

You can also customize your view by selecting **Group**, and from that drop-down menu, select to view by group, solution, category, action type, or status.

### Improvement actions details

The improvement actions screen gives detailed information on each improvement action:

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

### Assigning improvement actions

abc

### Storing documentation in improvement actions

abc

### Changing improvement action status

abc

### Editing implementation notes

abc

### Applying filter on overview(?)

abc

## Viewing solutions

The Solutions screen shows you the share of earned and potential points toward your score are available to you as organized by improvement actions taken within specific Microsoft solutions. The **Solutions that affect your score** section on your Compliance Score dashboard shows the solutions with the greatest potential to positively impact your score. View all your solutions by selecting **Solutions** on the top menu bar or **View all solutions**.

SCREENSHOT SOLUTIONS FROM DASHBOARD

### How Compliance Score monitors your solutions

Compliance Score automatically scans through your Microsoft 365 environment and detect your system settings, continuously and automatically updating your technical control status. For example, if you turned on multi-factor authentication (MFA) in the Azure AD portal, Compliance Score detects the setting and reflect that in the access control details. Vice versa, if you didn’t turn on MFA, Microsoft Compliance Score would flag that as a recommended action for you to take. With the ongoing control assessment, you can now proactively maintain compliance, instead of reactively fixing settings when getting audited.

### Monitoring and taking action

On the solutions screen, you can easily view all of your organization’s Microsoft solutions. The table lists each solution's contribution to your overall score, the score-enhancing points achieved and possible within that solution, and the remaining number of improvement actions grouped in that solution that can increase your score. Select **Open** underneath the **Open Solution** column to work on that particular solution. For instance, in the example below, selecting **Open** takes you to your Azure AD Identity Protection instance so that you can take the action recommended in the **Description** column.

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

Improvement actions provide a secure repository because of Role-Based Access Control (RBAC). All your supporting documentation proving that a control was successfully tested and implemented reside in the improvement action, stored securely in the Microsoft cloud.