---
title: Manage access to Microsoft Whiteboard for GCC High environments
ms.author: v-jdeweese
author: johnddeweese
manager: alexfaulkner
ms.reviewer: 
ms.date: 05/05/2022
audience: admin
ms.topic: article
ms.custom: 
ms.service: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn how to enable, disable, and manage Whiteboard data.
---

# Manage access to Microsoft Whiteboard for GCC High environments

>[!NOTE]
> This guidance applies to US Government Community Cloud (GCC) High environments.

Microsoft Whiteboard on OneDrive for Business is enabled by default for applicable Microsoft 365 tenants. It can be enabled or disabled at a tenant-wide level. You should also ensure that **Microsoft Whiteboard Services** is enabled in the **Azure Active Directory admin center** > **Enterprise applications**.

The following URLs are required:

- 'https://*.office365.us/'
- 'https://login.microsoftonline.us/'
- 'https://graph.microsoft.us/'
- 'https://graph.microsoftazure.us/'
- 'https://admin.onedrive.us'
- 'https://shell.cdn.office.net/'
- 'https://config.ecs.gov.teams.microsoft.us'
- 'https://tb.events.data.microsoft.com/'

You can control access to Whiteboard in the following ways:

- Enable or disable Whiteboard for your entire tenant using the [SharePoint Online PowerShell module](/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell).

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy. It will still be visible via the web, native clients, and the Teams tab app.

- Require conditional access policies for accessing Whiteboard using the Azure Active Directory admin center.

>[!NOTE]
> Whiteboard on OneDrive for Business doesn't appear in the Microsoft 365 admin center. Teams meeting policy only hides Whiteboard entry points, it doesn't prevent users from using Whiteboard. Conditional access policies prevent access to Whiteboard, but doesn't hide the entry points.

## Enable or disable Whiteboard

To enable or disable Whiteboard for your tenant, do the following steps: 

1. Use the [SharePoint Online PowerShell module](/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell) to enable or disable all Fluid Experiences across your Microsoft 365 tenant.

2. Connect to [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

3. Enable Fluid using the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -IsWBFluidEnabled $true</code></pre>

The change should take approximately 60 minutes to apply across your tenancy. If you don't see this option, you'll need to update the module.

>[!NOTE]
> By default, Whiteboard is enabled. If it has been disabled in the Azure Active Directory enterprise applications, then Whiteboard on OneDrive for Business will not work.

## Show or hide Whiteboard

To show or hide Whiteboard in meetings, see [Meeting policy settings](/microsoftteams/meeting-policies-content-sharing).

## See also

[Manage data for Whiteboard - GCC High](manage-data-gcc-high.md)

[Manage sharing for Whiteboard - GCC High](manage-sharing-gcc-high.md)

[Manage clients for Whiteboard - GCC High](manage-clients-gcc-high.md)
