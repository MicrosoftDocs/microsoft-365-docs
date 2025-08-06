---
title: Set up or disconnect pay-as-you-go billing for Microsoft 365 Copilot
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: siruvanti
ms.date: 07/11/2025
audience: admin
ms.topic: install-set-up-deploy
ms.service: microsoft-365-business
ms.subservice:
search.appverid: 
ms.collection: 
ms.localizationpriority:  medium
description: Learn how to set up or disconnect billing for pay-as-you-go services in Microsoft 365 Copilot.
---

# Set up or disconnect pay-as-you-go billing for Microsoft 365 Copilot

This article explains how to set up or disconnect pay-as-you-go billing for agents in Microsoft 365 Copilot.

## Prerequisites

Before you begin, ensure the following:

- You have an Azure subscription in the same tenant as Microsoft 365.

- You have an Azure resource group in that subscription.

- You have one of the following Microsoft 365 administrator roles:

    - Global administrator
    - Billing administrator
    - AI administrator

To learn more about these roles, see [Microsoft 365 admin roles](/microsoft-365/admin/add-users/about-admin-roles).

<!---
    - [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) for accessing the Microsoft 365 admin center.
    - Owner or Contributor rights to the Azure subscription and resource group.
--->

## Set up pay-as-you-go billing

### Step 1: Set up a billing policy

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Go to **Copilot** > **Billing & usage**.

3. Select **Add a billing policy**.

4. On the **Billing details** page, fill in required information, including:
    - Policy name
    - Azure subscription
    - Resource group
    - Region (determines where tenant ID and usage data are stored)

5. Read and accept the pay-as-you-go terms of service. Select **Next**.

7. On the **Users** page, choose **All users** or a **Specific group** (search and add a single group). Select **Next**.

    > [!NOTE]
    > When selecting a group, only the first 1,000 groups are displayed in alphabetical order.

8. On the **Review and finish** page, double-check all the details you’ve entered. If everything is correct, select **Create policy**.

    Your billing policy is now created but not yet connected to a service.

### Step 2: Connect the billing policy to a service

1. On the **Billing & usage** page, select the **Connect a service**.

2. Choose the newly created billing policy and link it to a pay-as-you-go service (for example, **Microsoft 365 Copilot Chat** or **SharePoint Agents**).

## Set up a budget and monitor usage

After setting up billing, you can [set up a budget and monitor your usage in the Microsoft 365 admin center](pay-as-you-go-budget.md). You can also monitor your pay-as-you-go usage and costs in [Microsoft Cost Management for Azure](https://portal.azure.com/#blade/Microsoft_Azure_CostManagement/Menu/costanalysis). Ensure you have at least read access to the billing resource group.

## Disconnect pay-as-you-go billing

### Prerequisites

- Ensure you have one of the following Microsoft 365 administrator roles:

    - Global administrator
    - Billing administrator
    - AI administrator

To learn more about these roles, see [Microsoft 365 admin roles](/microsoft-365/admin/add-users/about-admin-roles).

### Disconnect agents from pay-as-you-go billing

1. In the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home), go to **Copilot** > **Billing & usage**.

2. Select the **Pay-as-you-go services** tab.

3. Choose the agent to disconnect (for example, **Microsoft 365 Copilot Chat** or **SharePoint Agents**).

4. On the **Manage billing policy connections** panel:

    a. Select the checkbox next to the policy to disconnect.

    b. Select **Save**.

5. View the disconnection message to confirm that your Azure subscription is successfully disconnected.

    If multiple services are connected to a single policy, repeat the steps for each service.
