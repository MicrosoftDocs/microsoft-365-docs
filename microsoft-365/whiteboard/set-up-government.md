---
title: Set up Microsoft Whiteboard for Government
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
description: Learn how to set up Microsoft Whiteboard for US Government - GCC.

---

# Set up Microsoft Whiteboard for Government

>[!NOTE]
> This guidance only applies to US Government - GCC customers. Enterprise and Education customers looking for guidance about Whiteboard on Azure or interested in Whiteboard’s move to OneDrive for Business should review [this article](faq.md).

Whiteboard on OneDrive for Business is enabled by default for applicable Microsoft 365 tenants. It can be enabled or disabled at a tenant-wide level. You should also ensure that **Microsoft Whiteboard Services** is set to enabled in the **Azure Active Directory admin center** > **Enterprise Applications**.

Controlling access to Whiteboard can be done in the following ways:

- Enable or disable Whiteboard for your entire tenant using the SharePoint Admin PowerShell module.

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy – it’s still visible via web, native clients, and Teams tab app.

- Require conditional access policies for accessing Whiteboard using Azure Active Directory admin center.

>[!NOTE]
> Whiteboard on OneDrive for Business does not appear in the Microsoft 365 admin center. The second and third methods listed above only hide Whiteboard entry points; they do not prevent the users from using Whiteboard.

## Enable or disable Whiteboard for your tenant 

You will need the [SharePoint Online PowerShell module](https://docs.microsoft.com/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell) to enable or disable all Fluid Experiences across your Microsoft 365 tenant.

1. Connect to [SharePoint Online PowerShell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

2. Enable Fluid using the <code>Set-SPOTenant</code> cmdlet:
    **Set-SPOTenant -IsWBFluidEnabled $true**

The change should take approximately 60 minutes to apply across your tenancy. If you do not see this option, you will need to update the module.

>[!NOTE]
> Microsoft Whiteboard and Microsoft Fluid Framework preview are both enabled by default. If these have been disabled in the Azure Active Directory enterprise applications, then Whiteboard on OneDrive for Business will not work.

## Show or hide Whiteboard for meetings 

For information about how to show or hide Whiteboard for meetings, see [Meeting policy settings](https://docs.microsoft.com/en-us/microsoftteams/meeting-policies-content-sharing).