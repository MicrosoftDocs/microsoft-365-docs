---
title: Get started with insider risk management
description: Configure insider risk management in your organization.
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: Microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Get started with insider risk management

Use insider risk management policies to identify risky activities and management tools to take action on risk alerts in your organization. Complete the following steps to set up prerequisites and configure an insider risk management policy.

>[!IMPORTANT]
>The Microsoft 365 insider risk management solution provides a tenant level option to help customers facilitate internal governance at the user level. Tenant level administrators can set up permissions to provide access to this solution for members of your organization and set up data connectors in the Microsoft 365 compliance center to import relevant data to support user level identification of potentially risky activity. Customers acknowledge insights related to the individual users behavior, character, or performance materially related to employment can be calculated by the administrator and made available to others in the organization.

For more information about how insider risk policies can help you manage risk in your organization, see [Insider risk management in Microsoft 365](insider-risk-management.md).

## Before you begin

Before you get started with insider risk management, you should confirm your Microsoft 365 subscription. To access and use insider risk management, your organization must have one of the following subscriptions:

- Microsoft 365 E5 subscription (paid or trial version)
- Microsoft 365 Enterprise E3 subscription with the Microsoft E5 Compliance add-on

Users included in insider risk management policies must have a Microsoft 365 E5 Compliance license or be included in a Microsoft 365 E5 subscription.

If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try insider risk management, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing Office 365 subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

## Step 1 (required): Enable permissions for insider risk management

There are four roles groups used to configure permissions to manage insider risk management features. To continue with these configuration steps, your tenant administrators must first assign you to the **Insider Risk Management** or **Insider Risk Management Admin** role group. To access and manage insider risk management features after initial configuration, users must be a member of at least one insider risk management role group.

Depending on the structure of your compliance management team, you have options to assign users to specific role groups to manage different sets of insider risk management features. Choose one of these role group options when configuring insider risk management:

| **Role group** | **Role permissions** |
| :---- | :---------------- |
| **Insider Risk Management** | Use this role group to manage insider risk management for your organization in a single group. By adding all user accounts for designated administrators, analysts, and investigators, you can configure insider risk management permissions in a single group. This role group contains all the insider risk management permission roles. This is the easiest way to quickly get started with insider risk management and is a good fit for organizations that do not need separate permissions defined for separate groups of users.|
| **Insider Risk Management Admin** | Use this role group to initially configure insider risk management and later to segregate insider risk administrators into a defined group.  Users in this role group can create, read, update, and delete insider risk management policies, global settings, and role group assignments. |
| **Insider Risk Management Analysts** | Use this group to assign permissions to users that will act as insider risk case analysts. Users in this role group can access to all insider risk management alerts, cases, and notices templates. They cannot access the insider risk Content Explorer. |
| **Insider Risk Management Investigators** | Use this group to assign permissions to users that will act as insider risk data investigators. Users in this role group can access to all insider risk management alerts, cases, notices templates, and the Content Explorer for all cases. |

### Add users to an insider risk management role group

Complete the following steps to add users to an insider risk management role group:

1. Sign into [https://protection.office.com/permissions](https://protection.office.com/permissions) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft Office 365 security and compliance center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select the insider risk management role group you want to add users to, then select **Edit role group**.

4. Select **Choose members** from the left navigation pane, then select **Edit**.

5. Select **Add** and then select the checkbox for all users you want to add to the role group.

6. Select **Add**, then select **Done**.

7. Select **Save** to add the users to the role group. Select **Close** to complete the steps.

## Step 2 (required): Enable the Office 365 audit log

Insider risk management uses audit logs for user insights and activities configured in policies. The audit logs are a summary of all activities associated with an insider risk management policy or anytime a policy changes.

For step-by-step instructions to turn on auditing, see [Turn Office 365 audit log search on or off](turn-audit-log-search-on-or-off.md). After you turn on auditing, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this action once. For more information about the using the audit log, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).

## Step 3 (optional): Configure prerequisites for templates

Some insider risk management templates have prerequisites that must be configured for policy indicators to generate activity alerts:

### Configure Microsoft 365 HR Connector

Insider risk management supports importing user and log data imported from 3rd-party risk management and human resources platforms. The Microsoft 365 Human Resources (HR) data connector allows you to pull in human resources data from CSV files, including user termination and last employment dates. This data helps drive the alert indicators in insider risk management policies and is an important part of configuring full risk management coverage in your organization.

See the [Set up a connector to import HR data](import-hr-data.md) topic for step-by-step guidance to configure the Microsoft 365 HR Connector for your organization. After you've configured the HR Connector, return to these configuration steps.

>[!IMPORTANT]
>If you plan on configuring a policy using the *Departing employee data theft* template, you'll need to configure the HR Connector to use the full signal detection features of the policy template. If you configure more than one HR Connector for your organization, insider risk management will automatically pull indicators from all HR Connectors.

### Configure Data Loss Prevention (DLP) policies

Insider risk management supports using DLP policies to help identify the intentional or accidental exposure of sensitive information to unwanted parties. When configuring an insider risk management policy with the *Data leaks* template, you have to assign a specific DLP policy to the policy. This policy helps drive the alert indicators for sensitive information is an important part of configuring full risk management coverage in your organization.

See the [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md) topic for step-by-step guidance to configure DLP policies for your organization. After you've configured a DLP policy, return to these configuration steps.

>[!IMPORTANT]
>If you plan on configuring a policy using the *Data leaks* template, you'll need to configure at least one DLP policy to use the full signal detection features of the policy template. If you configure more than one DLP policy for your organization, you'll need to assign an insider risk management policy per DLP policy.

## Step 4 (required): Configure insider risk settings

Insider risk settings apply to all insider risk management policies, regardless of the template you chose when creating a policy. Settings are configured using the **Insider risk settings* control located at the top of all insider risk management tabs. These settings control privacy, indicators, monitoring windows, and intelligent detections.

Before configuring a policy, define the following insider risk settings:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select **Insider risk settings** from the top-right corner of any page.
2. On the **Privacy** page, select a privacy setting for displaying usernames for policy alerts.
3. On the **Indicators** page, select the alert indicators you want to apply to all insider risk policies.

    >[!IMPORTANT]
    >In order to receive alerts for risky activity defined in your policies, you must select one or more indicators.

4. On the **Policy timeframes** page, select the timeframes to go into effect for a user when they trigger a match for an insider risk policy.
5. On the **Intelligent detections** page
6. Select **Save** to enable the settings for your insider risk policies.

## Step 5 (required): Create an insider risk management policy

Insider risk management policies include assigned users and define which types of risk indicators are configured for alerts. Before activities can trigger alerts, a policy must be configured.

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. Select **Create policy** to open the policy wizard
3. On the **New insider risk policy** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the policy
    - **Description (optional)**: Enter a description for the policy.
    - **Choose policy template (required)**: Select one of the [policy templates](insider-risk-management-policies.md#policy-templates) to define the types of risk indicators are monitored by the policy.

    >[!IMPORTANT]
    >If you select the *Data leaks* template, you'll need to configure at least one DLP policy that you'll assign later in the wizard. If you select the *Departing employee data theft* template, you'll need to configure the HR Connector to use the full signal detection features of the policy template.

4. Select **Next** to continue.
5. On the **Users** page, select **Add user or group** to define which users are included in the policy or select **All users and mail-enabled groups** checkbox. Select **Next** to continue.
6. On the **Specify what content to prioritize (optional)** page, you can assign the sources to prioritize for risky user activities:
    - **SharePoint sites**: Select **Add SharePoint site** and select the SharePoint organizations you want to prioritize. For example, *"group1@contoso.sharepoint.com/sites/group1"*.
    - **Sensitive info type**: Select **Add sensitive info type** and select the sensitivity types you want to prioritize. For example, *"U.S. Bank Account Number"* and *"Credit Card Number"*.
    - **Sensitivity labels**: Select **Add sensitivity label** and select the labels you want to prioritize. For example, *"Confidential"* and *"Secret"*.
7. Select **Next** to continue.
8. On the **Choose alert indicators** page, you'll see the indicators that are included in the template that you've chosen for this policy. If you selected the *Data leaks* template at the beginning of the wizard, you must select a DLP policy from the **DLP policy** dropdown list.
9. On the **Select monitoring window** page, you'll define the [monitoring window conditions](insider-risk-management-policies.md#monitoring-windows) for the policy. Configure the monitoring windows as appropriate.
10. Select **Next** to continue.
11. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

After you've completed these steps to create your first insider risk management policy, you'll start to receive alerts from activity indicators after about 24 hours. Configure additional policies as needed using the guidance in Step 4 of this topic or the steps in [Create a new insider risk policy](insider-risk-management-policies.md#create-a-new-policy).
