---
title: Microsoft 365 Copilot pay-as-you-go overview
description: Enterprise and company IT admins can learn about the pay-as-you-go service for Microsoft 365 Copilot services, including Copilot Chat. Get an overview of the usage-based billing process, connecting the billing to a Copilot service, and monitoring costs.
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
ms.date: 06/16/2025
---

# Microsoft 365 Copilot pay-as-you-go overview for IT admins

The Microsoft 365 Copilot pay-as-you-go plan offers a flexible and cost-effective way for organizations to access Copilot services. This plan allows administrators to enable usage-based billing for specific Copilot scenarios, providing users with the ability to use Copilot features without committing to a full license.

This article provides an overview of the pay-as-you-go plan, its benefits, and pricing details.

## Why pay-as-you-go?

The Microsoft 365 Copilot pay-as-you-go plan offers a flexible and scalable solution for organizations looking to use AI capabilities without the commitment of a full license. When you enable usage-based billing, administrators can better manage costs and provide users with access to Copilot features as needed.

The following services are available for pay-as-you-go billing:

- Microsoft 365 Copilot Chat
- SharePoint agents

### Common use cases

- **Establish usage patterns** - Understand adoption patterns for new apps to determine if prepaid licenses make financial sense for your business.
- **Scalability** - Organizations can scale their usage based on demand, paying only for the usage.

## How does it work?

The pay-as-you-go plan allows administrators to set up billing and enable users to access declarative agents on a usage basis. You can manage billing, view costs, set spending budgets, and turn off services as needed.

The following administrator roles in the [Microsoft 365 admin center](https://admin.microsoft.com) can view and manage pay-as-you-go:

- Global administrator
- Billing administrator

- AI administrator
- Global reader (read-only access)

## Billing process

The billing process requires two steps:

1. Add a billing policy
2. Connect billing policy to Copilot services  

### Add a billing policy

The billing policy acts as a distinct billing identifier that can be associated with a group responsible for the incurred cost. The main objectives of a pay-as-you-go billing policy are:

- To allocate billing responsibilities across departments
- To facilitate the reuse of billing configurations across various pay-as-you-go scenarios
- To enable administrators to enforce governance
- To link users to a policy, establishing billing rules for a group of users

As an admin, you can add a budget limit to a billing policy and configure the budget to send email notifications when certain percentage milestones are reached.

For the steps to add or update a billing policy and add a budget, see [Set up pay-as-you-go for Microsoft 365 Copilot](setup.md).

#### What you need to know

- **Creating a billing policy** defines the billing infrastructure for pay-as-you-go that consists of an Azure subscription and a set of users. Creating a billing policy doesn't complete the billing setup. The billing policy must be connected to the Copilot service to complete the setup.

- **Deleting a billing policy** removes the billing infrastructure. Any connected services are disconnected from pay-as-you-go billing.

### Connect billing policy to Copilot services

After you create a billing policy, the admin must link it to a Copilot service, such as Microsoft 365 Copilot Chat or SharePoint agents. This connection enables all users covered by the billing policy to access the Copilot service.  

Admins can disconnect a billing policy when it's no longer needed for the service. Upon disconnection, users linked to that billing policy lose access to the metered agents in the Copilot service.  

The following conditions apply when managing billing policies:

- Admins can connect or disconnect a billing policy one at a time.
- Disconnect an existing "all users" billing policy before connecting to a user-specific billing policy.

### Process for new feature releases

In the future, new features using pay-as-you-go billing are announced in a [message center](/microsoft-365/admin/manage/message-center) post. When the features become available, users in your organization can take advantage of those capabilities. Pay-as-you-go billing is disabled by default. A global admin or owner to the subscription can enable or disable Microsoft 365 pay-as-you-go features in the [Microsoft 365 admin center](https://admin.microsoft.com).

## Pricing details

When you use a Microsoft pay-as-you-go service linked to an Azure subscription, the service gets billed using the Azure subscription that you specified when you set up pay-as-you-go billing. The Azure subscription uses the Azure meter set up for the service.

To learn more about meters, see [Meters for Microsoft 365 pay-as-you-go](meters.md).

## Monitoring and billing

The organization's usage of the pay-as-you-go service can be monitored in the [Microsoft 365 admin center](https://admin.microsoft.com) > [Cost Management](/microsoft-365/commerce/use-cost-mgmt) page for each Microsoft 365 pay-as-you-go service that you use.

Administrators can also view the cost breakdown and analysis in [Microsoft Cost Management](/azure/cost-management-billing/costs/overview-cost-management).

To learn more, see [View costs and billing for Microsoft 365 Copilot pay-as-you-go](view-cost.md).

## Related articles

- [Set up pay-as-you-go for Microsoft 365 Copilot](setup.md) (article)
- [Meters for Microsoft 365 Copilot pay-as-you-go](meters.md) (article)
- [View costs and billing for Microsoft 365 Copilot pay-as-you-go](view-cost.md) (article)
