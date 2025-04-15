---
title: Manage sharing for Microsoft Whiteboard
ms.author: alexfaulkner
author: johnddeweese
manager: alexfaulkner
ms.reviewer:
ms.date: 11/04/2021
audience: admin
ms.topic: how-to
ms.custom:
ms.service: whiteboard
search.appverid: MET150
ms.collection: essentials-manage
ms.localizationpriority: medium
description: Learn how to manage sharing for Microsoft Whiteboard.
---

# Manage sharing for Microsoft Whiteboard

The sharing experience differs based on whether you're in a Teams meeting, if you're using a shared device, or what tenant-level sharing settings are enabled. The following scenarios apply only to new whiteboards created after Whiteboard switches to using OneDrive for Business storage. There's no change to previously created boards still stored in Azure.

## Share in Teams meetings

When you share a whiteboard in a Teams meeting, Whiteboard creates a sharing link. This link is accessible by anyone within the organization. The whiteboard is also shared with any in-tenant users in the meeting. Whiteboards are shared using company-shareable links, regardless of the default setting. Support for the default sharing link type is planned.

During a Teams meeting, external and shared device accounts (typically used in Surface Hubs and Teams Rooms devices) have more capabilities for temporary
collaboration. Users can temporarily view and collaborate on whiteboards that are shared in a meeting, in a similar way to PowerPoint Live sharing.

In this case, Whiteboard provides temporary viewing and collaboration on the whiteboard during the Teams meeting only. A share link isn't created and Whiteboard doesn't grant access to the file.

To enable this behavior, follow these steps:

1. Ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard](manage-whiteboard-access-organizations.md).

2. Using PowerShell, connect to your tenant and ensure the SharePoint Online module is updated by running the following command:

   ```powershell
   Update-Module -Name Microsoft.Online.SharePoint.PowerShell
   ```

3. Then run the following **Set-SPOTenant** command:

   ```powershell
   Set-SPOTenant -AllowAnonymousMeetingParticipantsToAccessWhiteboards On
   ```

4. Ensure that the Teams meeting setting **Anonymous users can interact with apps in meetings** is enabled. If the setting is disabled, any anonymous users (as opposed to guests or federated users) don't have access to the whiteboard during the meeting.

This setting applies only to whiteboards and replaces the previously shared settings: **OneDriveLoopSharingCapability** and **CoreLoopSharingCapability**. Those settings are no longer applicable and can be disregarded.

> [!NOTE]
> By default, the Teams meeting setting **Anonymous users can interact with apps in meetings** is enabled. If the setting is disabled, any anonymous user (as opposed to guests or federated users) doesn't have access to the whiteboard during the meeting.

> [!NOTE]
> If you would like shared device accounts to have access to Whiteboard in Teams meetings but not anonymous users, you can disable **Anonymous users can interact with apps in meetings** while having **AllowAnonymousMeetingParticipantsToAccessWhiteboards** enabled.

> [!NOTE]
> Even when **AllowAnonymousMeetingParticipantsToAccessWhiteboards** is enabled, Teams channel meetings have a limitation that anonymous users *can't* see the whiteboard share.

These changes should take approximately 60 minutes to apply across your tenancy.

|Scenario|Storage and ownership|Sharing settings|Sharing experience|
|---|---|---|---|
|Start the whiteboard from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Enabled|In-tenant users: Can create, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only (the button to share a whiteboard doesn't appear for external users)<br><br>Shared device accounts: Can view and collaborate during the meeting only|
|Start the whiteboard from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Disabled|In-tenant users: Can initiate, view, and collaborate<br><br>External users: Can't view or collaborate<br><br>Shared device accounts: Can't view or collaborate|
|Start the whiteboard from a Microsoft Teams Rooms device|Storage: Temporary local storage. A local whiteboard will be removed if it isn't saved<br><br>Owner: None (unless a non-MTR in-tenant user joins the meeting, which saves the whiteboard to their OneDrive for Business)<br>[Learn more](/microsoftteams/rooms/whiteboard-rooms)|Not applicable|In-tenant users: Can initiate, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only<br><br>Shared device accounts: Can initiate, view, and collaborate. A participant not joining through a Teams Rooms device must join for the Whiteboard to become collaborative. Whiteboard collaboration between only two Teams Rooms isn't supported.|

> [!NOTE]
> If a Whiteboard is stored in OneDrive and already attached to a meeting, it can't be initiated on a Surface Hub or Microsoft Teams Rooms device. An authenticated user on another device must do so. We plan to enable this functionality in a future release.

## Share in Teams calls

During a one-on-one or group call, you might start sharing a Whiteboard. Similar limitations apply to who can share a Whiteboard regarding scenarios where users from different organizations are involved in a call.

When all members of the call are from the same organization, any person can start and access the Whiteboard. For calls involving users from different organizations, only some users can access the Whiteboard sharing button. During a one-on-one call, only the original user who created the conversation or call between the two users can access the Whiteboard sharing button from the drop-down share tray button. The _original user_ is  the first person to send a message or call another user, whichever occurs first.

Permission to share the Whiteboard can't be changed after two users start a conversation. Deleting the chat that involves the two users doesn't restart the chat and doesn't reset who created or started the chat. Having the other user call also doesn't change who can share the Whiteboard, even if a Whiteboard hasn't been shared yet. The purpose of this limitation is to prevent access to a Whiteboard by an out-of-organization user unless sharing starts from an in-organization user.

## Add as a tab in Teams channels and chats

When you add a whiteboard as a tab in a Teams channel or chat, Whiteboard creates a sharing link that's accessible by anyone in the organization.

|Scenario|Storage and ownership|Sharing settings|Sharing experience|
|---|---|---|---|
|Add the whiteboard to a channel or chat from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Not applicable (only applies to meetings)|In-tenant users: Can initiate, view, and collaborate<br><br>External users: Not supported<br><br>Teams guests: Not supported<br><br>Shared device accounts: Not applicable|

## Create and share in Whiteboard native clients

When you share whiteboards from the web, desktop, or mobile clients, you can choose specific people. You can also create a sharing link that's accessible by anyone in the organization.

|Scenario|Storage and ownership|Sharing settings|Sharing experience|
|---|---|---|---|
|Create the whiteboard from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Not applicable (only applies to meetings)|In-tenant users: Can share within their organization<br><br>External users: Sharing with external users isn't supported at this time|
|Create the whiteboard from a Surface Hub running [Windows 10 Team edition](/surface-hub/surface-hub-3-faq)|Storage: Local<br><br>Owner: None (Unless user sign ins to save and share the board, which saves to OneDrive for Business)|Not applicable (only applies to meetings)|In-tenant users: User must sign in to save and share the board<br><br>External users: Sharing with external users isn't supported at this time outside of a Teams meeting|
|Create the whiteboard from Microsoft Teams Rooms|Storage: Temporary local storage. A local whiteboard will be removed if it isn't saved<br><br>Owner: None (unless the Whiteboard is escalated to start a meeting or Save and a non-MTR in-tenant user joins the meeting, at which point the whiteboard is saved to their OneDrive for Business)|Not applicable (only applies to meetings)|In-tenant users: Can initiate and view, as well as collaborate if the Whiteboard is escalated to start a meeting or Save<br><br>External users: Can view and collaborate during the meeting only if the Whiteboard is escalated to start a meeting or Save<br><br>Shared device accounts: Can initiate and view, as well as collaborate (as long as the Whiteboard is escalated to start a meeting or Save, and a non-Teams Rooms participant has joined, thereby causing the Whiteboard to be saved to the OneDrive for Business and thereby become collaborative)|

## See also

[Manage access to Whiteboard](manage-whiteboard-access-organizations.md)

[Manage data for Whiteboard](manage-data-organizations.md)

[Network requirements for Microsoft Defender of Cloud Apps](/defender-cloud-apps/network-requirements)

[Deploy Whiteboard on Windows](deploy-on-windows-organizations.md)