---
title: Set up Microsoft 365 Copilot pay-as-you-go for IT admins
description: Enterprise and company IT administrators can use the Microsoft 365 admin center to set up the Microsoft 365 Copilot pay-as-you-go feature. Get step-by-step instructions on setting up a billing policy, connecting the billing policy to the pay-as-you-go Copilot service, and removing pay-as-you-go.
author: cmcatee-MSFT
ms.author: cmcatee
manager: dansimp
ms.reviewer: nishanair
audience: Admin
ms.topic: get-started
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- magic-ai-copilot
- essentials-overview
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
ms.date: 07/23/2025
---

# Set up pay-as-you-go for Microsoft 365 Copilot services for IT admins

The Microsoft 365 Copilot pay-as-you-go service offers a usage-based option for organizations to access Copilot services, like Microsoft 365 Copilot Chat. To learn more about the pay-as-you-go service, see [Microsoft 365 Copilot pay-as-you-go overview](overview.md).

You can set up the pay-as-you-go plan directly in the Microsoft 365 admin center. This article provides step-by-step instructions on how to set up and manage pay-as-you-go billing.

This article applies to:

- Microsoft 365 Copilot Chat
- SharePoint agents

## Prerequisites

To set up pay-as-you-go, you must have the following prerequisites:

- Azure subscription and resource group:
  - You must have an owner or contributor Azure role to an Azure subscription to set up the pay-as-you-go service.
  - You must have an owner or contributor Azure role to an Azure resource group linked to the same Azure subscription to set up the pay-as-you-go service.

  To learn more, see [Use the Azure portal and Azure Resource Manager to Manage Resource Groups](/azure/azure-resource-manager/management/manage-resource-groups-portal).

- One of the following Microsoft 365 administrator roles:
  - Global administrator
  - Billing administrator
  - AI administrator

  To learn more about these roles, see [Microsoft 365 admin roles](/microsoft-365/admin/add-users/about-admin-roles).

## Add a billing policy

To set up pay-as-you-go billing for Microsoft 365 Copilot, you must first add a billing policy in the Microsoft 365 admin center. You can create up to 10 billing policies for your tenant.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Copilot** > **Billing & usage** page.
2. On the **Billing policies** tab, select **Add a billing policy**.
3. On the **Billing details** page, enter a name for the policy. Under **Subscription details**, select the Azure subscription, resource group, and region for the policy. Under **Terms of service**, select the checkbox next to **I accept the pay-as-you-go billing terms or service**, then select **Next**.
4. On the **Choose users** page, select a user scope for the billing policy, then select **Next**. You can choose from the following user scopes:

    - **All Users**: All users in the tenant are included in the billing policy
    - **Specific group**: Assign a specific security group to include in the billing policy
5. On the **Budget** page, select the checkbox next to **Set a budget for this policy**. This option lets you specify a spending budget for your user's Copilot usage.
   - Enter a value for the budget limit.
   - Select when to reset the budget spending: first day of the month, first day of the quarter, or first day of the year.
   - To send budget spending alerts, in the **Recipients** box, select the name of one or more groups that you want to receive alert messages.
   - Under the **Send alerts when usage reaches this percentage of budget** section, the default value is 100%. To add other percentages, select **Add more**, then enter the percentage at which you want an alert sent.

      > [!NOTE]
      > It can take up to 24 hours for recipients to receive budget alert notifications.

   - When you're finished configuring the budget, select **Next**.

6. On the **Review and finish** page, review the details, then select **Create policy**.

> [!IMPORTANT]
> When you set a budget amount, it triggers email notifications based on your organization's spending relative to that limit. However, the system doesn't enforce the budget or prevent your organization from exceeding it. Usage can continue uninterrupted even after the budget is surpassed, ensuring no disruption to the service.

## Connect a billing policy

After the billing policy is created, you must connect the policy to the Copilot pay-as-you-go service.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Copilot** > **Billing & usage** page, then select the **Pay-as-you-go services** tab.
2. Select **Microsoft 365 Copilot Chat** or **SharePoint agents** and select the billing policy you created.

To learn how to set up a billing policy for SharePoint agents, see [Use agents with pay-as-you-go billing](/sharepoint/sharepoint-agents-azure-billing).

## Add a budget to an existing billing policy

If you have an existing billing policy that doesn’t have a budget assigned to it, you can add one in the Microsoft 365 admin center.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Copilot** > **Billing & usage** page.
2. On the **Billing policies** tab, select an existing billing policy.
3. In the flyout panel, select the **Budget** tab, then select **Settings**.
4. To set a budget, select the checkbox next to **Set a budget for this policy**. This option lets you specify a spending budget for Copilot usage by your users.

   - Enter a value for the budget limit.
   - Select when to reset the budget spending: first day of the month, first day of the quarter, or first day of the year.
   - To send budget spending alerts, in the **Recipients** box, select the name of one or more groups that you want to receive alert messages.
   - Under the **Send alerts when usage reaches this percentage of budget** section, the default value is 100%. To add other percentages, select **Add more**, then enter the percentage at which you want an alert sent.

      > [!NOTE]
      > It can take up to 24 hours for recipients to receive budget alert notifications.

   - When you’re finished configuring the budget, select **Save**.

> [!IMPORTANT]
> When you set a budget amount, it triggers email notifications based on your organization’s spending relative to that limit. However, the system doesn’t enforce the budget or prevent your organization from exceeding it. Usage can continue uninterrupted even after the budget is surpassed, ensuring no disruption to the service.

## View spending for your organization

If you previously set up a budget for your organization, you can view the spending report in the Microsoft 365 admin center.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Copilot** > **Billing & usage** page.
2. On the **Billing policies** tab, select an existing billing policy.
3. In the flyout panel, select the **Budget** tab, then select **Spending**.

## Disable pay-as-you-go

Disabling pay-as-you-go for a Copilot service involves disconnecting the billing policies associated with the service, like Microsoft 365 Copilot Chat or SharePoint agent.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Copilot** > **Billing & usage** page.
2. Select the **Pay-as-you-go services** tab, then select the Copilot service, like Microsoft 365 Copilot Chat or SharePoint agent.
3. Clear the checkboxes of the billing policies that you want to disconnect.
4. Read and accept the confirmation. This step completes the disconnection.

When you turn off pay-as-you-go, it can take up to two hours for users to stop being able to use the agents. If the agent is unused, it stops being available when pay-as-you-go is turned off.

## Delete a billing policy

After you disable pay-as-you-go, you can also delete the billing policy.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Copilot** > **Billing & usage** page.
2. On the **Billing policies** tab, select a billing policy, then select **Delete billing policy**.
3. Accept the confirmation dialogue. Any services connected to the billing policy are disconnected.
  
## What if pay-as-you-go is already set up in the Power Platform admin center?

If you already set up a pay-as-you-go billing policy in the Power Platform admin center, you can create another policy in the Microsoft 365 admin center. Both policies can coexist and you're only billed once. The billing system ensures that you're only billed once for your organization's usage, regardless of the billing policy location.

Although the policies can coexist, we recommend that you turn off any pay-as-you-go billing policy in the Power Platform admin center before you enable it in the Microsoft 365 admin center. By disabling the policy in the Power Platform admin center, you can manage your pay-as-you-go policies from single location.

## Related articles

- [Microsoft 365 Copilot pay-as-you-go service overview](overview.md) (article)
- [Meters for Microsoft 365 Copilot pay-as-you-go](meters.md) (article)
- [View costs and billing for Microsoft 365 Copilot pay-as-you-go](view-cost.md) (article)
