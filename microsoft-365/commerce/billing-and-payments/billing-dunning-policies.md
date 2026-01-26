---
title: "Understand the credit and debit card billing and dunning policies for Microsoft business invoices"
f1.keywords:
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: ajbanerj, jaswal
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-business
ms.subservice: m365-commerce-management
ms.localizationpriority: medium
ms.collection:
- Tier1
- M365-subscription-management
- Adm_O365
- operations-pod
ms.custom:
- commerce_billing
- admindeeplinkMAC
- AdminTemplateSet
search.appverid: MET150
description: "Learn how the billing and dunning policies work for credit or debit card payment for Microsoft business accounts."
ms.date: 09/19/2025
---

# Understand the credit and debit card billing and dunning policies for Microsoft business invoices

> [!IMPORTANT]
> This article only applies to commercial customers with a Microsoft Customer Agreement.

This article explains the billing and dunning policies that apply to customers who pay their invoices with a credit or debit card. It explains the process that Microsoft follows when an invoice is unpaid, and describes the difference between regular and accelerated dunning cycles. This article also explains how chargebacks are handled, and provides recommendations on how to prevent service deactivation.

## Process for unpaid invoices

After an invoice is generated, we charge the credit card on file on the due date mentioned on the invoice. If the charge attempt is unsuccessful, we notify you via email about the payment failure and ask you to review your credit card details. At the same time, the invoice enters the *dunning* process. The dunning process involves a series of reminders that we send to you while we continue to attempt to charge the credit or debit card. As the invoice ages in the dunning cycle, assets and subscriptions are subject to deactivation and eventual deletion of data if the invoice remains unpaid. The timeline for service deactivation ranges from two to 30 days, depending on the customer type and scenario.

There are two types of dunning cases:

1. **Regular Dunning:** In regular cases, the dunning cycle follows a standard schedule with progressive reminders and repeated attempts to charge the card on file. Service deactivation and deletion occur gradually based on the aging of the invoice.
2. **Accelerated Dunning:** In cases that involve credit or debit card fraud or nonretriable declines during charge attempts, the dunning cycle is more aggressive. Notifications and service impacts occur on an expedited schedule to mitigate risk.

## Process for chargebacks

If you initially pay an invoice but later initiate a chargeback that we accept, the associated subscriptions are treated as unpaid. In such cases, we follow an aggressive schedule, in which unpaid assets are deactivated within one day of the chargeback acceptance.

## Prevent service deactivation

To avoid service interruptions and asset deletions due to unpaid invoices, we recommend that you take the following actions:

- Ensure that credit card information on file is accurate and up to date.
- Monitor dunning emails closely for notifications regarding payment failures.
- Make payments promptly before the date quoted in the dunning emails.

## Related content

[Pay your Microsoft business invoice by using a credit or debit card](pay-for-your-subscription.md) (article)
