---
title: "Learn about information barriers in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
localization_priority: None
description: "Use information barriers to ensure communication compliance using Microsoft Teams within your organization."
ms.custom: seo-marvel-apr2020
---

# Learn about information barriers in Microsoft 365

Microsoft cloud services include powerful communication and collaboration capabilities. But suppose that you want to restrict communication and collaboration between two groups to avoid a conflict of interest from occurring in your organization. Or, perhaps you want to restrict communication and collaboration between certain people inside your organization in order to safeguard internal information. Microsoft 365 enables communication and collaboration across groups and organizations, so is there a way to restrict communication and collaboration  among specific groups of users when necessary? With information barriers, you can! 

Information barriers is now supported in Microsoft Teams, SharePoint Online, and OneDrive for Business. Assuming your [subscription](#required-licenses-and-permissions) includes information barriers, a compliance administrator or information barriers administrator can define policies to allow or prevent communication and collaboaration between groups of users in Microsoft Teams, SharePoint Online and OneDrive. Information barrier policies can be used for situations like these:

- User in the day trader group should not communicate or share files with the marketing team
- Finance personnel working on confidential company information should not communicate or share files with certain groups within their organization
- An internal team with trade secret material should not call or chat online with people in certain groups within their organization
- A research team should only call or chat online with a product development team
- A site for day trader group should not be shared or accessed by anyone outside the day trader group

> [!IMPORTANT]
> Information barriers ***only supports*** two way restrictions. One way restrictions, such as marketing can communicate and collaborate with day traders, but day traders cannot communicate and collaborate with marketing ***is not supported***.

For all of these example scenarios (and more), information barrier policies can be defined to prevent or allow communications and collaboration in Microsoft Teams, SharePoint Online and OneDrive. Such policies can prevent people from calling or chatting with those they shouldn't, or enable people to communicate only with specific groups in Microsoft Teams. With information barrier policies in effect, whenever users who are covered by those policies attempt to communicate and collaborate with others in Microsoft Teams, SharePoint Online or OneDrive checks are done to prevent (or allow) communication and collaboration (as defined by information barrier policies). To learn more about the user experience with information barriers, see [information barriers in Microsoft Teams](https://docs.microsoft.com/MicrosoftTeams/information-barriers-in-teams) and [information barriers in SharePoint Online](https://docs.microsoft.com/sharepoint/information-barriers)

> [!IMPORTANT]
> Currently, information barriers do not apply to email communications. In addition, information barriers are independent from [compliance boundaries](set-up-compliance-boundaries.md).<p>Before you define and apply information barrier policies, make sure your organization does not have [Exchange address book policies](https://docs.microsoft.com/exchange/address-books/address-book-policies/address-book-policies) in effect. (Information barriers are based on address book policies.) 

## What happens with information barriers

When information barrier policies are in place, people who should not communicate or share files with other specific users won't be able to find, select, chat, or call those users. With information barriers, checks are in place to prevent unauthorized communication and collaboration. 

Information barriers applies to Microsoft Teams (chats and channels), SharePoint Online and OneDrive. 
In Microsoft Teams, information barrier policies determine and prevent the following kinds of unauthorized communications:

- Searching for a user
- Adding a member to a team
- Starting a chat session with someone
- Starting a group chat
- Inviting someone to join a meeting
- Sharing a screen
- Placing a call
- Sharing a file with another user
- Access to file through sharing link 

If the people involved are included in an information barrier policy to prevent the activity, they will not be able to proceed. In addition, potentially, everyone included in an information barrier policy can be blocked from communicating with others in Microsoft Teams. When people affected by information barrier policies are part of the same team or group chat, they might be removed from those chat sessions and further communication with the group might not be allowed.

To learn more about the user experience with information barriers, see [information barriers in Microsoft Teams](https://docs.microsoft.com/MicrosoftTeams/information-barriers-in-teams).

In SharePoint Online and OneDrive, information barrier policies determine and prevent the following kinds of unauthorized collaborations:

- Adding a member to a site
- Accessing site or content by a user
- Sharing site or content with another user
- Searching a site 

To learn more about the user experience with information barriers, see [information barriers in SharePoint Online](https://docs.microsoft.com/sharepoint/information-barriers)

## Required licenses and permissions

Information barriers are rolling out now, and are included in subscriptions, such as:

- Microsoft 365 E5/A5
- Office 365 E5/A5
- Office 365 Advanced Compliance
- Microsoft 365 Compliance E5/A5
- Microsoft 365 Insider Risk Management

For more details, see [Microsoft 365 licensing guidance for security & compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

To [define or edit information barrier policies](information-barriers-policies.md), you must be assigned one of the following roles:

- Microsoft 365 global administrator
- Office 365 global administrator
- Compliance administrator
- IB Compliance Management (this is a new role!)

(To learn more about roles and permissions, see [Permissions in the Office 365 Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).)

You must be familiar with PowerShell cmdlets in order to define, validate, or edit information barrier policies. Although we provide several examples of PowerShell cmdlets in the [how-to article](information-barriers-policies.md), you'll need to know additional details, such as parameters, for your organization.

## Next steps

- [Learn more about information barriers in Microsoft Teams](https://docs.microsoft.com/MicrosoftTeams/information-barriers-in-teams)
- [See the attributes that can be used for information barrier policies](information-barriers-attributes.md)
- [Define policies for information barriers](information-barriers-policies.md)
- [Edit (or remove) information barrier policies](information-barriers-edit-segments-policies.md)
- [Learn more about Information barriers in SharePoint Online](https://docs.microsoft.com/sharepoint/information-barriers)
- [Learn more about Information barriers in OneDrive for Business](https://docs.microsoft.com/onedrive/information-barriers)
