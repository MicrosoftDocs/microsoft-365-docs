---
title: Manage the workflow with the insider risk management users dashboard
description: Learn about insider risk management Users dashboard in Microsoft Purview
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 04/19/2023
audience: itpro
ms.collection:
- tier1
- purview-compliance
ms.custom: admindeeplinkCOMPLIANCE
---

# Manage the workflow with the insider risk management users dashboard

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

The **Users dashboard** is an important tool in the insider risk management workflow and helps investigators and analysts have a more complete understanding of risk activities. This dashboard offers views and management features to meet administrative needs between the creating insider risk management policies and managing insider risk management cases.

After users are added to insider risk management policies, background processes are automatically evaluating user activities for [triggering indicators](insider-risk-management-settings.md#policy-indicators). After triggering indicators are present, user activities are assigned risk scores. Some of these activities may result in an insider risk alert, but some activities may not meet a minimum risk score level and an insider risk alert won't be created. The **Users dashboard** allows you to view users with these types of indicators and risk scores, as well users that have active insider risk alerts.

Learn more about how the Users dashboard displays users in the following scenarios:

- Users with active insider risk policy alerts
- Users with triggering events
- Users identified as potential high impact users or in priority user groups
- Users added temporarily to policies

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Users with active insider risk policy alerts

The **Users dashboard** automatically displays all users with active insider risk policy alerts. These users with alerts have both a triggering indicator and an activity risk score that meets the requirements for creating an insider risk alert. Activities for these users are viewed by selecting the user in the **Users dashboard** and navigating to the **User activity** tab.

## Users with triggering events

The **Users dashboard** automatically displays all users with triggering events, but that don't have an activity risk score that would create an insider risk alert. For example, a user with a reported resignation date is displayed because this activity is a triggering event but isn't an activity that has a risk score. Activities for these users are viewed by selecting the user in the **Users dashboard** and navigating to the **User activity** tab.

## Users added temporarily to policies

The **Users dashboard** includes users added to insider risk management policies after an unusual event outside of the insider risk management workflow. Temporarily adding users (from the Policies dashboard) is also a way to start scoring user activity for an insider risk management policy for testing the policy, even if a required connector isn't configured.

When a user is manually added to a policy, the user activities for the previous 90 days are scored and added to the **User activity** timeline. For example, you have a user not currently being assigned risk scores for an insider risk policy and the user has data leak activities reported to the legal department in your organization. The legal department recommends that you configure new short-term detection requirements for the user. You can temporarily assign the user to your *Data leaks* policy for a designated length of time (activation window). All users added temporarily are displayed in the **Users dashboard** because triggering event requirements are waived.

> [!NOTE]
> It may take several hours for new manually-added users to appear in the **Users dashboard**. Activities for the previous 90 days for these users may take up to 24 hours to display. To view activities for manually added users, select the user on the **Users dashboard** and open the **User activity** tab on the details pane.

The user is automatically removed from the **Users dashboard** and scoring stops when the time defined in the **Activation window** expires if:

- the user doesn't have any additional triggering events or insider risk policy alerts, and
- if the manually defined **Activation window** duration is longer than the global policy **Activation window** duration.

The **Activation window** setting with the longest duration always overrides the **Activation window** setting with a shorter duration. For example, you've configured the **Activation window** on the global **Policy timeframes** tab in the insider risk management global settings for 15 days, which is automatically applied to all your insider risk policies.

You temporarily add a user to your *Data leaks* insider risk policy and define 30 days as the **Activation window** for this user. The global **Activation window** setting of 15 days is overridden by defining the **Activation window** setting of 30 days for the temporarily added user. The temporarily added user will remain in the **Users dashboard** and be in-scope for the policy for 30 days.

In the opposite scenario where the global **Activation window** setting is longer than the **Activation window** setting defined for a temporarily added user, the global **Activation window** setting would override the **Activation window** setting for the temporarily added user. The temporarily added user will remain in the **Users dashboard** and be in-scope for the policy for the number of days defined in the global **Activation window** settings.

## View user information on the Users dashboard

Each user displayed in the **Users dashboard** has the following information:

- **Users**: Username for a user. This field is anonymized if the global anonymization setting for insider risk management is enabled.
- **Risk level**: Current calculated risk level of the user. This score is calculated every 24 hours and uses the alert risk scores from all active alerts associated to the user. For users with only triggering indicators, the risk level is zero.
- **Active alerts**: Number of active alerts for all policies.
- **Confirmed violations**: Number of cases resolved as *confirmed policy violation* for the user.
- **Case**: Current active case for the user.

To quickly locate a specific user, use **Search** at the top right of the Users dashboard. When searching for users, you must use the user principal name (UPN). For example, when searching for a user named 'Tiara Hidayah' that has a UPN of 'thidayah' in your organization, you would enter 'thidayah' or some part of the UPN in **Search**.

![Insider risk management users dashboard](../media/insider-risk-users-dashboard.png)

> [!NOTE]
> The number of users displayed on the **Users dashboard** may be limited in some instances, depending on the volume of active alerts and matching policies. Users with active alerts are displayed on the **Users dashboard** as the alerts are generated, and there may be rare cases when the maximum number of displayed users is reached. If this limit happens, users with active alerts who aren't displayed will be added to the **Users dashboard** as existing user alerts are triaged.

## View user details

To view more details about risk activity for a user, open the user details pane by double-clicking a user in the **Users dashboard**. On the details pane, you can view the following information:

- **User profile** tab
  - **Name and title**: Name and position title for the user from Azure Active Directory. These user fields will be anonymized or empty if the global anonymization setting for insider risk management is enabled.
  - **User details**: Lists whether the user has been identified as a potential high impact user or if the user is in priority user groups. 
  - **Alert and activity summary**: Lists active user alerts and open cases.
  - **User email**: Email address for the user.
  - **Alias**: Network alias for the user.
  - **Organization or department**: Organization or department for the user.
  - **In scope**: Lists in-scope assignment of the user to policies.

- **User activity** tab
  - **History of recent user activity**: Lists both triggering indicators and insider risk indicators for risk activities up to the last 90 days. All risk activities pertinent to insider risk indicators are also scored, though the activities may or may not have generated an insider risk alert. Triggering indicator examples may be a resignation date or the last scheduled date of work for the user. Insider risk indicators are activities determined to have an element of risk, which may potentially lead to a security incident, and are defined in policies that the user is included in. Event and risk activities are listed with the most recent item listed first.

## Remove users from in-scope assignment to policies

There may be scenarios where you need to stop assigning risk scores to a user in insider risk management policies. Use **Stop scoring activity for users** on the **Users dashboard** to stop assigning risk scores for a user from all insider risk management policies that they are currently in scope for. This action does not remove the user from the overall policy assignment (when you add users or groups to a policy configuration), but simply removes the user from active processing by policies after current triggering events. If the user has another triggering event in the future, risk scores from policies will automatically begin to be assigned to the user again. Any existing alerts or cases for this user will not be removed.

To remove a user from in-scope status in all insider risk management policies:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management**, and then select the **Users** tab.
2. On the **Users dashboard**, select the user(s) you want to stop scoring activity for.
3. Select **Stop scoring activity for users**.

> [!NOTE]
> Removing a user from in-scope status may take several minutes. Once complete, the user will not be listed on the **Users dashboard**. If the removed user has active alerts or cases, the user will remain on the **Users dashboard** and the user details will show that they are no longer in-scope for a policy. 

## Run automated tasks with Power Automate flows for a user

Using recommended Power Automate flows, risk investigators and analysts can quickly take action to notify users when they're added to an insider risk policy.

To run, manage, and create Power Automate flows for insider risk management users:

1. Select **Automate** on the user action toolbar.
2. Choose the Power Automate flow to run, then select **Run flow**.
3. After the flow has completed, select **Done**.

To learn more about Power Automate flows for insider risk management, see [Getting started with insider risk management settings](insider-risk-management-settings.md#power-automate-flows-preview).
