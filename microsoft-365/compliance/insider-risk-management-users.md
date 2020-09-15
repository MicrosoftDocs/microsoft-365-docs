---
title: Insider risk management Users dashboard
description: Learn about insider risk management Users dashboard in Microsoft 365
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Insider risk management Users dashboard

The **Users dashboard** is an important tool in the insider risk management workflow and helps investigators and analysts have a more complete understanding of risk activities. This dashboard offers views and management features to meet administrative needs between the creating insider risk management policies and managing insider risk management cases.

After users are added to insider risk management policies, background processes are automatically evaluating user activities for [triggering indicators](insider-risk-management-settings.md#indicators). After triggering indicators are present, user activities are assigned risk scores. Some of these activities may result in an insider risk alert, but some activities may not meet a minimum risk score level and an insider risk alert won't be created. The **Users dashboard** allows you to view users with these types of indicators and risk scores, as well users that have active insider risk alerts.

Additionally, there may be scenarios where you need to add temporarily users to insider risk policies after an unusual event is reported outside of the insider risk management workflow. The **Users dashboard** allows you to manually add a user to an insider risk policy for a specific amount of time and bypass the requirement for a user to have a triggering indicator. These users are always displayed in the Users dashboard when actively assigned to a policy.

Learn more about how the Users dashboard displays users in the following scenarios:

- Dashboard users with active insider risk policy alerts
- Dashboard users with triggering indicators
- Dashboard users added temporarily to policies

## Dashboard users with active insider risk policy alerts

The **Users dashboard** automatically displays all users with active insider risk policy alerts. These users with alerts have both a triggering indicator and an activity risk score that meets the requirements for creating an insider risk alert. Activities for these users are viewed by selecting the user in the **Users dashboard** and navigating to the **User activity** tab.

## Dashboard users with triggering indicators

The **Users dashboard** automatically displays all users with triggering indicators, but that don't have an activity risk score that would create an insider risk alert. For example, a user with a reported resignation date is displayed because this event is a triggering indicator but isn't an activity that has a risk score. Activities for these users are viewed by selecting the user in the **Users dashboard** and navigating to the **User activity** tab.

## Dashboard users added temporarily to policies

The **Users dashboard** allows you to temporarily add users to an existing insider risk management policy after an unusual event outside of the insider risk management workflow. Temporarily adding users is also a way to add users to an insider risk management policy for testing the policy, even if a required connector isn't configured.

When a user is manually added to a policy, the user activities for the previous 90 days are scored and added to the **User activity** timeline. For example, a user not currently in-scope in an insider risk policy and the user has data leak activities reported to the legal department in your organization. The legal department recommends that you configure new short-term monitoring requirements for the user. You can temporarily assign the user to your *Data leaks* policy for a designated length of time (activation window). All users added temporarily are displayed in the **Users dashboard** because triggering indicator requirements are waived.

>[!NOTE]
>It may take several hours for new manually-added users to appear in the **Users dashboard**. Activities for the previous 90 days for these users may take up to 24 hours to display. To view activities for manually added users, select the user on the **Users dashboard** and open the **User activity** tab on the details pane.

The user is automatically removed from the insider policy and the **Users dashboard** when the time defined in the **Activation window** expires if:

- the user doesn't have any triggering indicators or insider risk policy alerts, and
- if the manually defined **Activation window** duration is longer than the global policy **Activation window** duration. 

The **Activation window** setting with the longest duration always overrides the **Activation window** setting with a shorter duration. For example, you've configured the **Activation window** on the global **Policy timeframes** tab in the insider risk management global settings for 15 days, which is automatically applied to all your insider risk policies. 

You temporarily add a user to your *Data leaks* insider risk policy and define 30 days as the **Activation window** for this user. The global **Activation window** setting of 15 days is overridden by defining the **Activation window** setting of 30 days for the temporarily added user. The temporarily added user will remain in the **Users dashboard** and be in-scope for the policy for 30 days.

In the opposite scenario where the global **Activation window** setting is longer than the **Activation window** setting defined for a temporarily added user, the global **Activation window** setting would override the **Activation window** setting for the temporarily added user. The temporarily added user will remain in the **Users dashboard** and be in-scope for the policy for the number of days defined in the global **Activation window** settings.

## View user information on the Users dashboard

Each user displayed in the **Users dashboard** has the following information:

- **Users**: The username for a user. This field is anonymized if the global anonymization setting for insider risk management is enabled.
- **Risk level**: The current calculated risk level of the user. This score is calculated every 24 hours and uses the alert risk scores from all active alerts associated to the user. For users with only triggering indicators, the risk level is zero.
- **Active alerts**: The number of active alerts for all policies.
- **Confirmed violations**: The number of cases resolved as *confirmed policy violation* for the user.
- **Case**: The current active case for the user.

![Insider risk management users dashboard](../media/insider-risk-users-dashboard.png)

>[!NOTE]
>The number of users displayed on the **Users dashboard** may be limited in some instances, depending on the volume of active alerts and matching policies. Users with active alerts are displayed on the **Users dashboard** as the alerts are generated, and there may be rare cases when the maximum number of displayed users is reached. If this happens, users with active alerts who aren't displayed will be added to the **Users dashboard** as existing user alerts are triaged.

## View user details

To view more details about risk activity for a user, open the user details pane by double-clicking a user in the **Users dashboard**. On the details pane, you can view the following information:

- **User profile** tab
    - **Name and title**: The name and position title for the user from Azure Active Directory. These user fields will be anonymized or empty if the global anonymization setting for insider risk management is enabled.
    - **User email**: The email address for the user.
    - **Alias**: The network alias for the user.
    - **Organization or department**: The organization or department for the user.

- **User activity** tab
    - **History of recent user activity**: Lists both triggering indicators and insider risk indicators for user activities up to the last 180 days. All activities pertinent to insider risk indicators are also scored, though the activities may or may not have generated an insider risk alert. Triggering indicator examples may be a resignation date or the last scheduled date of work for the user. Insider risk indicators are activities determined to have an element of risk and are defined in policies that the user is included in. Event and risk activities are listed with the most recent item listed first.

## Temporarily add a user to a policy

To temporarily add a user to an insider risk management policy, you'll use the **Users** tab in the **Insider risk management** solution in the Microsoft 365 compliance center. Users added manually bypass triggering indicator requirements for the policy they are added to and are displayed in the **Users dashboard**. To permanently add a user to an insider risk management policy, you'll use the policy wizard.

Complete the following steps to add a user to an existing insider risk policy:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Users** tab.
2. Select **Add a user to a policy** on the toolbar.
3. On the **Add a new user** dialog, start typing a user name in the **User** field. Select the user you want to add to a policy.
4. Select the dropdown arrow for the **Policy** field to display configured insider risk management policies. Select the policy to add the user to.
5. Use the **Activation window** slider control to define how long the user is included in a policy and displayed in the Users dashboard. The time you specify determines how long the policy is active for this user and starts when the first alert is generated or a triggering indicator (like a DLP policy match) is detected. The range for the **Activation window** is 5 to 30 days.
6. Select **Add** and then **Confirm** to add the user to the policy.

>[!NOTE]
>It may take several hours for new manually-added users to appear in the **Users dashboard**. Activities for the previous 90 days for these users may take up to 24 hours to display. To view activities for manually added users, select the user on the **Users dashboard** and open the **User activity** tab on the details pane.
