---
title: Insider risk policies
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

# Insider risk policies

## Overview

Insider risk policies determine which employees are monitored and which types of risk signals are configured for alerts. 

## Policy dashboard

**Policy name**
**Active alerts**
**Total confirmed alerts**
**Total actioned alerts**
**Policy effectiveness**
**Active status**

## Policy playbooks

Insider risk playbooks are pre-defined templates that define the types of risk signals monitored by a policy. Each policy must have a playbook assigned in the policy creation wizard before the policy is created. The following playbooks are available:

**Depart employee data theft**: When employees leave your organization, there are specific risk signals that typically...
**Data leaks**: 
**Security control violations**: 
**HR policy violations**: 

## Create a new policy

To create a new insider risk policy, complete the following steps:

1. In the Microsoft 365 compliance center, go to **Insider Risk** and select the **Policies** tab.
2. Select **Add Policy** to open the policy wizard
3. On the **Assign policy name** page, complete the following fields and then select **Next**:
    - **Name (required)**: Enter a friendly name for the policy
    - **Description (optional)**: Enter a description for the policy.
    - **Select playbook (required)**: Select one of the playbooks to define the types of signals monitored by the policy.
4. On the **Users** page, select **Add user or group** to define which users are subject to the policy. Select **Next** to continue.
5. On the **Content priority** page, assign the sources for user activities and then select **Next**:
    - Microsoft Teams
    - SharePoint sites
    - Sensitivity type
    - Labels
6. On the **Choose alert indicators** page, select one or more alerts and define the policy weighting for each.
7. On the **Monitoring window** page, choose the time period for the policy. Select **Next** to continue.
8. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

## Manage an existing policy

To manage an existing insider risk policy, complete the following steps:

1. In the Microsoft 365 compliance center, go to **Insider Risk** and select the **Policies** tab.
2. On the policy dashboard, select the policy you want to manage.
3. On the policy details page, select **Edit policy**
4. In the policy wizard, you can edit the following fields:
    - **Name (required)**: Enter a new friendly name for the policy
    - **Description (optional)**: Enter a new description for the policy.
    - **Select playbook (required)**: Select one of the playbooks to define the types of signals monitored by the policy.
5. Select **Next** to continue.
6. On the **Users** page, select **Add user or group** to define which users are subject to the policy. Select **Next** to continue.
7. On the **Content priority** page, assign the sources for user activities:
    - Microsoft Teams
    - SharePoint sites
    - Sensitivity type
    - Labels
8. Select **Next** to continue.
9. On the **Choose alert indicators** page, select one or more alerts and define the policy weighting for each.
10. On the **Monitoring window** page, choose the time period for the policy. Select **Next** to continue.
11. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to update and activate the policy.
