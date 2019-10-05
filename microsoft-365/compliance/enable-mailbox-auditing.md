---
title: "Manage mailbox auditing"
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: aaca8987-5b62-458b-9882-c28476a66918
description: "Mailbox audit logging is turned on by default in Office 365 (also called default mailbox auditing or mailbox auditing on by default). This means that certain actions performed by mailbox owners, delegates, and admins are automatically logged in a mailbox audit log, where you can search for activities performed on the mailbox."
---

# Manage mailbox auditing

Starting in January 2019, Microsoft is turning on mailbox audit logging by default for all Office 365 organizations. This means that certain actions performed by mailbox owners, delegates, and admins are automatically logged, and the corresponding mailbox audit records will be available when you search for them in the mailbox audit log. Before mailbox auditing was turned on by default, you had to manually enable it for every user mailbox in your organization.

Here are some benefits of mailbox auditing on by default:

- Auditing is automatically enabled when you create a new mailbox. You don't need to manually enable it for new users.

- You don't need to manage the mailbox actions that are audited. A predefined set of mailbox actions are audited by default for each logon type (Admin, Delegate, and Owner).

- When Microsoft releases a new mailbox action (particularly actions that help protect your organization and help with forensic investigations), the action is automatically added to the list of mailbox actions that are audited by default. This means you don't need to monitor add new actions on mailboxes.

- You have a consistent mailbox auditing policy across your organization (because you're auditing the same actions for all mailboxes).

> [!NOTE]
>• The important thing to remember about the release of mailbox auditing on by default is: you don't need to do anything to manage mailbox auditing. However, to learn more, customize mailbox auditing from the default settings, or turn it off altogether, this topic can help you. <br><br>• Even when mailbox auditing on by default is turned on, you might notice that mailbox audit events for some users aren't found in audit log searches in the Security & Compliance Center or via the Office 365 Management Activity API. For more information, see the [More information](#more-information) section in this topic.

## Verify mailbox auditing on by default is turned on

To verify that mailbox auditing on by default is turned on for your organization, run the following command in [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell):

```
Get-OrganizationConfig | Format-List AuditDisabled
```

The value **False** indicates that mailbox auditing on by default is enabled for the organization. This on by default organizational value overrides the mailbox auditing setting on specific mailboxes. For example, if mailbox auditing is disabled for a mailbox (the *AuditEnabled* property is **False** on the mailbox), the default mailbox actions will still be audited for the mailbox, because mailbox auditing on by default is enabled for the organization.

To keep mailbox auditing disabled for specific mailboxes, you configure mailbox auditing bypass for the mailbox owner and other users who have been delegated access to the mailbox. For more information, see the [Bypass mailbox audit logging](#bypass-mailbox-audit-logging) section in this topic.

> [!NOTE]
> When mailbox auditing on by default is turned on for the organization, the *AuditEnabled* property for affected mailboxes won't be changed from **False** to **True**. In other words, mailbox auditing on by default ignores the *AuditEnabled* property on mailboxes.

## Supported mailbox types

The following table shows the mailbox types that are currently supported by mailbox auditing on by default:

|**Mailbox type**|**Supported**|**Not supported**|
|:---------|:---------:|:---------:|
|User mailboxes|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
|Shared mailboxes|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
|Office 365 Group mailboxes|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
|Resource mailboxes||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Public folder mailboxes||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|

## Logon types and mailbox actions

Logon types classify the user that did the audited actions on the mailbox. The following list describes the logon types that are used in mailbox audit logging:

- **Owner**: The mailbox owner (the account that's associated with the mailbox).

- **Delegate**:

  - A user who's been assigned the SendAs, SendOnBehalf, or FullAccess permission to another mailbox.

  - An admin who's been assigned the FullAccess permission to a user's mailbox.

- **Admin**:

  - The mailbox is searched with one of the following Microsoft eDiscovery tools:

    - Content Search in the Compliance center.

    - eDiscovery or Advanced eDiscovery in the Compliance center.

    - In-Place eDiscovery in Exchange Online.

  - The mailbox is accessed by using the Microsoft Exchange Server MAPI Editor.

### Mailbox actions for user mailboxes and shared mailboxes

The following table describes the mailbox actions that are available in mailbox audit logging for user mailboxes and shared mailboxes.

- A check mark ( ![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)) indicates the mailbox action can be logged for the logon type (not all actions are available for all logon types).

- An asterisk ( <sup>\*</sup> ) after the check mark indicates the mailbox action is logged by default for the logon type.

- Remember, an admin with Full Access permission to a mailbox is considered a delegate.

|**Mailbox action**|**Description**|**Admin**|**Delegate**|**Owner**|
|:---------|:---------|:---------:|:---------:|:---------:|
|**AddFolderPermissions**|**Note**: Although this value is accepted as a mailbox action, it's already included in the **UpdateFolderPermissions** action and isn't audited separately. In other words, don't use this value.||||
|**ApplyRecord**|An item is labeled as a record.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**Copy**|A message was copied to another folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|||
|**Create**|An item was created in the Calendar, Contacts, Notes, or Tasks folder in the mailbox (for example, a new meeting request is created). Note that creating, sending, or receiving a message isn't audited. Also, creating a mailbox folder is not audited.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**FolderBind**|A mailbox folder was accessed. This action is also logged when the admin or delegate opens the mailbox. <br/><br/> **Note**: Audit records for folder bind actions performed by delegates are consolidated. One audit record is generated for individual folder access within 24 hour period.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
|**HardDelete**|A message was purged from the Recoverable Items folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**MailboxLogin**|The user signed into their mailbox. |||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**MessageBind**|A message was viewed in the preview pane or opened.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|||
|**ModifyFolderPermissions**|**Note**: Although this value is accepted as a mailbox action, it's already included in the **UpdateFolderPermissions** action and isn't audited separately. In other words, don't use this value.||||
|**Move**|A message was moved to another folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**MoveToDeletedItems**|A message was deleted and moved to the Deleted Items folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**RecordDelete**|An item that's labeled as a record was soft-deleted (moved to the Recoverable Items folder). Items labeled as records can't be permanently deleted (purged from the Recoverable Items folder).|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**RemoveFolderPermissions**|**Note**: Although this value is accepted as a mailbox action, it's already included in the **UpdateFolderPermissions** action and isn't audited separately. In other words, don't use this value.||||
|**SendAs**|A message was sent using the SendAs permission. This means another user sent the message as though it came from the mailbox owner.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>||
|**SendOnBehalf**|A message was sent using the SendOnBehalf permission. This means another user sent the message on behalf of the mailbox owner. The message indicates to the recipient who the message was sent on behalf of and who actually sent the message.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>||
|**SoftDelete**|A message was permanently deleted or deleted from the Deleted Items folder. Soft-deleted items are moved to the Recoverable Items folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**Update**|A message or its properties was changed.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**UpdateCalendarDelegation**|A calendar delegation was assigned to a mailbox. Calendar delegation gives someone else in the same organization permissions to manage the mailbox owner's calendar.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>||![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**UpdateFolderPermissions**|A folder permission was changed. Folder permissions control which users in your organization can access folders in a mailbox and the messages located in those folders.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**UpdateInboxRules**|An inbox rule was added, removed, or changed. Inbox rules are used to process messages in the user's Inbox based on the specified conditions and take actions when the conditions of a rule are met, such as moving a message to a specified folder or deleting a message.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|

> [!IMPORTANT]
> If you customized the mailbox actions to audit for any logon type *before* mailbox auditing on by default was enabled in your organization, the customized settings are preserved on the mailbox and aren't overwritten by the default mailbox actions as described in this section. To revert the audit mailbox actions to their default values (which you can do at any time), see the [Restore the default mailbox actions](#restore-the-default-mailbox-actions) section later in this topic.

### Mailbox actions for Office 365 Group mailboxes

Mailbox auditing on by default brings mailbox audit logging to Office 365 Group mailboxes, but you can't customize what's being logged (you can't add or remove mailbox actions that are logged for any logon type).

The following table describes the mailbox actions that are logged by default on Office 365 Group mailboxes for each logon type.

Remember, an admin with Full Access permission to an Office 365 Group mailbox is considered a delegate.

|**Mailbox action**|**Description**|**Admin**|**Delegate**|**Owner**|
|:---------|:---------|:---------:|:---------:|:---------:|
|**Create**|Creation of a calendar Item. Note that creating, sending, or receiving a message isn't audited.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>||
|**HardDelete**|A message was purged from the Recoverable Items folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**MoveToDeletedItems**|A message was deleted and moved to the Deleted Items folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**SendAs**|A message was sent using the SendAs permission.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>||
|**SendOnBehalf**|A message was sent using the SendOnBehalf permission. |![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>||
|**SoftDelete**|A message was permanently deleted or deleted from the Deleted Items folder. Soft-deleted items are moved to the Recoverable Items folder.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
|**Update**|A message or its properties was changed.|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|

### Verify that default mailbox actions are being logged for each logon type

Mailbox auditing on by defaults adds a new *DefaultAuditSet* property to all mailboxes. The value of this property indicates whether the default mailbox actions (managed by Microsoft) are being audited on the mailbox.

To display the value on user mailboxes or shared mailboxes, replace \<MailboxIdentity\> with the name, alias, email address, or user principal name (username) of the mailbox and run the following command in Exchange Online PowerShell:

```
Get-Mailbox -Identity <MailboxIdentity> | Format-List DefaultAuditSet
```

To display the value on Office 365 group mailboxes, replace \<MailboxIdentity\> with the name, alias, or email address of the shared mailbox and run the following command in Exchange Online PowerShell:

```
Get-Mailbox -Identity <MailboxIdentity> -GroupMailbox | Format-List DefaultAuditSet
```

The value `Admin, Delegate, Owner` indicates:

- The default mailbox actions for all three logon types are being audited. Note that this is the only value you'll see on Office 365 Group mailboxes.

- An admin *has not* changed the audited mailbox actions for any logon type on a user mailbox or a shared mailbox. Note this is the default state after mailbox auditing on by default is initially turned on in your organization.

If an admin has ever changed the mailbox actions that are audited for a logon type (by using the *AuditAdmin*, *AuditDelegate*, or *AuditOwner* parameters on the **Set-Mailbox** cmdlet), the property value will be different.

For example, the value `Owner` for the *DefaultAuditSet* property on a user mailbox or shared mailbox indicates:

- The default mailbox actions for the mailbox owner are being audited.

- The audited mailbox actions for the `Delegate` and `Admin` logon types have been changed from the default actions.

A blank value for the *DefaultAuditSet* property indicates the mailbox actions for all three logon types have been changed on the user mailbox or a shared mailbox.

For more information, see the [Change or restore mailbox actions logged by default](#change-or-restore-mailbox-actions-logged-by-default) section in this topic

### Display the mailbox actions that are being logged on mailboxes

To see the mailbox actions that are currently being logged on user mailboxes or shared mailboxes, replace \<MailboxIdentity\> with the name, alias, email address, or user principal name (username) of the mailbox, and run one or more of the following commands in Exchange Online PowerShell.

> [!NOTE]
> Although you can add the `-GroupMailbox` switch to the following **Get-Mailbox** commands for Office 365 Group mailboxes, don't believe the values you see. The default and static mailbox actions that are audited for Office 365 Group mailboxes are described in the [Mailbox actions for Office 365 Group mailboxes](#mailbox-actions-for-office-365-group-mailboxes) section earlier in this topic.

#### Owner actions

```
Get-Mailbox -Identity <MailboxIdentity> | Select-Object -ExpandProperty AuditOwner
```

#### Delegate actions

```
Get-Mailbox -Identity <MailboxIdentity> | Select-Object -ExpandProperty AuditDelegate
```

#### Admin actions

```
Get-Mailbox -Identity <MailboxIdentity> | Select-Object -ExpandProperty AuditAdmin
```

## Change or restore mailbox actions logged by default

As previously explained, one of the key benefits of having mailbox auditing on by default is: you don't need to manage the mailboxes actions that are audited. Microsoft does this for you and we'll automatically add new mailbox actions to be audited by default as they're released.

However, your organization might be required to audit a different set of mailbox actions for user mailboxes and shared mailboxes. The procedures in this section show you how to change the mailbox actions that are audited for each logon type, and how to revert back to the Microsoft-managed default actions.

> [!IMPORTANT]
> If you use the following procedures to customize the mailbox actions that are logged on user mailboxes or shared mailboxes, any new default mailbox actions released by Microsoft will not be automatically audited on those mailboxes. You'll need to manually add any new mailbox actions to your customized list of actions.

### Change the mailbox actions to audit

You can use the *AuditAdmin*, *AuditDelegate*, or *AuditOwner* parameters on the **Set-Mailbox** cmdlet to change the mailbox actions that are audited for user mailboxes and shared mailboxes (audited actions for Office 365 group mailboxes can't be customized).

You can use two different methods to specify the mailbox actions:

- *Replace* (overwrite) the existing mailbox actions by using this syntax: `action1,action2,...actionN`.

- *Add or remove* mailbox actions without affecting other existing values by using this syntax: `@{Add="action1","action2",..."actionN"}` or `@{Remove="action1","action2",..."actionN"}`.

This example changes the admin mailbox actions for the mailbox named "Gabriela Laureano" by overwriting the default actions with SoftDelete and HardDelete.

```
Set-Mailbox -Identity "Gabriela Laureano" -AuditAdmin HardDelete,SoftDelete
```

This example adds the MailboxLogin owner action to the mailbox laura@contoso.onmicrosoft.com.

```
Set-Mailbox -Identity laura@contoso.onmicrosoft.com -AuditOwner @{Add="MailboxLogin"}
```

This example removes the MoveToDeletedItems delegate action for the Team Discussion mailbox.

```
Set-Mailbox -Identity "Team Discussion" -AuditDelegate @{Remove="MoveToDeletedItems"}
```

Regardless of the method you use, customizing the audited mailbox actions on user mailboxes or shared mailboxes has the following results:

- For the logon type that you customized, the audited mailbox actions are no longer managed by Microsoft.

- The logon type that you customized is no longer displayed in the *DefaultAuditSet* property value for the mailbox as [previously described](#verify-that-default-mailbox-actions-are-being-logged-for-each-logon-type).

### Restore the default mailbox actions

If you customized the mailbox actions that are audited on a user mailbox or a shared mailbox, you can restore the default mailbox actions for one or all logon types by using this syntax:

```
Set-Mailbox -Identity <MailboxIdentity> -DefaultAuditSet <Admin | Delegate | Owner>
```

You can specify multiple *DefaultAuditSet* values separated by commas

**Note**: The following procedures don't apply to Office 365 Group mailboxes (they're limited to the default actions as described [here](#mailbox-actions-for-office-365-group-mailboxes)).

This example restores the default audited mailbox actions for all logon types on the mailbox mark@contoso.onmicrosoft.com.

```
Set-Mailbox -Identity mark@contoso.onmicrosoft.com -DefaultAuditSet Admin,Delegate,Owner
```

This example restores the default audited mailbox actions for the Admin logon type on the mailbox chris@contoso.onmicrosoft.com, but leaves the customized audited mailbox actions for the Delegate and Owner logon types.

```
Set-Mailbox -Identity chris@contoso.onmicrosoft.com -DefaultAuditSet Admin
```

Restoring the default audited mailbox actions for a logon type has the following results:

- The current list of mailbox actions is replaced with the default mailbox actions for the logon type.

- Any new mailbox actions that are released by Microsoft are automatically added to the list of audited actions for the logon type.

- The *DefaultAuditSet* property value for the mailbox is updated to include the restored logon type.

## Turn off mailbox auditing on by default for your organization

You can turn off mailbox auditing on by default for your entire organization by running the following command in Exchange Online PowerShell:

```
Set-OrganizationConfig -AuditDisabled $true
```

Turning off mailbox auditing on by default has the following results:

- Mailbox auditing is disabled for your organization.

- From the time you disabled mailbox auditing on by default, no mailbox actions are audited, even if auditing is enabled on a mailbox (the *AuditEnabled* property on the mailbox is **True**).

- Mailbox auditing is not enabled for new mailboxes and setting the *AuditEnabled* property on a new or existing mailbox to **True** will be ignored.

- Any mailbox audit bypass association settings (configured by using the **Set-MailboxAuditBypassAssociation** cmdlet) are ignored.

- Existing mailbox audit records are retained until the audit log age limit for the the record expires.

### Turn on mailbox auditing on by default

To turn mailbox auditing back on for your organization, run the following command in Exchange Online PowerShell:

```
Set-OrganizationConfig -AuditDisabled $false
```

## Bypass mailbox audit logging

Currently, you can't disable mailbox auditing for specific mailboxes when mailbox auditing on by default is turned on in your organization. For example, setting the *AuditEnabled* mailbox property to **False** is ignored.

However, you can still use the **Set-MailboxAuditBypassAssociation** cmdlet in Exchange Online PowerShell to prevent *any and all* mailbox actions by the specified users from being logged, regardless where the actions occur. For example:

- Mailbox owner actions performed by the bypassed users aren't logged.

- Delegate actions performed by the bypassed users on other users' mailboxes (including shared mailboxes) aren't logged.

- Admin actions performed by the bypassed users aren't logged.

To bypass mailbox audit logging for a specific user, replace \<MailboxIdentity\> with the name, email address, alias, or user principal name (username) of the user and run the following command:

```
Set-MailboxAuditBypassAssociation -Identity <MailboxIdentity> -AuditByPassEnabled $true
```

To verify that auditing is bypassed for the specified user, run the following command:

```
Get-MailboxAuditBypassAssociation -Identity <MailboxIdentity> | Format-List AuditByPassEnabled
```

The value **True** indicates that mailbox audit logging is bypassed for the user.

## More information

- Only users with E5 licenses or mailboxes where mailbox audit logging was manually enabled by an admin will return mailbox audit log events in audit log searches in the Security & Compliance Center or via the Office 365 Management Activity API.

  To retrieve mailbox audit log entries for users without E5 licenses, you can:

  - Use the following cmdlets in Exchange Online PowerShell:

    - [Search-MailboxAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-mailboxauditlog) to search the mailbox audit log for specific users.

    - [New-MailboxAuditLogSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/new-mailboxauditlogsearch) to search the mailbox audit log for specific users and to have the results sent via email to specified recipients.

  - Use the Exchange admin center (EAC) in Exchange Online to do the following:

    - [Export mailbox audit logs](https://docs.microsoft.com/Exchange/security-and-compliance/exchange-auditing-reports/export-mailbox-audit-logs)

    - [Run a non-owner mailbox access report](https://docs.microsoft.com/Exchange/security-and-compliance/exchange-auditing-reports/non-owner-mailbox-access-report)

- By default, mailbox audit log records are retained for 90 days before they're deleted. You can change the age limit for audit log records by using the *AuditLogAgeLimit* parameter on the **Set-Mailbox** cmdlet in Exchange Online PowerShell. However, increasing this value doesn't allow you to search for events that are older than 90 days in the Office 365 audit log.

  If you increase the age limit, you need to use the [Search-MailboxAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-mailboxauditlog) cmdlet in Exchange Online PowerShell to search the user's mailbox audit log for records that are older than 90 days.

- If you've changed the *AuditLogAgeLimit* property for a mailbox prior to mailbox auditing on by default being turned on for organization, the mailbox's existing audit log age limit isn't changed. In other words, mailbox auditing on by default doesn't effect the current age limit for mailbox audit records.

- To change the *AuditLogAgeLimit* value on an Office 365 Group mailbox, you need to include the `-GroupMailbox` switch in the **Set-Mailbox** command.

- Mailbox audit log records are stored in a subfolder (named *Audits*) in the Recoverable Items folder in each user's mailbox. Keep the following things in mind about mailbox audit records and the Recoverable Items folder:

  - Mailbox audit records count against the storage quota of the Recoverable Items folder, which is 30GB by default (the warning quota is 20 GB). The storage quota is automatically increased to 100 GB (with a 90 GB warning quota) when:

    - A hold is placed on a mailbox.

    - The mailbox is assigned to a retention policy in the Compliance Center.

  - Mailbox audit records also count against the [folder limit for the Recoverable Items folder](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#mailbox-folder-limits). A maximum of 3 million items (audit records) can be stored in the Audits subfolder.

    > [!NOTE]
    > It's unlikely that mailbox auditing on by default will impact the storage quota or the folder limit for the Recoverable Items folder.

    - You can run the following command in Exchange Online PowerShell to display the size and number of items in the Audits subfolder in the Recoverable Items folder:

      ```
      Get-MailboxFolderStatistics -Identity <MailboxIdentity> -FolderScope RecoverableItems | Where-Object {$_.Name -eq 'Audits'} | Format-List FolderPath,FolderSize,ItemsInFolder
      ```

    - You can't directly access an audit log record in the Recoverable Items folder; instead, you use the **Search-MailboxAuditLog** cmdlet or search the Office 365 audit log to find and view mailbox audit records.

- If a mailbox is placed on hold or assigned to a retention policy in the Compliance Center, audit log records are still retained for the duration that's defined by the mailbox's *AuditLogAgeLimit* property (90 days by default). To retain audit log records longer for mailboxes on hold, you need to increase mailbox's *AuditLogAgeLimit* value.
