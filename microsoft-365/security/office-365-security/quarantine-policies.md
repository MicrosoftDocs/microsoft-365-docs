---
title: Quarantine policies
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer:
ms.date:
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid:
  - MET150
ms.assetid:
ms.collection:
  - M365-security-compliance
ROBOTS: NOINDEX
description: Admins can learn how to use quarantine policies to control what users are able to do to their quarantined messages.
ms.technology: mdo
ms.prod: m365-security
---

# Quarantine policies

> [!NOTE]
> The features that are described in this article are currently in Preview, aren't available to everyone, and are subject to change.

Quarantine policies (formerly known as _quarantine tags_) in Exchange Online Protection (EOP) allow admins to control what users are able to do to their quarantined messages based on how the message arrived in quarantine.

EOP has traditionally allowed or prevented certain levels of interactivity for messages in [quarantine](find-and-release-quarantined-messages-as-a-user.md) and in [end-user spam notifications](use-spam-notifications-to-release-and-report-quarantined-messages.md). For example, users can view and release messages that were quarantined by anti-spam filtering as spam or bulk, but they can't view or release messages that were quarantined as high confidence phishing (only admins can do that).

For [supported protection features](#step-2-assign-a-quarantine-policy-to-supported-features), quarantine policies specify what users are allowed to do in end-user spam notification messages and in their quarantined messages in quarantine (messages where the user is a recipient). Default quarantine policies are automatically assigned to enforce the historical capabilities for users on quarantined messages. Or, you can create and assign custom quarantine policies to allow or prevent end users from performing specific actions on quarantined messages.

The individual permissions are combined into the following preset permission groups:

- Admin only access
- Limited access
- Full access

The available individual permissions and what's included or not included in the preset permission groups are described in the following table:

<br>

****

|Permission|Admin only access|Limited access|Full access|
|---|:---:|:---:|:---:|
|**Block sender** (_PermissionToBlockSender_)||![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
|**Delete** (_PermissionToDelete_)||![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
|**Preview** (_PermissionToPreview_)||![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
|**Allow recipients to release a message from quarantine** (_PermissionToRelease_)|||![Check mark](../../media/checkmark.png)|
|**Allow recipients to request a message to be released from quarantine** (_PermissionToRequestRelease_)||![Check mark](../../media/checkmark.png)||
|

If you don't like the default permissions in the preset permission groups, you can use custom permissions when you create or modify custom quarantine policies. For more information about what each permission does, see the [Quarantine policy permission details](#quarantine-policy-permission-details) section later in this article.

You create and assign quarantine policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with Exchange Online Mailboxes; standalone EOP PowerShell in EOP organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. Or to go directly to the **Quarantine policies** page, open <https://security.microsoft.com/quarantineTags>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- To view, create, modify, or remove quarantine policies, you need to be a member of the **Organization Management** or **Security Administrator** roles in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

## Step 1: Create quarantine policies in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Threat policies** \> **Rules** section \> **Quarantine policies** and then select **Quarantine policies**.

2. On the **Quarantine policy** page, click ![Add custom policy icon](../../media/m365-cc-sc-create-icon.png) **Add custom policy**.

3. The **New policy** wizard opens. On the **Policy name** page, enter a brief but unique name in the **Policy name** box. You'll need to identify and select the quarantine policy by name in upcoming steps. When you're finished, click **Next**.

4. On the **Recipient message access** page, select one of the following values:
   - **Limited access**

   The individual permissions that are included in these permission groups are described earlier in this article.

   To specify custom permissions, select **Set specific access (Advanced)** and the configure the following settings that appear:

   - **Select release action preference**: Select one of the following values:
     - **No release action**: This is the default value.
     - **Allow recipients to release a message from quarantine**
     - **Allow recipients to request a message to be released from quarantine**
   - **Select additional actions recipients can take on quarantined messages**: Select some, all, or none of the following values:
     - **Delete**
     - **Preview**
     - **Block sender**

   These permissions and their effect on quarantined messages and in end-user spam notifications are described in the [Quarantine policy permission details](#quarantine-policy-permission-details) section later in this article.

   When you're finished, click **Next**.

5. On the **End user spam notification** page, enable the notification if needed.

6. On the **Review policy** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Submit**.

7. On the confirmation page that appears, click **Done**.

Now you're ready to assign the quarantine policy to a quarantine feature as described in the [Step 2](#step-2-assign-a-quarantine-policy-to-supported-features) section.

### Create quarantine policies in PowerShell

If you'd rather use PowerShell to create quarantine policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the **New-QuarantineTag** cmdlet. You have two different methods to choose from:

- Use the _EndUserQuarantinePermissionsValue_ parameter.
- Use the _EndUserQuarantinePermissions_ parameter.

These methods are described in the following sections.

#### Use the EndUserQuarantinePermissionsValue parameter

To create a quarantine policy using the _EndUserQuarantinePermissionsValue_ parameter, use the following syntax:

```powershell
New-QuarantineTag -Name "<UniqueName>" -EndUserQuarantinePermissionsValue <0 to 236>
```

The _EndUserQuarantinePermissionsValue_ parameter uses a decimal value that's converted from a binary value. The binary value corresponds to the available end-user quarantine permissions in a specific order. For each permission, the value 1 equals True and the value 0 equals False.

The required order and values for each individual permission in preset permission groups are described in the following table:

<br>

****

|Permission|Limited access|
|---|:---:|
|PermissionToBlockSender|1|
|PermissionToDelete|1|
|PermissionToDownload<sup>\*</sup>|0|
|PermissionToPreview|1|
|PermissionToRelease<sup>\*\*</sup>|0|
|PermissionToRequestRelease<sup>\*\*</sup>|1|
|PermissionToViewHeader<sup>\*</sup>|0|
|Binary value|01101010|
|Decimal value to use|106|
|

<sup>\*</sup> Currently, this value is always 0. For PermissionToViewHeader, the value 0 doesn't hide the **View message header** button in the details of the quarantined message (the button is always available).

<sup>\*\*</sup> Don't set both of these values to 1. Set one to 1 and the other to 0, or set both to 0.

This example creates a new quarantine policy name LimitedAccess that assigns the Limited access permissions as described in the previous table.

```powershell
New-QuarantineTag -Name LimitedAccess -EndUserQuarantinePermissionsValue 106
```

For custom permissions, use the previous table to get the binary value that corresponds to the permissions you want. Convert the binary value to a decimal value and use the decimal value for the _EndUserQuarantinePermissionsValue_ parameter.

For detailed syntax and parameter information, see [New-QuarantineTag](/powershell/module/exchange/new-quarantinetag).

#### Use the EndUserQuarantinePermissions parameter

To create a quarantine policy using the _EndUserQuarantinePermissionsValue_ parameter, do the following steps:

A. Store a quarantine permissions object in a variable using the **New-QuarantinePermissions** cmdlet.

<p>

B. Use the variable as the _EndUserQuarantinePermissions_ value in the **New-QuarantineTag** command.

##### Step A: Store a quarantine permissions object in a variable

Use the following syntax:

```powershell
$<VariableName> = New-QuarantinePermissions [-PermissionToBlockSender <$true | $False>] [-PermissionToDelete <$true | $False>] [-PermissionToPreview <$true | $False>] [-PermissionToRelease <$true | $False>] [-PermissionToRequestRelease <$true | $False>]
```

The default value for any unused parameters is `$false`, so you only need to use the parameters where you want to set value to `$true`.

The following example shows how to create permission objects that correspond to the **Limited access** preset permissions group:

```powershell
$LimitedAccess = New-QuarantinePermissions -PermissionToBlockSender $true -PermissionToDelete $true -PermissionToPreview $true -PermissionToRequestRelease $true
```

To see the values that you've set, run the variable name as a command (for example, run the command `$LimitedAccess`).

For custom permissions, don't set both the _PermissionToRelease_ and _PermissionToRequestRelease_ parameters to `$true`. Set one to `$true` and leave the other as `$false`, or leave both as `$false`.

You can also modify an existing permissions object variable after you create but before you use it by using the **Set-QuarantinePermissions** cmdlet.

For detailed syntax and parameter information, see [New-QuarantinePermissions](/powershell/module/exchange/new-quarantinepermissions) and [Set-QuarantinePermissions](/powershell/module/exchange/set-quarantinepermissions).

##### Step B: Use the variable in the New-QuarantineTag command

After you've created and stored the permissions object in a variable, use the variable for the _EndUserQuarantinePermission_ parameter value in the following **New-QuarantineTag** command:

```powershell
New-QuarantineTag -Name "<UniqueName>" -EndUserQuarantinePermissions $<VariableName>
```

This example creates a new quarantine policy named LimitedAccess using the `$LimitedAccess` permissions object that was described and created in the previous step.

```powershell
New-QuarantineTag -Name LimitedAccess -EndUserQuarantinePermissions $LimitedAccess
```

For detailed syntax and parameter information, see [New-QuarantineTag](/powershell/module/exchange/new-quarantinetag).

## Step 2: Assign a quarantine policy to supported features

In _supported_ protection features that quarantine messages or files (automatically or as a configurable action), you can assign a quarantine policy to the available quarantine actions. Features that quarantine messages and the availability of quarantine policies are described in the following table:

<br>

****

|Feature|Quarantine policies supported?|Default quarantine policies used|
|---|:---:|---|
|[Anti-spam policies](configure-your-spam-filter-policies.md): <ul><li>**Spam** (_SpamAction_)</li><li>**High confidence spam** (_HighConfidenceSpamAction_)</li><li>**Phishing** (_PhishSpamAction_)</li><li>**High confidence phishing** (_HighConfidencePhishAction_)</li><li>**Bulk** (_BulkSpamAction_)</li></ul>|Yes|<ul><li>DefaultFullAccessPolicy (Full access)</li><li>DefaultFullAccessPolicy (Full access)</li><li>DefaultFullAccessPolicy (Full access)</li><li>AdminOnlyAccessPolicy (No access)</li><li>DefaultFullAccessPolicy (Full access)</li></ul>|
|Anti-phishing policies: <ul><li>[Spoof intelligence protection](set-up-anti-phishing-policies.md#spoof-settings) (_AuthenticationFailAction_)</li><li>[Impersonation protection](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) (Defender for Office 365): <ul><li>**If message is detected as an impersonated user** (_TargetedUserProtectionAction_)</li><li>**If message is detected as an impersonated domain** (_TargetedDomainProtectionAction_)</li><li>**If mailbox intelligence detects and impersonated user** (_MailboxIntelligenceProtectionAction_)</li></ul></li></ul></ul>|Yes|<ul><li>DefaultFullAccessPolicy (Full access)</li><li>DefaultFullAccessPolicy (Full access)</li></ul>|
|[Anti-malware policies](configure-anti-malware-policies.md): All detected messages are always quarantined.|Yes|AdminOnlyAccessPolicy (Admin only access)|
|[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md) (Defender for Office 365)|Yes|AdminOnlyAccessPolicy (Admin only access)|
|[Mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) with the action: **Deliver the message to the hosted quarantine** (_Quarantine_).|No|n/a|
|

If you're happy with the default end-user permissions that are provided by the default quarantine policies, you don't need to do anything. If you want to add or remove end-user capabilities (available buttons) in end-user spam notifications or in quarantined message details, you can assign a custom quarantine policy.

### Assign quarantine policies in anti-spam policies in the Microsoft 365 Defender portal

Full instructions for creating and modifying anti-spam policies are described in [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-spam** in the **Rules** section.

   Or, to go directly to the **Ant-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, do one of the following steps:
   - Find and select an existing **inbound** anti-spam policy.
   - Create a new **inbound** anti-spam policy.

3. Do one of the following steps:
   - **Edit existing anti-spam policy**: In the policy details flyout, go to the **Actions** section and then click **Edit actions**.
   - **Create new anti-spam policy**: In the new policy wizard, get to the **Actions** page.

4. On the **Actions** page, every verdict that has the **Quarantine message** action will also have the **Select quarantine policy** box for you to select a corresponding quarantine policy.

   **Note**: When you create a new policy, a blank **Select quarantine policy** value indicates the default quarantine policy for that verdict is used. When you later edit the policy, the blank values are replaced by the actual default quarantine policy names as described in the previous table.

   ![Quarantine policy selections in an anti-spam policy](../../media/quarantine-tags-in-anti-spam-policies.png)

5. When you're finished, click **Save**.

#### Assign quarantine policies in anti-spam policies in PowerShell

If you'd rather use PowerShell to assign quarantine policies in anti-spam policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
<New-HostedContentFilterPolicy -Name "<Unique name>" | Set-HostedContentFilterPolicy -Identity "<Policy name>">  [-SpamAction Quarantine] [-SpamQuarantineTag <QuarantineTagName>] [-HighConfidenceSpamAction Quarantine] [-HighConfidenceSpamQuarantineTag <QuarantineTagName>] [-PhishSpamAction Quarantine] [-PhishQuarantineTag <QuarantineTagName>] [-HighConfidencePhishQuarantineTag <QuarantineTagName>] [-BulkSpamAction Quarantine] [-BulkQuarantineTag <QuarantineTagName>] ...
```

**Notes**:

- The default value for the _HighConfidencePhishAction_ parameter is Quarantine, so you don't need to set the Quarantine action for high confidence phishing detections in new anti-spam policies. For all other spam filtering verdicts in new or existing anti-spam policies, the quarantine policy is only effective if the action value is Quarantine. To see the action values in existing anti-spam policies, run the following command:

  ```powershell
  Get-HostedContentFilterPolicy | Format-Table Name,*SpamAction,HighConfidencePhishAction
  ```

  For information about the default action values and the recommended action values for Standard and Strict, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

- A spam filtering verdict without a corresponding quarantine policy parameter means the [default quarantine policy](#step-2-assign-a-quarantine-policy-to-supported-features) for that verdict is used.

  You only need to replace a default quarantine policy with a custom quarantine policy if you want to change the default end-user capabilities on quarantined messages for that particular verdict.

- A new anti-spam policy in PowerShell requires a spam filter policy (settings) using the **New-HostedContentFilterPolicy** cmdlet and a new spam filter rule (recipient filters) using the **New-HostedContentFilterRule** cmdlet. For instructions, see [Use PowerShell to create anti-spam policies](configure-your-spam-filter-policies.md#use-powershell-to-create-anti-spam-policies).

This example creates a new spam filter policy named Research Department with the following settings:

- The action for all spam filtering verdicts is set to Quarantine.
- The custom quarantine policy named NoAccess that assigns **No access** permissions replaces any default quarantine policies that don't already assign **No access** permissions by default.

```powershell
New-HostedContentFilterPolicy -Name Research Department -SpamAction Quarantine -SpamQuarantineTag NoAccess -HighConfidenceSpamAction Quarantine -HighConfidenceSpamQuarantineTag NoAction -PhishSpamAction Quarantine -PhishQuarantineTag NoAction -BulkSpamAction Quarantine -BulkQuarantineTag NoAccess
```

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](/powershell/module/exchange/new-hostedcontentfilterpolicy).

This example modifies the existing spam filter policy named Human Resources. The action for the spam quarantine verdict is set to Quarantine, and the custom quarantine policy named NoAccess is assigned.

```powershell
Set-HostedContentFilterPolicy -Identity "Human Resources" -SpamAction Quarantine -SpamQuarantineTag NoAccess
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](/powershell/module/exchange/set-hostedcontentfilterpolicy).

## Configure global quarantine notification settings in the Microsoft 365 Defender portal

The global settings for quarantine policies allow you to customize the end-user spam notifications that are sent to recipients of messages that were quarantined. For more information about these notifications, see [End-user spam notifications](use-spam-notifications-to-release-and-report-quarantined-messages.md).

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Threat policies** \> **Rules** section \> **Quarantine policies** and then select **Quarantine policies**.

2. On the **Quarantine policy** page, select **Global settings**.

3. In the **Quarantine notification settings** flyout that opens, configure some or all of the following settings:

   - **Display name**: Customize the sender's display name that's used in end-user spam notifications.

     For each language that you've added, select the language in the second language box (don't click on the X) and enter the text value you want in the **Display name** box.

     The following screenshot shows the customized display name in an end-user spam notification:

     ![A customized sender display name in an end-user spam notification](../../media/quarantine-tags-esn-customization-display-name.png)

   - **Disclaimer**: Add a custom disclaimer to the bottom of end-user spam notifications. The localized text, **A disclaimer from your organization:** is always included first, followed by the text you specify.

     For each language that you've added, select the language in the second language box  (don't click the X) and enter the text value you want in the **Disclaimer** box.

     The following screenshot shows the customized disclaimer in an end-user spam notification:

     ![A custom disclaimer at the bottom of an end-user spam notification](../../media/quarantine-tags-esn-customization-disclaimer.png)

   - **Choose language**: End-user spam notifications are already localized based on the recipient's language settings. You can specify customized text in different languages for the **Display name** and **Disclaimer** values.

     Select at least one language from the first language box and then click **Add**. You can select multiple languages by clicking **Add** after each one. A section language box shows all of the languages that you've selected:

     ![Selected languages in the second language box in the global quarantine notification settings of quarantine policies](../../media/quarantine-tags-esn-customization-selected-languages.png)

   - **Use my company logo**: Select this option to replace the default Microsoft logo that's use at the top of end-user spam notifications. Before you do this, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your custom logo.

     The following screenshot shows a custom logo in an end-user spam notification:

     ![A custom logo in an end-user spam notification](../../media/quarantine-tags-esn-customization-logo.png)

   - **Send end-user spam notification every (days)**: Select the frequency at which you would like the end user notification to go out in.

## View quarantine policies in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Threat policies** \> **Rules** section \> **Quarantine policies** and then select **Quarantine policies**.

2. The **Quarantine policy** page shows the list of policies by **Name** and **Last updated** date.

3. To view the settings of built-in or custom quarantine policies, select the quarantine policy from the list by clicking on the name.

4. To view the global settings, click **Global settings**

### View quarantine policies in PowerShell

If you'd rather use PowerShell to view quarantine policies, do any of the following steps:

- To view a summary list of all built-in or custom policies, run the following command:

  ```powershell
  Get-QuarantineTag | Format-Table Name
  ```

- To view the settings of built-in or custom quarantine policies, replace \<QuarantinePolicyName\> with the name of the quarantine policy, and run the following command:

  ```powershell
  Get-QuarantineTag -Identity "<QuarantinePolicyName>"
  ```

- To view the global settings for end-user spam notifications, run the following command:

  ```powershell
  Get-QuarantineTag -QuarantineTagType GlobalQuarantineTag
  ```

For detailed syntax and parameter information, see [Get-HostedContentFilterPolicy](/powershell/module/exchange/get-hostedcontentfilterpolicy).

## Modify quarantine policies in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Threat policies** \> **Rules** section \> **Quarantine policies** and then select **Quarantine policies**.

2. On the **Quarantine policies** page, select the policy by clicking on the name.

3. After you select the policy, click the ![Edit policy icon](../../media/m365-cc-sc-edit-icon.png) **Edit policy** icon that appears.

4. The **Edit policy** wizard that opens is virtually identical to the **New policy** wizard as described in the [Create quarantine policies in the Microsoft 365 Defender portal](#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal) section earlier in this article.

   The main difference is: you can't rename an existing policy.

5. When you're finished modifying the policy, go to the **Summary** page and click **Submit**.

### Modify quarantine policies in PowerShell

If you'd rather use PowerShell to modify a custom quarantine policy, replace \<QuarantinePolicyName\> with the name of the quarantine policy, and use the following syntax:

```powershell
Set-QuarantineTag -Identity "<QuarantinePolicyName>" [Settings]
```

The available settings are the same as described for creating quarantine policies earlier in this article.

For detailed syntax and parameter information, see [Set-QuarantineTag](/powershell/module/exchange/set-quarantinetag).

## Remove quarantine policies in the Microsoft 365 Defender portal

**Notes**:

- You can't remove built-in quarantine policies.
- Before you remove a custom quarantine policy, verify that it's not being used. For example, run the following command in PowerShell:

  ```powershell
  Get-HostedContentFilterPolicy | Format-List Name,*QuarantineTag
  ```

  If the quarantine policy is being used, [replace the assigned quarantine policy](#step-2-assign-a-quarantine-policy-to-supported-features) before you remove it.

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Threat policies** \> **Rules** section \> **Quarantine policies** and then select **Quarantine policies**.

2. On the **Quarantine policy** page, select the custom quarantine policy that you want to remove by clicking on the name.

3. After you select the policy, click the ![Delete policy icon](../../media/m365-cc-sc-delete-icon.png) **Delete policy** icon that appears.

4. Click **Remove policy** in the confirmation dialog that appears.

### Remove quarantine policies in PowerShell

If you'd rather use PowerShell to remove a custom quarantine policy, replace \<QuarantinePolicyName\> with the name of the quarantine policy, and run the following command:

```powershell
Remove-QuarantineTag -Identity "<QuarantinePolicyName>"
```

For detailed syntax and parameter information, see [Remove-QuarantineTag](/powershell/module/exchange/remove-quarantinetag).

## Quarantine policy permission details

The following sections describe the effects of preset permission groups and individual permissions in the details of quarantined messages and in end-user spam notifications.

### Preset permissions groups

The individual permissions that are included in preset permission groups are listed in the table at the beginning of this article.

#### Admin Only access

If the quarantine policy assigns the **Admin Only access** permissions (no permissions), users will not able to see those messages that are quarantined:

- **Quarantined message details**: No message will show in the end user view.
- **End-user spam notifications**: No notification will be sent for those message

#### Limited access

If the quarantine policy assigns the **Limited access** permissions, users get the following capabilities:

- **Quarantined message details**: The following buttons are available:
  - **Request release**
  - **View message header**
  - **Preview message**
  - **Block sender**
  - **Remove from quarantine**

  ![Available buttons in the quarantined message details if the quarantine policy gives the user Limited access permissions](../../media/quarantine-tags-quarantined-message-details-limited-access.png)

- **End-user spam notifications**: The following buttons are available:
  - **Block sender**
  - **Review**

  ![Available buttons in the end-user spam notification if the quarantine policy gives the user Limited access permissions](../../media/quarantine-tags-esn-limited-access.png)

#### Full access

If the quarantine policy assigns the **Full access** permissions (all available permissions), users get the following capabilities:

- **Quarantined message details**: The following buttons are available:
  - **Release message**
  - **View message header**
  - **Preview message**
  - **Block sender**
  - **Remove from quarantine**

  ![Available buttons in the quarantined message details if the quarantine policy gives the user Full access permissions](../../media/quarantine-tags-quarantined-message-details-full-access.png)

- **End-user spam notifications**: The following buttons are available:
  - **Block sender**
  - **Release**
  - **Review**

  ![Available buttons in the end-user spam notification if the quarantine policy gives the user Full access permissions](../../media/quarantine-tags-esn-full-access.png)

### Individual permissions

#### Block sender permission

The **Block sender** permission (_PermissionToBlockSender_) controls access to the button that allows users to conveniently add the quarantined message sender to their Blocked Senders list.

- **Quarantined message details**:
  - **Block sender** permission enabled: The **Block sender** button is available.
  - **Block sender** permission disabled: The **Block sender** button is not available.

- **End-user spam notifications**:
  - **Block sender** permission disabled: The **Block sender** button is not available.
  - **Block sender** permission enabled: The **Block sender** button is available.

For more information about the Blocked Senders list, see [Block messages from someone](https://support.microsoft.com/office/274ae301-5db2-4aad-be21-25413cede077#__toc304379667) and [Use Exchange Online PowerShell to configure the safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).

#### Delete permission

The **Delete** permission (_PermissionToDelete_) controls the ability to of users to delete their messages (messages where the user is a recipient) from quarantine.

- **Quarantined message details**:
  - **Delete** permission enabled: The **Remove from quarantine** button is available.
  - **Delete** permission disabled: The **Remove from quarantine** button is not available.

- **End-user spam notifications**: No effect.

#### Preview permission

The **Preview** permission (_PermissionToPreview_) controls the ability to of users to preview their messages in quarantine.

- **Quarantined message details**:
  - **Preview** permission enabled: The **Preview message** button is available.
  - **Preview** permission disabled: The **Preview message** button is not available.

- **End-user spam notifications**: No effect.

#### Allow recipients to release a message from quarantine permission

The **Allow recipients to release a message from quarantine** permission (_PermissionToRelease_) controls the ability of users to release their quarantined messages directly and without the approval of an admin.

- **Quarantined message details**:
  - Permission enabled: The **Release message** button is available.
  - Permission disabled: The **Release message** button is not available.

- **End-user spam notifications**:
  - Permission enabled: The **Release** button is available.
  - Permission disabled: The **Release** button is not available.

#### Allow recipients to request a message to be released from quarantine permission

The **Allow recipients to request a message to be released from quarantine** permission (_PermissionToRequestRelease_) controls the ability of users to _request_ the release of their quarantined messages. The message is only released after an admin approves the request.

- **Quarantined message details**:
  - Permission enabled: The **Request release** button is available.
  - Permission disabled: The **Request release** button is not available.

- **End-user spam notifications**: The **Release** button is not available.
