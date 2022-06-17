---
title: Manage sharing for Microsoft Whiteboard
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
description: Learn how to manage sharing for Microsoft Whiteboard.
ROBOTS: NOINDEX, NOFOLLOW

---

# Manage sharing for Microsoft Whiteboard

The sharing experience differs based on whether you’re in a Teams meeting, if you're using a shared device, or what tenant-level sharing settings are enabled. The following scenarios apply only to new whiteboards created after Whiteboard switches to using OneDrive for Business storage. There's no change to previously created boards still stored in Azure.

## Share in Teams meetings

When you share a whiteboard in a Teams meeting, Whiteboard creates a sharing link that’s accessible by anyone within the organization. It then automatically shares the whiteboard with any in-tenant users in the meeting.

There’s an additional capability for temporary collaboration by external and shared device accounts during a meeting. This capability allows these users to temporarily view and collaborate on whiteboards when they’re shared in a Teams meeting, similar to PowerPoint Live sharing.

>[!NOTE]
> This isn't a share link and doesn't grant access to the file. It provides temporary viewing and collaboration on the whiteboard for the duration of the Teams meeting only.

If you have external sharing enabled for OneDrive for Business, no further action is required.

If you restrict external sharing for OneDrive for Business, you can keep it restricted and just enable a new setting in order for external and shared device accounts to work. To do so, follow these steps:

1. Using PowerShell, connect to your tenant and ensure the SharePoint Online module is updated by running the following command:

   <pre><code class="lang-powershell">Update-Module -Name Microsoft.Online.SharePoint.PowerShell</code></pre>
 
2. Then run the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -AllowAnonymousMeetingParticipantsToAccessWhiteboards On</code></pre>

This setting applies only to whiteboards and replaces the previously shared settings, **OneDriveLoopSharingCapability** and **CoreLoopSharingCapability**. Those settings are no longer applicable and can be disregarded.

>[!NOTE]
> By default, the Teams meeting setting **Anonymous users can interact with apps in meetings** is enabled. If you have disabled it, any anonymous users (as opposed to guests or federated users) won't have access to the whiteboard during the meeting.

These changes should take approximately 60 minutes to apply across your tenancy. 

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Start the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Enabled  |In-tenant users: Can create, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only (the button to share a whiteboard won't appear for external users)<br><br>Shared device accounts: Can view and collaborate during the meeting only  |
|Start the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Disabled  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Can't view or collaborate<br><br>Shared device accounts: Can't view or collaborate  |
|Start the whiteboard from a Surface Hub or Microsoft Teams Rooms  |Storage: Azure (this will be moved to OneDrive for Business in the future)<br><br>Owner: Meeting participant   |Not applicable  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only<br><br>Shared device accounts: Can view and collaborate during the meeting only  |

## Add as a tab in Teams channels and chats

When you add a whiteboard as a tab in a Teams channel or chat, Whiteboard will create a sharing link that’s accessible by anyone in the organization.

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Add the whiteboard to a channel or chat from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Not applicable (only applies to meetings)  |In-tenant users: Can initiate, view, and collaborate<br><br>External users: Not supported<br><br>Teams guests: Can view and collaborate<br><br>Shared device accounts: Not applicable  |

## Create and share in Whiteboard native clients

When you share whiteboards from the web, desktop, or mobile clients, you can choose specific people. You can also create a sharing link that’s accessible by anyone in the organization. 

>[!NOTE]
> External sharing during a Teams meeting isn't yet available, but will be added in a future release.

|Scenario  |Storage and ownership  |Sharing settings  |Sharing experience  |
|---------|---------|---------|---------|
|Create the whiteboard from a desktop or mobile device  |Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard  |Not applicable (only applies to meetings)  |In-tenant users: Can share within their organization<br><br>External users: Sharing with external users isn't supported at this time  |
|Create the whiteboard from a Surface Hub  |Storage: Local<br><br>Owner: None (Unless user sign ins to save and share the board, which saves to OneDrive for Business. Easy share will be added back in the future.  |Not applicable (only applies to meetings)  |In-tenant users: User must sign in to save and share the board (Easy share will be added in the future)<br><br>External users: Sharing with external users isn't supported at this time outside of a Teams meeting  |
|Create the whiteboard from Microsoft Teams Rooms  |Not yet supported  |Not applicable (only applies to meetings)  |Not yet supported  |

## See also

[Enable and manage access to Whiteboard](enable-whiteboard-access-organizations.md)

[Manage data for Whiteboard](manage-data-organizations.md)

[Deploy Whiteboard on Windows](deploy-on-windows-organizations.md)