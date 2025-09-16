---
title: Set up a budget for pay-as-you-go billing in Microsoft 365
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ivchenya
ms.date: 08/07/2025
audience: admin
ms.topic: install-set-up-deploy
ms.service: microsoft-365-business
ms.subservice:
search.appverid: 
ms.collection: 
ms.localizationpriority:  medium
description: Learn how to set up a billing budget for pay-as-you-go services in Microsoft 365.
---

# Set up a budget for pay-as-you-go billing in Microsoft 365

This article explains how to set spending limits for pay-as-you-go billing. This feature helps you monitor usage, receive alerts as costs approach budget thresholds, and plan more effectively.

Budgets are set at the billing policy level, not for individual users, agents, or sites. This means any limits or alerts apply to all services and users under that policy.

## Prerequisites

To access the Microsoft 365 admin center, users must be assigned one of the following roles:

- [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator)
- [AI Administrator](/entra/identity/role-based-access-control/permissions-reference?#ai-administrator)
- [Global Reader](/entra/identity/role-based-access-control/permissions-reference#global-reader)

    > [!NOTE]
    > Users with the [Global Reader](/entra/identity/role-based-access-control/permissions-reference#global-reader) role can view billing policies and budgets, but they can't view spending data.

## Set up a budget

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Go to **Copilot** > **Billing & usage**.

3. On the **Billing policies** tab, select the policy you want to manage.

4. On the policy panel, select the **Budget** tab.

5. Select **Spending** to view current expenses for services linked to the policy. There can be up to a four-hour delay before consumption data appears in the graph.

6. Select **Settings** to configure your budget and alert preferences.

    a. Select the **Set limits for this billing policy** checkbox.

    b. Under **Budget**, enter the dollar amount for your spending limit.

    c. Under **Reset the budget**, select when you want to reset the budget.

    - Monthly (resets on the first day of each month)
    - Quarterly (resets on January 1, April 1, July 1, and October 1)
    - Yearly (resets on January 1)

    d. Under **Send email alerts** (optional):

    - Add recipients (only [mail-enabled security groups](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) are currently supported).

    - Set the budget percentage that triggers alerts.

        - If selected, 100% is enabled by default.

        - You can add up to four additional thresholds (1–99%).

    > [!NOTE]
    > Email alerts can be delayed by up to 24 hours. Alerts are currently sent from Azure but will transition to the Microsoft 365 admin center in a future release.

7. Select **Save** to apply your budget settings.

    > [!IMPORTANT]
    > The only way to stop billing is to [disconnect the payment method](pay-as-you-go-setup-copilot.md#disconnect-pay-as-you-go-billing). Reaching 100% of your budget doesn't stop the service or billing.
