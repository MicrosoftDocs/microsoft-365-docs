---
title: "Learn about information barriers"
description: "Learn about information barriers in Microsoft Purview. Information barriers can help to avoid conflicts of interest and safeguard internal information between users and organizational areas."
keywords: Microsoft 365, Microsoft Purview, compliance, information barriers
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- highpri 
- tier2
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.localizationpriority: null
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
---

# Learn about information barriers

Microsoft Purview Information Barriers (IB) is a compliance solution that allows you to restrict two-way communication and collaboration between groups and users in Microsoft Teams, SharePoint, and OneDrive. Often used in highly regulated industries, IB can help to avoid conflicts of interest and safeguard internal information between users and organizational areas.

When IB policies are in place, users who shouldn't communicate or share files with other specific users won't be able to find, select, chat, or call those users. IB policies automatically put checks in place to detect and prevent unauthorized communication and collaboration among defined groups and users. IB policies are independent from [compliance boundaries](/microsoft-365/compliance/set-up-compliance-boundaries) for eDiscovery investigations that control user content locations that eDiscovery managers can search.

IB policies can allow or prevent communication and collaboration between groups and users for the following example scenarios:

- Users in the *Day Trader* group shouldn't communicate or share files with the *Marketing Team*
- Finance personnel working on confidential company information shouldn't communicate or share files with certain groups within their organization
- An internal team with trade secret material shouldn't call or chat online with people in certain groups within their organization
- A research team should only call or chat online with a product development team
- A SharePoint site for *Day Trader* group shouldn't be shared or accessed by anyone outside of the *Day Trader* group

> [!IMPORTANT]
> Information barriers **only supports** two-way communication and collaboration restrictions. For example, a scenario where Marketing can communicate and collaborate with Day Traders, but Day Traders cannot communicate and collaborate with Marketing **isn't supported**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Information barriers and Microsoft Teams

In Microsoft Teams, IB policies determine and prevent the following kinds of unauthorized communication and collaboration:

- Searching for a user
- Adding a member to a team
- Starting a chat session with someone
- Starting a group chat
- Inviting someone to join a meeting
- Sharing a screen
- Placing a call
- Sharing a file with another user
- Access to a file through sharing a link

If the users conducting these activities in Microsoft Teams are included in an IB policy to prevent the activity, they won't be able to proceed. In addition, everyone included in an IB policy can be potentially blocked from communicating with other users in Microsoft Teams. When people affected by IB policies are part of the same team or group chat, they may be removed from those chat sessions and further communication with the group may not be allowed.

For more information, see [information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams).

## Information barriers and SharePoint and OneDrive

In SharePoint and OneDrive, IB policies detect and prevent the following kinds of unauthorized collaboration:

- Adding a member to a site
- Accessing site or content by a user
- Sharing site or content with another user
- Searching a site

For more information, see [Information barriers in SharePoint](/sharepoint/information-barriers) and [Information barriers in OneDrive](/onedrive/information-barriers).

## Information barriers and Exchange Online

IB policies aren't available to restrict communication and collaboration between groups and users in email messages. IB policies are based on [Exchange Online Address Book Policies (ABPs)](/exchange/address-books/address-book-policies/address-book-policies). ABPs allow organizations to virtually assign users into specific groups in order to provide customized views of the organization's global address book (GAL). When IB policies are created, ABPs for the policies are automatically created. As IB policies are added in your organization, the structure and behavior of your GAL will change to comply with IB policies.

Before you define and apply IB policies, you must remove all existing Exchange address book policies in your organization. IB policies are based on address book policies and existing ABPs policies aren't compatible with the ABPs created by IB. To remove your existing address book policies, see [Remove an address book policy in Exchange Online](/exchange/address-books/address-book-policies/remove-an-address-book-policy). Once IB policies are enabled and if you have hierarchical address book enabled, all users not included in an IB segment will see the [hierarchical address book](/exchange/address-books/hierarchical-address-books/hierarchical-address-books) in Exchange online.

Only Exchange Online deployments are currently supported for IB policies. If your organization needs to define and control email communications, consider using [Exchange mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).

## Ready to get started?

- [Get started with information barriers](information-barriers-policies.md)
- [Manage IB policies](information-barriers-edit-segments-policies.md)
- [See the attributes that can be used for IB policies](information-barriers-attributes.md)
