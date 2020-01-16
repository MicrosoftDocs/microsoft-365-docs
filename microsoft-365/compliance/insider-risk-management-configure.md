---
title: Get started with insider risk management (preview)
description: Configure insider risk management in your organization.
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Get started with insider risk management (preview)

Use insider risk management policies to identify risky activities and management tools to take action on risk alerts in your organization. For more information about how insider risk policies can help you manage risk in your organization, see [Insider risk management in Microsoft 365](insider-risk-management.md).

>[!IMPORTANT]
>The Microsoft 365 insider risk management solution provides a tenant level option to help customers facilitate internal governance at the user level. Tenant level administrators can set up permissions to provide access to this solution for members of your organization and set up data connectors in the Microsoft 365 compliance center to import relevant data to support user level identification of potentially risky activity. Customers acknowledge insights related to the individual users behavior, character, or performance materially related to employment can be calculated by the administrator and made available to others in the organization.

## Before you begin

Before you get started with insider risk management, you should confirm your Microsoft 365 subscription. Users included in insider risk management policies must have a Microsoft 365 E5 Compliance license or be included in a Microsoft 365 E5 subscription.

If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try Insider risk management, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing Office 365 subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

Complete these steps to set up and use insider risk management in your Microsoft 365 organization:

## Step 1 (required): Enable permissions for insider risk management

There are four permission roles used to configure and manage insider risk management:

| **Role** | **Role permissions** |
| ---- | ---------------- |
| **Insider Risk Management Admin** | Create, read, update, and delete insider risk management policies <br> Create, read, update, and delete insider risk management permissions and roles |
| **Insider Risk Management Analysts** | Access to all insider risk management alerts, cases, and notices |
| **Insider Risk Management Investigators** | Access to all insider risk management alerts, cases, notices, and the Content Explorer for all cases |
| **Insider Risk Management Viewer** | View-only access to all insider risk management alerts, cases, notices, and the Content Explorer for all cases |

Depending on the structure of your compliance management team, you have two permission options to configure roles to manage insider risk management features. You must choose one of these role management options when configuring insider risk management:

1. **Use the default Insider Risk Management role group**: Use this role group to manage insider risk management for your organization by adding all user accounts for designated administrators, analysts, and investigators in a single group. This role group contains all the insider risk management permission roles. This is the easiest way to quickly get started with insider risk management and is a good fit for organizations that do not need separate permissions defined for separate groups of users.
2. **Create different groups for different management roles**: For organizations that need to separate permissions for configuring and managing insider risk management, you'll need to create new role groups and assign appropriate roles and users to the new groups. For example, if you want different permissions for insider risk management analysis and investigations, you'll need to create a group for analysts and a separate group for investigators. For each group, you'll assign the required roles for these responsibilities and then add the users that should be assigned to the group.

Use the following table to assign the required roles to each role group:

| **Group example** | **Required roles** |
| ---- | ---------------- |
| **Administrators** | Insider Risk Management Admin role |
| **Analysts** | Insider Risk Management Analysts role <br> Case Management role |
| **Investigators** | Insider Risk Management Investigators role <br> Case Management role  |

To continue with these configuration steps, your tenant administrators must first assign you the **Insider Risk Management Admin** role.

### Option 1: Add users to the Insider Risk Management role group

If you want to use one role group for all users configuring and managing insider risk management, complete the following steps to add users to the default **Insider Risk Management** role group:

1. Sign into [https://protection.office.com/permissions](https://protection.office.com/permissions) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft Office 365 security and compliance center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select the Insider Risk Management role group, then select **Edit role group**.

4. Select **Choose members** from the left navigation pane, then select **Edit**.

5. Select **Add** and then select the checkbox for all users you want to add to the role group.

6. Select **Add**, then select **Done**.

7. Select **Save** to add the users to the role group. Select **Close** to complete the steps.

### Option 2: Create a new role group

If you need to create separate role groups for different management roles, complete the following steps to create each new group:

1. Sign into [https://protection.office.com/permissions](https://protection.office.com/permissions) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft Office 365 security and compliance center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select **Create**.

4. In the **Name** field, give the new role group a friendly name. Select **Next**.

5. Select **Choose roles** and then select **Add**. Select the checkbox for the roles you need to assign. For example, if this is a group for insider risk analysts, select **Insider Risk Management Analysts** and **Case Management**, then select **Add** and **Done**. Select **Next**.

6. Select **Choose members** and then select **Add**. Select the checkbox for all the users and groups you want create policies and manage messages with policy matches, then select **Add** and **Done**. Select **Next**.

7. Select **Create role group** to finish.

For more information about role groups and permissions, see [Permissions in the Compliance Center](../security/office-365-security/protect-against-threats.md).

## Step 2 (optional): Configure the Microsoft 365 human resources data connector

Insider risk management supports importing user and log data imported from 3rd-party risk management and human resources platforms. The Microsoft 365 Human Resources (HR) data connector allows you to pull in human resources data from CSV files, including user termination and last employment dates. This data helps drive the alert indicators in insider risk management policies and is an important part of configuring full risk management coverage in your organization.

Visit the [Import data with the HR Connector](import-hr-data.md) topic for step-by-step guidance to configure the Microsoft 365 HR Connector for your organization. After you've configured the HR Connector, return to these configuration steps.

>[!IMPORTANT]
>If you plan on configuring a policy using the *Departing employee data theft* template, you'll need to configure the HR Connector to use the full signal detection features of the policy template. If you configure more than one HR Connector for your organization, insider risk management will automatically pull indicators from all HR Connectors.

## Step 3 (optional): Configure the Data Loss Prevention (DLP) policies

Insider risk management supports using DLP policies to help identify the intentional or accidental exposure of sensitive information to unwanted parties. When configuring a insider risk management policy with the *Data leaks* template, you have to assign a specific DLP policy to the policy. This helps drive the alert indicators for sensitive information is an important part of configuring full risk management coverage in your organization.

Visit the [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md) topic for step-by-step guidance to configure DLP policies for your organization. After you've configured a DLP policy, return to these configuration steps.

>[!IMPORTANT]
>If you plan on configuring a policy using the *Data leaks* template, you'll need to configure at least one DLP policy to use the full signal detection features of the policy template. If you configure more than one DLP policy for your organization, you'll need to assign an insider risk management policy per DLP policy.

## Step 4 (required): Create an insider risk management policy

Insider risk management policies includes assigned users and defines which types of risk indicators are configured for alerts. Before activities can trigger alerts, a policy must be configured.

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
    - SharePoint sites: Select a specific or all SharePoint Online sites in your organization.
    - Sensitive info type:
    - Sensitivity labels:
7. Select **Next** to continue.
8. On the **Choose alert indicators** page, you'll see the indicators that are included in the template that you've chosen for this policy. If you selected the *Data leaks* template at the beginning of the wizard, you must select a DLP policy from the **DLP policy** dropdown list.
9. On the **Select monitoring window** page, you'll define the *In-scope timespan* and *Historic timespan* for the policy.
10. Select **Next** to continue.
11. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

After you've completed these steps to create your first insider risk management policy, you'll start to receive alerts from activity indicators after about 24 hours. Configure additional policies as needed using the steps in Step 4 of this topic or the steps in [Create a new insider risk policy](insider-risk-management-policies.md#create-a-new-policy).
