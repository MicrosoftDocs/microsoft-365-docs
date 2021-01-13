---
title: Get started with insider risk management
description: Configure insider risk management in your organization.
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
ms.collection: 
- m365-security-compliance
- m365solution-insiderrisk
- m365initiative-compliance
---

# Get started with insider risk management

Use insider risk management policies to identify risky activities and management tools to act on risk alerts in your organization. Complete the following steps to set up prerequisites and configure an insider risk management policy.

>[!IMPORTANT]
>The Microsoft 365 insider risk management solution provides a tenant level option to help customers facilitate internal governance at the user level. Tenant level administrators can set up permissions to provide access to this solution for members of your organization and set up data connectors in the Microsoft 365 compliance center to import relevant data to support user level identification of potentially risky activity. Customers acknowledge insights related to the individual user's behavior, character, or performance materially related to employment can be calculated by the administrator and made available to others in the organization. In addition, customers acknowledge that they must conduct their own full investigation related to the individual user's behavior, character, or performance materially related to employment, and not just rely on insights from the insider risk management service. Customers are solely responsible for using the Microsoft 365 insider risk management service, and any associated feature or service in compliance with all applicable laws, including laws relating to individual user identification and any remediation actions.

For more information about how insider risk policies can help you manage risk in your organization, see [Insider risk management in Microsoft 365](insider-risk-management.md).

## Subscriptions and licensing

Before you get started with insider risk management, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) and any add-ons. To access and use insider risk management, your organization must have one of the following subscriptions or add-ons:

- Microsoft 365 E5 subscription (paid or trial version)
- Microsoft 365 E3 subscription + the Microsoft 365 E5 Compliance add-on
- Microsoft 365 E3 subscription + the Microsoft 365 E5 Insider Risk Management add-on
- Microsoft 365 A5 subscription (paid or trial version)
- Microsoft 365 A3 subscription + the Microsoft 365 A5 Compliance add-on
- Microsoft 365 A3 subscription + the Microsoft 365 A5 Insider Risk Management add-on

Users included in insider risk management policies must be assigned one of the licenses above.

If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try insider risk management, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

## Step 1: Enable permissions for insider risk management

>[!Important]
>After configuring your role groups, it may take up to 30 minutes for the role group permissions to apply to assigned users across your organization.

There are four roles groups used to configure permissions to manage insider risk management features. To continue with these configuration steps, your tenant administrators must first assign you to the **Insider Risk Management** or **Insider Risk Management Admin** role group. To access and manage insider risk management features after initial configuration, users must be a member of at least one insider risk management role group.

Depending on the structure of your compliance management team, you have options to assign users to specific role groups to manage different sets of insider risk management features. Choose from these role group options when configuring insider risk management:

| **Role group** | **Role permissions** |
| :---- | :---------------- |
| **Insider Risk Management** | Use this role group to manage insider risk management for your organization in a single group. By adding all user accounts for designated administrators, analysts, and investigators, you can configure insider risk management permissions in a single group. This role group contains all the insider risk management permission roles. This configuration is the easiest way to quickly get started with insider risk management and is a good fit for organizations that do not need separate permissions defined for separate groups of users.|
| **Insider Risk Management Admin** | Use this role group to initially configure insider risk management and later to segregate insider risk administrators into a defined group.  Users in this role group can create, read, update, and delete insider risk management policies, global settings, and role group assignments. |
| **Insider Risk Management Analysts** | Use this group to assign permissions to users that will act as insider risk case analysts. Users in this role group can access all insider risk management alerts, cases, and notices templates. They cannot access the insider risk Content Explorer. |
| **Insider Risk Management Investigators** | Use this group to assign permissions to users that will act as insider risk data investigators. Users in this role group can access all insider risk management alerts, cases, notices templates, and the Content Explorer. |

> [!NOTE]
> These role groups are currently not supported on Privileged Identity Management (PIM). To learn more about PIM, see [Assign Azure AD roles in Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-how-to-add-role-to-user).

### Add users to an insider risk management role group

Complete the following steps to add users to an insider risk management role group:

1. Sign into [https://protection.office.com/permissions](https://protection.office.com/permissions) using credentials for an admin account in your Microsoft 365 organization.

2. In the Security &amp; Compliance Center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select the insider risk management role group you want to add users to, then select **Edit role group**.

4. Select **Choose members** from the left navigation pane, then select **Edit**.

5. Select **Add** and then select the checkbox for all users you want to add to the role group.

6. Select **Add**, then select **Done**.

7. Select **Save** to add the users to the role group. Select **Close** to complete the steps.

## Step 2: Enable the audit log

Insider risk management uses audit logs for user insights and activities configured in policies. The audit logs are a summary of all activities associated with an insider risk management policy or anytime a policy is changed.

For step-by-step instructions to turn on auditing, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md). After you turn on auditing, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this action once. For more information about the using the audit log, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).

## Step 3: Configure prerequisites for templates

Most insider risk management templates have prerequisites that must be configured for policy indicators to generate relevant activity alerts. Configure the appropriate prerequisites depending on the policies you plan to configure for your organization.

### Configure Microsoft 365 HR connector

Insider risk management supports importing user and log data imported from 3rd-party risk management and human resources platforms. The Microsoft 365 Human Resources (HR) data connector allows you to pull in human resources data from CSV files, including user termination dates, last employment dates, performance improvement plan notifications, performance review actions, and job level change status. This data helps drive alert indicators in insider risk management policies and is an important part of configuring full risk management coverage in your organization. If you configure more than one HR connector for your organization, insider risk management will automatically pull indicators from all HR connectors.

The Microsoft 365 HR connector is required when using the following policy templates:

- Departing user data theft
- Security policy violations by departing users
- Security policy violations by disgruntled users
- Data leaks by disgruntled users

See the [Set up a connector to import HR data](import-hr-data.md) article for step-by-step guidance to configure the Microsoft 365 HR connector for your organization. After you've configured the HR connector, return to these configuration steps.

### Configure Data Loss Prevention (DLP) policies

Insider risk management supports using DLP policies to help identify the intentional or accidental exposure of sensitive information to unwanted parties for High severity level DLP alerts. When configuring an insider risk management policy with any of the **Data leaks** templates, you must assign a specific DLP policy to the policy.

DLP policies help identify users to activate risk scoring in insider risk management for high severity DLP alerts for sensitive information and are an important part of configuring full risk management coverage in your organization. For more information about insider risk management and DLP policy integration and planning considerations, see [Insider risk management policies](insider-risk-management-policies.md#general-data-leaks).

>[!IMPORTANT]
>Make sure you've completed the following:
>
>- You understand and properly configure the in-scope users in both the DLP and insider risk management policies to produce the policy coverage you expect.
>- Make sure the **Incident reports** setting in the DLP policy for insider risk management used with these templates are configured for *High* severity level alerts. Insider risk management alerts won't be generated from DLP policies with the **Incident reports** field set at *Low* or *Medium*.

A DLP policy is required when using the following policy templates:

- General data leaks
- Data leaks by priority users

See the [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md) article  for step-by-step guidance to configure DLP policies for your organization. After you've configured a DLP policy, return to these configuration steps.

### Configure priority user groups

Insider risk management includes support for assigning priority user groups to policies to help identity unique risk activities for user with critical positions, high levels of data and network access, or a past history of risk behavior. Creating a priority user group and assigning users to the group help scope policies to the unique circumstances presented by these users.

A priority user group is required when using the following policy templates:

- Security policy violations by priority users
- Data leaks by priority users

See the [Getting started with insider risk management settings](insider-risk-management-settings.md#priority-user-groups-preview) article for step-by-step guidance to create a priority user group. After you've configured a priority user group, return to these configuration steps.

### Configure Physical badging connector (optional)

Insider risk management supports importing user and log data imported from physical control and access platforms. The Physical badging connector allows you to pull in access data from JSON files, including user IDs, access point IDs, access time and dates, and access status. This data helps drive alert indicators in insider risk management policies and is an important part of configuring full risk management coverage in your organization. If you configure more than one Physical badging connector for your organization, insider risk management automatically pulls indicators from all Physical badging connectors. Information from the Physical badging connector supplements other insider risk signals when using all insider risk policy templates.

>[!IMPORTANT]
>For insider risk management policies to use and correlate signal data related to departing and terminated users with event data from your physical control and access platforms, you must also configure the Microsoft 365 HR connector. If you enable the Physical badging connector without enabling the Microsoft 365 HR connector, insider risk management policies will only process events for unauthorized physical access for users in your organization.

See the [Set up a connector to import physical badging data](import-physical-badging-data.md) article for step-by-step guidance to configure the Physical badging connector for your organization. After you've configured the connector, return to these configuration steps.

## Step 4: Configure insider risk settings

[Insider risk settings](insider-risk-management-settings.md) apply to all insider risk management policies, regardless of the template you chose when creating a policy. Settings are configured using the **Insider risk settings** control located at the top of all insider risk management tabs. These settings control privacy, indicators, monitoring windows, and intelligent detections.

Before configuring a policy, define the following insider risk settings:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select **Insider risk settings** from the top-right corner of any page.
2. On the **Privacy** page, select a privacy setting for displaying usernames for policy alerts.
3. On the **Indicators** page, select the alert indicators you want to apply to all insider risk policies.

    >[!IMPORTANT]
    >In order to receive alerts for risky activity defined in your policies, you must select one or more indicators.

4. On the **Policy timeframes** page, select the [policy timeframes](insider-risk-management-settings.md#policy-timeframes) to go into effect for a user when they trigger a match for an insider risk policy.
5. On the **Intelligent detections** page, configure the following settings for insider risk policies:
    - [Anomaly detections](insider-risk-management-settings.md#anomaly-detections)
    - [Offensive language detections](insider-risk-management-settings.md#offensive-language-detections)
    - [Alert volume level](insider-risk-management-settings.md#alert-volume)
    - [Microsoft Defender for Endpoint alert status](insider-risk-management-settings.md#microsoft-defender-for-endpoint-preview)
    - [Domain settings](insider-risk-management-settings.md#domains-preview)
6. On the **Export alerts** page, enable export of insider risk alert information using the Office 365 Management APIs if needed.
7. On the **Priority user groups** page, create a priority user group and add users if not created in **Step 3**.
8. On the **Power Automate flows** page, configure a flow from insider risk flow templates or create a new flow. See the [Getting started with insider risk management settings](insider-risk-management-settings.md#power-automate-flows-preview) article for step-by-step guidance.
9. On the **Priority assets page**, configure priority assets to use data from your physical control and access platform imported by the Physical badging connector. See the [Getting started with insider risk management settings](insider-risk-management-settings.md#priority-physical-assets-preview) article for step-by-step guidance.
10. On the **Microsoft Teams** page, enable Microsoft Teams integration with insider risk management to automatically create a team for case or user collaboration. See the [Getting started with insider risk management settings](insider-risk-management-settings.md#microsoft-teams-preview) article for step-by-step guidance.
11. Select **Save** to enable these settings for your insider risk policies.

## Step 5: Create an insider risk management policy

Insider risk management policies include assigned users and define which types of risk indicators are configured for alerts. Before activities can trigger alerts, a policy must be configured.

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. Select **Create policy** to open the policy wizard.
3. On the **New insider risk policy** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the policy.
    - **Description (optional)**: Enter a description for the policy.
    - **Choose policy template (required)**: Select one of the [policy templates](insider-risk-management-policies.md#policy-templates) to define the types of risk indicators are monitored by the policy.

    >[!IMPORTANT]
    >Most policy templates have prerequisites that must be configured for the policy to generate relevant alerts. If you haven't configured the applicable policy prerequisites, see **Step 3** above.

    >[!CAUTION]
    >Starting October 16, 2020, you will no longer be able to create policies using the Offensive language in email template. Any active policies that use this template will work until they are permanently removed in January 2021.

4. Select **Next** to continue.
5. On the **Users** page, select **Add user or group** or **Choose Priority user groups** to define which users or priority user groups are included in the policy, depending on the policy template you've selected. Select **All users and mail-enabled groups** checkbox if applicable (if you haven't selected a priority user-based template). Select **Next** to continue.
6. On the **Specify what content to prioritize (optional)** page, you can assign the sources to prioritize for increased risk scores. However, some activities won't generate an alert at all unless the related content contains built-in or custom sensitive info types or was specified as a priority on this page:
    - **SharePoint sites**: Select **Add SharePoint site** and select the SharePoint organizations you want to prioritize. For example, *"group1@contoso.sharepoint.com/sites/group1"*.
    - **Sensitive info type**: Select **Add sensitive info type** and select the sensitivity types you want to prioritize. For example, *"U.S. Bank Account Number"* and *"Credit Card Number"*.
    - **Sensitivity labels**: Select **Add sensitivity label** and select the labels you want to prioritize. For example, *"Confidential"* and *"Secret"*.
7. Select **Next** to continue.
8. On the **Select policy indicators** page, you'll see the [indicators](insider-risk-management-settings.md#indicators) that you've defined as available on the **Insider risk settings** > **Indicators** page. If you selected a *Data leaks* template at the beginning of the wizard, you must select a DLP policy from the **DLP policy** dropdown list to enable triggering indicators for the policy. Select the indicators you want to apply to the policy. If you prefer not to use the default policy threshold settings for these indicators, disable the **Use default thresholds recommended by Microsoft** and enter the threshold values for each selected indicator. If you've selected at least one *Office* or *Device* indicator, select the **Risk score boosters** as appropriate. Risk score boosters are only applicable for selected indicators.

    >[!IMPORTANT]
    >If indicators on this page can't be selected, you'll need to select the indicators you want to enable for all policies on the **Insider risk management** > **Settings** > **Policy indicators** page.

9. Select **Next** to continue.
10. On the **Policy timeframes** page, you'll see the [activation window conditions](insider-risk-management-settings.md#policy-timeframes) for the policy that on the **Insider risk settings** > **Policy timeframes** page.
11. Select **Next** to continue.
12. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

## Next steps

After you've completed these steps to create your first insider risk management policy, you'll start to receive alerts from activity indicators after about 24 hours. Configure additional policies as needed using the guidance in Step 4 of this article or the steps in [Create a new insider risk policy](insider-risk-management-policies.md#create-a-new-policy).

To learn more about investigating insider risk alerts and the **Alerts dashboard**, see [Insider risk management alerts](insider-risk-management-alerts.md).
