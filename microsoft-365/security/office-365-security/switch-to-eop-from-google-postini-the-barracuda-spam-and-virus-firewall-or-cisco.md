---
title: Switch to EOP from another protection service
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
ms.assetid: 81b75194-3b04-48da-8b81-951afbabedde
ms.custom: 
  - seo-marvel-apr2020
description: In this article, you'll learn how to switch to Exchange Online Protection (EOP) from an on-premises email hygiene appliance or cloud-based protection service.
ms.technology: mdo
ms.prod: m365-security
---

# Switch to EOP from Google Postini, the Barracuda Spam and Virus Firewall, or Cisco IronPort

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

 The purpose of this topic is to help you understand the process for switching to Exchange Online Protection (EOP) from an on-premises email hygiene appliance or cloud-based protection service, and then to provide you with help resources to get started. There are many spam-filtering solutions, but the process for switching to EOP is similar in most cases.

If you are new to EOP and you want to read an overview of its features before you decide to switch, start with the [Exchange Online Protection overview](exchange-online-protection-overview.md) topic.

Before you switch to EOP, it's important to think about whether you want to host your EOP-protected mailboxes in the cloud, with Exchange Online, on-premises, or in a hybrid scenario. (Hybrid means that you have some mailboxes hosted on-premises and another portion hosted with Exchange Online.) Each of these hosting scenarios: cloud, on-premises, and hybrid, is possible, but the setup steps can vary. Here are a few considerations to help you choose the appropriate deployment:

- **EOP protection with on-premises mailboxes**: This scenario is appropriate if you have existing mail-hosting infrastructure you want to use, or you have business requirements to keep mailboxes on-premises, and you want to use EOP as your cloud-based email protection. [Switch to EOP standalone](#switch-to-eop-standalone) describes this scenario in more detail.

- **EOP protection with Exchange Online mailboxes**: This scenario is appropriate if you want EOP protection and all of your mailboxes hosted in the cloud. It can help you reduce complexity, because you don't have to maintain on-premises messaging servers. [Switch to Exchange Online](#switch-to-exchange-online) describes this scenario.

- **EOP protection with hybrid mailboxes**: Perhaps you want cloud mailboxes, but you need to keep mailboxes for some users on-premises. Choose this scenario if you want some mailboxes hosted on-premises and another portion hosted with Exchange Online. [Switch to a hybrid solution](#switch-to-a-hybrid-solution) describes this scenario.

## Switch to EOP standalone

If you currently host your mailboxes on premises and use an on-premises protection appliance or a cloud messaging-protection service, you can switch to EOP to take advantage of its protection features and availability. To set up EOP in a standalone scenario, which means you host your mailboxes on premises and use EOP to provide email protection, you can follow the steps outlined in [Set up your EOP service](set-up-your-eop-service.md). The topic outlines the steps for setting up EOP protection, which include sign up, adding your domain, and setting up mail flow with connectors.

## Switch to Exchange Online

Perhaps you have on-premises mailboxes protected by an on-premises appliance, and you want to jump to Exchange Online cloud-hosted mailboxes and EOP protection to take advantage of Microsoft 365 cloud messaging and protection features. To get started, you can sign up for Microsoft 365 and add your domain. This scenario doesn't require you to set up connectors, because there isn't any routing to on-premises mailboxes. Begin at [Get the latest advanced features with Microsoft 365](https://www.microsoft.com/microsoft-365/business/compare-more-office-365-for-business-plans) to sign-up and get familiar with its features.

During the Microsoft 365 setup process, you will create your cloud-based mailbox users.

## Switch to a hybrid solution

You may want to move only a portion of your mailboxes to the cloud because of business requirements or regulatory considerations. When you deploy a hybrid scenario, you can move mailboxes to the cloud as your business requirements dictate. Migrating to a hybrid scenario with EOP protection is more complicated than moving to an all-cloud scenario, but Microsoft provides full hybrid support and ample resources to make the move to hybrid easier.

The best place to start, if you are considering a hybrid deployment, is [Exchange Server hybrid deployments](https://docs.microsoft.com/exchange/exchange-hybrid). Additionally, there are a few different ways you can route mail in a hybrid scenario that are important to understand. [Transport Routing in Exchange hybrid deployments](https://docs.microsoft.com/exchange/transport-routing) explains each type, so you can choose the best routing scenario, based on your business requirements.

## Migration planning

When you decide to switch to EOP, make sure you give special consideration to the following areas:

- **Custom Filtering Rules**: If you have custom filtering or business-policy rules to catch specific spam, we recommend that you try EOP with the default settings for a period of time before you migrate your rules. EOP offers enterprise-level spam protection with the default settings, it may turn out that you don't need to migrate some of your rules to EOP. Of course, if you have rules in place that enforce specific custom business policies, you can create those. [Mail flow rules (transport rules) in Exchange Online Protection](mail-flow-rules-transport-rules-0.md) provides detailed instructions for creating mail flow rules in EOP.

- **IP allow lists and IP block lists**: If you have per-user allow lists and block lists, allow some time to copy the lists to EOP as part of your setup process. For more information about the IP Allow List and IP Block List, see [Configure the connection filter policy](configure-the-connection-filter-policy.md).

- **Secure Communication**: If you have a partner that requires encrypted messaging, we recommend that you set this up in the Exchange admin center. To configure this scenario, see [Set up connectors for secure mail flow with a partner organization](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-for-secure-mail-flow-with-a-partner).

> [!TIP]
> When you switch from an on-premises appliance to EOP, it is possible to leave your appliance or a server in place that performs business rule checks. For instance, if your appliance performs custom filtering on outbound mail, and you want it to continue doing so, you can configure EOP to send mail directly to the appliance for additional filtering, before it is routed to the internet.
