---
title: "ATP Safe Attachments"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: Admin
ms.date: 05/17/2019
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 6e13311e-92ae-495e-a619-56d770199170
ms.collection:
- M365-security-compliance
description: "The Safe Attachments feature provides time-of-click verification of email attachments. Use Safe Attachments to protect your organization from malicious files people send or receive in email."
---

# ATP Safe Attachments

## Overview of Office 365 ATP Safe Attachments

ATP Safe Attachments (along with [ATP Safe Links](atp-safe-links.md)) is part of [Office 365 Advanced Threat Protection](office-365-atp.md) (ATP). The ATP Safe Attachments feature checks to see if email attachments are malicious, and then takes action to protect your organization. The ATP Safe Attachments feature protects your organization according to [ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md) that are set by your Office 365 global or security administrators.

ATP protection can also be extended to files in SharePoint Online, OneDrive for Business, and Microsoft Teams. To learn more, see [Office 365 Advanced Threat Protection for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md).

## How to get ATP Safe Attachments

First, make sure your subscription includes [Advanced Threat Protection](office-365-atp.md). ATP is included in in subscriptions, such as [Microsoft 365 E5](https://www.microsoft.com/microsoft-365/enterprise/home), [Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business), Office 365 E5, Office 365 A5, etc. If your organization has an Office 365 subscription that does not include Office 365 ATP, you can potentially purchase ATP as an add-on. For more information, see [Office 365 Advanced Threat Protection plans and pricing](https://products.office.com/exchange/advance-threat-protection) and the [Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

Next, make sure your ATP Safe Attachments policies are defined. (See [Set up Office 365 ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md)) ATP Safe Attachments features are active when:

- ATP Safe Attachments policies are set up. (See [Set up ATP Safe Attachments policies in Office 365](set-up-atp-safe-attachments-policies.md).)

- Users have signed into Office 365 using their work or school account. (See [Sign in to Office or Office 365](https://support.office.com/article/b9582171-fd1f-4284-9846-bdd72bb28426).)

To define (or edit) ATP policies, you must be assigned an appropriate role. Some examples are described in the following table:

|Role|Where/how assigned|
|---------|---------|
|global administrator|The person who signs up to buy Office 365 is a global admin by default. (See [About Office 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles) to learn more.)|
|Security Administrator|Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com))|
|Exchange Online Organization Management|Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) <br>or <br>  PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell))|

## How to know if ATP Safe Attachments protection is in place

After you have [defined (or reviewed) your ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md), one good way to see how the service is working is by [viewing reports for Advanced Threat Protection](view-reports-for-atp.md).

The following table describes some example scenarios. In all of these cases, we assume the organization has an Office 365 subscription that includes Advanced Threat Protection.

|**Example scenario**|**Does ATP Safe Attachments protection apply in this case?**|
|:-----|:-----|
|Pat's organization has Office 365 E5, but no one has defined any policies for ATP Safe Attachments yet.|No. Although the feature is available, at least one ATP Safe Attachments policy must be defined in order for ATP Safe Attachments protection to be in place.|
|Lee is an employee in the sales department at Contoso. Lee's organization has an ATP Safe Attachments policy in place that applies to finance employees only.|No. In this case, finance employees would have ATP Safe Attachments protection, but other employees, including the sales department, would not until policies that include those groups are defined.|
|Yesterday, an Office 365 administrator at Jean's organization set up an ATP Safe Attachments policy that applies to all employees. Earlier today, Jean received an email message that includes an attachment.|Yes. In this example, Jean has a license for Advanced Threat Protection, and an ATP Safe Attachments policy that includes Jean has been defined. It typically takes about 30 minutes for a new policy to take effect across datacenters; since a day has passed in this case, the policy should be in effect.|
|Chris's organization has Office 365 E5 with ATP Safe Attachments policies in place for everyone in the organization. Chris receives an email that has an attachment, and forwards the message to others who are outside the organization.|ATP Safe Attachments protection is in place for messages that Chris receives. If the recipients' organizations also have ATP Safe Attachments policies in place, then the message that Chris forwards would be subject to those policies when the forwarded message arrives.|
|Jamie's organization has ATP Safe Attachments policies in place, and [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md) has been turned on. Jamie assumes that every file in SharePoint Online has been scanned and is safe to open or download.|ATP Safe Attachments protection is in place according to the policies that are defined; however, this does not mean that every single file in SharePoint Online, OneDrive for Business, or Microsoft Teams is scanned. (To learn more, see [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md).)|

## Submitting files for malware analysis

- If you receive a file that you want to ask Microsoft to analyze, visit [Submit a file for malware analysis](https://aka.ms/wdsi/submit).

- If you receive an email message (with or without an attachment) that you want to submit to Microsoft for analysis, use the [Report Message add-in](enable-the-report-message-add-in.md).
