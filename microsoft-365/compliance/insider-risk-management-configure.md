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

Use insider risk management policies to monitor employee activities and to take action on risk alerts in your organization. For more information about how Insider Risk policies can help you manage risk in your organization, see [Insider risk management in Microsoft 365](insider-risk-management.md).

## Before you begin

Before you get started with insider risk management, you should confirm your Microsoft 365 subscription. Users monitored by insider risk management policies must have a Microsoft 365 E5 Compliance license or be included in a Microsoft 365 E5 subscription. If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try Insider Risk, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing Office 365 subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

Follow these steps to set up and use insider risk management in your Microsoft 365 organization:

## Step 1 (required): Enable permissions for insider risk management

Depending on your compliance management role, you'll need specific roles to configure and manage insider risk management features. 

There are three roles in the **Insider Risk Management** role group:

| **Role** | **Role permissions** |
| ---- | ---------------- |
| **Insider Risk Management Admins** | Create, read, update, and delete insider risk management policies <br> Create, read, update, and delete insider risk management permissions and roles |
| **Insider Risk Management Analysts** | Access to all insider risk management alerts, cases, and notices |
| **Insider Risk Management Investigators** | Access to all insider risk management alerts, cases, notices, and the Content Explorer for all cases |

To continue with these configuration steps, your tenant administrators must assign you the Insider Risk Management Admins role.

## Step 2 (optional): Set up groups for insider risk management

Before you start using insider risk management, you may want to create security groups for employees that need monitoring if you don't have appropriate Microsoft Active Directory groups already configured. Additionally, you may want to create custom security groups for users who have permission to analyze or investigate alerts, cases, and data and employee investigation escalations.

At a minimum, consider creating the following insider risk management groups:

- **Insider risk analysts**: Employees who triage alerts, open new insider risk management cases, and take actions on cases.
- **Insider risk investigators**: Employees who triage alerts, open new insider risk management cases, conduct investigative reviews of captured content, and take actions on cases.

## Step 3 (optional): Configure the Microsoft 365 human resources data connector

Insider risk management supports importing user signals and log data imported from 3rd-party risk management and human resources platforms. The HR data connector allows you to pull in human resources data from CSV files, including user termination and last employment dates. This data helps drive the alert signals in insider risk management policies and is an important part of configuring full risk management coverage in your organization.

Visit the [HR data connector solution](https://compliance.microsoft.com/connectorlanding/solution/customhrconnector) in the Microsoft 365 compliance center to configure the connector and to complete this step.

> [!UMPORTANT]
> If you plan on configuring a policy using the *Departing employee data theft* template, you need to configure the Microsoft 365 human resources connector to use the full signal detection features of the policy template.

For more information about setting up a human resources data connector, see [archive third-party data in Office 365](archiving-third-party-data.md).

## Step 4 (required): Create an insider risk management policy

Insider risk management policies determine who is monitored and which types of signals are configured for alerts. Before activities can trigger alerts, a policy must be configured.

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. Select **Add Policy** to open the policy wizard
3. On the **Assign policy name** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the policy
    - **Description (optional)**: Enter a description for the policy.
    - **Select template (required)**: Select one of the playbooks to define the types of signals monitored by the policy.
4. Select **Next** to continue.
5. On the **Users** page, select **Add user or group** to define which users are subject to the policy or select **All users**. Select **Next** to continue.
6. On the **Content priority** page, assign the sources for user activities:
    - Microsoft Teams
    - SharePoint sites
    - Sensitivity type
    - Labels
7. Select **Next** to continue.
8. On the **Choose alert indicators** page, select one or more alerts and define the policy weighting for each.
9. On the **Monitoring window** page, choose the time period for the policy. Select **Next** to continue.
10. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

After you've completed these steps to create your first insider risk management policy, you'll start to receive alerts from activity signals after about 24 hours. Configure additional policies as needed using the steps in Step 4 of this topic or the steps in [Create a new insider risk policy](insider-risk-management-policies.md#create-a-new-policy).
