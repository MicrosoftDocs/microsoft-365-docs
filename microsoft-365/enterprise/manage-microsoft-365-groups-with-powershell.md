---
title: "Manage Microsoft 365 Groups with PowerShell"
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 9/29/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom:
  - Adm_O365
  - seo-marvel-apr2020
  - admindeeplinkMAC
  - admindeeplinkEXCHANGE
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
search.appverid:
- MET150
- MOE150
- MED150
- MBS150
- BSA160
- BCS160
ms.assetid: aeb669aa-1770-4537-9de2-a82ac11b0540
description: In this article, learn how to do common management tasks for Microsoft 365 groups in PowerShell.
---

# Manage Microsoft 365 Groups with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

This article provides the steps for doing common management tasks for Groups in Microsoft PowerShell. It also lists the PowerShell cmdlets for Groups. For info about managing SharePoint sites, see [Manage SharePoint Online sites using PowerShell](/sharepoint/manage-team-and-communication-sites-in-powershell).

## Link to your Microsoft 365 Groups usage guidelines

When users [create or edit a group in Outlook](https://support.microsoft.com/office/create-a-group-in-outlook-04d0c9cf-6864-423c-a380-4fa858f27102), you can show them a link to your organization's usage guidelines. For example, if you require a specific prefix or suffix to be added to a group name.

Use the [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview) to point your users to your organization's usage guidelines for Microsoft 365 groups. Check out [Microsoft Entra cmdlets for configuring group settings](/azure/active-directory/enterprise-users/groups-settings-cmdlets) and follow the steps in the **Create settings at the directory level** to define the usage guideline hyperlink. After you run the Microsoft Entra cmdlet, users see the link to your guidelines when they create or edit a group in Outlook.

![Create a new group with usage guidelines link.](../media/3f74463f-3448-4f24-a0ec-086d9aa95caa.png)

![Click Group usage guidelines to see your organizations Office 365 groups guidelines.](../media/d0d54ace-f0ec-4946-b2de-50ce23f17765.png)

## Allow users to Send as the Microsoft 365 Group

If you want to enable your Microsoft 365 groups with Send As permissions, use the [Add-RecipientPermission](/powershell/module/exchange/add-recipientpermission) and [Get-RecipientPermission](/powershell/module/exchange/get-recipientpermission) cmdlets. After you configure the permissions, Microsoft 365 group users can use Outlook or Outlook on the web to send and reply to email as the Microsoft 365 group. Users can go to the group, create a new email, and change the **Send As** field to the group's email address.

([You can also configure Send As permissions in the Exchange Admin Center](/office365/admin/create-groups/allow-members-to-send-as-or-send-on-behalf-of-group).)

Replace *\<GroupAlias\>* with the alias of the group that you want to update, and *\<UserAlias\>* with the alias of the user to whom you want to grant permissions. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and then run the following commands:

```PowerShell
$groupAlias = "<GroupAlias>"

$userAlias = "<UserAlias>"

$groupsRecipientDetails = Get-Recipient -RecipientTypeDetails GroupMailbox -Identity $groupAlias

Add-RecipientPermission -Identity $groupsRecipientDetails.Name -Trustee $userAlias -AccessRights SendAs
```

After you run the previous commands, users can go to Outlook or Outlook on the web to send as the group, by adding the group email address to the **From** field.

## Create classifications for Microsoft 365 Groups in your organization

You can create sensitivity labels that the users in your organization can set when they create a Microsoft 365 Group. If you want to classify groups, we recommend using sensitivity labels instead of the previous groups classification feature. For information about using sensitivity labels, see [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md).

> [!IMPORTANT]
> If you're currently using classification labels, they won't be available to users who create groups after sensitivity labels are enabled.

You can still use the previous groups classification feature. You can create classifications that the users in your organization can set when they create a Microsoft 365 Group. For example, you can allow users to set **Standard**, **Secret**, and **Top Secret** on groups they create. Group classifications aren't set by default and you need to create it in order for your users to set it. Use Microsoft Graph PowerShell to point your users to your organization's usage guidelines for Microsoft 365 Groups.

Check out [Microsoft Entra cmdlets for configuring group settings](/azure/active-directory/users-groups-roles/groups-settings-cmdlets) and follow the steps in the **Create settings at the directory level** to define the classification for Microsoft 365 Groups.

```powershell
$setting["ClassificationList"] = "Low Impact, Medium Impact, High Impact"
```

In order to associate a description to each classification, you can use the settings attribute  *ClassificationDescriptions* to define.

```powershell
$setting["ClassificationDescriptions"] = "Classification:Description,Classification:Description"
```

Where Classification matches the strings in the ClassificationList.

Example:

```powershell
$setting["ClassificationDescriptions"] = "Low Impact: General communication, Medium Impact: Company internal data , High Impact: Data that has regulatory requirements"
```

After you run the previous Microsoft Graph PowerShell command to set your classification, run the [Set-UnifiedGroup](/powershell/module/exchange/Set-UnifiedGroup) cmdlet if you want to set the classification for a specific group.

```powershell
Set-UnifiedGroup LowImpactGroup@constoso.com -Classification LowImpact
```

Or create a new group with a classification.

```powershell
New-UnifiedGroup HighImpactGroup@constoso.com -Classification HighImpact -AccessType Public
```

Check out [Using PowerShell with Exchange Online](/powershell/exchange/exchange-online-powershell) and [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) for more details on using Exchange Online PowerShell.

After these settings are enabled, the group owner can choose a classification from the drop-down menu in Outlook on the Web and Outlook, and save it from the **Edit** group page.

![Choose Microsoft 365 Group classification.](../media/f8d4219a-6180-491d-b0e1-4313ac83998b.png)

## Hide Microsoft 365 Groups from the global address list.

You can specify whether a Microsoft 365 Group appears in the global address list (GAL) and other lists in your organization. For example, if you have a legal department group that you don't want to show up in the address list, you can stop that group from appearing in the GAL. Run the Set-Unified Group cmdlet to hide the group from the address list like this:

```powershell
Set-UnifiedGroup -Identity "Legal Department" -HiddenFromAddressListsEnabled $true
```

## Allow only internal users to send message to Microsoft 365 Groups

If you don't want users from other organizations to send emails to a Microsoft 365 Group, you can change the settings for that group. It allows only internal users to send an email to your group. If an external user tries to send a message to that group, it's rejected.

Run the Set-UnifiedGroup cmdlet to update this setting, like this:

```powershell
Set-UnifiedGroup -Identity "Internal senders only" -RequireSenderAuthenticationEnabled $true
```

## Add MailTips to Microsoft 365 Groups

Whenever a sender tries to send an email to a Microsoft 365 Group, a MailTip can be shown to them.

Run the Set-Unified Group cmdlet to add a mailTip to the group:

```powershell
Set-UnifiedGroup -Identity "MailTip Group" -MailTip "This group has a MailTip"
```

Along with MailTip, you can also set MailTipTranslations, which specify other languages for the MailTip. For example, to have the Spanish translation, run the following command:

```powershell
Set-UnifiedGroup -Identity "MailaTip Group" -MailTip "This group has a MailTip" -MailTipTranslations "@{Add="ES:Esta caja no se supervisa."
```

## Change the display name of the Microsoft 365 Group

The display name specifies the name of the Microsoft 365 Group. You can see this name in your <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a> or <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. You can edit the display name of the group or assign a display name to an existing Microsoft 365 Group by running the following command:

```powershell
Set-UnifiedGroup -Identity "mygroup@contoso.com" -DisplayName "My new group"
```

## Change the default setting of Microsoft 365 Groups for Outlook to Public or Private

Microsoft 365 Groups in Outlook are created as Private by default. If your organization wants Microsoft 365 Groups to be created as Public by default (or back to Private), use this PowerShell cmdlet syntax:

 ```powershell
 Set-OrganizationConfig -DefaultGroupAccessType Public
 ```

To set to Private:

 ```powershell
 Set-OrganizationConfig -DefaultGroupAccessType Private
 ```

To verify the setting:

 ```powershell
 Get-OrganizationConfig | ft DefaultGroupAccessType
 ```

To learn more, see [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig) and [Get-OrganizationConfig](/powershell/module/exchange/get-organizationconfig).

## Microsoft 365 Groups cmdlets

The following cmdlets can be used with Microsoft 365 Groups.

> [!TIP]
> User photos for Microsoft 365 Groups are stored in Microsoft Entra ID. To manage user photos for Microsoft 365 Groups, see [Manage user photos in Microsoft Graph PowerShell](../admin/add-users/change-user-profile-photos.md#manage-user-photos-in-microsoft-graph-powershell).

|Cmdlet name|Description|
|---|---|
|[Get-UnifiedGroup](/powershell/module/exchange/get-unifiedgroup)|Use this cmdlet to look up existing Microsoft 365 Groups, and to view properties of the group object|
|[Set-UnifiedGroup](/powershell/module/exchange/set-unifiedgroup)|Update the properties of a specific Microsoft 365 Group|
|[New-UnifiedGroup](/powershell/module/exchange/new-unifiedgroup)|Create a new Microsoft 365 Group. This cmdlet provides a minimal set of parameters. To set values for extended properties, use Set-UnifiedGroup after creating the new group|
|[Remove-UnifiedGroup](/powershell/module/exchange/remove-unifiedgroup)|Delete an existing Microsoft 365 Group|
|[Get-UnifiedGroupLinks](/powershell/module/exchange/get-unifiedgrouplinks)|Retrieve membership and owner information for a Microsoft 365 Group|
|[Add-UnifiedGroupLinks](/powershell/module/exchange/add-unifiedgrouplinks)|Add members, owners, and subscribers to an existing Microsoft 365 Group|
|[Remove-UnifiedGroupLinks](/powershell/module/exchange/remove-unifiedgrouplinks)|Remove owners and members from an existing Microsoft 365 Group|
|[Get-MgGroupPhoto](/powershell/module/microsoft.graph.groups/get-mggroupphoto)|Used to view information about the user photo that's associated with a Microsoft 365 Group.|
|[Get-MgGroupPhotoContent](/powershell/module/microsoft.graph.groups/get-mggroupphotocontent)|Used to download the user photo that's associated with a Microsoft 365 Group.|
|[Set-MgUserPhotoContent](/powershell/module/microsoft.graph.users/set-mguserphotocontent)|Used to add a user photo to a Microsoft 365 Group.|
|[Remove-MgGroupPhoto](/powershell/module/microsoft.graph.groups/get-mggroupphoto)|Remove the photo for a Microsoft 365 Group.|

## Related articles

[Manage who can create Microsoft 365 Groups](/office365/admin/create-groups/manage-creation-of-groups)

[Manage guest access to Microsoft 365 Groups](https://support.office.com/article/bfc7a840-868f-4fd6-a390-f347bf51aff6)

[Change static group membership to dynamic in](/azure/active-directory/users-groups-roles/groups-change-type)
