---
title: Get Started with Insider Risk
description: Learn about Insider Risk in Microsoft 365
keywords: Microsoft 365, Insider Risk, risk management, compliance
localization_priority: Normal
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Get Started with Insider Risk Management

Use Insider Risk policies to monitor employee activities and to remediate risk alerts in your organization. For more information about how Insider Risk policies can help you manage risk in your organization, see [Insider Risk Management in Microsoft 365](insider-risk-overview.md).

## Before you begin

CONFIRM REQUIREMENTS AND BEST PRACTICES

Follow these steps to set up and use Insider Risk in your Microsoft 365 organization:

## Step 1 (required): Confirm your Microsoft 365 subscription

Users monitored by Insider Risk policies must have a Microsoft 365 E5 Compliance license or be included in a Microsoft 365 E5 subscription. If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try Insider Risk, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing Office 365 subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

## Step 2 (optional): Set up groups for Insider Risk

Before you start using Insider Risk Management, you may want to create security groups for employees that need monitoring if you don't have appropriate Microsoft Active Directory groups already configured. Additionally, you may want to create custom security groups for users who have permission to review alerts, escalate cases, and manage data and employee investigations. 

At a minimum, consider creating the following management groups:

- **Data Investigation Admins**: Employees who will manage data investigation escalations.
- **Employee Investigation Admins**: Employess who will manage employee investigation escalations.

## Step 3 (optional): Configure 3rd-party data connectors

Insider Risk supports importing user signals and log data imported from 3rd-party risk management and Human Resources platforms. The following connections are supported:

- **Human Resources Connector**:
- **ObserveIT UAM Connector**:

### Configure the Human Resources Connector

### Configure the ObserveIT UAM Connector

## Step 4 (required): Create an insider risk policy

Insider Risk Policies determine who is monitored and which types of signals are configured for alerts.

1. In the Microsoft 365 compliance center, go to **Insider Risk** and select the **Policies** tab.
2. Select **Add Policy** to open the policy wizard
3. On the **Assign policy name** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the policy
    - **Description (optional)**: Enter a description for the policy.
    - **Select playbook (required)**: Select one of the playbooks to define the types of signals monitored by the policy.
4. Select **Next** to continue.
5. On the **Users** page, select **Add user or group** to define which users are subject to the policy. Select **Next** to continue.
6. On the **Content priority** page, assign the sources for user activities:
    - Microsoft Teams
    - SharePoint sites
    - Sensitivity type
    - Labels
7. Select **Next** to continue.
8. On the **Choose alert indicators** page, select one or more alerts and define the policy weighting for each.
9. On the **Monitoring window** page, choose the time period for the policy. Select **Next** to continue.
10. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.
