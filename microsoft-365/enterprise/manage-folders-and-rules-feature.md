---
title: "Manage Folders and Rules feature in Microsoft 365 Groups"
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 09/04/2024
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

Users can organize groups emails effectively by creating folders and setting rules inside Microsoft 365 Groups. Once the folders are created in group mailboxes, users can move and copy messages to different folders manually and using **Rules**.

> [!TIP]
> Currently, this capability is available only in Outlook on the web (formerly known as Outlook Web App or OWA).

## Enable Folders and Rules feature for Microsoft 365 Groups in Outlook

By default, the Folders and Rules feature is turned off in the organization. Admins can view the current status of the feature, and turn it off or turn it on.

- To view the current status of the Folders and Rules feature in the organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

  ```powershell
  Get-OrganizationConfig | Format-List IsGroupFoldersAndRulesEnabled
  ```

- To turn on the Folders and Rules feature in the organization, run the following command:

  ```powershell
  Set-OrganizationConfig -IsGroupFoldersAndRulesEnabled $true
  ```

  - By default, after you turn on the feature, only group owners have permission to create folders, rename folders, and to move and copy messages between folders in group mailboxes. To give group members permission, see the [Enable member permission option](#enable-member-permission-option) section.
  - To prevent group owners or group members from moving messages between folders, see the [Block "Move message" capability](#block-move-message-capability) section.

- To turn off the Folders and Rules feature in the organization, run the following command:

  ```powershell
  Set-OrganizationConfig -IsGroupFoldersAndRulesEnabled $false
  ```

  If you turn off the feature after folders and rules have already been created in a group mailbox, the following actions occur:

  - Existing folders and rules are still rendered.
  - Existing rules continue to run.
  - Creating, deleting, or updating folders is blocked.
  - Moving or copying messages is blocked.

> [!TIP]
> Regardless of the value of the _IsGroupFoldersAndRulesEnabled_ parameter, the **Inbox** folder is always shown and the **Deleted Items** folder is also shown if there are any deleted items in the group mailbox.

## Enable member permission option

To allow group members to create folders and triage messages in group mailboxes, you need to enable permissions at the following levels:

- In the organization (admins).
- In the group (group owners).

By default, permission is turned off at both levels.

- To view the current status of permissions in the organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

  ```powershell
  Get-OrganizationConfig | Format-List IsGroupMemberAllowedToEditContent
  ```

- To turn on permission in the organization, run the following command:

  ```powershell
  Set-OrganizationConfig -IsGroupMemberAllowedToEditContent $true
  ```

After you turn on permission at the organization level, group owners can enable permissions on groups mailboxes they own so group members can do the following actions:

- Create folders.
- Rename folders.
- Move and delete messages.

Group owners can enable these permissions in their Microsoft 365 Groups using the following steps in Outlook on the web:

1. While signed in as the group owner, go to <https://outlook.office.com/groups/home>.
1. On the groups page that opens, select the Microsoft 365 Group.
1. On the group details page that opens, select :::image type="icon" source="../media/content-understanding/settings-icon.png" border="false"::: **Settings**.
1. In the **Group settings** flyout that opens, select **Edit group**.
1. In the **Edit group** page that opens, select **All members will be able to create, edit, move, copy and delete mail folders and rules within the group** in the **Permissions** section.

   :::image type="content" source="../media/folders-and-rules-group-members-enabled.png" alt-text="The All members will be able to create, edit, move, copy and delete mail folders and rules within the group setting selected in the properties of the Microsoft 365 Group in Outlook on the web." lightbox="../media/folders-and-rules-group-members-enabled.png":::

   When you're finished on the **Edit group** page, select **Save**.

## Block "Move message" capability

Admins can block the **Move message** option for all group mailboxes in an organization.

> [!TIP]
> Blocking the ability to move messages in group mailboxes is useful in organizations that use both Outlook on the web and Outlook Desktop App, because folders aren't available in group mailboxes in Outlook Desktop App (they get messages from the Inbox folder only).
>
> Blocking the ability to move messages in group mailboxes also prevents creating Inbox rules that move messages in group mailboxes.

- To view the current status of **Move message** capability in group mailboxes in the organization, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

  ```powershell
  Get-OrganizationConfig | Format-List BlockMoveMessagesForGroupFolders
  ```

- To block **Move message** capability in group mailboxes in the organization, run the following command:

  ```powershell
  Set-OrganizationConfig -BlockMoveMessagesForGroupFolders $true
  ```
