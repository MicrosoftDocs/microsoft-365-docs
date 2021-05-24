---
title: "Manage a group in the admin center"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 74a1ef8b-3844-4d08-9980-9f8f7a36000f
description: "Learn to manage Microsoft 365 groups, including adding remove group members, editing the email address, group name, or description, and customizing how the group works."
---

# Manage a group in the Microsoft 365 admin center

After you have [created a Microsoft 365 group](create-groups.md) and added group members, you can configure your group. You can edit the group name or description, manage owners or members, and specify whether external senders can email the group and whether to send copies of group conversations to members.

Go to the Microsoft 365 admin center at [https://admin.microsoft.com](https://admin.microsoft.com).

## Edit the group name or description

1. In the admin center, expand **Groups**, and then click **Groups**.

2. Select the group that you want to edit, and then click **Edit name and description**.

3. Update the name and description, and then select **Save**.

## Manage group owners and members

1. In the admin center, expand **Groups**, and then click **Groups**.

2. Click the name of the group you want to manage to open the settings pane.

3. On the **Members** tab, choose if you want to manage owners or members.

4. Choose **Add** to add someone or click **X** to remove someone.

5. Click **Close**.

## Send copies of conversations to group members' inboxes
  
When you use the admin center to create a group, by default users  do not get copies of group emails and meeting invitations sent to their inboxes. They'll need to go to the group to see conversations and meetings. You can change this setting in the admin center.

When you turn this setting on, group members will get a copy of group emails and meeting invitations sent to their Outlook Inbox. They can read and delete this copy of the email and not affect anyone else. In the Group inbox, a copy of the email still exists.

Group members can opt out of receiving these emails by choosing to stop following the group in Outlook.

1. In the admin center, expand **Groups**, and then click **Groups**.

2. Click the name of the group you want to manage to open the settings pane.

3. On the **Settings** tab, select **Send copies of group conversations and events to group members** if you want members to receive copies of group messages and calendar items in their own inbox.

4. Select **Save**.

## Let people outside the organization email the group

This option is great if you want to have a company email address such as info@contoso.com.
 
1. In the admin center, expand **Groups**, and then click **Groups**.

2. Click the name of the group you want to manage to open the settings pane.

3. In the admin center groups list, select the name of the group you want to change, and then on the **Settings** tab, select **Allow external senders to email this group**.
    
4. Select **Save**.

## Permanently delete a Microsoft 365 group

Sometimes you may want to permanently purge a group without waiting for the 30 day soft-deletion period to expire. To do that, start PowerShell and run this command to get the object ID of the group:
 
 ```powershell
`Get-AzureADMSDeletedGroup`
```

Take note of the object ID of the group, or groups, that you want to permanently delete.
  
> [!CAUTION]
> Purging the group removes the group and its data forever. 
  
To purge the group run this command in PowerShell:

```powershell
`Remove-AzureADMSDeletedDirectoryObject -Id <objectId>`
```

To confirm that the group has been successfully purged, run the  *Get-AzureADMSDeletedGroup*  cmdlet again to confirm that the group no longer appears on the list of soft-deleted groups. In some cases it may take as long as 24 hours for the group and all of its data to be permanently deleted. 
  
## Related articles

[Create a Microsoft 365 group](create-groups.md)

[Manage guest access to Microsoft 365 groups](https://support.microsoft.com/office/bfc7a840-868f-4fd6-a390-f347bf51aff6)

[Choose the domain to use when creating Microsoft 365 groups](../../solutions/choose-domain-to-create-groups.md)

[Allow members to send as or send on behalf of a Microsoft 365 group](../../solutions/allow-members-to-send-as-or-send-on-behalf-of-group.md)

[Upgrade distribution lists to Microsoft 365 groups](../manage/upgrade-distribution-lists.md)

[Manage Microsoft 365 groups with PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md)