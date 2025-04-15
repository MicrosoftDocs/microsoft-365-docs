---
title: Set up Microsoft 365 Copilot Chat pay-as-you-go
description: Learn how to set up pay-as-you-go billing for Microsoft 365 Copilot Chat.
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 03/12/2025
ms.reviewer: 
audience: Admin
ms.topic: get-started
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
ms.custom: [copilot-learning-hub]
---

# Set up pay-as-you-go for Microsoft 365 Copilot Chat

Setting up the pay-as-you-go plan for Microsoft 365 Copilot Chat can be done directly from the Microsoft 365 admin center. This article provides step-by-step instructions on how to set up and manage pay-as-you-go billing.

## Prerequisites

To set up pay-as-you-go, you must have the following prerequisites:

- Azure subscription and resource group
  - You must have an owner or contributor Azure role to an Azure subscription to set up the pay-as-you-go service.
  - You must have an owner or contributor Azure role to an Azure resource group linked to the same Azure subscription to set up the pay-as-you-go service.
  - To learn more, see [Use the Azure portal and Azure Resource Manager to Manage Resource Groups](/azure/azure-resource-manager/management/manage-resource-groups-portal).
- One of the following administrator roles:
  - Global administrator
  - Billing administrator
  - AI administrator

## Steps to set up pay-as-you-go billing

1. In the Microsoft 365 admin center, go to **Copilot** > **Settings**.
1. If not already set up, create an Azure subscription and resource group.
1. Select the Azure subscription, resource group, and region for the pay-as-you-go setup.
1. Enable consumption-based billing for the desired Copilot scenarios.

### What if pay-as-you-go is already set up in the Power Platform admin center?

If you already set up pay-as-you-go in the Power Platform admin center, the two setups can coexist. You can also create another setup in the Microsoft 365 admin center without being double billed. The billing system ensures that you're only billed once for your user's usage, regardless of the setup location.

> [!NOTE]
> Although the setups can coexist, it's recommended to turn off pay-as-you-go in the Power Platform admin center before enabling it in the Microsoft 365 admin center.

## Managing pay-as-you-go billing

As an admin, you can do the following to manage pay-as-you-billing for your organization:

- **View usage and costs** You can view detailed reports on Copilot usage and the associated costs.
- **Edit billing** Modify an unhealthy Azure subscription, resource group, and billing region.
- **Turn off billing** You can turn off pay-as-you-go billing for any of the Copilot services, removing the service from the agent's view. Once the service has been turned off, users without a Copilot license won't be able to use the service.

> [!NOTE]
> When turning off pay-as-you-go, it may take up to two hours for users to stop being able to use the agents. Additionally, if the agent hasn't been used, it will no longer be accessible once pay-as-you-go is turned off.

## Next step

[View costs](view-cost.md) (article)
