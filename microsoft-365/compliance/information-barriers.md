---
title: "Learn about information barriers"
description: "Learn about information barriers in Microsoft Purview."
keywords: Microsoft 365, Microsoft Purview, compliance, information barriers
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
ms.localizationpriority: null
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
---

# Learn about information barriers

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Microsoft cloud services include powerful communication and collaboration capabilities. But suppose that you want to restrict communication and collaboration between two groups to avoid a conflict of interest from occurring in your organization. Or, perhaps you want to restrict communication and collaboration between certain people inside your organization in order to safeguard internal information. Microsoft 365 enables communication and collaboration across groups and organizations, so is there a way to restrict communication and collaboration  among specific groups of users when necessary? With Microsoft Purview Information Barriers, you can!

Microsoft Teams, SharePoint Online, and OneDrive for Business support information barriers. Assuming your [subscription](#required-licenses-and-permissions) includes information barriers, a compliance administrator, or information barriers administrator can define policies to allow or prevent communications between groups of users in Microsoft Teams. Information barrier policies can be used for situations like these:

- User in the day trader group should not communicate or share files with the marketing team
- Finance personnel working on confidential company information should not communicate or share files with certain groups within their organization
- An internal team with trade secret material should not call or chat online with people in certain groups within their organization
- A research team should only call or chat online with a product development team
- A site for day trader group should not be shared or accessed by anyone outside the day trader group

> [!IMPORTANT]
> Information barriers ***only supports*** two way restrictions. One way restrictions, such as marketing can communicate and collaborate with day traders, but day traders cannot communicate and collaborate with marketing ***is not supported***.

For all of these example scenarios (and more), information barrier policies can be defined to prevent or allow communications and collaboration in Microsoft Teams, SharePoint Online and OneDrive. Such policies can prevent people from calling or chatting with those they shouldn't, or enable people to communicate only with specific groups in Microsoft Teams. With information barrier policies in effect, whenever users who are covered by those policies attempt to communicate and collaborate with others in Microsoft Teams, SharePoint Online or OneDrive checks are done to prevent (or allow) communication and collaboration (as defined by information barrier policies).

To learn more about the user experience with information barriers, see:

- [Information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams)
- [Information barriers in SharePoint Online](/sharepoint/information-barriers)
- [Information barriers in OneDrive](/onedrive/information-barriers)

> [!IMPORTANT]
> Currently, information barriers do not apply to email communications. In addition, information barriers are independent from [compliance boundaries](set-up-compliance-boundaries.md).<p> Before you define and apply information barrier policies, make sure your organization does not have [Exchange address book policies](/exchange/address-books/address-book-policies/address-book-policies) in effect. (Information barriers are based on address book policies.)

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

To learn more about the user experience with information barriers, see [information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams).

In SharePoint Online and OneDrive, information barrier policies determine and prevent the following kinds of unauthorized collaborations:

- Adding a member to a site
- Accessing site or content by a user
- Sharing site or content with another user
- Searching a site

To learn more about the user experience with information barriers, see [information barriers in SharePoint Online](/sharepoint/information-barriers)

## Required licenses and permissions

Before you get started with insider risk management, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) and any add-ons. To access and use information barriers, your organization must have one of the following subscriptions or add-ons:

- Microsoft 365 E5/A5 subscription (paid or trial version)
- Office 365 E5/A5/A3/A1 subscription (paid or trial version)
- Office 365 Advanced Compliance add-on (no longer available for new subscriptions)
- Microsoft 365 E3/A3/A1 subscription + the Microsoft 365 E5/A5 Compliance add-on
- Microsoft 365 E3/A3/A1 subscription + the Microsoft 365 E5/A5 Insider Risk Management add-on

For more information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

To [define or edit information barrier policies](information-barriers-policies.md), you must be assigned one of the following roles:

- Microsoft 365 global administrator
- Office 365 global administrator
- Compliance administrator
- IB Compliance Management

(To learn more about roles and permissions, see [Permissions in the Office 365 Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).)

You must be familiar with PowerShell cmdlets in order to define, validate, or edit information barrier policies. Although we provide several examples of PowerShell cmdlets in the [how-to article](information-barriers-policies.md), you'll need to know other details, such as parameters, for your organization.

## Next steps

- [Learn more about information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams)
- [Learn more about information barriers in SharePoint Online](/sharepoint/information-barriers)
- [Learn more about information barriers in OneDrive](/onedrive/information-barriers)
- [See the attributes that can be used for information barrier policies](information-barriers-attributes.md)
- [Define policies for information barriers](information-barriers-policies.md)
- [Edit (or remove) information barrier policies](information-barriers-edit-segments-policies.md)
