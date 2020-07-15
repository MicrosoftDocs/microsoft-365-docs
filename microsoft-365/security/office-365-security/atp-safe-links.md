---
title: "ATP Safe Links"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: Admin
ms.topic: overview
f1_keywords:
- '197503'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- ZVO160
- ZXL160
- ZPP160
- ZWD160
ms.assetid: dd6a1fef-ec4a-4cf4-a25a-bb591c5811e3
description: "In this article, you'll learn how to use Safe links to protect your organization from phishing and other attacks."
---

# ATP Safe Links

## Overview of Office 365 ATP Safe Links

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](office-365-atp.md). If you are using Outlook.com, Microsoft 365 Family, or Microsoft 365 Personal, and you're looking for information about Safe Links in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Office 365 ATP Safe Links (part of [Office 365 Advanced Threat Protection](office-365-atp.md)) can help protect your organization by providing time-of-click verification of web addresses (URLs) in [email messages](how-atp-safe-links-works.md#how-atp-safe-links-works-with-urls-in-email) and [Office documents](how-atp-safe-links-works.md#how-atp-safe-links-works-with-urls-in-office-documents). Protection is defined through [ATP Safe Links policies](set-up-atp-safe-links-policies.md) that are set by your Microsoft 365 security team.

Once your ATP Safe Links policies are in place, global administrators, security administrators, and security readers can [view reports for Advanced Threat Protection](view-reports-for-atp.md). The information in those reports can help your security team take further steps to protect your organization or research security incidents.

As [new features are added to ATP](office-365-atp.md#new-features-in-office-365-atp), your Microsoft 365 security team can add or edit your organization's [ATP Safe Links policies](set-up-atp-safe-links-policies.md). In addition, you might notice changes and improvements, such as our newly revised [warning pages](atp-safe-links-warning-pages.md) and native link rendering in Outlook (introduced in Microsoft 365 Apps for enterprise version 1809).

## How to get ATP Safe Links protection

**First, make sure your subscription includes [Office 365 Advanced Threat Protection](office-365-atp.md)** Plan 1 or Plan 2. Office 365 ATP is included in subscriptions, such as [Microsoft 365 Enterprise E5](https://www.microsoft.com/microsoft-365/enterprise/home), [Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business), Office 365 Enterprise E5, Office 365 Education A5, etc. If your organization has a Microsoft 365 subscription that does not include Office 365 ATP, you can potentially purchase ATP as an add-on. For more information, see the following resources: 

- [Office 365 Advanced Threat Protection plans and pricing](https://products.office.com/exchange/advance-threat-protection)

- [Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)

**Next, make sure your ATP Safe Links policies are defined**. (See [Set up Office 365 ATP Safe Links policies](set-up-atp-safe-links-policies.md).)
ATP Safe Links features are active when:

- ATP Safe Links policies are set up for email and for Office documents. (See [Set up ATP safe links policies](set-up-atp-safe-links-policies.md).)

- Microsoft 365 client apps are configured to use Modern Authentication (this is for ATP Safe Links protection in Office documents). (See [Modern Authentication for Office 2016](https://docs.microsoft.com/office365/enterprise/modern-auth-for-office-2013-and-2016).)

- Users have signed in using their work or school account. (See [Sign in to Office](https://support.microsoft.com/office/b9582171-fd1f-4284-9846-bdd72bb28426).)

- Your organization's email passes through Exchange Online Protection.

**Also make sure you have the necessary permissions**. To define (or edit) ATP policies, you must be assigned an appropriate role. Some examples are described in the following table:

|Role|Where/how assigned|
|---------|---------|
|global administrator|The person who signs up to buy Microsoft 365 is a global admin by default. (See [About Microsoft 365 admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles) to learn more.)|
|Security Administrator|Azure Active Directory admin center (<https://aad.portal.azure.com>)|
|Exchange Online Organization Management|Exchange admin center (<https://outlook.office365.com/ecp>) <br>or <br>  PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell))|

## How to make sure ATP Safe Links protection is in place

As a global administrator or security administrator, be sure to review your [ATP Safe Links policies](set-up-atp-safe-links-policies.md) regularly. ATP Safe Links policies determine whether protection applies to hyperlinks in email messages only, or to URLs in Office documents as well.

After ATP Safe Links policies are in place, your organization's security team can see see how ATP Safe Links protection is working for your organization is by [viewing reports for Advanced Threat Protection](view-reports-for-atp.md).

## Example scenarios

The following table describes some example scenarios where ATP Safe Links protection might or might not be in place. (In all of these cases, we assume the organization has Office 365 Enterprise E5.)

|Example scenario|Does ATP Safe Links protection apply in this case?|
|:-----|:-----|
|Jean is a member of a group that has ATP Safe Links policies covering URLs in email and Office documents. Jean opens a PowerPoint presentation that someone sent, and then clicks a URL in the presentation.|Yes. The ATP Safe Links policies that are defined apply to Jean's group, Jean's email, and Word, Excel, PowerPoint, or Visio documents that Jean opens, so long as Jean is signed in and using Microsoft 365 Apps for enterprise on Windows, iOS, or Android devices.|
|In Chris's organization, no global or security administrators have defined any ATP safe links policies yet. Chris receives an email that contains a URL to a malicious website. Chris is unaware the URL is malicious and clicks the link.|No. The default policy that covers URLs for everyone in the organization must be defined in order for protection to be in place.|
|In Pat's organization, no global or security administrators have defined or edited any ATP Safe Links policies yet. Pat opens a Word document and clicks a URL in the file.|No. A policy that includes Office documents must be defined in order for protection to be in place. See [Set up ATP Safe Links policies in Office 365](set-up-atp-safe-links-policies.md).|
|Lee's organization has a ATP Safe Links policy that has `https://tailspintoys.com` listed as a blocked website. Lee receives an email message that contains a URL to `https://tailspintoys.com/aboutus/trythispage`. Lee clicks the URL.|It depends on whether the entire site and all its subpages are included in the list of blocked URLs. See [Set up a custom blocked URLs list using ATP Safe Links](set-up-a-custom-blocked-urls-list-atp.md).|
|Jamie, Jean's colleague, sends an email to Jean, not knowing that the email contains a malicious URL.|It depends on whether ATP Safe Links policies are defined for email sent within the organization. See [Set up ATP Safe Links policies in Office 365](set-up-atp-safe-links-policies.md).|
