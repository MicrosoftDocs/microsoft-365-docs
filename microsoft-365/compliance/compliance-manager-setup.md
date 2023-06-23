---
title: "Get started with Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/23/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- highpri
- tier1
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MOE150
- MET150
description: "Set up user permissions and roles, and set up automated testing, for Microsoft Purview Compliance Manager."
---

# Get started with Compliance Manager

**In this article:** This article helps you set up Compliance Manager. Learn how to **access** Compliance Manager, **set roles and permissions**, and configure **automatic testing of improvement actions**. Walk through **your Compliance Manager dashboard** and understand the main pages: the improvement actions page, the solutions page, the assessments page, and the assessment templates page.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Who can access Compliance Manager

Compliance Manager is available to organizations with Office 365 and Microsoft 365 licenses, and to US Government Community Cloud (GCC) Moderate, GCC High, and Department of Defense (DoD) customers. Assessment availability and management capabilities depend on your licensing agreement.  [View service description details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

## Before you begin

The Microsoft 365 global administrator for your organization will likely be the first user to access Compliance Manager. We recommend the global admin sign in and set user permissions as outlined below when visiting Compliance Manager for the first time.

## Sign in

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> and **sign in** with your Microsoft 365 global administrator account.
2. Select **Compliance Manager** on the left navigation pane. You'll arrive at your [Compliance Manager dashboard](#understand-the-compliance-manager-dashboard).

The direct link to access Compliance Manager is [https://compliance.microsoft.com/compliancemanager](https://compliance.microsoft.com/compliancemanager).

## Set user permissions and assign roles

Compliance Manager uses a role-based access control (RBAC) permission model. Only users who are assigned a role may access Compliance Manager, and the actions allowed by each user are restricted by [role type](#role-types). Our RBAC model also allows you to grant user access to individual assessments. See [role-based access to assessments](#role-based-access-to-assessments-and-regulations) below to learn more.

The person holding the global admin role for your organization can set user permissions for Compliance Manager. Permissions can be set in either of the following places:

- The Microsoft Purview compliance portal ([instructions](#setting-permissions-in-the-microsoft-purview-compliance-portal))
- Azure Active Directory (Azure AD) ([instructions](#setting-permissions-in-azure-ad))

> [!NOTE]
> Customers in US Government Community (GCC) High and Department of Defense (DoD) environments can only set user permissions and roles for Compliance Manager in Azure AD. See below for Azure AD instructions and role type definitions.

#### Setting permissions in the Microsoft Purview compliance portal

1. Go to the Microsoft Purview compliance portal, and select <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a>.

2. Under the compliance portal dropdown, select **Roles**.

3. Find the role group to which you want to add one or more users, and check the box to the left of the group name. (See the [list of roles and related functions below](#role-types). The role group names mimic the role name.)

4. On the flyout pane for that group, select **Edit** under the **Members** header.

5. Select **Choose members**. Another flyout window will appear.

6. Select **+ Add** to choose one or more users to add to the group.

7. Select the checkbox next to the names you want to add, then select the **Add** button at the bottom.

8. When you’re done assigning users, select **Done**, then select **Save**, then **Close**.

#### Setting permissions in Azure AD

To set permissions and assign roles in Azure AD, see [Assign administrator and non-administrator roles to users with Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal).

Users with Azure AD identities who don't have Office 365 or Microsoft 365 subscriptions won't be able to access Compliance Manager in the Microsoft Purview compliance portal. To seek assistance in accessing Compliance Manager, contact [cmresearch@microsoft.com](mailto:cmresearch@microsoft.com).

### Role types

The table below shows the functions allowed by each role in Compliance Manager. The table also shows how each [Azure AD role](/azure/active-directory/roles/permissions-reference) maps to Compliance Manager roles. Users will need at least the Compliance Manager reader role, or Azure AD global reader role, to access Compliance Manager.

A user can only hold one role at a time. Any change in a user's role will override their previous role.

| User can: | Compliance Manager role | Azure AD role | 
| :------------- | :-------------: | :------------: |
| **Read but not edit data**| Compliance Manager Reader  | Azure AD Global reader, Security reader |
| **Edit data - for example, can create an assessment and edit improvement action data**| Compliance Manager Contribution | Compliance Administrator |
| **Edit improvement action testing notes**| Compliance Manager Assessor | Compliance Administrator |
| **Manage assessments, regulatory templates, and tenant data; assign improvement actions**| Compliance Manager Administration | Compliance Administrator, Compliance Data Administrator, Security Administrator  |

### Role-based access to assessments and regulations

You can assign roles to users in order to grant access to specific assessments, or all assessments based on the regulation. Granting user access in these ways is useful when you need to ensure that only the people working on certain regulatory requirements have access to that data.

These four roles provide access to assessments:
- Compliance Manager Reader
- Compliance Manager Contribution
- Compliance Manager Assessor
- Compliance Manager Administration

What you can do with each assessment remains restricted based on which activities the role allows.

To grant users access to an assessment or all assessments for a regulation, open the its details page and select **Manage users access** to add users by role. If a user has a role assigned to them in the Microsoft Purview compliance portal for overall access to Compliance Manager, any role you assign them for a specific assessment will apply only to that assessment.

**More information**:
- See [Grant user access to assessments](compliance-manager-assessments.md#grant-user-access-to-individual-assessments) for more detailed instructions.
- See [Grant user access to regulations](compliance-manager-templates.md#grant-user-access-to-regulations) for more detailed instructions.
- Learn more about [managing all users' access to assessments](#user-access) in Compliance Manager settings.

## Start a premium assessments trial

The Compliance Manager premium assessments trial is a great way to quickly set up assessments that are most relevant to your organization. Our library of over 360 regulatory templates correspond to governmental regulations and industry standards around the world.
Learn more about the [premium assessments trial](compliance-easy-trials-compliance-manager-assessments.md).

## Compliance Manager settings

You can find settings for specific Compliance Manager functions by selecting **Compliance Manager settings** in the upper-right of the screen. The types of settings include:

- [Testing source](#testing-source-for-automated-testing): allows you to turn off or on the automatic testing of improvement actions
- [Manage user history](#manage-user-history): allows you to manage the data of users associated to improvement actions, including the ability to reassign improvement actions to a different user
- [User access](#user-access): allows you to view and manage user roles for access to assessments or assessment templates

Compliance Manager settings can only be accessed by users who hold a global administrator or Compliance Manager Administrator role.

> [!NOTE]
> The automated testing feature is not available to customers in GCC High and DoD environments because Secure Score isn't available in these environments. GCC High and DoD customers will need to manually implement and test their improvement actions.

## Testing source for automated testing

Compliance Manager detects a variety of signals to provide automated testing and monitoring of improvement actions. This automation derives from three primary sources: built-in, Microsoft Secure Score, and Microsoft Defender for Cloud ([get details about automated testing sources](compliance-manager-improvement-actions.md#automated-testing-and-monitoring)). Compliance Manager also detects signals from Microsoft Priva (this capability is in preview; [learn more](/privacy/priva/priva-overview#how-priva-works-with-microsoft-purview-risk-and-compliance-solutions)). When an improvement action is successfully tested and implemented, you receive the maximum possible points for that action, which gets credited to your overall compliance score.

#### Initial settings

While automated testing helps maximize efficiency in your compliance activities, you have full control over whether to apply automated testing. Here's what's initially set up by Compliance Manager and how you can make changes:

- The first time you use Compliance Manager, automatic testing is turned on by default for all actions that can be automatically tested. It takes approximately seven days to fully collect data and factor that data into your compliance score.

- You can turn off automatic testing for all actions, which disables all automated activity on improvement actions by Compliance Manager. You can also select individual improvement actions for automatic testing. See [Manage automated testing settings](#manage-automated-testing-settings) for instructions.

#### How to tell which actions are tested automatically

On your **Improvement actions** page, find the **Testing source** column. If the value is listed as **Automatic**, then the action is automatically tested by Compliance Manager. If the value is **Manual**, then the action is tested by your organization. If the value is **Parent**, then the action inherits the testing status of another action to which it's linked. Get details about [improvement action testing source](compliance-manager-improvement-actions.md#testing-source).

#### When actions are added or updated

When automation becomes available for existing improvement actions, or when new automated improvement actions are added, the default behavior depends on your current settings and whether or not you've [brought data into an improvement action](compliance-manager-update-actions.md). When you add your own testing data or evidence into an improvement action, automatic testing is turned off for that action to ensure that Compliance Manager doesn't overwrite any of your data.

If you've added data to an existing improvement action:
- Automated testing remains **off** by default for the action. You can choose to turn it back on.

If you haven't added data to an improvement action, or when new automated actions are added to Compliance Manager, the testing behavior follows your current settings:
- Automated testing is **on** if your setting is **on** for **all actions** or **per action**.
- Automated testing is **off** if your setting is **off for all actions**.

#### Manage automated testing settings

The global administrator for your organization can change the settings for automated testing at any time. You can turn off automated testing for common improvement actions, or turn it on for individual actions. Follow the instructions below to change your automated testing settings.

> [!NOTE]
> Only the global administrator can turn on or off automatic updates for all improvement actions. The Compliance Manager Administrator can turn on automatic updates for individual actions, but not for all actions.

1. Select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> in the Microsoft Purview compliance portal.

2. On the settings page, select **Compliance Manager**.

3. Select **Testing source** from the left navigation.

4. Select your desired option for testing improvement actions:
    1. Turn on automatic testing for all actions
    1. Turn off automatic testing for all actions
    1. Turn on automatic testing per action

5. If you select **Turn on per improvement action**, a list will display showing all the improvement actions that are eligible for testing. All actions will be checked by default, so you'll need to uncheck the actions you **don't** want to be automatically tested.

6. Select **Save** to save your settings. You’ll receive a confirmation message at the top of your screen that your selection was saved. If you receive a failure notice, try again.

## Manage user history

The **Manage user history** settings help you quickly identify which users have worked with improvement actions in Compliance Manager. The identifiable user data associated with improvement actions includes the status of the improvement actions and  documents they uploaded. Understanding and retrieving this type of data may be necessary for your organization’s own compliance needs.

The user history settings also allow you to reassign all improvement actions from one user to another.

**To find the user history settings:**

1. Select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> in the Microsoft Purview compliance portal.

2. On the settings page, select **Compliance Manager**.

3. Select **Manage user history** from the left navigation.

The **manage user history** page shows a list of all users by email address who are assigned to an improvement action. Use the **Search** button to quickly find a specific user by typing in their email address.

To the right of each user’s email address, the **Select** drop-down menu provides options to  export a report, reassign improvement actions, or delete history. See each section below for details about each option.

#### Export a report of user history data

You can export an Excel file containing a list of improvement actions currently assigned to a user.  The report also lists any evidence files uploaded by that user. This information can help you reassign open improvement actions.

The report reflects the improvement action’s status as of its creation date. It’s not a historical report of all previous changes to its status or assignment (learn how to [export a report from your improvement actions page](compliance-manager-improvement-actions.md#export-a-report)).

**Follow the steps below to export a report by user:**

1. Select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> in the Microsoft Purview compliance portal.

2. On the settings page, select **Compliance Manager**.

3. Select **Manage user history** from the navigation at left.

4. Find your intended user by searching the list email addresses, or by selecting **Search** and entering the user’s email address.

5. From the **Select** drop-down menu, choose **Export report**.

6. Once the Excel file of your report is generated, you can open it and save it to your local machine.

#### Reassign improvement actions to another user

You can reassign improvement actions from one user to another. When you reassign an action, the document upload history doesn't change, but the name of the user who originally uploaded the documentation no longer appears within the improvement action.

**Follow the steps below to reassign improvement actions to another user:**

1. Select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> in the Microsoft Purview compliance portal.

2. On the settings page, select **Compliance Manager**.

3. Select **Manage user history** from the navigation at left.

4. Find a user by searching the list email addresses, or by selecting **Search** and entering that user’s email address.

5. From the **Select** drop-down menu, choose **Reassign improvement actions**. The **Reassign improvement actions** flyout pane will appear.

6. In the **Search users** field, enter the name or email address of the user to whom you're assigning the improvement actions.

7. When you see the name of your intended user under **Improvement actions will be assigned to**, select the user, then select **Assign actions**.

8. When the reassignment is complete, you’ll see a confirmation message in the flyout pane confirming that all improvement actions from the previous user have been reassigned to the new user. If you receive a reassignment failure notice, close the window and try again. To close the flyout pane, select **Done**.

The new assignee receives an email that they've been assigned to an improvement action. The email contains a direct link into the improvement action's details page.

 > [!NOTE]
> If you reassign an action that has a pending update, the direct link to the action in the reassignment email will break if the update is accepted after reassignment. You can fix this by re-assigning the action to the user after the update is accepted. Learn more about [updates to improvement actions](compliance-manager-improvement-actions.md#accepting-updates-to-improvement-actions).

#### Delete user history

Deleting a user’s history will remove them as an owner of improvement actions, and will remove their name from all other fields in Compliance Manager. When you delete a user’s history, the improvement actions they owned will not display an **Assigned to** value until a new user is assigned. Any documents uploaded to the improvement action will show **User removed** in place of the deleted user’s name. Deleting user history is permanent.

To delete a user’s history, follow the steps below:

1. In **Compliance Manager settings,** select **Manage user history**.

1. Find a user by searching the list email addresses on the page, or by selecting **Search** and entering that user’s email address.

1. From the **Select** drop-down menu, choose **Delete history**.

1. A window appears asking you to confirm the permanent deletion of the user’s history. To continue with deletion, select **Delete history**. To leave without deleting the history, select **Cancel**.

1. You’ll arrive back at the **Manage user history** page with a confirmation message at the top that the history for the user was deleted.

## User access

The **User access** section of **Settings** displays a list of all users who have a role that allows access to one or more assessments. From this page, you can make changes to role assignments.

 - When you grant a user access to an **assessment**: The user will have access to just that one assessment.
 - When you grant a user access to a **regulation**: The user will have access to any assessment created with that regulation, including existing assessements and any assessments created in the future.

To add or remove user access roles for assessments and regulations, follow the steps below:

1. In **Compliance Manager settings,** select **User access**.

1. Select the checkbox next to the name of one or more users whose role you want to edit.

1. Depending on whether you're editing roles for assessments or regulations: From the **Edit assessment roles** or **Edit regulation roles** dropdown menu above the list of names, select **Add assessment/regulation permissions** or **Remove assessment/regulation permissions**.

1. **For adding a role**: From the flyout pane, go to the tab that corresponds to the role you want to add (Reader, Assessor, or Contributor), then select **Add assessments/regulations**. On the next flyout pane, choose the checkbox next to the assessments/regulations and select **Apply**, then select **Save**.

1. **For removing a role**: From the flyout pane, go to the tab that corresponds to the role you want to remove (Reader, Assessor, or Contributor). Select the button next to the assessments/regulations for which you want to remove access, and select the X mark in the **Remove** column.

   1. A **Remove access?** confirmation box appears. Select **Confirm** to remove the user's role, or select **Cancel** to cancel. The name of the assessments will now be removed from the role tab.

   1. Select **Save** on the flyout pane. The role removal won't be completed until you select the **Save** button. Selecting **Close** will cancel out of the process without saving the role removal.

The user list on the **User access** page will now reflect the changes you made.

> [!NOTE]
> Admins whose permissions for Compliance Manager were set in Azure AD won't appear on the **User access** page. This means that if a user has access to one or more assessments, and their role is Global Administrator, Compliance Administrator, Compliance Data Administrator, or Security Administrator, they won't appear on this page. Learn more about [setting Compliance Manager permissions in Azure AD](#setting-permissions-in-azure-ad).

**More information**:
- [Visit these instructions](compliance-manager-assessments.md#grant-user-access-to-individual-assessments) for assigning user roles from an assessment's details page.

## Understand the Compliance Manager dashboard

The Compliance Manager dashboard is designed to provide you an at-a-glance view of your current compliance posture.

:::image type="content" alt-text="Compliance Manager - dashboard." source="../media/compliance-manager-dashboard.png" lightbox="../media/compliance-manager-dashboard.png":::

### Overall compliance score

Your compliance score is featured prominently at the top. It shows a percentage based on points achievable for completing improvement actions that address key data protection standards and regulations. Points from [Microsoft actions](compliance-manager-assessments.md#microsoft-actions-tab), which are managed my Microsoft, also count toward your compliance score.

When you come to Compliance Manager for the first time, your initial score is based on the [Microsoft 365 data protection baseline](compliance-manager-assessments.md#data-protection-baseline-default-assessment). This baseline assessment, which is available to all organizations, is a set of controls that includes common industry regulations and standards. Compliance Manager checks your existing Microsoft 365 solutions and gives you an initial assessment based on your current privacy and security settings. As you add assessments that are relevant to your organization, your score becomes more meaningful for you.

**Learn more:** [Understand how your compliance score is calculated](compliance-score-calculation.md).

### Key improvement actions

This section lists the top improvement actions you can take right now to make the largest positive impact on your overall compliance score. Select **View all improvement actions** to go to your improvement actions page.

### Solutions that affect your score

This section highlights solutions containing improvement actions that can positively impact your score, and the number of outstanding improvement actions in those solutions. Select **View all solutions** to visit your solutions page.

### Compliance score breakdown

This section gives you a more detailed view of your score in two different ways:

- **Categories**: shows the percentage of your overall score within data protection categories, such as "protect information" or "manage devices."
- **Assessments**: shows the percentage of your progress in managing assessments for particular compliance and data protection standards, regulations, or laws, such as GDPR or NIST 800-53.

### Filtering your dashboard view

You can filter your dashboard view to see only the items related to particular regulations and standards, solutions, type of action, assessment groups, or data protection categories. Filtering your view in this way will also filter the score on your dashboard, showing how many points you've achieved out of total possible points based on your filter criteria.

To apply filters:

1. Select **Filter** on the upper-right side of the dashboard.
2. Select your filter criteria from the **Filters** flyout pane, then select **Apply**.

After you apply a filter, you’ll see your score adjusted in real time. The compliance score percentage and breakdown information, and the improvement actions and solutions, now only pertain to data covered by your filter criteria. If you sign out of Compliance Manager, your filtered view remains when you sign back in.

To remove filters:

- At the **Applied filters** heading above your compliance score, select the **X** next to the individual filter you want to remove; or
- Select **Filter** on the upper-right side of your dashboard, then on the **Filters** flyout pane, select **Clear filters**.

### Improvement actions page

[Improvement actions](compliance-manager-improvement-actions.md) are actions managed by your organization. Working with improvement actions helps to centralize your compliance activities and align with data protection regulations and standards. Each improvement action gives detailed implementation guidance and a link to launch you into the appropriate solution. Improvement actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

#### View your improvement actions

The Compliance Manager dashboard shows your key improvement actions. To view all of your improvement actions, select the **Improvement actions** tab on your dashboard, which brings you to your improvement actions page. You can also select **View all improvement actions** underneath the list of key improvement actions on your dashboard to get to your improvement actions page.

The improvement actions page shows all of the improvement actions managed by your organization. Actions managed by Microsoft can be viewed within each assessment (learn more about [Microsoft actions](compliance-manager-assessments.md#microsoft-actions-tab)).

If you have a long list of actions on your improvement actions page, it may be helpful to filter your view. Select **Filter** at the upper-right corner of the actions list. When the **Filters** flyout pane appears, select your criteria from the available options. You can also customize your view by selecting **Group** in the upper-right corner. From the drop-down menu, select to view by group, solution, category, action type, or status.

The default view for this page does not show improvement actions with a test status of **Passed**. To view actions that have passed testing, check the **Passed** box in the Filters flyout pane. Only actions with a test status of **Passed** count toward your score. Some actions may show a **pending update label.** Learn more about [updates to improvement actions](compliance-manager-improvement-actions.md#accepting-updates-to-improvement-actions).

The improvement actions page shows the following data points for each improvement action:

- **Products**: The product being evaluated.
- **Points achieved**: The number of points achieved out of the total available by completing the action.
- **Regulations**: The regulations or standards pertaining to the action.
- **Group**: The group to which you assigned the action.
- **Solutions**: The solution where you can go to perform the action.
- **Assessments**: The number of assessments that contain the action. Select the number to see the list of related assessments; you'll see only the assessments to which you have access ([learn more](#role-based-access-to-assessments-and-regulations)).
- **Categories**: The related data protection category (such as, protect information, manage devices, etc.).
- **Test status**:
  - **None** – no status update recorded
  - **Not assessed** - testing hasn't started
  - **Passed** - implementation successfully tested
  - **Failed low risk** - testing failed, low risk
  - **Failed medium risk** - testing failed, medium risk
  - **Failed high risk** - testing failed, high risk
  - **Out of scope** – the action isn't in scope for the assessment and doesn't impact your score
  - **To be detected** - for manual test, indicates an action has been implemented but not tested; for automated test, indicates an action is waiting for automation result
  - **Could not be detected** - automated status can't be determined
  - **Partially tested** – automated scoring that awards partial points
- **Action type**: Indicates whether the improvement action is technical, meaning it can be implemented within a solution or product, or non-technical, which would be implemented outside of a technical solution.
- **Assigned to**: The user assigned to the action to perform work.
- **Testing source**: Indicates whether the testing source for the action is manual, automatic, or inherited from a parent.

Learn [how to assign and perform work on improvement actions](compliance-manager-improvement-actions.md).

### Solutions page

The **Solutions** page shows the share of earned and potential points as organized by solution. Viewing your remaining points and improvement actions from this view helps you understand which solutions need more immediate attention.

Find the solutions page by selecting the **Solutions** tab on your Compliance Manager dashboard. You can also select **View all solutions** underneath **Solutions that affect your score** in the upper-right section of your dashboard. To filter your view of solutions:

1. Select **Filter** at the top-left corner of your assessments list.
2. On the **Filters** flyout pane, place a check next to the desired criteria (regulations, solutions, action types, groups, categories).
3. Select the **Apply** button. The filter pane will close and you’ll see your filtered view.

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down menu above your assessments list.

#### Taking action from the solution page

The **Solutions** page displays your organization’s solutions that are connected to improvement actions. The table lists each solution’s contribution to your overall score, the points achieved and possible within that solution, and the remaining number of improvement actions grouped in that solution that can increase your score.

There are two ways you can take action from this screen:

1. On the row of your intended solution, under the **Remaining actions** column, select the hyperlinked number. You’ll see a filtered view of the improvement actions screen showing untested improvement actions for that solution.

2. On the row of your intended solution, under the **Open solution** column, select **Open**. You’ll arrive at the solution's location in the Microsoft Purview compliance portal,  Microsoft 365 Defender portal, or its admin center, where you can take the recommended action.

### Assessments page

The **Assessments** page lists all the [assessments](compliance-manager-assessments.md) you set up for your organization. Your compliance score denominator is determined by all your tracked assessments. As you add more assessments, you'll see more improvement actions listed on your improvement actions page, and your compliance score denominator increases.

The **Activated/Regulation** counter near the top of the page shows the number of regulations currently in use out of the total number available for your organization to use. Learn more about [active regulations](compliance-manager-templates.md#regulation-availability-and-licensing).

The assessments page summarizes key information about each assessment:

- **Assessment**: name of the assessment
- **Status**:
  - **Complete** - all controls have a status of “passed,” or at least one is passed and the rest are “out of scope”
  - **Incomplete** – at least one control has a status of “failed"
  - **None** - all controls haven't been tested
  - **In progress** - improvement actions have any other status, including “in progress,” “partial credit,” or “undetected
- **Assessment progress**: the percentage of the work done toward completion, as measured by the number of controls successfully tested
- **Your improvement actions**: the number of completed actions to satisfy implementation of your controls
- **Microsoft actions**: the number of completed actions to satisfy implementation of Microsoft controls
- **Group**: name of the group the assessment belongs to
- **Product**: associated product, such as Microsoft 365 or another product defined for assessment
- **Regulation**: the regulatory standard, policy, or law that applies to the assessment

To filter your view of assessments:

1. Select **Filter** at the top-left corner of your assessments list.
2. On the **Filters** flyout pane, check your desired criteria.
3. Select the **Apply** button. The filter pane will close and you will see your filtered view.

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down menu above your assessments list.

### Regulations page

A regulatory template is a framework for creating an assessment in Compliance Manager. The **Regulations** page displays a list of regulatory templates and key details. The **Activated/Regulation** counter near the top of the page shows the number of active regulations currently in use out of the total number available for your organization to use. See [Regulation availability and licensing](compliance-manager-templates.md#regulation-availability-and-licensing) for more information.

## Next step

Customize Compliance Manager by [setting up assessments](compliance-manager-assessments.md).
