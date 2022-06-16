---
title: Enable and manage access to Microsoft Whiteboard for your organization
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
description: Learn how to set up Microsoft Whiteboard for your organization in the Microsoft 365 admin center.
ROBOTS: NOINDEX, NOFOLLOW

---

# Enable and manage access to Microsoft Whiteboard for your organization

>[!NOTE]
> This article applies to Enterprise or Education organizations who use Whiteboard. For US Government Community Cloud (GCC) environments, see [Enable Whiteboard on OneDrive for Business](https://support.microsoft.com/office/enable-microsoft-whiteboard-on-onedrive-for-business-2fae9707-0c9b-42f8-a85f-9628b698ac82). For US Government GCC High environments, see [Enable and manage access to Microsoft Whiteboard for GCC High environments](enable-whiteboard-access-gcc-high.md).

Microsoft Whiteboard is a visual collaboration canvas where people, content, and ideas come together. Today, Whiteboard runs on Azure for Enterprise and Education customers. Whiteboard is transitioning to be run on top of OneDrive for Business. This will bring many new capabilities and allow you to create, share, discover, and manage whiteboards as easily as any Office document.

## Manage Whiteboard access

Whiteboard is automatically enabled for applicable Microsoft 365 tenants. 

Whiteboard conforms to global standards including SOC 1, SOC 2, ISO 27001, HIPAA, and EU Model Clauses. 

The following admin settings are required for Whiteboard:

- Whiteboard must be enabled globally in the Microsoft 365 admin center.

- The <code>Set-SPOTenant -IsWBFluidEnabled</code> cmdlet must be enabled using [SharePoint Online PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

>[!NOTE]
> The roll out of OneDrive for Business storage is in progress. When you go to the Microsoft 365 admin center, the option to opt in or out of OneDrive for Business storage is disabled if your tenant already has been transitioned to OneDrive for Business.

You can control access to Whiteboard in the following ways:

- Enable or disable Whiteboard for your entire tenant using the Microsoft 365 admin center.

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy. It will still be visible via the web, native clients, and the Teams tab app.

- Require conditional access policies for accessing Whiteboard using the Azure Active Directory admin center.

>[!NOTE]
> Teams meeting policies only hide Whiteboard entry points; it doesn't prevent the users from using Whiteboard. Conditional access policies prevent any access to Whiteboard, but doesn't hide the entry points.

### Enable or disable Whiteboard

To enable or disable Whiteboard for your tenant, do the following steps:

1. Go to the Microsoft 365 admin center.

2. On the home page of the admin center, in the Search box on the top right, type *Whiteboard*.

3. In the search results, select **Whiteboard settings**.

4. On the Whiteboard panel, toggle **Turn Whiteboard on or off for your entire organization** to **On**.

5. Select **Save**.

6. Connect to [SharePoint Online PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

7. Enable Fluid using the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -IsWBFluidEnabled $true</code></pre>
 
### Show or hide Whiteboard

To show or hide Whiteboard in meetings, see [Meeting policy settings](https://docs.microsoft.com/en-us/microsoftteams/meeting-policies-content-sharing). 

### Prevent access to Whiteboard

To prevent access to Whiteboard for specific users, see [Building a Conditional Access policy](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-conditional-access-policies).

## Manage Whiteboard data

Whiteboard content is stored in both Azure and OneDrive for Business. New whiteboards will be stored in OneDrive for Business; the only exception is whiteboards started from a Surface Hub will be stored in Azure (this will be moved to OneDrive for Business in the future). For more information, see [Manage Whiteboard sharing](enable-whiteboard-access-organizations.md#manage-whiteboard-sharing) later in this article.

### Azure storage overview

Whiteboard currently stores content securely in Azure. Data might be stored in different locations, depending on the country and when Whiteboard switched to storing new content in those locations. To check where new data is created, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide). 

Content in Azure does not support Data Loss Prevention (DLP), eDiscovery, retention policies, and similar features. Content can be managed using [Whiteboard PowerShell cmdlets](https://docs.microsoft.com/en-us/powershell/module/whiteboard/?view=whiteboard-ps) and over time, this content will need to be either migrated to OneDrive for Business or deleted.

#### If a user account is deleted in Azure

We are changing how whiteboards are stored when a user's account is deleted in Azure. Prior to the change, when a user's account was deleted, whiteboards that they own were also deleted but whiteboards that were shared with others were not deleted.

>[!NOTE]
> Whiteboards stored in OneDrive for Business will be handled like any other content in OneDrive for Business. For more information, see [Set the OneDrive retention for deleted users](https://docs.microsoft.com/en-us/onedrive/set-retention).

The behavior of whiteboards on Azure will change as of **June 1, 2022**. Any whiteboards shared with other users will be deleted.

If you want to retain a deleted user’s whiteboards, *before* you delete the account, you can transfer ownership. You can transfer a single whiteboard or all of them to another user. 

- Follow these instructions to [transfer all whiteboards](https://docs.microsoft.com/en-us/powershell/module/whiteboard/invoke-transferallwhiteboards?view=whiteboard-ps).

- For more information about how to delete user accounts, see [Delete a user from your organization](https://docs.microsoft.com/en-us/microsoft-365/admin/add-users/delete-a-user?view=o365-worldwide).

Ensure that any deletion process or script handles this change. If you are fine with the whiteboards being deleted, then no action is required. 

### OneDrive for Business storage overview

Whiteboards will be created in the OneDrive for Business folder of the person who starts the whiteboard (SharePoint is not yet supported). This applies to all whiteboards created in the standalone Whiteboard applications, and in Microsoft Teams meetings, chats, and channels. The only exception is whiteboards started from a Surface Hub will be stored in Azure (this will be moved to OneDrive for Business in the future).

Any users who do not have OneDrive for Business provisioned will no longer be able to create new whiteboards when this change is implemented. However, they can still edit their previously created boards. They can also collaborate on any whiteboards that are shared with them by others who have OneDrive for Business.

An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where data for your tenant is stored, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide), and look at the location for OneDrive for Business.

#### Controls for OneDrive for Business storage 

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](https://docs.microsoft.com/en-us/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). If you want to ensure that all previous changes are removed from the file, you must delete the entire file.

Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

Data controls supported today:

- Retention policies
- Quota
- Legal hold
- DLP
- Basic eDiscovery – .whiteboard files are stored as files in the creator's OneDrive for Business. They are indexed for keyword and file type search, but are not available to preview or review. Upon export, an admin needs to upload the file back to OneDrive for Business to view the content. Additional support is planned for the future.

Data controls planned for future releases:

- Sensitivity labels
- Analytics
- Additional eDiscovery support

## Manage Whiteboard sharing

The sharing experience differs based on whether you’re in a Teams meeting, if you're using a shared device, or what tenant-level sharing settings are enabled. The following scenarios apply only to new boards created after Whiteboard switches to using OneDrive for Business storage. There is no change to previously created boards still stored in Azure.

### Share in Teams meetings

When you share a whiteboard in a Teams meeting, Whiteboard creates a sharing link that’s accessible by anyone within the organization and automatically shares the whiteboard with any in-tenant users in the meeting.

There’s an additional capability for temporary collaboration by external and shared device accounts during a meeting. This allows these users to temporarily view and collaborate on whiteboards when they’re shared in a Teams meeting, similar to PowerPoint Live sharing.

>[!NOTE]
> This is not a share link and does not grant access to the file. It provides temporary viewing and collaboration on the whiteboard for the duration of the Teams meeting only.

If you have external sharing enabled for OneDrive for Business, no further action is required.

If you restrict external sharing for OneDrive for Business, you can keep it restricted and just enable a new setting in order for external and shared device accounts to work. To do so, follow these steps:

1. Using PowerShell, connect to your tenant and ensure the SharePoint Online module is updated by running the following command:

   <pre><code class="lang-powershell">Update-Module -Name Microsoft.Online.SharePoint.PowerShell</code></pre>
 
2. Then run the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -AllowAnonymousMeetingParticipantsToAccessWhiteboards On</code></pre>

This setting applies only to whiteboards and replaces the previously shared settings, **OneDriveLoopSharingCapability** and **CoreLoopSharingCapability**. Those are no longer applicable and can be disregarded.

>[!NOTE]
> By default, the Teams meeting setting **Anonymous users can interact with apps in meetings** is enabled. If you have disabled it, any anonymous users (as opposed to guests or federated users) will not have access to the whiteboard during the meeting.

These changes should take approximately 60 minutes to apply across your tenancy. 

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Start the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Enabled  |In-tenant users: Can create, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only (the button to share a whiteboard will not appear for external users)<br><br>Shared device accounts: Can view and collaborate during the meeting only  |
|Start the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Disabled  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Cannot view or collaborate<br><br>Shared device accounts: Cannot view or collaborate  |
|Start the whiteboard from a Surface Hub or Microsoft Teams Rooms  |Storage: Azure (this will be moved to OneDrive for Business in the future)<br><br>Owner: Meeting participant   |Not applicable  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only<br><br>Shared device accounts: Can view and collaborate during the meeting only  |

### Add as a tab in Teams channels and chats

When you add a whiteboard as a tab in a Teams channel or chat, Whiteboard will create a sharing link that’s accessible by anyone in the organization.

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Add the whiteboard to a channel or chat from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Not applicable (only applies to meetings)  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Not supported<br><br>Teams guests: Can view and collaborate<br><br>Shared device accounts: Not applicable  |

### Create and share in Whiteboard native clients

When you share whiteboards from the web, desktop, or mobile clients, you can choose specific people or create a sharing link that’s accessible by anyone in the organization. 

>[!NOTE]
> External sharing during a Teams meeting is not yet available, but will be added in a future release.

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Create the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Not applicable (only applies to meetings)  |In-tenant users: Can share within their organization<br><br>External users: Sharing with external users is not supported at this time  |
|Create the whiteboard from a Surface Hub  |Storage: Local<br><br>Owner: None (Unless user sign ins to save and share the board, which saves to OneDrive for Business. Easy share will be added back in the future.  |Not applicable (only applies to meetings)  |In-tenant users: User must sign in to save and share the board (Easy share will be added in the future)<br><br>External users: Sharing with external users is not supported at this time outside of a Teams meeting  |
|Create the whiteboard from Microsoft Teams Rooms  |Not yet supported  |Not applicable (only applies to meetings)  |Not yet supported  |

## Deploy Whiteboard for the Windows application

Whiteboard can be deployed on devices that run Windows 10 or later using Microsoft Intune or Microsoft Configuration Manager (formerly System Center Configuration Manager). Whiteboard is not supported on Windows Server.

- **Microsoft Intune using an online license mode** – This allows you to specify groups of users who will receive access to the Whiteboard app.

- **Microsoft Configuration Manager using manual offline installation and updates** – This allows you to install Whiteboard and then manually update it every 2–4 weeks.

>[!NOTE]
> We recommend using Microsoft Intune. Using Microsoft Configuration Manager requires IT to continuously repackage and install updates to ensure users are running an up-to-date version.

### Install Whiteboard using Microsoft Intune

1. Add Whiteboard as an available app using the steps in this article: TBD.

2. Add Microsoft Store apps to Microsoft Intune.

3. Assign the app to a group using the steps in this article: TBD.

4. Assign apps to groups with Microsoft Intune.

### Install Whiteboard using Microsoft Configuration Manager

1. Using a global administrator account, sign in to the Microsoft Store for Business.

2. In the header, select **Manage**.

3. In the right-hand navigation pane, select **Settings**, and then turn on **Show offline apps**.

4. Wait 10–15 minutes for propagation.

5. Next, go to the Whiteboard app.

6. Select **Get the app**, and then accept the license terms.

7. Go back to the application page.

8. In the **License type** drop-down menu, select **Offline**.

9. Select **Manage**.

10. This takes you to the inventory management page, which will now offer the option to **Download package for offline use**.

11. Choose the architecture version, and then download it.

12. As soon as you have downloaded the app, you can deploy it through Configuration Manager. To create an update package, follow steps 7–10 to download a newer version and package it for Configuration Manager.

13. For more information, see [Install applications for a device](https://docs.microsoft.com/en-us/mem/configmgr/apps/deploy-use/install-app-for-device).


