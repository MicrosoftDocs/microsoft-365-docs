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
- Microsoft 365 G5 subscription (paid or trial version)
- Microsoft 365 G3 subscription + the Microsoft 365 G5 Compliance add-on
- Microsoft 365 G3 subscription + the Microsoft 365 G5 Insider Risk Management add-on
- Office 365 E3 subscription + Enterprise Mobility and Security E3 + the Microsoft 365 E5 Compliance add-on

Users included in insider risk management policies must be assigned one of the licenses above.

If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try insider risk management, you can [add Microsoft 365](/office365/admin/try-or-buy-microsoft-365) to your existing subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

## Step 1: Enable permissions for insider risk management

>[!Important]
>After configuring your role groups, it may take up to 30 minutes for the role group permissions to apply to assigned users across your organization.

There are four roles groups used to configure permissions to manage insider risk management features. To continue with these configuration steps, your tenant administrators must first assign you to the **Insider Risk Management** or **Insider Risk Management Admin** role group. To access and manage insider risk management features after initial configuration, users must be a member of at least one insider risk management role group.

Depending on the structure of your compliance management team, you have options to assign users to specific role groups to manage different sets of insider risk management features. To view the **Permissions** tab in the Office 365 Security & Compliance Center and manage role groups, you need to be assigned to the *Organization Management* role group or need to be assigned the *Role Management* role. Choose from these role group options when configuring insider risk management:

| **Role group** | **Role permissions** |
| :------------- | :------------------- |
| **Insider Risk Management** | Use this role group to manage insider risk management for your organization in a single group. By adding all user accounts for designated administrators, analysts, investigators, and auditors you can configure insider risk management permissions in a single group. This role group contains all the insider risk management permission roles and associated permissions. This configuration is the easiest way to quickly get started with insider risk management and is a good fit for organizations that do not need separate permissions defined for separate groups of users. |
| **Insider Risk Management Admin** | Use this role group to initially configure insider risk management and later to segregate insider risk administrators into a defined group. Users in this role group can enable and view analytics insights and create, read, update, and delete insider risk management policies, global settings, and role group assignments. |
| **Insider Risk Management Analysts** | Use this group to assign permissions to users that will act as insider risk case analysts. Users in this role group can access and view all insider risk management alerts, cases, analytics insights, and notices templates. They cannot access the insider risk Content explorer. |
| **Insider Risk Management Investigators** | Use this group to assign permissions to users that will act as insider risk data investigators. Users in this role group can access to all insider risk management alerts, cases, notices templates, and the Content explorer for all cases. |
| **Insider Risk Management Auditors** | Use this group to assign permissions to users that will audit insider risk management activities. Users in this role group can access the insider risk audit log. |

> [!NOTE]
> These role groups are currently not supported on Privileged Identity Management (PIM). To learn more about PIM, see [Assign Azure AD roles in Privileged Identity Management](/azure/active-directory/privileged-identity-management/pim-how-to-add-role-to-user).

### Add users to an insider risk management role group

Complete the following steps to add users to an insider risk management role group:

1. Sign into [https://protection.office.com/permissions](https://protection.office.com/permissions) using credentials for an admin account in your Microsoft 365 organization.

2. In the Security &amp; Compliance Center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select the insider risk management role group you want to add users to, then select **Edit role group**.

4. Select **Choose members** from the left navigation pane, then select **Edit**.

5. Select **Add** and then select the checkbox for all users you want to add to the role group.

6. Select **Add**, then select **Done**.

7. Select **Save** to add the users to the role group. Select **Close** to complete the steps.

## Step 2: Enable the Microsoft 365 audit log

Insider risk management uses Microsoft 365 audit logs for user insights and activities identified in policies and analytics insights. The Microsoft 365 audit logs are a summary of all activities within your organization and insider risk management policies may use these activities for generating policy insights.

For step-by-step instructions to turn on auditing, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md). After you turn on auditing, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this action once. For more information about the using the Microsoft 365 audit log, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).

## Step 3: Enable and view insider risk analytics insights (optional)

Insider risk management analytics enables you to conduct an evaluation of potential insider risks in your organization without configuring any insider risk policies. This evaluation can help your organization identify potential areas of higher user risk and help determine the type and scope of insider risk management policies you may consider configuring. This evaluation may also help you determine needs for additional licensing or future optimization of existing policies. Analytics scan results may take up to 48 hours before insights are available as reports for review. To learn more about analytics insights, see [Insider risk management settings: Analytics (preview)](insider-risk-management-settings.md#analytics-preview) and check out the [Insider Risk Management Analytics video](https://www.youtube.com/watch?v=5c0P5MCXNXk) to help understand how analytics can help accelerate the identification of potential insider risks and help you to quickly take action.

To enable insider risk Analytics, you must be a member of the *Insider Risk Management*, *Insider Risk Management Admin*, or Microsoft 365 *Global admin* role group.

Complete the following steps to enable insider risk analytics:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management**.
2. Select **Run scan** on the **Scan for insider risks in your organization** card on the insider risk management **Overview** tab. This action turns on analytics scanning for your organization. You can also turn on scanning in your organization by navigating to **Insider risk settings** > **Analytics (preview)** and enabling **Scan your tenant's user activity to identify potential insider risks**.
3. On the **Analytics details** pane, select **Run scan to start the scan for your organization**. Analytics scan results may take up to 24 hours before insights are available as reports for review.

After reviewing the analytics insights, choose the insider risk policies and configure the associated prerequisites that best meet your organization's insider risk mitigation strategy.

## Step 4: Configure prerequisites for policies

Most insider risk management policies have prerequisites that must be configured for policy indicators to generate relevant activity alerts. Configure the appropriate prerequisites depending on the policies you plan to configure for your organization.

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

Insider risk management supports importing user and log data from physical control and access platforms. The Physical badging connector allows you to pull in access data from JSON files, including user IDs, access point IDs, access time and dates, and access status. This data helps drive alert indicators in insider risk management policies and is an important part of configuring full risk management coverage in your organization. If you configure more than one Physical badging connector for your organization, insider risk management automatically pulls indicators from all Physical badging connectors. Information from the Physical badging connector supplements other insider risk signals when using all insider risk policy templates.

>[!IMPORTANT]
>For insider risk management policies to use and correlate signal data related to departing and terminated users with event data from your physical control and access platforms, you must also configure the Microsoft 365 HR connector. If you enable the Physical badging connector without enabling the Microsoft 365 HR connector, insider risk management policies will only process events for unauthorized physical access for users in your organization.

See the [Set up a connector to import physical badging data](import-physical-badging-data.md) article for step-by-step guidance to configure the Physical badging connector for your organization. After you've configured the connector, return to these configuration steps.

### Configure Microsoft Defender for Endpoint (optional)

[Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats. To have better visibility of security violations in your organization, you can import and filter Defender for Endpoint alerts for activities used in policies created from insider risk management security violation policy templates.

If you create security violation policies, you'll need to have Microsoft Defender for Endpoint configured in your organization and enable Defender for Endpoint for insider risk management integration in the Defender Security Center to import security violation alerts. For more information about requirements, see the [Minimum requirements for Microsoft Defender for Endpoints](/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements) article.

See the [Configure advanced features in Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/advanced-features#share-endpoint-alerts-with-microsoft-compliance-center) article for step-by-step guidance to configure Defender for Endpoint for insider risk management integration. After you've configured the Microsoft Defender for Endpoint, return to these configuration steps.

## Step 5: Configure insider risk settings

[Insider risk settings](insider-risk-management-settings.md) apply to all insider risk management policies, regardless of the template you chose when creating a policy. Settings are configured using the **Insider risk settings** control located at the top of all insider risk management tabs. These settings control privacy, indicators, monitoring windows, and intelligent detections.

Before configuring a policy, define the following insider risk settings:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select **Insider risk settings** from the top-right corner of any page.
2. On the **Privacy** page, select a privacy setting for displaying usernames for policy alerts.
3. On the **Indicators** page, select the alert indicators you want to apply to all insider risk policies.

    >[!IMPORTANT]
    >In order to receive alerts for risky activity defined in your policies, you must select one or more indicators. If indicators aren't configured in Settings, the indicators won't be selectable in insider risk policies.

4. On the **Policy timeframes** page, select the [policy timeframes](insider-risk-management-settings.md#policy-timeframes) to go into effect for a user when they trigger a match for an insider risk policy.
5. On the **Intelligent detections** page, configure the following settings for insider risk policies:
    - [File type exclusions](insider-risk-management-settings.md#file-type-exclusions)
    - [Thresholds for unusual file activity](insider-risk-management-settings.md#threshold-for-unusual-file-activity)
    - [Alert volume level](insider-risk-management-settings.md#alert-volume)
    - [Microsoft Defender for Endpoint alert status](insider-risk-management-settings.md#microsoft-defender-for-endpoint-preview)
    - [Domain settings](insider-risk-management-settings.md#domains-preview)
6. On the **Export alerts** page, enable export of insider risk alert information using the Office 365 Management APIs if needed.
7. On the **Priority user groups** page, create a priority user group and add users if not created in **Step 3**.
8. On the **Power Automate flows** page, configure a flow from insider risk flow templates or create a new flow. See the [Getting started with insider risk management settings](insider-risk-management-settings.md#power-automate-flows-preview) article for step-by-step guidance.
9. On the **Priority assets page**, configure priority assets to use data from your physical control and access platform imported by the Physical badging connector. See the [Getting started with insider risk management settings](insider-risk-management-settings.md#priority-physical-assets-preview) article for step-by-step guidance.
10. On the **Microsoft Teams** page, enable Microsoft Teams integration with insider risk management to automatically create a team for case or user collaboration. See the [Getting started with insider risk management settings](insider-risk-management-settings.md#microsoft-teams-preview) article for step-by-step guidance.
11. Select **Save** to enable these settings for your insider risk policies.

## Step 6: Create an insider risk management policy

Insider risk management policies include assigned users and define which types of risk indicators are configured for alerts. Before activities can trigger alerts, a policy must be configured. Use the policy wizard to create new insider risk management policies.

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. Select **Create policy** to open the policy wizard.
3. On the **Policy template** page, choose a policy category and then select the template for the new policy. These templates are made up of conditions and indicators that define the risk activities you want to detect and investigate. Review the template prerequisites, triggering events, and detected activities to confirm this policy template fits your needs.

    >[!IMPORTANT]
    >Some policy templates have prerequisites that must be configured for the policy to generate relevant alerts. If you haven't configured the applicable policy prerequisites, see **Step 4** above.

4. Select **Next** to continue.
5. On the **Name and description** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the policy. This name cannot be changed after the policy is created.
    - **Description (optional)**: Enter a description for the policy.

6. Select **Next** to continue.
7. On the **Users and groups** page, select **Include all users and groups** or **Include specific users and groups** to define which users or groups are included in the policy, or if you've chosen a priority users-based template; select **Add or edit priority user groups**. Selecting **Include all users and groups** will look for triggering events for all users and groups in your organization to start assigning risk scores for the policy. Selecting **Include specific users and groups** allows you to define which users and groups to assign to the policy.
8. Select **Next** to continue.
9. On the **Content to prioritize** page, you can assign (if needed) the sources to prioritize, which increases the chance of generating a high severity alert for these sources. Select one of the following choices:

    - **I want to specify SharePoint sites, sensitivity labels, and/or sensitive information types as priority content**. Selecting this option will enable detail pages in the wizard to configure these channels.
    - **I don't want to specify priority content right now (you'll be able to do this after the policy is created)**. Selecting this option will skip the channel detail pages in the wizard.

10. Select **Next** to continue.

11. If you selected **I want to specify SharePoint sites, sensitivity labels, and/or sensitive information types as priority content** in the previous step, you'll see the detail pages for *SharePoint sites*, *Sensitive info types*, and *Sensitivity labels*. Use these detail pages to define the SharePoint, sensitive info types, and sensitivity labels to prioritize in the policy.

    - **SharePoint sites**: Select **Add SharePoint site** and select the SharePoint sites you have access to and want to prioritize. For example, *"group1@contoso.sharepoint.com/sites/group1"*.
    - **Sensitive info type**: Select **Add sensitive info type** and select the sensitivity types you want to prioritize. For example, *"U.S. Bank Account Number"* and *"Credit Card Number"*.
    - **Sensitivity labels**: Select **Add sensitivity label** and select the labels you want to prioritize. For example, *"Confidential"* and *"Secret"*.

12. Select **Next** to continue.
13. On the **Indicators and triggering events** page, you'll see the [indicators](insider-risk-management-settings.md#indicators) that you've defined as available on the **Insider risk settings** > **Indicators** page. If you selected a *Data leaks* template at the beginning of the wizard, you must select a DLP policy from the **DLP policy** dropdown list to enable triggering indicators for the policy or select the built-in triggering event.

    >[!IMPORTANT]
    >If indicators on this page can't be selected, you'll need to select the indicators you want to enable for all policies. You can use the **Turn on indicators** button in the wizard or select indicators on the **Insider risk management** > **Settings** > **Policy indicators** page.

    Select the indicators you want to apply to the policy. If you prefer not to use the default policy threshold settings for these indicators, disable the **Use default thresholds recommended by Microsoft** and enter the threshold values for each selected indicator.

    - If you've selected at least one *Office* or *Device* indicator, select the **Risk score boosters** as appropriate. Risk score boosters are only applicable for selected indicators.
    - If you've selected a *Data theft* or *Data leaks* policy template, select one or more **Sequence detection** methods and a **Cumulative exfiltration detection** method to apply to the policy.

14. Select **Next** to continue.
15. On the **Indicator thresholds** page, select the option to use default indicator thresholds or to specify custom thresholds for individual indicators. For each indicator, choose the appropriate level to generate the desired level of activity alerts.
16. Select **Next** to continue.
17. On the **Review** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

## Next steps

After you've completed these steps to create your first insider risk management policy, you'll start to receive alerts from activity indicators after about 24 hours. Configure additional policies as needed using the guidance in Step 4 of this article or the steps in [Create a new insider risk policy](insider-risk-management-policies.md#create-a-new-policy).

To learn more about investigating insider risk alerts and the **Alerts dashboard**, see [Insider risk management alerts](insider-risk-management-alerts.md).
