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

No Access

Limited Access
Request to release the message from quarantine
Block sender
Delete the message
Preview the message

Full Access
Release the message from quarantine
Block sender
Allow sender
Delete the message
Preview the message

The following table describes protection features that are capable of sending messages to quarantine and whether quarantine tags are currently supported for messages that were quarantined by those features.



Anti-malware policies (all messages are quarantined in the cloud)
ATP for SharePoint, OneDrive, and Microsoft Teams
Transport rule Quarantine action


## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Quarantine tags** page, open <https://protection.office.com/quarantineTags>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

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
   - **Set specific access (Advanced)**: If you select this value, configure the following additional settings:
     - **Select release action preference**: Select one of the following values:
       - **No release action**: This is the default value.
       - **Allow recipients to release a message from quarantine**
       - **Allow recipients to request a message to be released from quarantine**
     - **Select additional actions recipients can take on quarantined messages**: Select some, all, or none of the following values:
       - **Delete**
       - **Preview**
       - **Allow sender**
       - **Block sender**

   When you're finished, click **Next**.

5. On the **Summary** page that appears, review your settings. You can click **Edit** on each setting to modify it.

   When you're finished, click **Submit**.

6. Click **Done** on the confirmation page that appears.

### Create quarantine tags in PowerShell

If you'd rather use PowerShell to create quarantine tags, connect to [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell) or standalone [Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell) and use the following syntax:

```powershell
New-QuarantineTag -Name "<UniqueName>" -EndUserQuarantinePermissionsValue <0 to 236>
```

The _EndUserQuarantinePermissionsValue_ parameter uses a decimal value that's converted from a binary value that corresponds to the available permissions in a specific order. For each permission, the value 1 equals True and the value 0 equals False.

The required order and the values for the available preset end-user permissions are described in the following table:

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

This example create a new quarantine tag name LimitedAccess that allows the Limited access permissions as described in the previous table.

```powershell
New-QuarantineTag -Name LimitedAccess -EndUserQuarantinePermissionsValue 106
```

For custom permissions, use the previous table to get the binary value that corresponds to the permissions you want. Convert the binary value to a decimal value to use.

For detailed syntax and parameter information, see [New-QuarantineTag](https://docs.microsoft.com/powershell/module/exchange/new-quarantinetag).

## Step 2: Assign a quarantine tag to a supported feature that quarantines messages or files

In supported protection features that quarantine messages or files (automatically or as a configurable action), you can assign a quarantine tag to the available quarantine action or actions. Features that quarantine messages and the availability of quarantine tags are described in the following table.

****

|Feature|Quarantine tags supported?|
|---|:---:|
|[Anti-spam policies](configure-your-spam-filter-policies.md): <ul><li>**Spam** (_SpamAction_)</li><li>**High confidence spam** (_HighConfidenceSpamAction_)</li><li>**Phishing email** (_PhishSpamAction_)</li><li>**High confidence phishing email** (_HighConfidencePhishAction_)</li><li>**Bulk email** (_BulkSpamAction_)</li></ul>|Yes|
|Anti-phishing policies: <ul><li>[Spoof intelligence protection](set-up-anti-phishing-policies.md#spoof-settings) (_AuthenticationFailAction_)</li><li>[Impersonation protection](set-up-anti-phishing-policies.md#impersonation-settings-in-atp-anti-phishing-policies):<sup>\*</sup> <ul><li>**If email is sent by an impersonated user** (_TargetedUserProtectionAction_)</li><li>**If email is sent by an impersonated domain** (_TargetedDomainProtectionAction_)</li><li>**Mailbox intelligence** \> **If email is sent by an impersonated user** (_MailboxIntelligenceProtectionAction_)</li></ul></li></ul>|No|
|[Anti-malware policies](configure-anti-malware-policies.md) (all detected messages are always quarantined)|No|
|[ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)|No|
|[Mail flow rules](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) with the action: **Deliver the message to the hosted quarantine** (_Quarantine_).|No|
|

<sup>\*</sup> Impersonation protection settings are available only in anti-phishing policies in Microsoft Defender for Office 365.

### Assign quarantine tags in anti-spam policies in the Security & Compliance Center

Instructions for creating and modifying anti-spam policies are described in [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> select **Anti-spam**. Or, open <https://protection.office.com/antispam>.

2. Find and select an existing anti-spam policy to edit, or create a new anti-spam policy.

3. In the policy details flyout, expand the **Spam and bulk actions** section.
  
4. If you've selected **Quarantine message** for the action of an available spam filtering verdict, the **Apply quarantine policy tag** box is available for you to select the quarantine tag for that verdict.

   A blank value indicates the default quarantine tag (that is, default end-user permissions for messages that were quarantined by that spam filtering verdict) are used.
  
   ![Quarantine tag selections in an anti-spam policy](../../media/quarantine-tags-in-anti-spam-policies.png)

5. When you're finished, click **Save**.

#### Assign quarantine tags in anti-spam policies in PowerShell

If you'd rather use PowerShell to assign quarantine tags in anti-spam policies, connect to [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell) or standalone [Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell) and use the following syntax:

```powershell
New-HostedContentFilterPolicy -Name "<Unique name>" [-SpamAction Quarantine] [-SpamQuarantineTag <QuarantineTagName>] [-HighConfidenceSpamAction Quarantine] [-HighConfidenceSpamQuarantineTag <QuarantineTagName>] [-PhishSpamAction Quarantine] [-PhishQuarantineTag <QuarantineTagName>] [-HighConfidencePhishQuarantineTag <QuarantineTagName>] [-BulkSpamAction Quarantine] [-BulkQuarantineTag <QuarantineTagName>] ...
```

or

```powershell
Set-HostedContentFilterPolicy -Identity "<Policy name>" [-SpamAction Quarantine] [-SpamQuarantineTag <QuarantineTagName>] [-HighConfidenceSpamAction Quarantine] [-HighConfidenceSpamQuarantineTag <QuarantineTagName>] [-PhishSpamAction Quarantine] [-PhishQuarantineTag <QuarantineTagName>] [-HighConfidencePhishQuarantineTag <QuarantineTagName>] [-BulkSpamAction Quarantine] [-BulkQuarantineTag <QuarantineTagName>] ...
```

**Notes**:

- The default value for the _HighConfidencePhishAction_ parameter is Quarantine, so you don't need to use the parameter to set the Quarantine value when you create new anti-spam policies. For all other spam filtering actions in new or existing anti-spam policies, the action value needs to be Quarantine before you can assign a quarantine tag. To see the values on existing policies, run the following command:

  ```powershell
  Get-HostedContentFilterPolicy | Format-Table Name,*SpamAction,HighConfidencePhishAction
  ```

  For complete information about the default values, and the recommended values for Standard and Strict, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-anti-spam-policy-settings).

- If you specify a Quarantine action for a spam filtering verdict without the corresponding quarantine tag parameter, the default quarantine tag is used:
  - DefaultSpamTag
  - DefaultHighConfSpamTag
  - DefaultPhishTag
  - DefaultHighConfPhishTag
  - DefaultBulkTag

- A new anti-spam policy in PowerShell requires a spam filter policy (settings) and a spam filter rule (recipient filters). For instructions, see [Use PowerShell to create anti-spam policies](configure-your-spam-filter-policies.md#use-powershell-to-create-anti-spam-policies).

This example creates a new spam filter policy named Research Department with the specified settings.

```powershell
New-HostedContentFilterPolicy -Name Research Department -SpamAction Quarantine -SpamQuarantineTag <QuarantineTagName>] [-HighConfidenceSpamAction Quarantine] [-HighConfidenceSpamQuarantineTag <QuarantineTagName>] [-PhishSpamAction Quarantine] [-PhishQuarantineTag <QuarantineTagName>] [-HighConfidencePhishQuarantineTag <QuarantineTagName>] [-BulkSpamAction Quarantine] [-BulkQuarantineTag <QuarantineTagName>]
```


