---
title: Quarantine tags
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer:
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Admins can learn how to use quarantine tags to control what users are able to do to their quarantined messages."
---

# Quarantine tags

Quarantine tags in Exchange Online Protection (EOP) allow admins to control what users are able to do to their quarantined messages based on how the message arrived in quarantine.

EOP has traditionally allowed or prevented certain levels of interactivity for end-users messages in [quarantine](find-and-release-quarantined-messages-as-a-user.md) and in [end-user spam notifications](use-spam-notifications-to-release-and-report-quarantined-messages.md). For example, end-users can view and release that were quarantined by anti-spam filtering as spam or bulk, but they could not view or release messages that were quarantined as high confidence phishing.

For the [supported protection features](#step-2-assign-a-quarantine-tag-to-supported-features), quarantine tags specify what end-users are allowed to do to quarantined messages in spam notification messages and in quarantine. Default quarantine tags are automatically assigned to enforce the historical capabilities for end-users on quarantined messages. Or, you can create and assign custom quarantine tags to allow or prevent end-users from performing specific actions on quarantined messages.

The individual permissions are combined into the following permission groups for end-users:

- No access
- Limited access
- Full access

Or, you can specify the individual permissions to use for a quarantine tag. The individual permissions and what's included or not included in the preset permission groups are described in the following table:

|Permission|No access|Limited access|Full access|
|---|:---:|:---:|:---:|
|**Allow sender** (_PermissionToAllowSender_)|||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**Block sender** (_PermissionToBlockSender_)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**Delete** (_PermissionToDelete_)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**Preview** (_PermissionToPreview_)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**Allow recipients to release a message from quarantine** (_PermissionToRelease_)|||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|**Allow recipients to request a message to be released from quarantine** (_PermissionToRequestRelease_)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||
|

For more information about what each permission does, see the <> section later in this article.

You create and assign quarantine tags in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with Exchange Online Mailboxes; standalone EOP PowerShell in EOP organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Quarantine tags** page, open <https://protection.office.com/quarantineTags>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- To view, create, modify, or remove quarantine tags, you need to be a member of one of the following role groups:
  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

## Step 1: Create quarantine tags in the Security & Compliance Center

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** and then select **Quarantine tags**.

2. On the **Quarantine tags** page, select **Add custom tag**.

3. The **New tag** wizard opens. On the **Tag name** page, enter a brief but unique name in the **Tag name** field. You'll need to identify and select the tag by name in upcoming steps. When you're finished, click **Next**.

4. On the **Recipient message access** page, select one of the following values:
   - **No access**
   - **Limited access**
   - **Full access**

   The individual permissions that are included in these permission groups are described earlier in this article.

   To specify custom permissions, select **Set specific access (Advanced)** and configure the following settings:

     - **Select release action preference**: Select one of the following values:
       - **No release action**: This is the default value.
       - **Allow recipients to release a message from quarantine**
       - **Allow recipients to request a message to be released from quarantine**
     - **Select additional actions recipients can take on quarantined messages**: Select some, all, or none of the following values:
       - **Delete**
       - **Preview**
       - **Allow sender**
       - **Block sender**

   These permissions and their effect on quarantined messages and in end-user spam notifications are described in the <> section later in this article.

   When you're finished, click **Next**.

5. On the **Summary** page that appears, review your settings. You can click **Edit** on each setting to modify it.

   When you're finished, click **Submit**.

6. Click **Done** on the confirmation page that appears.

### Create quarantine tags in PowerShell

If you'd rather use PowerShell to create quarantine tags, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
New-QuarantineTag -Name "<UniqueName>" -EndUserQuarantinePermissionsValue <0 to 236>
```

The _EndUserQuarantinePermissionsValue_ parameter uses a decimal value that's converted from a binary value that corresponds to the available end-user quarantine permissions in a specific order. For each permission, the value 1 equals True and the value 0 equals False.

The required order and values for preset end-user permissions are described in the following table:

****

|Permission|No access|Limited access|Full access|
|---|:---:|:---:|:---:|
|PermissionToAllowSender|0|0|1|
|PermissionToBlockSender|0|1|1|
|PermissionToDelete|0|1|1|
|PermissionToDownload<sup>\*</sup>|0|0|0|
|PermissionToPreview|0|1|1|
|PermissionToRelease<sup>\*\*</sup>|0|0|1|
|PermissionToRequestRelease<sup>\*\*</sup>|0|1|0|
|PermissionToViewHeader<sup>\*</sup>|0|0|0|
|Binary value|00000000|01101010|11101100|
|Decimal value to use|0|106|236|

<sup>\*</sup> Currently, this value is always 0. For PermissionToViewHeader, the value 0 doesn't hide the **View message header** button in the details of the quarantined message.

<sup>\*\*</sup> Don't set both of these values to 1. Set one to 1 and the other to 0, or set both to 0.

This example creates a new quarantine tag name NoAccess that allows the Limited access permissions as described in the previous table.

```powershell
New-QuarantineTag -Name LimitedAccess -EndUserQuarantinePermissionsValue 236
```

For custom permissions, use the previous table to get the binary value that corresponds to the permissions you want. Convert the binary value to a decimal value to use.

For detailed syntax and parameter information, see [New-QuarantineTag](https://docs.microsoft.com/powershell/module/exchange/new-quarantinetag).

## Step 2: Assign a quarantine tag to supported features

In _supported_ protection features that quarantine messages or files (automatically or as a configurable action), you can assign a quarantine tag to the available quarantine actions. Features that quarantine messages and the availability of quarantine tags are described in the following table:

****

|Feature|Quarantine tags supported?|Default quarantine tags used|
|---|:---:|---|
|[Anti-spam policies](configure-your-spam-filter-policies.md): <ul><li>**Spam** (_SpamAction_)</li><li>**High confidence spam** (_HighConfidenceSpamAction_)</li><li>**Phishing email** (_PhishSpamAction_)</li><li>**High confidence phishing email** (_HighConfidencePhishAction_)</li><li>**Bulk email** (_BulkSpamAction_)</li></ul>|Yes|<ul><li>DefaultSpamTag (Full access)</li><li>DefaultHighConfSpamTag (Full access)</li><li>DefaultPhishTag (Full access)</li><li>DefaultHighConfPhishTag (No access)</li><li>DefaultBulkTag (Full access)</li></ul>
|Anti-phishing policies: <ul><li>[Spoof intelligence protection](set-up-anti-phishing-policies.md#spoof-settings) (_AuthenticationFailAction_)</li><li>[Impersonation protection](set-up-anti-phishing-policies.md#impersonation-settings-in-atp-anti-phishing-policies):<sup>\*</sup> <ul><li>**If email is sent by an impersonated user** (_TargetedUserProtectionAction_)</li><li>**If email is sent by an impersonated domain** (_TargetedDomainProtectionAction_)</li><li>**Mailbox intelligence** \> **If email is sent by an impersonated user** (_MailboxIntelligenceProtectionAction_)</li></ul></li></ul>|No|n/a|
|[Anti-malware policies](configure-anti-malware-policies.md): All detected messages are always quarantined.|No|n/a|
|[ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)|No|n/a|
|[Mail flow rules](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) with the action: **Deliver the message to the hosted quarantine** (_Quarantine_).|No|n/a|
|

<sup>\*</sup> Impersonation protection settings are available only in anti-phishing policies in Microsoft Defender for Office 365.

If you're happy with the end-user permissions that are provided by the default quarantine tags as described in the previous table, you don't need to do anything. If you want to customize the end-user capabilities on quarantined messages, you can assign a custom quarantine tag.

### Assign quarantine tags in anti-spam policies in the Security & Compliance Center

Instructions for creating and modifying anti-spam policies are described in [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> and then select **Anti-spam**. Or, open <https://protection.office.com/antispam>.

2. Find and select an existing anti-spam policy to edit, or create a new anti-spam policy.

3. In the policy details flyout, expand the **Spam and bulk actions** section.
  
4. If you've selected **Quarantine message** for the action of an available spam filtering verdict, the **Apply quarantine policy tag** box is available for you to select the quarantine tag for that verdict.

   When you create a new policy, a blank quarantine value indicates the default quarantine tag is being used. When you later edit the policy, the blank values are replaced by the actual default quarantine tag names.
  
   ![Quarantine tag selections in an anti-spam policy](../../media/quarantine-tags-in-anti-spam-policies.png)

5. When you're finished, click **Save**.

#### Assign quarantine tags in anti-spam policies in PowerShell

If you'd rather use PowerShell to assign quarantine tags in anti-spam policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
<New-HostedContentFilterPolicy -Name "<Unique name>" | Set-HostedContentFilterPolicy -Identity "<Policy name>">  [-SpamAction Quarantine] [-SpamQuarantineTag <QuarantineTagName>] [-HighConfidenceSpamAction Quarantine] [-HighConfidenceSpamQuarantineTag <QuarantineTagName>] [-PhishSpamAction Quarantine] [-PhishQuarantineTag <QuarantineTagName>] [-HighConfidencePhishQuarantineTag <QuarantineTagName>] [-BulkSpamAction Quarantine] [-BulkQuarantineTag <QuarantineTagName>] ...
```

**Notes**:

- The default value for the _HighConfidencePhishAction_ parameter is Quarantine, so you don't need to set the Quarantine action for high confidence phishing detections in new anti-spam policies. For all other spam filtering verdicts in new or existing anti-spam policies, the quarantine tag is only effective if the action value is Quarantine. To see the action values on existing policies, run the following command:

  ```powershell
  Get-HostedContentFilterPolicy | Format-Table Name,*SpamAction,HighConfidencePhishAction
  ```

  For information about the default action values, and the recommended action values for Standard and Strict, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-anti-spam-policy-settings).

- A spam filtering verdict without a corresponding quarantine tag parameter means the [default quarantine tag](#step-2-assign-a-quarantine-tag-to-supported-features) for that verdict is used for quarantined messages.

  You only need to replace the default quarantine tag for a spam filtering verdict with a custom quarantine tag if you want to change the default end-user capabilities that are provided by the default quarantine tag.

- A new anti-spam policy in PowerShell requires a spam filter policy (settings) using the **New-HostedContentFilterPolicy** cmdlet and a spam filter rule (recipient filters) using the **New-HostedContentFilterRule** cmdlet. For instructions, see [Use PowerShell to create anti-spam policies](configure-your-spam-filter-policies.md#use-powershell-to-create-anti-spam-policies).

This example creates a new spam filter policy named Research Department with the following settings:

- The action for all spam filtering verdicts is set to Quarantine.
- The custom quarantine tag named NoAccess that assigns **No access** permissions replaces any default quarantine tags that don't already assign **No access** permissions.

```powershell
New-HostedContentFilterPolicy -Name Research Department -SpamAction Quarantine -SpamQuarantineTag NoAccess -HighConfidenceSpamAction Quarantine -HighConfidenceSpamQuarantineTag NoAction -PhishSpamAction Quarantine -PhishQuarantineTag NoAction -BulkSpamAction Quarantine -BulkQuarantineTag NoAccess
```

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/new-hostedcontentfilterpolicy).

This example modifies the existing spam filter policy named Human Resources. The action for the spam quarantine verdict is set to Quarantine, and the custom quarantine tag named NoAccess is assigned.

```powershell
Set-HostedContentFilterPolicy -Identity "Human Resources" -SpamAction Quarantine -SpamQuarantineTag NoAccess
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/set-hostedcontentfilterpolicy).

## Reference

### Effects of end-user quarantine tag permissions on quarantined messages and end-user spam notifications

The following sections describe what users are allowed to do to quarantined messages in the quarantine and in spam notification messages

#### No access permission

Even if the quarantine tag assigns no permissions (**No access**), users still get some capabilities.

- Quarantined messages: The **View message header** button is available in the quarantined message details.
- End-user spam notifications: The **Review** button that takes the user to the quarantined message is available.

#### Allow sender permission

Currently, the **Allow sender** permission does nothing.

- Quarantined messages: No effect.
- End-user spam notifications: No effect.

For more information about the Safe Senders list, see [Prevent trusted senders from being blocked](https://support.microsoft.com/office/274ae301-5db2-4aad-be21-25413cede077#__toc304379666) and [Use Exchange Online PowerShell to configure the safelist collection on a mailbox](https://docs.microsoft.com/microsoft-365/security/office-365-security/configure-junk-email-settings-on-exo-mailboxes#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).

#### Block sender permission

The **Block sender** permission allows users to add the sender to their Safe Senders list on their mailbox.

- Quarantined messages: No effect; there's no **Block sender** button available in the quarantined message details.
- End-user spam notifications: The **Review** button that takes the user to the quarantine is available.

For more information about the Blocked Senders list, see [Block messages from someone](https://support.microsoft.com/office/274ae301-5db2-4aad-be21-25413cede077#__toc304379667) and [Use Exchange Online PowerShell to configure the safelist collection on a mailbox](https://docs.microsoft.com/microsoft-365/security/office-365-security/configure-junk-email-settings-on-exo-mailboxes#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).

#### Delete permission

The **Delete** permission allows end-users to delete their quarantined messages (messages where the user is a recipient).

- Quarantined messages: The **Remove from quarantine** button is available in the quarantined message details.
- End-user spam notifications: No effect.

#### Preview permission

The **Preview** permission allows end-users to preview their quarantined messages.

- Quarantined messages: The **Preview message** button is available in the quarantined message details.
- End-user spam notifications: No effect.

#### Allow recipients to release a message from quarantine permission

The **Allow recipients to release a message from quarantine** permission allows users to release their quarantined messages directly and without the approval of an admin.

#### Allow recipients to request a message to be released from quarantine permission

The **Allow recipients to request a message to be released from quarantine** permission allows users to _request_ the release of their quarantined messages. The message is only released after an admin approves.
