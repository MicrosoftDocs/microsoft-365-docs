---
title: "Understand subscriptions and licenses in Microsoft 365 for business"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: shegu, nicholak
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_licensing
- okr_smb
- AdminSurgePortfolio
- manage_licenses
- AdminTemplateSet
search.appverid: MET150
description: "Learn the difference between subscriptions and licenses, who can assign licenses, and what happens when you assign a license in  Microsoft 365 for business."
ms.date: 01/06/2025
---

# Understand subscriptions and licenses in Microsoft 365 for business

When you buy a subscription to Microsoft 365 for business, you sign up for a set of apps and services that you pay for on a recurring basis. The applications and services that you receive as part of your subscription depend on which product you purchased, such as Microsoft 365 Apps for business or Microsoft 365 Business Standard. You can see what comes with each product on the [Microsoft 365 for small and medium-sized businesses](https://www.microsoft.com/microsoft-365/business/compare-all-microsoft-365-business-products) page.

When you buy a subscription, you specify the number of licenses that you need, based on how many people you have in your organization. After you buy a subscription, you create accounts for people in your organization, and then assign a license to each person. As your organizational needs change, you can buy more licenses to accommodate new people, or reassign licenses to other users when someone leaves your organization.

If you have more than one subscription, you can assign licenses to different people for each subscription. For example, you can assign all of your users to all Microsoft 365 productivity apps and services as part of a Microsoft 365 Business Standard subscription. You can also assign a subset of users to Visio Online through a separate Visio subscription.

## How many devices can people install Microsoft 365 on?

If your subscription includes any of the following products, each person can install Microsoft 365 on up to five PCs or Mac, five tablets, and five phones.

:::row:::
   :::column span="":::
        - Microsoft 365 Apps for business
        - Microsoft 365 Apps for enterprise
        - Microsoft 365 Business Standard
        - Microsoft 365 Business Premium
        - Microsoft 365 A3
        - Microsoft 365 A5
   :::column-end:::
   :::column span="":::
        - Microsoft 365 E3
        - Microsoft 365 E5
        - Office 365 A1 Plus
        - Office 365 A3
        - Office 365 A5
        - Office 365 E3
        - Office 365 E5
   :::column-end:::
:::row-end:::

## What happens when you assign a license to someone?

The following table lists what automatically happens when you assign a license to someone:
  
|If the subscription has this service|This automatically happens|
|---|---|
|Exchange Online|A mailbox is created for that person. <br/> To learn about the SLA for this task to be completed, see ["Setting up..." messages in the Microsoft 365 admin center](https://support.microsoft.com/help/2635238/setting-up-messages-in-the-office-365-admin-center).|
|SharePoint Online|Edit permissions to the default SharePoint Online team site are assigned to that person.|
|Microsoft Teams|The person has access to the features associated with the license.|
|Microsoft 365 Apps for enterprise and Microsoft 365 Apps for business|The person can download Microsoft 365 Apps on up to five Macs or PCs, five tablets, and five smartphones.|

## Understand licenses for nonuser mailboxes

You don't need to assign licenses to resource mailboxes, room mailboxes, and shared mailboxes, except when they are over their storage quota of 50 gigabytes (GB). For more about nonuser mailboxes, see the following articles:
  
- [Create a shared mailbox](../../admin/email/create-a-shared-mailbox.md)
- [Remove a license from a shared mailbox](../../admin/email/remove-license-from-shared-mailbox.md)
- [Shared Mailboxes in Exchange Online](/exchange/collaboration-exo/shared-mailboxes) for all other Microsoft 365 plans.

## Who can assign licenses?

Different types of admins can work with licenses in different ways, depending on their roles. The following table lists the most common options. For a complete list of admin roles and privileges, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  
|Admin role|Assign a license|Unassign a license|Buy more licenses|Delete an account|
|---|:---:|:---:|:---:|:---:|
|Billing admin|No|No|Yes|No|
|Global admin|Yes|Yes|Yes|Yes|
|License admin|Yes|Yes|No|No|
|Service Support admin|No|No|No|No|
|User admin|Yes|Yes|No|Yes|

## Related content

[Buy or remove licenses for your business subscription](buy-licenses.md) (article)\
[Assign or unassign licenses for users in the Microsoft 365 admin center](../../admin/manage/assign-licenses-to-users.md) (article)
