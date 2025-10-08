---
title: Use Copilot Studio prepaid capacity packs for Microsoft 365 Copilot Chat
description: Learn how to use prepaid capacity packs for Copilot Studio to pay for Microsoft 365 Copilot Chat usage.
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.update-cycle: 180-days
ms.reviewer: issahn, clalissayi
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- essentials-overview
appliesto:
- ✅ Microsoft 365 Copilot
ms.date: 09/18/2025
---

# Use Copilot Studio prepaid capacity packs for Microsoft 365 Copilot Chat

A Copilot Studio capacity pack is a prepaid subscription for Microsoft Copilot Studio. Each capacity pack provides a fixed number of Copilot Credits that you can use across your tenant. Copilot Credits are the unit of consumption in Microsoft 365 Copilot Chat for AI interactions and are available in quantities of 25,000 per month per pack. The number of credits consumed by a Microsoft 365 Copilot Chat agent depends on the design of the agent, how often customers interact with it, and the features they use. For more information about the billing rates for credits, see [Billing rates and management - Microsoft Copilot Studio | Microsoft Learn](/microsoft-copilot-studio/requirements-messages-management#message-scenarios).

By default, Copilot Chat uses [pay-as-you-go billing](overview.md). With a capacity pack, you can prepay for a set number of Copilot Credits, reducing the amount billed through pay-as-you-go billing.

> [!NOTE]
> You must enable pay-as-you-go billing before you can use a capacity pack for Copilot Chat. When you enable pay-as-you-go billing first, your Copilot Chat environment is linked to an Azure subscription to pay for any overages and provisions the environment for capacity usage.

This article explains how global administrators can use Copilot Studio capacity packs in the Microsoft 365 admin center for Microsoft 365 Copilot Chat. This article also covers the end-to-end process, including buying a capacity pack, setting up pay-as-you-go billing, allocating capacity in the Power Platform Admin Center, and monitoring usage.

## Before you begin

- You must be a Global Administrator or Billing Administrator to buy capacity packs.
- You must be a Global Administrator to enable capacity pack usage.
- Billing administrators or AI administrators can set up pay-as-you-go billing but can't activate a capacity pack.

[!INCLUDE [global-administrator-note](../../microsoft-365/includes/global-administrator-note.md)]

## Understand the difference between prepaid capacity packs and pay-as-you-go billing

With a prepaid capacity pack, you pay up front for a set number of Copilot Credits (25,000 credits per month). These credits are used first for any Copilot Chat usage in your organization.

With pay-as-you-go billing, you pay per credit for any usage beyond the prepaid capacity amount. If you run out of prepaid credits, Copilot Chat continues to work, and the extra usage is billed at the per-credit pay-as-you-go billing rate.

## Understand overage handling and business continuity

A major benefit of the integration between prepaid capacity packs and pay-as-you-go billing is seamless continuity when your prepaid capacity is exhausted. This continuity is handled in the following ways:

- **Automatic switch to pay-as-you-go billing:** When consumption exceeds the allocated prepaid credits in the capacity pack, Copilot Chat automatically switches to pay-as-you-go billing for extra credits. There's no service interruption and users can continue using Copilot Chat as usual.
- **Billing for overages:** Any credits used beyond your prepaid allotment incur pay-as-you-go billing charges to the connected Azure subscription. These charges  appear on your next Azure invoice. For information about billing rates for Copilot Credits, see [Billing rates and management - Microsoft Copilot Studio | Microsoft Learn](/microsoft-copilot-studio/requirements-messages-management).
- **Replenishment:** Copilot Studio capacity packs are subscription products. At the start of every monthly billing period, your 25,000 credits are replenished. You must have pay-as-you-go billing active as a safety net each month to cover any excess usage. Alternatively, you can top up with more capacity packs.

## Step 1. Buy a Microsoft 365 Copilot Studio capacity pack in the Microsoft 365 admin center

First, you must buy a capacity pack for your tenant. Each capacity pack is a tenant license that includes 25,000 Copilot Credits per month. If necessary, you can buy multiple packs.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">Marketplace</a> page.
2. In the search box, type "Microsoft Copilot Studio".
3. Find the product, then select **Details**.
4. On the product details page, in the **Select a plan** drop-down list, select **Microsoft Copilot Studio**.
5. Select a **Subscription length** and **Billing frequency**.
6. In the **Select license quantity** box, enter the number of capacity packs that you want to buy. Each pack represents 25,000 credits.
7. Select **Buy**.
8. In the **Checkout** panel, choose the billing profile that you want to use, or add a new one.
9. Review your order, and then select **Place order**.

After the purchase is complete, the capacity pack license appears in your tenant's subscriptions list. Because it's a tenant-wide resource, users don't need licenses individually assigned to them. However, you must [allocate the capacity pack to a Microsoft 365 Copilot Chat environment](#step-3-allocate-capacity-to-the-copilot-chat-environment-in-the-power-platform-admin-center).

## Step 2. Enable pay-as-you-go billing in the Microsoft 365 admin center

Next, set up pay-as-you-go billing for Copilot Chat in the Microsoft 365 admin center. This step links an Azure subscription for any usage beyond the prepaid capacity and initiates using the capacity pack.

> [!IMPORTANT]
> - You must be a Global administrator to complete the following steps.
> - If you haven't connected an Azure billing policy, you must do so now. Follow the steps for "Add a billing policy" in [Set up Microsoft 365 Copilot pay-as-you-go for IT admins](setup.md).

1. In the admin center, go to the **Copilot** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2330674" target="_blank">Billing & usage</a> page.
2. Select the **Pay-as-you-go services** tab, then select **Microsoft 365 Copilot Chat**.
3. Find the **Billing policy name** to bill for any overage, then switch the **Connection status** toggle to **Connected**. If you have multiple Azure subscriptions or billing policies, select the one that you want to use for Copilot Chat.
4. If your tenant has a Copilot Studio capacity pack, you see a checkbox for **Apply available Microsoft Copilot Studio credit capacity to Microsoft 365 Copilot Chat**. Select the checkbox to indicate that you want to use your prepaid credit capacity for Copilot Chat.
5. Select **Save**.

If a Microsoft 365 Copilot Chat environment doesn't already exist in Power Platform, the system creates one for you when you enable the capacity pack option. This environment is where your capacity pack is applied for Copilot Chat usage.

> [!NOTE]
> Provisioning happens automatically. If the environment creation process fails, you see an error message. If that happens, wait a few minutes and try saving again.

After you save the changes, you see a confirmation message. If you enabled the capacity pack, the confirmation banner contains a next step reminder: "Capacity pack enabled. Allocate your capacity in Power Platform Admin Center." This message indicates that you now must [allocate the credits to the environment](#step-3-allocate-capacity-to-the-copilot-chat-environment-in-the-power-platform-admin-center).

## Step 3. Allocate capacity to the Copilot Chat environment in the Power Platform admin center

After pay-as-you-go billing is set up with the capacity pack option, you must allocate your prepaid credits to the Copilot Chat environment in the Power Platform admin center. To learn more about capacity management for Copilot Studio, see [Manage Copilot Studio credits and capacity - Power Platform | Microsoft Learn](/power-platform/admin/manage-copilot-studio-messages-capacity?tabs=new).

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2160305" target="_blank">Power Platform admin center</a> and sign in with your admin account.
2. In the navigation menu, select **Licensing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2330570" target="_blank">Copilot Studio</a>.
3. On the **Summary** tab, under **Capacity summary**, find the **Prepaid capacity** card. In the **License type** column, select **Manage capacity**.
4. The **Manage capacity** panel lists the environments eligible for Copilot Studio capacity. Select the **Microsoft 365 Copilot Chat** environment. This environment is the one that was just created or that you already set up for Copilot Chat.
5. Under **Allocate capacity**, enter the number of credits from the capacity pack that you want to allocate to the selected environment. For example, if you bought one pack of 25,000 credits, you can allocate all 25,000 credits to Copilot Chat, or you can divide them between environments if you have multiple groups of users.
6. Under **Capacity overages**, select the options for what happens when capacity reaches zero. You can choose one or both of the following options:
   - **Draw from the available capacity in my tenant**.
   - **Bill to my pay-as-you-go billing plan**. If you select this option, from the drop-down list, select the billing plan that you want to use.
7. If you want to receive a notification when the capacity usage reaches a certain percentage, you can configure the notification setting. Under **Overage notification**, select the **Send notification when nearing capacity usage** checkbox, then select a percentage value from the drop-down list.
8. Select **Save**, then close the **Manage capacity** panel.

   > [!NOTE]
   > If you have multiple capacity packs, make sure that the total allocated doesn't exceed the amount that you bought. You can adjust allocations at any time.

After you complete this step, your Copilot Chat environment has the specified number of credits allocated from your prepaid capacity. Any Copilot Chat agent credits consumed by users in this environment are drawn from the allocated prepaid pool first.

## Monitor Copilot Chat usage and capacity in the Power Platform admin center

After the capacity pack is in use, you can monitor consumption to understand how much of your prepaid capacity is used and whether any pay-as-you-go charges are occurring. To learn more, see [Manage Copilot Studio credits and capacity - Power Platform | Microsoft Learn](/power-platform/admin/manage-copilot-studio-messages-capacity?tabs=new).

In the Power Platform admin center, go to the **Licensing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2330570" target="_blank">Copilot Studio</a> page. On the **Summary** tab, the **Capacity summary** section reflects capacity usage, shows how many credits were consumed in total, and shows how many remain available for the current period.

You can also see the credit allocation per environment. If you need to adjust the allocation (for example, to move some credit units to a different environment or if you buy more capacity packs), you can use the **Manage capacity** panel to update the numbers. To open the panel again, go to the **Prepaid capacity** card and select **Manage capacity**.

You can use the Power Platform admin center not just to manage credit allocation, but also to check if your Copilot Chat environment's allocated capacity is being used up as users spend credits.

## Additional tips and FAQs

### Do I need to create a Copilot Chat environment myself?

No. The Microsoft 365 admin center creates the Microsoft 365 Copilot Chat environment for you when you enable the capacity pack option and save the setup. If you already have an environment from a previous setup in the Power Platform admin center, it's reused. Make sure that you allocate capacity to it as described in [Step 3. Allocate capacity to the Copilot Chat environment in the Power Platform admin center](#step-3-allocate-capacity-to-the-copilot-chat-environment-in-the-power-platform-admin-center).

### What if I want to use only prepaid capacity and not pay-as-you-go billing?

The system currently requires a pay-as-you-go billing setup to utilize any prepaid capacity for Copilot Chat. Even if you plan to mostly use the prepaid credits, you must configure pay-as-you-go billing as a backup. Consider setting up alerts or monitoring consumption so you know if you're approaching the prepaid limit. You can also disable the capacity pack usage and rely entirely on pay-as-you-go billing by editing the setting in the Microsoft 365 admin center. However, if you disable the capacity pack usage, your prepaid pack won't apply to Copilot Chat usage.

### License requirements for users

End-users using Microsoft 365 Copilot Chat must have a Microsoft 365 Copilot license to access Copilot features. The capacity pack and pay-as-you-go billing setup affects billing for credit usage, not the user license requirements. Make sure your users are licensed for Microsoft 365 Copilot; the capacity pack covers the extra agent credit costs, not the core Copilot access.

## Related content

[Manage Copilot Studio credits and capacity - Power Platform | Microsoft Learn](/power-platform/admin/manage-copilot-studio-messages-capacity?tabs=new) (article)\
[Billing rates and management - Microsoft Copilot Studio | Microsoft Learn](/microsoft-copilot-studio/requirements-messages-management) (article)\
[Copilot Studio licensing - Microsoft Copilot Studio | Microsoft Learn](/microsoft-copilot-studio/billing-licensing?source=recommendations) (article)
