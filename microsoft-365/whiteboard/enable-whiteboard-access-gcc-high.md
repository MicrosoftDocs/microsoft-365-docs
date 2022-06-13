---
title: Enable and manage access to Microsoft Whiteboard for GCC High environments
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
ROBOTS: NOINDEX, NOFOLLOW

---

# Enable and manage access to Microsoft Whiteboard for GCC High environments

>[!NOTE]
> This guidance applies to US Government Community Cloud (GCC) High environments.

Microsoft Whiteboard on OneDrive for Business is enabled by default for applicable Microsoft 365 tenants. It can be enabled or disabled at a tenant-wide level. You should also ensure that **Microsoft Whiteboard Services** is enabled in the **Azure Active Directory Admin Center** > **Enterprise Applications**.

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

- Enable or disable Whiteboard for your entire tenant using the SharePoint Admin PowerShell module.

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy. It will still be visible via the web, native clients, and the Teams tab app.

- Require conditional access policies for accessing Whiteboard using Azure Active Directory Admin Center.

>[!NOTE]
> Whiteboard on OneDrive for Business doesn't appear in the Microsoft 365 admin center. Teams meeting policy only hides Whiteboard entry points, it doesn't prevent users from using Whiteboard. Conditional access ploicies prevent access to Whiteboard, but doesn't hide the entry points.

## Enable or disable Whiteboard

To enable or disable Whiteboard for your tenant, do the following: 

1. Use the [SharePoint Online PowerShell module](https://docs.microsoft.com/en-us/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell?view=o365-worldwide) to enable or disable all Fluid Experiences across your Office 365 tenant.

2. Connect to [SharePoint Online PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

3. Enable Fluid using the following <code>Set-SPOTenant<code> cmdlet: <code>Set-SPOTenant -IsWBFluidEnabled $true</code>.

   <pre><code class="lang-powershell">Set-SPOTenant -UsePersistentCookiesForExplorerView $true</code></pre>

The change should take approximately 60 minutes to apply across your tenancy. If you don't see this option, you will need to update the module.

>[!NOTE]
> Whiteboard is enabled by default. If it has been disabled in the Azure Active Directory enterprise applications, then Whiteboard on OneDrive for Business will not work.

## Show or hide Whiteboard

To show or hide Whiteboard for meetings, use [Teams meeting policy settings](https://docs.microsoft.com/en-us/microsoftteams/meeting-policies-content-sharing).

## Manage Whiteboard data 



