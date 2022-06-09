---
title: How to enable, disable, and manage Whiteboard data
ms.author: chucked
author: chuckedmonson
manager: alexfaulkner
ms.reviewer: 
audience: admin
ms.topic: article
ms.custom: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn how to enable, disable, and manage Whiteboard data

---

# How to enable, disable, and manage Whiteboard data

## Manage Whiteboard Access

Whiteboard on OneDrive for Business is enabled by default for applicable Microsoft 365 tenants. It can be enabled or disabled at a tenant-wide level. You should also ensure that “Microsoft Whiteboard Services” is set to enabled in the Azure Active Directory Admin Center > Enterprise Applications.

Controlling access to Whiteboard can be done in the following ways:
1. Enable or disable Whiteboard for your entire tenant using the SharePoint Admin PSH module.
1. Show or hide a whiteboard for specific users in meetings using a Teams meeting policy. The whiteboard will still be visible via web, native clients, and the Teams tab Applications.

> [!NOTE]
> Whiteboard on OneDrive for Business does not appear in the Microsoft 365 Admin Center. Teams policy (#2 mentioned above) only hides Whiteboard entry points, it does not prevent the users from using Whiteboard. Conditional Access (#3 listed above) prevents access to Whiteboard, but does not hide the entry points.

**To enable or disable Whiteboard for your tenant, do the following:** 

1.	You will need the [SharePoint Online PowerShell module](/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell) to enable or disable all Fluid Experiences across your Office 365 tenant.
1.	Connect to [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)
1.	Enable Fluid using the Set-SPOTenant cmdlet
1.	Set-SPOTenant -IsWBFluidEnabled $true

The change should take approximately 60 minutes to apply across your tenancy. If you do not see this option, please update the module.

> [!NOTE]
> Microsoft Whiteboard is enabled by default. If it has been disabled in the Azure Active Directory enterprise applications, then Whiteboard on OneDrive for Business will not work.

**To show or hide Whiteboard for meetings:** 

Use [meeting policy settings](/microsoftteams/meeting-policies-content-sharing).

## Manage Whiteboard Data 

Data is stored as .whiteboard files in OneDrive for Business. An average whiteboard may be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where new data is created, see [where your Microsoft 365 customer data](/microsoft-365/enterprise/o365-data-locations) is stored and look at the location for ODB. All properties that apply to general files in ODB also apply to Whiteboard, with the exception of external sharing.

You can use existing ODB tooling to satisfy Data Subject Requests (DSRs) for GDPR. Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions may not move.

Data controls that are supported today:

- Retention policies
- Quota
- DLP
- eDiscovery
- Legal hold

Data controls coming in future:

- Sensitivity labels
- Auditing
- Analytics
- Storing whiteboards in SharePoint sites









