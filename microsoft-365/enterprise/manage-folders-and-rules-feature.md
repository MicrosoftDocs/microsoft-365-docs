---
title: "Manage Folders and Rules feature in Microsoft 365 Groups"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 08/18/2022
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
 - admindeeplinkMAC
 - admindeeplinkEXCHANGE
search.appverid:
ms.assetid: 
description: In this article, learn how to manage folders and rules feature in Microsoft 365 groups.
---

# Manage Folders and Rules feature in Microsoft 365 Groups

Users can organize groups emails effectively by creating folders and setting rules inside groups mailbox. Once the folders are created in groups mailbox, users can move and copy messages to different folders manually as well as using **Rules**.

This capability is currently available only in Outlook Web Application.

## Enable Folders and Rules feature for Microsoft 365 Groups in Outlook

Admin can enable the feature with the help of cmdlet `Set-OrganizationConfig -IsGroupFoldersAndRulesEnabled`.

 - `[-IsGroupFoldersAndRulesEnabled<Boolean>]` - optional

   The `IsGroupFoldersAndRulesEnabled` parameter specifies whether Folders and Rules feature is enabled for the tenant.

   Possible values: true/false

   Default Value: false

   Regardless of whether the `IsGroupFoldersAndRulesEnabled` parameter is turned off, the **Inbox** and **Deleted items** folders will still be shown, if there are any deleted items in the group.

> [!NOTE]
> Once the `IsGroupFoldersAndRulesEnabled` parameter is turned off after creating some folder and rules,
  > 
  > - Existing Folders and Rules will keep getting rendered.
  > 
  > - Existing rules will keep on executing.
  > 
  > - Folder Creation/Updation/Deletion will be blocked.
  > 
  > - Message level actions Copy/Move will be blocked.

Once the feature is enabled, by default only owner of the group has the permission to create folder, rename folder, move and copy messages across folders.
  
## Enable member permission option

If there's a need for members in the group to create folders and triage messages in groups mailbox, then member permission to edit groups content has to be enabled by the admin at tenant level and group owner at group level respectively.

By default, this setting is set **off** at tenant level and group level
  
Admin can enable the member permission to the tenant using the cmdlet `IsGroupMemberAllowedToEditContent`.

 - `[-IsGroupMemberAllowedToEditContent<Boolean>]`- optional

   The `IsGroupMemberAllowedToEditContent` parameter specifies whether group owner can grant permission to members for Folders and Rules feature content edit.

   Possible values: True/False

   Default value: false

Once this is enabled, Group owners can provide group members with the ability to create folders, rename folders, copy, move and delete messages. Group level member permission is handled by Group owners.

> [!NOTE]
> Admins can see the current value of the settings using `Get-OrganizationConfig` cmdlet.

## Block “Move” message capability

Admins can block the **Move** message option for all Microsoft 365 groups within a tenant using the cmdlet `Set-OrganizationConfig -BlockMoveMessagesForGroupFold`.

 - `[-BlockMoveMessagesForGroupFolders<Boolean>]` – optional

   The `BlockMoveMessagesForGroupFolders` parameter specifies whether message the **Move** action is disabled.

   Possible values: True/False

   Default value: false

> [!NOTE]
> Creation of **Move** rule is also disabled when `BlockMoveMessagesForGroupFolders` is enabled.

> [!NOTE]
> This is useful if there are mixed set of users using Outlook on Web and Outlook Desktop App. For users on Outlook Desktop App where folders are not available, they can get the messages from group inbox. 
  
  
  
