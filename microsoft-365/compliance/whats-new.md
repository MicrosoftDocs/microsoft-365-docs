---
title: "What's new in the Microsoft 365 compliance center"
ms.author: brendonb
author: brendonb
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- SPO160
- MOE150
- MET150
ms.assetid: e3c6df61-8513-499d-ad8e-8a91770bff63
ms.collection:
- M365-security-compliance
description: "We're continuously adding new features to the Microsoft 365 compliance center, fixing issues we learn about, and making changes based on your feedback. Find out what we've been up to this month."
---

# What's new in the Microsoft 365 compliance center

We're continuously adding new features to the [Microsoft 365 compliance center](microsoft-365-compliance-center.md), fixing issues we learn about, and making changes based on your feedback. Take a look below to see what's available for you today. Some features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, try adding yourself to [targeted release](https://docs.microsoft.com/office365/admin/manage/release-options-in-office-365).

> [!TIP]
> Interested in what's going on in other admin centers? Check out these articles:<br>[What's new in the Microsoft 365 admin center](https://docs.microsoft.com/office365/admin/whats-new-in-preview?view=o365-worldwide)<br>[What's new in the SharePoint admin center](https://docs.microsoft.com/sharepoint/what-s-new-in-admin-center)

## September 2019

Wondering why it's quiet on the release front this month? We're heads down building new, innovative compliance solutions that'll be unveiled at [Microsoft Ignite](https://www.microsoft.com/ignite) in November. Stay tuned!

### New encryption options for sensitivity labels 

When configuring encryption for a sensitivity label, you now have two options that lets users assign permissions when they manually apply the label to email and docs:<br>
- When applying the label to **Outlook email**, users can enforce restrictions equivalent to the Do Not Forward option. Recipients will be able to read the message but not forward, print, or copy the content.
- When applying the label to **Word, PowerPoint, and Excel files**, users will be prompted to assign access permissions to specific users and groups.

[Learn more](encryption-sensitivity-labels.md#let-users-assign-permissions)

## August 2019

### Update to data investigations

When performing a data investigation, you can now delete items from their original locations. This means you can delete items from Exchange mailboxes, SharePoint sites, and OneDrive accounts across your organization. Because you collected the items as evidence, you’ll have copies of them retained in the evidence set to you can investigate further or just keep as a reference. [Learn more](manage-data-spillage-incidents.md#step-4-delete-the-spilled-data) 

## July 2019

### New admin roles

We released two new admin roles to help manage security and compliance in your org. Tell all your friends.

- **Compliance data admin**. Users with this role have permissions to protect and track data in the Microsoft 365 compliance center, Microsoft 365 admin center, and Azure. They can also manage everything the Exchange admin center, Compliance Manager, Teams & Skype for Business admin center and create support tickets for Azure and Microsoft 365.
- **Security operator**. Users with this role can manage alerts and have global read-only access to security-related features, including everything in the Microsoft 365 security center, Azure Active Directory, Identity Protection, Privileged Identity Management and Office 365 Security & Compliance Center.

[Learn more about these roles](https://docs.microsoft.com/microsoft-365/security//office-365-security/permissions-microsoft-365-compliance-security)

### Search and filtering for reports

No more scrolling through a sea of reports to find the ones you want. You can now search for reports (based on their titles) and filter on categories like ‘Labels’ and ‘Compliance’ and sources like ‘Office 365’ and 'Microsoft Cloud App Security’.

![Screen capture of the search and filter buttons for reports with an applied filter](media/mcc_report_filtering.png)
