---
title: Set up your standalone EOP service
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

ms.custom: 
  - seo-marvel-apr2020
localization_priority: Normal
ms.assetid: d74c6ddf-11b0-43ee-b298-8bb0340895f0
description: Admins can learn how to set up standalone Exchange Online Protection (EOP) to protect on-premises email environments.
ms.technology: mdo
ms.prod: m365-security
---

# Set up your standalone EOP service

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
-  [Exchange Online Protection standalone](exchange-online-protection-overview.md)

This topic explains how to set up standalone Exchange Online Protection (EOP). If you landed here from the Office 365 domains wizard, go back to the Office 365 domains wizard if you don't want to use Exchange Online Protection. If you're looking for more information on how to configure connectors, see [Configure mail flow using connectors in Office 365](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).

> [!NOTE]
> This topic assumes you have on-premises mailboxes and you want to protect them with EOP, which is known as a standalone scenario. If you want to host all of your mailboxes in the cloud with Exchange Online, you don't have to complete all of the steps in this article. Go to [Compare Exchange Online plans](https://products.office.com/exchange/compare-microsoft-exchange-online-plans) to sign up and purchase cloud mailboxes.
>
> If you want to host some of your mailboxes on premises and some in the cloud, this is known as a hybrid scenario. It requires more advanced mail-flow settings. [Exchange Server hybrid deployments](https://docs.microsoft.com/exchange/exchange-hybrid) explains hybrid mail flow and has links to resources that show how to set it up.

## What do you need to know before you begin?

- Estimated time to complete this task: 1 hour

- You need to be assigned permissions in Exchange Online Protection before you can do the procedures in this article. Specifically, you need the **Remote and Accepted Domains** role, which is assigned to the **Organization Management** (global admins) and **Mail Flow Administrator** role groups by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- If you haven't signed up for EOP, visit [Exchange Online Protection](https://products.office.com/exchange/exchange-email-security-spam-protection) and choose to buy or try the service.

- For information about keyboard shortcuts that may apply to the procedures in this article, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://social.technet.microsoft.com/Forums/forefront/home?forum=FOPE) forum.

## Step 1: Use the Microsoft 365 admin center to add and verify your domain

1. In the [Microsoft 365 admin center](../../admin/admin-overview/about-the-admin-center.md), go to **Setup** to add your domain to the service.

2. Follow the steps to add the applicable DNS records to your DNS-hosting provider in order to verify domain ownership.

> [!TIP]
> [Add a domain to Office 365](../../admin/setup/add-domain.md) and [Create DNS records at any DNS hosting provider for Office 365](../../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md) are helpful resources to reference as you add your domain to the service and configure DNS.

## Step 2: Add recipients and optionally enable DBEB

Before configuring your mail to flow to and from the EOP service, we recommend adding your recipients to the service. There are several ways in which you can do this, as documented in [Manage mail users in EOP](manage-mail-users-in-eop.md). Also, if you want to enable Directory Based Edge Blocking (DBEB) in order to enforce recipient verification within the service after adding your recipients, you need to set your domain type to Authoritative. For more information about DBEB, see [Use Directory Based Edge Blocking to Reject Messages Sent to Invalid Recipients](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-directory-based-edge-blocking).

## Step 3: Use the EAC to set up mail flow

Create connectors in the Exchange admin center (EAC) that enable mail flow between EOP and your on-premises mail servers. For detailed instructions, see [Set up connectors to route mail between Microsoft 365 and your own email servers](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-to-route-mail).

### How do you know this task worked?

Check mail flow between the service and your environment. For more information, see [Test mail flow by validating your Microsoft 365 connectors](https://docs.microsoft.com/exchange/mail-flow-best-practices/test-mail-flow).

## Step 4: Allow inbound port 25 SMTP access

After you configured connectors, wait 72 hours to allow propagation of your DNS record updates. Following this, restrict inbound port-25 SMTP traffic on your firewall or mail servers to accept mail only from the EOP datacenters, specifically from the IP addresses listed at [Exchange Online Protection IP addresses](../../enterprise/urls-and-ip-address-ranges.md). This protects your on-premises environment by limiting the scope of inbound messages you can receive. Additionally, if you have settings on your mail server that control the IP addresses allowed to connect for mail relay, update those settings as well.

> [!TIP]
> Configure settings on the SMTP server with a connection time out of 60 seconds. This setting is acceptable for most situations, allowing for some delay in the case of a message sent with a large attachment, for example.

## Step 5: Ensure that spam is routed to each user's Junk Email folder

To ensure that spam (junk) email is routed correctly to each user's Junk Email folder, you must perform a couple of configuration steps. The steps are provided in [Configure standalone EOP to deliver spam to the Junk Email folder in hybrid environments](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md).

If you don't want to move messages to each user's Junk Email folder, you may choose another action by editing your anti-spam policies. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

## Step 6: Use the Microsoft 365 admin center to point your MX record to EOP

Follow the domain configuration steps to update your MX record for your domain, so that your inbound email flows through EOP. Be sure to point your MX record directly to EOP as opposed to having a third-party filtering service relay email to EOP. For more information, you can again reference [Create DNS records for Office 365](../../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).

> [!NOTE]
> If you must point your MX record to another server or service that sits in front of EOP, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

### How do you know this task worked?

At this point, you've verified service delivery for a properly configured Outbound on-premises connector, and you've verified that your MX record is pointing to EOP. You can now choose to run the following additional tests to verify that an email will be successfully delivered by the service to your on-premises environment:

- Check mail flow between the service and your environment. For more information, see [Test mail flow by validating your Microsoft 365 connectors](https://docs.microsoft.com/exchange/mail-flow-best-practices/test-mail-flow).

- Send an email message from any web-based email account to a mail recipient in your organization whose domain matches the domain you added to the service. Confirm delivery of the message to the on-premises mailbox using Microsoft Outlook or another email client.

- If you want to run an outbound email test, you can send an email message from a user in your organization to a web-based email account and confirm that the message is received.

> [!TIP]
> When you've completed your setup, you don't have to perform extra steps to make EOP remove spam and malware. EOP removes spam and malware automatically. However, you can fine tune your settings based on your business requirements. For more information, see [Anti-spam and anti-malware protection in Office 365](anti-spam-and-anti-malware-protection.md) and [Configure spoof intelligence](learn-about-spoof-intelligence.md).
>
> Now that your service is running, we recommend reading [Best practices for configuring EOP](best-practices-for-configuring-eop.md), which describes recommended settings and considerations for after you set up EOP.
