---
title: Manage sharing for Microsoft Whiteboard in GCC High environments
ms.author: alexfaulkner
author: johnddeweese
manager: alexfaulkner
ms.reviewer:
ms.date: 06/17/2022
audience: admin
ms.topic: how-to
ms.custom:
ms.service: whiteboard
search.appverid: MET150
ms.collection:
ms.localizationpriority: medium
description: Learn how to manage sharing for Microsoft Whiteboard in GCC High environments.
---

# Manage sharing for Microsoft Whiteboard in GCC High environments

> [!NOTE]
> This guidance applies to US Government Community Cloud (GCC) High environments. The sharing experience differs based on the device and client being used.

## Share in Teams meetings

When you share a whiteboard in a Teams meeting, Whiteboard creates a sharing link. This link is accessible by anyone within the organization. The whiteboard is also shared with any in-tenant users in the meeting. Whiteboards are shared using company-shareable links, regardless of the default setting. Support for the default sharing link type is planned.

During a Teams meeting, external and shared device accounts (typically used in Surface Hubs and Teams Rooms devices) have more capability for temporary
collaboration. Users can temporarily view and collaborate on whiteboards that are shared in a meeting, in a similar way to PowerPoint Live sharing.

In this case, Whiteboard provides temporary viewing and collaboration on the whiteboard during the Teams meeting only. A share link isn't created and Whiteboard doesn't grant access to the file.

To enable this behavior, follow these steps:

1. Ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard](manage-whiteboard-access-gcc-high.md).

2. Using PowerShell, connect to your tenant and ensure the SharePoint Online module is updated by running the following command:

   ```powershell
   Update-Module -Name Microsoft.Online.SharePoint.PowerShell
   ```

3. Then run the following **Set-SPOTenant** command:

   ```powershell
   Set-SPOTenant -AllowAnonymousMeetingParticipantsToAccessWhiteboards On
   ```

This setting applies only to whiteboards and replaces the previously shared settings: **OneDriveLoopSharingCapability** and **CoreLoopSharingCapability**. Those settings are no longer applicable and can be disregarded.

> [!NOTE]
> This applies only to guests and federated users. It does not apply to anonymous meeting users at this time.

> [!NOTE]
> If you would like shared device accounts to have access to Whiteboard in Teams meetings but not anonymous users, you can disable **Anonymous users can interact with apps in meetings** while having **AllowAnonymousMeetingParticipantsToAccessWhiteboards** enabled

These changes should take approximately 60 minutes to apply across your tenancy.

|Scenario|Storage and ownership|Sharing settings|Sharing experience|
|---|---|---|---|
|Start the whiteboard from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Enabled|In-tenant users: Can create, view, and collaborate<br><br>External users: Can view and collaborate during the meeting only (the button to share a whiteboard won't appear for external users)<br><br>Shared device accounts: Can view and collaborate during the meeting only|
|Start the whiteboard from a Surface Hub or Microsoft Teams Rooms|Not yet available|||

## Add as a tab in Teams channels and chats

When you add a whiteboard as a tab in a Teams channel or chat, Whiteboard will create a sharing link that's accessible by anyone in the organization.

|Scenario|Storage and ownership|Sharing settings|Sharing experience|
|---|---|---|---|
|Add the whiteboard to a channel or chat from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Not applicable|In-tenant users: Can initiate, view, and collaborate<br><br>External users: Not supported|

## Create and share in Whiteboard native clients

When you share a whiteboard from the web, desktop, or mobile clients, you can choose specific people. You can also create a sharing link that's accessible by anyone in the organization.

|Scenario|Storage and ownership|Sharing settings|Sharing experience|
|---|---|---|---|
|Create the whiteboard from a desktop or mobile device|Storage: OneDrive for Business<br><br>Owner: User who creates the whiteboard|Not applicable|In-tenant users: Can share within their organization<br><br>External users: Sharing with external users isn't supported at this time|
|Create the whiteboard from a Surface Hub|Storage: Local<br><br>Owner: None|Not applicable|In-tenant users (coming soon): User will be able to sign in to save and share the board<br><br>External users: Sharing with external users isn't supported at this time|
|Create the whiteboard from Microsoft Teams Rooms|Not yet available|||

## See also

[Manage access to Whiteboard - GCC High](manage-whiteboard-access-gcc-high.md)

[Manage data for Whiteboard - GCC High](manage-data-gcc-high.md)

[Manage clients for Whiteboard - GCC High](manage-clients-gcc-high.md)
