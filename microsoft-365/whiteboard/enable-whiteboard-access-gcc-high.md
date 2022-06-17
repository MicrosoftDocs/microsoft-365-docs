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

Microsoft Whiteboard on OneDrive for Business is enabled by default for applicable Microsoft 365 tenants. It can be enabled or disabled at a tenant-wide level. You should also ensure that **Microsoft Whiteboard Services** is enabled in the **Azure Active Directory admin center** > **Enterprise applications**.

## Manage Whiteboard access

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

- Enable or disable Whiteboard for your entire tenant using the [SharePoint Online PowerShell module](https://docs.microsoft.com/en-us/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell?view=o365-worldwide).

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy. It will still be visible via the web, native clients, and the Teams tab app.

- Require conditional access policies for accessing Whiteboard using the Azure Active Directory admin center.

>[!NOTE]
> Whiteboard on OneDrive for Business doesn't appear in the Microsoft 365 admin center. Teams meeting policy only hides Whiteboard entry points, it doesn't prevent users from using Whiteboard. Conditional access ploicies prevent access to Whiteboard, but doesn't hide the entry points.

### Enable or disable Whiteboard

To enable or disable Whiteboard for your tenant, do the following steps: 

1. Use the [SharePoint Online PowerShell module](https://docs.microsoft.com/en-us/microsoft-365/enterprise/manage-sharepoint-online-with-microsoft-365-powershell?view=o365-worldwide) to enable or disable all Fluid Experiences across your Microsoft 365 tenant.

2. Connect to [SharePoint Online PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

3. Enable Fluid using the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -IsWBFluidEnabled $true</code></pre>

The change should take approximately 60 minutes to apply across your tenancy. If you don't see this option, you'll need to update the module.

>[!NOTE]
> By default, Whiteboard is enabled. If it has been disabled in the Azure Active Directory enterprise applications, then Whiteboard on OneDrive for Business will not work.

### Show or hide Whiteboard

To show or hide Whiteboard in meetings, see [Meeting policy settings](https://docs.microsoft.com/en-us/microsoftteams/meeting-policies-content-sharing).

## Manage Whiteboard data 

Data is stored as .whiteboard files in OneDrive for Business. An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where new data is created, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide). Look at the location for OneDrive for Business. All properties that apply to general files in OneDrive for Business also apply to Whiteboard, except for external sharing.

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](https://docs.microsoft.com/en-us/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

Data controls supported today:

- Retention policies
- Quota
- DLP
- eDiscovery
- Legal hold

Data controls planned for future releases:

- Sensitivity labels
- Auditing
- Analytics
- Storing whiteboards in SharePoint sites

## Manage Whiteboard clients

Whiteboard clients are currently being updated to support One Drive for Business.

Clients supported today:

- Standalone Whiteboard web application at [https://whiteboard.office365.us](https://whiteboard.office365.us)
- Microsoft Teams meetings, chats, and channels using Teams desktop and web
- Standalone Whiteboard application for mobile

Clients planned for future releases:

- Standalone Whiteboard application for Windows 10 or later versions
- Standalone Whiteboard application for Surface Hub (currently can be used in anonymous mode)
- Whiteboard in the Office.com app launcher
- Whiteboard in Teams meetings on Surface Hub and Teams meeting rooms
- Whiteboard in 1:1 calls in Teams

>[!NOTE]
> While users can install the Windows client, they will not be able to sign in until the client is updated this year.

## Manage Whiteboard sharing

The sharing experience differs based on the device and client being used. 

### Share in Teams meetings

When you share a whiteboard in a Teams meeting, Whiteboard creates a sharing link that’s accessible by anyone within the organization. It then automatically shares the whiteboard with any in-tenant users in the meeting.

>[!NOTE]
> External sharing during a Teams meeting is not yet available, but will be added in a future release.

|Scenario |Storage and ownership |Sharing settings |Sharing experience |
|---------|---------|---------|---------|
|Start the whiteboard from a desktop or mobile device |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard |Not yet available |In-tenant users: Can create, view, and collaborate<br><br>External users: Not yet available<br><br>Shared device accounts: Not yet available |
|Start the whiteboard from a Surface Hub or Microsoft Teams Rooms |Not yet available |         |         |

### Add as a tab in Teams channels and chats

When you add a whiteboard as a tab in a Teams channel or chat, Whiteboard will create a sharing link that’s accessible by anyone in the organization.

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Add the whiteboard to a channel or chat from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Not applicable  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Not supported  |

### Create and share in Whiteboard native clients

When you share a whiteboard from the web, desktop, or mobile clients, you can choose specific people or create a sharing link that’s accessible by anyone in the organization. 

>[!NOTE]
> External sharing during a Teams meeting is not yet available, but will be added in a future release.

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Create the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Not applicable  |In-tenant users: Can share within their organization<br><br>External users: Sharing with external users isn't supported at this time  |
|Create the whiteboard from a Surface Hub  |Storage: Local<br><br>Owner: None  |Not applicable  |In-tenant users (coming soon): User will be able to sign in to save and share the board<br><br>External users: Sharing with external users isn't supported at this time |
|Create the whiteboard from Microsoft Teams Rooms  |Not yet available         |         |         |

## See also

[Manage data for Whiteboard - GCC High](manage-data-gcc-high.md)
[Manage sharing for Whiteboard - GCC High](manage-sharing-gcc-high.md)
[Manage clients for Whiteboard - GCC High](manage-clients-gcc-high.md)




