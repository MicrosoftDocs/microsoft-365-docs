---
title: "Get started with Microsoft Compliance Manager"
f1.keywords:
- NOCSH
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
description: "Set up Microsoft Compliance Manager, which helps organizations simplify and automate risk assessments. Configure user permissions and roles, automated testing."
---

# Get started with Compliance Manager

**In this article:** Understand how to **access** Compliance Score, set **roles and permissions**, and configure **automatic Secure Score updates**. This article also explains the main Compliance Score pages: **your dashboard**, the improvement actions page, the solutions page, and the assessments page.

## Who can access Compliance Manager

## Before you begin

The Microsoft 365 global administrator for your organization will likely be the first user to access Compliance Score. We recommend the global admin sign in and set user permissions as outlined below when visiting Compliance Score for the first time.

## Sign in

1. Go to the [Microsoft 365 compliance center](https://compliance.microsoft.com/) and **sign in** with your Microsoft 365 global admin account.
2. Select **Compliance Score** on the left navigation pane. You should then see your [Compliance Score dashboard with your score](#understand-the-compliance-score-dashboard).

The direct link to access Compliance Score is [https://compliance.microsoft.com/compliancescore](https://compliance.microsoft.com/compliancescore).

## Set user permissions and assign roles

Compliance Score uses a role-based access control (RBAC) permission model. Only users who are assigned a role may access Compliance Score, and the actions allowed by each user are restricted by role type.

### Where to set permissions

The person holding the global admin role for your organization can set user permissions in [Azure Active Directory (Azure AD)](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal) or in [Compliance Manager](compliance-manager-overview.md#permissions). Once roles are set in either of these locations, users can access Compliance Score as well as Compliance Manager.

### Role types

The table below shows how each [Azure AD role](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles) maps to existing Compliance Manger roles, and the functions allowed by each role. Users will need at least the Azure AD global reader role to access Compliance Score.


| User can: | Azure AD role | Compliance Manager role | 
| :------------- | :-------------: | :------------: |
| **Read but not edit data**| Azure AD global reader  | Azure AD global reader | 
| **Read but not edit data**| Security reader | Compliance Manager reader  | 
| **Edit data**| Compliance administrator | Compliance Manager contributor | 
| **Edit test results**| Compliance administrator | Compliance Manager assessor | 
| **Manage assessments, and template and tenant data**| Compliance administrator<br>Compliance data administrator<br>Security administrator | Compliance Manager administrator | 
| **Assign users**| Global administrator | Portal admin | 

> [!NOTE]
> When you go from Compliance Score to Compliance Manager to complete a task during public preview, your browser will open a new tab and a dialog box appears. In the top section with the header, "Already a Microsoft cloud services customer? Sign in to your account," select **Sign In** to access Compliance Manager. You won't need to re-enter your credentials.

## Settings for automated testing and user history

insert new text....

### Set up automated testing

### Manage user history

By default, all new tenants have [Secure Score](../security/mtp/microsoft-secure-score-new.md) automatic updates turned on. All actions that are monitored by Secure Score will automatically update the status for the same action in Compliance Score.

Your global administrator can manage this setting to turn off automatic updates for all actions, or set updates for actions individually.

During public preview, you'll need to go to the Microsoft Service Trust Portal (where Compliance Manger is located) to manage Secure Score updates.

To manage automatic Secure Score updates, follow these steps:

1. Sign in to the [Service Trust Portal](https://servicetrust.microsoft.com) with your global administrator account.

2. On the Service Trust Portal top menu bar, under **More**, select **Admin** and then choose **Settings**.

3. In the **Secure Score** tab, select the corresponding button to either **turn on for all actions**, **turn off for all actions**, or **set per action.**

If you choose **set per action,** take these additional steps to turn on Secure Score updates for individual actions:

4. Select **Compliance Manager** from the top menu (do not select "Compliance Manager (classic),").

5. Select **Tenant Management** in the upper-right corner of your screen.

6. On the **Customer Actions** pane, find your intended action with an ellipsis (**...**) under the **Affected Actions** column. Click on the ellipses and select **Edit.**

7. Switch the **Secure Score continuous update** toggle switch to **On.**

8. Select **Save.** Secure Score continuous monitoring is now turned on for that action.

**Note:** Only the global administrator can turn on or off automatic updates for all actions. The Compliance Manager administrator can turn on automatic updates for individual actions, but not for all actions globally.

#### Learn more

[Read about managing Secure Score updates](compliance-manager-release-notes.md#secure-score).

## Understand the Compliance Manger dashboard

The Compliance Score dashboard is designed to provide you an at-a-glance view of your current compliance posture.

![Compliance Score - dashboard](../media/compliance-score-dashboard.png "Compliance Score dashboard")

### Overall compliance score

Your compliance score is featured prominently at the top. It shows a percentage based on points achievable for completing improvement actions that address key data protection standards and regulations.

When you come to Compliance Score for the first time, your initial score is based on the built-in [Microsoft 365 data protection baseline](compliance-score-methodology.md#initial-score-based-on-microsoft-365-data-protection-baseline)—a set of controls that includes common industry regulations and standards. Compliance Score scans your existing Microsoft 365 solutions and gives you an initial assessment based on your current privacy and security settings. As you add assessments that are relevant to your organization, your score becomes more meaningful for you.

#### Learn more
[Understand how your compliance score is calculated](compliance-score-methodology.md).

### Key improvement actions

This section lists the top improvement actions you can take right now to make the largest positive impact on your overall compliance score.

### Solutions that affect your score

This section shows solutions containing actions with the greatest opportunity to positively impact your score, and the number of outstanding improvement actions in each solution.

### Compliance score breakdown

This section gives you a more detailed view of your score in two different ways:

- **Categories**: shows the percentage of your overall score within data protection categories, such as "protect information" or "manage devices."
- **Assessments**: shows the percentage of your progress in managing assessments for particular compliance and data protection standards, regulations, or laws, such as GDPR or NIST 800-53.

### Filtering your dashboard view

You can filter your dashboard view to see only the items related to particular regulations and standards, solutions, type of action, assessment groups, or data protection categories. Filtering your view in this way will also filter the score on your dashboard, showing how many points you've achieved out of total possible points based on your filter criteria.

To apply filters:

1. Select **Filter** on the upper-right side of the dashboard.
2. Select your filter criteria from the **Filters** flyout pane, then select **Apply**.

After you apply a filter, you'll see your score adjusted in real time. The compliance score percentage and breakdown information, and the improvement actions and solutions, now only pertain to data covered by your filter criteria. If you sign out of Compliance Score, your filtered view remains when you sign back in.

To remove filters:

- At the **Applied filters** heading above your compliance score, select the **X** next to the individual filter you want to remove; or
- Select **Filter** on the upper-right side of your dashboard, then select **Clear filters**.

## Improvement actions page

[Improvement actions](compliance-score-improvement-actions.md) centralize your compliance activities and help you align with data protection regulations and standards. Each improvement action gives detailed implementation guidance and a link to launch you into the appropriate solution. Actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

### View your improvement actions

The Compliance Score dashboard shows your **key improvement actions**, which are the ones with the most available points that address the most important issues.

To view all of your improvement actions, select the **Improvement actions** tab on your dashboard. Or, select **View all improvement actions** underneath the list of key improvement actions on your dashboard.

If you have a long list of actions, it may be helpful to filter your view. Select **Filter** at the upper-right corner of the actions list. When the **Filters** flyout pane appears, select your criteria based on regulations and standards, solution, and group. You can also customize your view by selecting **Group** in the upper-right corner. From the drop-down menu, select to view by group, solution, category, action type, or status.

The default view for this page does not show improvement actions with a test status of **Passed**. To view actions that have passed testing, check the **Passed** box in the Filters flyout pane. Only actions with a test status of **Passed** count toward your score.

The improvement actions page shows the following data points for each improvement action:

- **Score impact**: the points by which your overall score will increase when completing the action
- **Regulations**: the regulation or standard pertaining to the action
- **Group**: the group to which you assigned the action
- **Solutions**: the solution where you can go to perform the action
- **Assessments**: the assessment (which organizes controls to meet a certain compliance objective) in which the action resides
- **Categories**: the related data protection category (such as, protect information, manage devices, etc.)
- **Test status**:
    - **None** – no status update recorded
    - **Not assessed** - testing hasn't started
    - **Passed** - implementation successfully tested
    - **Failed low risk** - testing failed, low risk
    - **Failed medium risk** - testing failed, medium risk
    - **Failed high risk** - testing failed, high risk
    - **Not in scope** – the action is not in scope for the assessment and doesn't impact your score
    - **To be detected** - for manual test, indicates an action has been implemented but not tested; for automated test, indicates an action is waiting for automation result
    - **Could not be detected** - automated status can't be determined
    - **Partially tested** – automated scoring that awards partial points
- **Points achieved**: number of points earned out of the maximum possible

#### Learn more
[See how to assign and perform work on improvement actions](compliance-score-improvement-actions.md).

## Solutions page

The solutions page shows the share of earned and potential points as organized by solution. Viewing your remaining points and improvement actions from this view helps you understand which solutions need more immediate attention.

Find the solutions page by selecting the **Solutions** tab on your Compliance Score dashboard. You can also select **View all solutions** underneath **Solutions that affect your score** in the upper-right section of your dashboard.

### Filtering your solutions view

To filter your view of solutions:

1. Select **Filter** at the top-left corner of your assessments list.
2. On the **Filters** flyout pane, place a check next to the desired criteria (standards and regulations, solution, action type, Compliance Manager group, category).
3. Select the **Apply** button. The filter pane will close and you’ll see your filtered view.

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down menu above your assessments list.

### Taking action from the solution page

The solutions page displays your organization’s solutions that are connected to improvement actions. The table lists each solution’s contribution to your overall score, the score-enhancing points achieved and possible within that solution, and the remaining number of improvement actions grouped in that solution that can increase your score.

There are two ways you can take action from this screen:

1. On the row of your intended solution, under the **Remaining actions** column, select the hyperlinked number. You’ll see a filtered view of the improvement actions screen showing untested improvement actions for that solution.

2. On the row of your intended solution, under the **Open solution** column, select **Open**. You’ll see the solution or location in the Microsoft 365 and Office 365 security and compliance centers where you can take the recommended action.

## Assessments page

The assessments page lists all the [assessments](compliance-score-assessments.md) you set up for your organization. Your Compliance Score denominator is determined by all your tracked assessments. The more assessments you add, the more improvement actions you see on your improvement actions page, and the higher your score denominator is.

This page summarizes key information about each assessment:

- **Assessment**: name of the assessment
- **Status**:
    - **Complete** -  all controls have a status of “passed,” or at least one is passed and the rest are “out of scope”
    - **Incomplete** – at least one control has a status of “failed"
    - **None** - all controls have have not been tested
    - **In progress** - improvement actions have any other status, including “in progress,” “partial credit,” or “undetected
- **Assessment progress**: the percentage of the work done toward completion, as measured by the number of controls successfully tested
- **Your improvement actions**: the number of completed actions to satisfy implementation of your controls
- **Microsoft actions**: the number of completed actions to satisfy implementation of Microsoft controls
- **Group**: name of the group the assessment belongs to
- **Product**: associated Microsoft 365 service
- **Regulation**: the regulatory standard, policy, or law that applies to the assessment

### Filtering your assessments view

To filter you view of assessments:

1. Select **Filter** at the top-left corner of your assessments list.
2. On the **Filters** flyout pane, check your desired criteria.
3. Select the Apply button. The filter pane will close and you will see your filtered view.

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down menu above your assessments list.

### Default assessment

By default, you'll see the [Microsoft 365 data protection baseline](compliance-score-methodology.md#initial-score-based-on-microsoft-365-data-protection-baseline) assessment on the assessments page. Compliance Score also provides several ready to use [templates](compliance-score-templates.md) from which to build assessments.

## Assessment templates page

text

## Next step
Customize Compliance Score by [setting up assessments](compliance-score-assessments.md).