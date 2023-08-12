---
title: Quarantine policies
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid:
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Admins can learn how to use quarantine policies to control what users are able to do to quarantined messages.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 8/2/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Quarantine policies

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Exchange Online Protection (EOP) and Microsoft Defender for Office 365, _quarantine policies_ allow admins to define the user experience for quarantined messages:

- What users are allowed to do to their own quarantined messages (messages where they're a recipient) based on why the message was quarantined.
- Whether users receive periodic (every four hours, daily, or weekly) notifications about their quarantined messages via [quarantine notifications](quarantine-quarantine-notifications.md).

Traditionally, users have been allowed or denied levels of interactivity with quarantine messages based on why the message was quarantined. For example, users can view and release messages that were quarantined as spam or bulk, but they can't view or release messages that were quarantined as high confidence phishing or malware.

Default quarantine policies enforce these historical user capabilities, and are automatically assigned in [supported protection features](#step-2-assign-a-quarantine-policy-to-supported-features) that quarantine messages.

For details about the elements of a quarantine policy, default quarantine policies, and individual permissions, see the [Appendix](#appendix) section at the end of this article.

If you don't like the default user capabilities for quarantined messages for a specific feature (including the lack of quarantine notifications), you can create and use custom quarantine policies as described in this article.

You create and assign quarantine policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with Exchange Online mailboxes; standalone EOP PowerShell in EOP organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- Quarantine isn't available in Microsoft 365 operated by 21Vianet.

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Quarantine policies** page, use <https://security.microsoft.com/quarantinePolicies>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- If you change the quarantine policy that's assigned to a supported protection feature, the change affects quarantined message _after_ you make the change. Messages that were quarantined before you made the change aren't affected by the settings of the new quarantine policy assignment.

- How long messages that were quarantined by anti-spam and anti-phishing protection are held before they expire is controlled by the **Retain spam in quarantine for this many days** (_QuarantineRetentionPeriod_) in anti-spam policies. For more information, see the table in [Quarantined email messages in EOP and Defender for Office 365](quarantine-about.md).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in any of the following role groups:
    - **Organization Management**
    - **Security Administrator**
    - **Quarantine Administrator**
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, or **Quarantine Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Step 1: Create quarantine policies in the Microsoft 365 Defender portal

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & Rules** \> **Threat policies** \> **Quarantine policy** in the **Rules** section. Or, to go directly to the **Quarantine policy** page, use <https://security.microsoft.com/quarantinePolicies>.

   :::image type="content" source="../../media/mdo-quarantine-policy-page.png" alt-text="Quarantine policy page in the Microsoft 365 Defender portal." lightbox="../../media/mdo-quarantine-policy-page.png":::

2. On the **Quarantine policies** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add custom policy** to start the new quarantine policy wizard.

3. On the **Policy name** page, enter a brief but unique name in the **Policy name** box. The policy name is selectable in dropdown lists in upcoming steps.

   When you're finished on the **Policy name** page, select **Next**.

4. On the **Recipient message access** page, select one of the following values:
   - **Limited access**: The individual permissions that are included in this permission group are described in the [Appendix](#appendix) section. Basically, users can do anything to their quarantined messages except release them from quarantine without admin approval.

   - **Set specific access (Advanced)**: Use this value to specify custom permissions. Configure the following settings that appear:
     - **Select release action preference**: Select one of the following values from the dropdown list:
       - Blank: Users can't release or request the release of their messages from quarantine. This is the default value.
       - **Allow recipients to request a message to be released from quarantine**
       - **Allow recipients to release a message from quarantine**
     - **Select additional actions recipients can take on quarantined messages**: Select some, all, or none of the following values:
       - **Delete**
       - **Preview**
       - **Block sender**

   These permissions and their effect on quarantined messages and in quarantine notifications are described in the [Quarantine policy permission details](#quarantine-policy-permission-details) section later in this article.

   When you're finished on the **Recipient message access** page, select **Next**.

5. On the **Quarantine notification** page, select **Enable** to turn on quarantine notifications.

   > [!NOTE]
   > If you turn on quarantine notifications for **No access** permissions (on the **Recipient message access** page, you selected **Set specific access (Advanced)** \> **Select release action preference** \> blank), users can view their messages in quarantine, but the only available action for the messages is :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: [View message headers](quarantine-end-user.md#view-email-message-headers).

   When you're finished on the **Quarantine notification** page, select **Next**.

6. On the **Review policy** page, you can review your selections. Select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review policy** page, select **Submit**, and then select **Done** in the confirmation page.

7. On the confirmation page that appears, you can use the links to review quarantined messages or go to the **Anti-spam policies** page in the Defender portal.

   When you're finished on the page, select **Done**.

Back on the **Quarantine policy** page, the policy that you created is now listed. You're ready to assign the quarantine policy to a supported security feature as described in the [Step 2](#step-2-assign-a-quarantine-policy-to-supported-features) section.

### Create quarantine policies in PowerShell

If you'd rather use PowerShell to create quarantine policies, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) or [standalone Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell) and use the following syntax:

```powershell
New-QuarantinePolicy -Name "<UniqueName>" -EndUserQuarantinePermissionsValue <0 to 236> [-EsnEnabled $true]
```

**Notes**:

- The _ESNEnabled_ parameter with the value `$true` turns on quarantine notifications. Quarantine notifications are turned off by default (the default value is `$false`).

- The _EndUserQuarantinePermissionsValue_ parameter uses a decimal value that's converted from a binary value. The binary value corresponds to the available end-user quarantine permissions in a specific order. For each permission, the value 1 equals True and the value 0 equals False.

  The required order and values for each individual permission are described in the following table:

  |Permission|Decimal value|Binary value|
  |---|:---:|:---:|
  |PermissionToViewHeader¹|128|10000000|
  |PermissionToDownload²|64|01000000|
  |PermissionToAllowSender²|32|00100000|
  |PermissionToBlockSender|16|00010000|
  |PermissionToRequestRelease³|8|00001000|
  |PermissionToRelease³|4|00000100|
  |PermissionToPreview|2|00000010|
  |PermissionToDelete|1|00000001|

  ¹ The value 0 for this permission doesn't hide the :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: **View message header** action in quarantine. If the message is visible to a user in quarantine, the action is always available for the message.

  ² This permission isn't used (the value 0 or 1 does nothing).

  ³ Don't set both of these permission values to 1. Set one value to 1 and the other value to 0, or set both values to 0.

  For Limited access permissions, the required values are:

  |Permission|Limited access|
  |---|:--:|
  |PermissionToViewHeader|0|
  |PermissionToDownload|0|
  |PermissionToAllowSender|0|
  |PermissionToBlockSender|1|
  |PermissionToRequestRelease|1|
  |PermissionToRelease|0|
  |PermissionToPreview|1|
  |PermissionToDelete|1|
  |Binary value|00011011|
  |Decimal value to use|27|

- If you set the _ESNEnabled_ parameter to the value `$true` when the value of the _EndUserQuarantinePermissionsValue_ parameter is 0 (**No access** where all permissions are turned off), users can see their messages in quarantine, but the only available action for the messages is :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: [View message headers](quarantine-end-user.md#view-email-message-headers).

This example creates a new quarantine policy named LimitedAccess with quarantine notifications turned on that assigns the Limited access permissions as described in the previous table.

```powershell
New-QuarantinePolicy -Name LimitedAccess -EndUserQuarantinePermissionsValue 27 -EsnEnabled $true
```

For custom permissions, use the previous table to get the binary value that corresponds to the permissions you want. Convert the binary value to a decimal value and use the decimal value for the _EndUserQuarantinePermissionsValue_ parameter. Don't use the binary value.

For detailed syntax and parameter information, see [New-QuarantinePolicy](/powershell/module/exchange/new-quarantinepolicy).

## Step 2: Assign a quarantine policy to supported features

In supported protection features that quarantine email messages, the assigned quarantine policy defines what users can do to quarantine messages and whether quarantine notifications are turned on. Protection features that quarantine messages and whether they support quarantine policies are described in the following table:

|Feature|Quarantine policies supported?|
|---|:---:|
|**Verdicts in [anti-spam policies](anti-spam-policies-configure.md)**||
|&nbsp;&nbsp;&nbsp;Spam (_SpamAction_)|Yes (_SpamQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;High confidence spam (_HighConfidenceSpamAction_)|Yes (_HighConfidenceSpamQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;Phishing (_PhishSpamAction_)|Yes (_PhishQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;High confidence phishing (_HighConfidencePhishAction_)|Yes (_HighConfidencePhishQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;Bulk (_BulkSpamAction_)|Yes (_BulkQuarantineTag_)|
|**Verdicts in [anti-phishing policies](anti-phishing-policies-about.md)**||
|&nbsp;&nbsp;&nbsp;Spoof (_AuthenticationFailAction_)|Yes (_SpoofQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;User impersonation (_TargetedUserProtectionAction_)|Yes (_TargetedUserQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;Domain impersonation (_TargetedDomainProtectionAction_)|Yes (_TargetedDomainQuarantineTag_)|
|&nbsp;&nbsp;&nbsp;Mailbox intelligence impersonation (_MailboxIntelligenceProtectionAction_)|Yes (_MailboxIntelligenceQuarantineTag_)|
|**[Anti-malware policies](anti-malware-policies-configure.md)**|Yes (_QuarantineTag_)|
|**[Safe Attachments protection](safe-attachments-about.md)**||
|&nbsp;&nbsp;&nbsp;Email messages with attachments that are quarantined as malware by Safe Attachments policies (_Enable_ and _Action_)|Yes (_QuarantineTag_)|
|&nbsp;&nbsp;&nbsp;Files that are quarantined as malware by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)|No|
|**[Exchange mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) with the action: 'Deliver the message to the hosted quarantine' (_Quarantine_)**|No|

The default quarantine policies that are used by each protection feature are described in the related tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

The default quarantine policies, preset permission groups, and permissions are described in the [Appendix](#appendix) section at the end of this article.

The rest of this step explains how to assign quarantine policies for supported filter verdicts.

## Assign quarantine policies in supported policies in the Microsoft 365 Defender portal

> [!NOTE]
> Users can't release their own messages that were quarantined as **malware** by anti-malware or Safe Attachments policies, or as **high confidence phishing** by anti-spam policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware or high-confidence phishing messages.

### Anti-spam policies

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Ant-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, use either of the following methods:
   - Select an existing **inbound** anti-spam policy by clicking anywhere in the row other than the check box next to the name. In the policy details flyout that opens, go to the **Actions** section and then select **Edit actions**.
   - Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create policy**, select **Inbound** from the dropdown list to start the new anti-spam policy wizard, and then get to the **Actions** page.

3. On the **Actions** page or flyout, every verdict that has the **Quarantine message** action selected also has the **Select quarantine policy** box for you to select a quarantine policy.

   During the creation of the anti-spam policy, if you _change_ the action of a spam filtering verdict to **Quarantine message**, the **Select quarantine policy** box is blank by default. A blank value means the default quarantine policy for that verdict is used. When you later view or edit the anti-spam policy settings, the quarantine policy name is shown. The default quarantine policies are listed in the [supported features table](#step-2-assign-a-quarantine-policy-to-supported-features).

   :::image type="content" source="../../media/quarantine-tags-in-anti-spam-policies.png" alt-text="The Quarantine policy selections in an anti-spam policy" lightbox="../../media/quarantine-tags-in-anti-spam-policies.png":::

Full instructions for creating and modifying anti-spam policies are described in [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

#### Anti-spam policies in PowerShell

If you'd rather use PowerShell to assign quarantine policies in anti-spam policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
<New-HostedContentFilterPolicy -Name "<Unique name>" | Set-HostedContentFilterPolicy -Identity "<Policy name>"> [-SpamAction Quarantine] [-SpamQuarantineTag <QuarantineTagName>] [-HighConfidenceSpamAction Quarantine] [-HighConfidenceSpamQuarantineTag <QuarantineTagName>] [-PhishSpamAction Quarantine] [-PhishQuarantineTag <QuarantineTagName>] [-HighConfidencePhishQuarantineTag <QuarantineTagName>] [-BulkSpamAction Quarantine] [-BulkQuarantineTag <QuarantineTagName>] ...
```

**Notes**:

- Quarantine policies matter only when messages are quarantined. The default value for the _HighConfidencePhishAction_ parameter is Quarantine, so you don't need to use that _\*Action_ parameter when you create new spam filter policies in PowerShell. By default, all other _\*Action_ parameters in new spam filter policies aren't set to value Quarantine.

  To see the important parameter values in existing anti-spam policies, run the following command:

  ```powershell
  Get-HostedContentFilterPolicy | Format-List Name,SpamAction,SpamQuarantineTag,HighConfidenceSpamAction,HighConfidenceSpamQuarantineTag,PhishSpamAction,PhishQuarantineTag,HighConfidencePhishAction,HighConfidencePhishQuarantineTag,BulkSpamAction,BulkQuarantineTag
  ```

- If you create an anti-spam policy without specifying the quarantine policy for the spam filtering verdict, the default quarantine policy for that verdict is used. For information about the default action values and the recommended action values for Standard and Strict, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

  Specify a different quarantine policy to turn on quarantine notifications or change the default end-user capabilities on quarantined messages for that particular spam filtering verdict.

  Users can't release their own messages that were quarantined as high confidence phishing, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined high-confidence phishing messages.

- In PowerShell, a new anti-spam policy in PowerShell requires a spam filter policy using the **New-HostedContentFilterPolicy** cmdlet (settings), and an exclusive spam filter rule using the **New-HostedContentFilterRule** cmdlet (recipient filters). For instructions, see [Use PowerShell to create anti-spam policies](anti-spam-policies-configure.md#use-powershell-to-create-anti-spam-policies).

This example creates a new spam filter policy named Research Department with the following settings:

- The action for all spam filtering verdicts is set to Quarantine.
- The default quarantine policy named AdminOnlyAccessPolicy that assigns **No access** permissions replaces the default quarantine policy that's used (high confidence phishing messages are quarantined by default and the AdminOnlyAccessPolicy quarantine policy is used by default).

```powershell
New-HostedContentFilterPolicy -Name "Research Department" -SpamAction Quarantine -SpamQuarantineTag AdminOnlyAccessPolicy -HighConfidenceSpamAction Quarantine -HighConfidenceSpamQuarantineTag AdminOnlyAccessPolicy -PhishSpamAction Quarantine -PhishQuarantineTag AdminOnlyAccessPolicy -BulkSpamAction Quarantine -BulkQuarantineTag AdminOnlyAccessPolicy
```

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](/powershell/module/exchange/new-hostedcontentfilterpolicy).

This example modifies the existing spam filter policy named Human Resources. The action for the spam quarantine verdict is set to Quarantine, and the custom quarantine policy named ContosoNoAccess is assigned.

```powershell
Set-HostedContentFilterPolicy -Identity "Human Resources" -SpamAction Quarantine -SpamQuarantineTag ContosoNoAccess
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](/powershell/module/exchange/set-hostedcontentfilterpolicy).

### Anti-phishing policies

Spoof intelligence is available in EOP and Defender for Office 365. User impersonation protection, domain impersonation protection, and mailbox intelligence protection are available only in Defender for Office 365. For more information, see [Anti-phishing policies in Microsoft 365](anti-phishing-policies-about.md).

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. Or, to go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

2. On the **Anti-phishing** page, use either of the following methods:
   - Select an existing anti-phishing policy by clicking anywhere in the row other than the check box next to the name. In the policy details flyout that opens, select the **Edit** link in the relevant section as described in the next steps.
   - Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new anti-phishing policy wizard. The relevant pages are described in the next steps.

3. On the **Phishing threshold & protection** page or flyout, verify that the following settings are turned on and configured as required:
   - **Enabled users to protect**: Specify users.
   - **Enabled domains to protect**: Select **Include domains I own** and/or **Include custom domains** and specify the domains.
   - **Enable mailbox intelligence**
   - **Enable intelligence for impersonation protection**
   - **Enable spoof intelligence**

4. On the **Actions** page or flyout, every verdict that has the **Quarantine the message** action also has the **Apply quarantine policy** box for you to select a quarantine policy.

   During the creation of the anti-phishing policy, if you don't select a quarantine policy, the default quarantine policy is used. When you later view or edit the anti-phishing policy settings, the quarantine policy name is shown. The default quarantine policies are listed in the [supported features table](#step-2-assign-a-quarantine-policy-to-supported-features).

   :::image type="content" source="../../media/quarantine-tags-in-anti-phishing-policies.png" alt-text="The Quarantine policy selections in an anti-phishing policy." lightbox="../../media/quarantine-tags-in-anti-phishing-policies.png":::

Full instructions for creating and modifying anti-phishing policies are available in the following articles:

- [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md)
- [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)

#### Anti-phishing policies in PowerShell

If you'd rather use PowerShell to assign quarantine policies in anti-phishing policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
<New-AntiPhishPolicy -Name "<Unique name>" | Set-AntiPhishPolicy -Identity "<Policy name>"> [-EnableSpoofIntelligence $true] [-AuthenticationFailAction Quarantine] [-SpoofQuarantineTag <QuarantineTagName>] [-EnableMailboxIntelligence $true] [-EnableMailboxIntelligenceProtection $true] [-MailboxIntelligenceProtectionAction Quarantine] [-MailboxIntelligenceQuarantineTag <QuarantineTagName>] [-EnableOrganizationDomainsProtection $true] [-EnableTargetedDomainsProtection $true] [-TargetedDomainProtectionAction Quarantine] [-TargetedDomainQuarantineTag <QuarantineTagName>] [-EnableTargetedUserProtection $true] [-TargetedUserProtectionAction Quarantine] [-TargetedUserQuarantineTag <QuarantineTagName>] ...
```

**Notes**:

- Quarantine policies matter only when messages are quarantined. In anti-phish policies, messages are quarantined when the _Enable\*_ parameter value for the feature is $true **and** the corresponding _*\Action_ parameter value is Quarantine. The default value for the _EnableMailboxIntelligence_ and _EnableSpoofIntelligence_ parameters is $true, so you don't need to use them when you create new anti-phish policies in PowerShell. By default, no _*\Action_ parameters have the value Quarantine.

  To see the important parameter values in existing anti-phish policies, run the following command:

  ```powershell
  Get-AntiPhishPolicy | Format-List EnableSpoofIntelligence,AuthenticationFailAction,SpoofQuarantineTag,EnableTargetedUserProtection,TargetedUserProtectionAction,TargetedUserQuarantineTag,EnableTargetedDomainsProtection,EnableOrganizationDomainsProtection,TargetedDomainProtectionAction,TargetedDomainQuarantineTag,EnableMailboxIntelligence,EnableMailboxIntelligenceProtection,MailboxIntelligenceProtectionAction,MailboxIntelligenceQuarantineTag
  ```

  For information about the default and recommended action values for Standard and Strict configurations, see [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings) and [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](recommended-settings-for-eop-and-office365.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

- If you create a new anti-phishing policy without specifying the quarantine policy for the anti-phishing action, the default quarantine policy for that action is used. The default quarantine policies for each anti-phishing action are shown in [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings) and [Anti-phishing policy settings in Microsoft Defender for Office 365](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365).

  Specify a different quarantine policy only if you want to change the default end-user capabilities on quarantined messages for that particular anti-phishing action.

- A new anti-phishing policy in PowerShell requires an anti-phish policy using the **New-AntiPhishPolicy** cmdlet (settings), and an exclusive anti-phish rule using the **New-AntiPhishRule** cmdlet (recipient filters). For instructions, see the following articles:
  - [Use PowerShell to configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md#use-exchange-online-powershell-to-configure-anti-phishing-policies)
  - [Use Exchange Online PowerShell to configure anti-phishing policies](anti-phishing-policies-mdo-configure.md#use-exchange-online-powershell-to-configure-anti-phishing-policies)

This example creates a new anti-phish policy named Research Department with the following settings:

- The action for all spam filtering verdicts is set to Quarantine.
- The default quarantine policy named AdminOnlyAccessPolicy that assigns **No access** permissions replaces the default quarantine policy that's used.

```powershell
New-AntiPhishPolicy -Name "Research Department" -AuthenticationFailAction Quarantine -SpoofQuarantineTag NoAccess -EnableMailboxIntelligenceProtection $true -MailboxIntelligenceProtectionAction Quarantine -MailboxIntelligenceQuarantineTag NoAccess -EnableOrganizationDomainsProtection $true -EnableTargetedDomainsProtection $true -TargetedDomainProtectionAction Quarantine -TargetedDomainQuarantineTag NoAccess -EnableTargetedUserProtection $true -TargetedUserProtectionAction Quarantine -TargetedUserQuarantineTag NoAccess
```

For detailed syntax and parameter information, see [New-AntiPhishPolicy](/powershell/module/exchange/new-antiphishpolicy).

This example modifies the existing anti-phish policy named Human Resources. The action for messages detected by user impersonation and domain impersonation is set to Quarantine, and the custom quarantine policy named ContosoNoAccess is assigned.

```powershell
Set-AntiPhishPolicy -Identity "Human Resources" -EnableTargetedDomainsProtection $true -TargetedDomainProtectionAction Quarantine -TargetedDomainQuarantineTag ContosoNoAccess -EnableTargetedUserProtection $true -TargetedUserProtectionAction Quarantine -TargetedUserQuarantineTag ContosoNoAccess
```

For detailed syntax and parameter information, see [Set-AntiPhishPolicy](/powershell/module/exchange/set-antiphishpolicy).

### Anti-malware policies

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-malware** in the **Policies** section. Or, to go directly to the **Anti-malware** page, use <https://security.microsoft.com/antimalwarev2>.

2. On the **Anti-malware** page, use either of the following methods:
   - Select an existing anti-malware policy by clicking anywhere in the row other than the check box next to the name. In the policy details flyout that opens, go to the **Protection settings** section, and then select **Edit protection settings**.
   - Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new anti-malware policy wizard and get to the **Protection settings** page.

3. On the **Protection settings** page or flyout, view or select a quarantine policy in the **Quarantine policy** box.

   Quarantine notifications are disabled in the policy named AdminOnlyAccessPolicy. To notify recipients that have messages quarantined as malware, create or use an existing quarantine policy where quarantine notifications are turned on. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

   Users can't release their own messages that were quarantined as malware by anti-malware policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

   :::image type="content" source="../../media/quarantine-tags-in-anti-malware-policies.png" alt-text="The Quarantine policy selections in an anti-malware policy." lightbox="../../media/quarantine-tags-in-anti-malware-policies.png":::

Full instructions for creating and modifying anti-malware policies are available in [Configure anti-malware policies](anti-malware-policies-configure.md).

#### Anti-malware policies in PowerShell

If you'd rather use PowerShell to assign quarantine policies in anti-malware policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
<New-AntiMalwarePolicy -Name "<Unique name>" | Set-AntiMalwarePolicy -Identity "<Policy name>"> [-QuarantineTag <QuarantineTagName>]
```

**Notes**:

- When you create new anti-malware policies without using the _QuarantineTag_ parameter, the default quarantine policy named AdminOnlyAccessPolicy is used.

  Users can't release their own messages that were quarantined as malware, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

  To see the important parameter values in existing anti-phish policies, run the following command:

  ```powershell
  Get-MalwareFilterPolicy | Format-Table Name,QuarantineTag
  ```

- A new anti-malware policy in PowerShell requires a malware filter policy using the **New-MalwareFilterPolicy** cmdlet (settings), and an exclusive malware filter rule using the **New-MalwareFilterRule** cmdlet (recipient filters). For instructions, see [Use Exchange Online PowerShell or standalone EOP PowerShell to configure anti-malware policies](anti-malware-policies-configure.md#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-anti-malware-policies).

This example creates a malware filter policy named Research Department that uses the custom quarantine policy named ContosoNoAccess that assigns **No access** permissions to the quarantined messages.

```powershell
New-MalwareFilterPolicy -Name "Research Department" -QuarantineTag ContosoNoAccess
```

For detailed syntax and parameter information, see [New-MalwareFilterPolicy](/powershell/module/exchange/new-malwarefilterpolicy).

This example modifies the existing malware filter policy named Human Resources to use the custom quarantine policy named ContosoNoAccess that assigns **No access** permissions to the quarantined messages.

```powershell
New-MalwareFilterPolicy -Identity "Human Resources" -QuarantineTag ContosoNoAccess
```

For detailed syntax and parameter information, see [Set-MalwareFilterPolicy](/powershell/module/exchange/set-malwarefilterpolicy).

### Safe Attachments policies in Defender for Office 365

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. Or, to go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, use either of the following methods:
   - Select an existing Safe Attachments policy by clicking anywhere in the row other than the check box next to the name. In the policy details flyout that opens, select the **Edit settings** link in **Settings** section.
   - Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new Safe Attachments policy wizard and get to the **Settings** page.

3. On the **Settings** page or flyout, view or select a quarantine policy in the **Quarantine policy** box.

   Users can't release their own messages that were quarantined as malware by Safe Attachments policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

   :::image type="content" source="../../media/quarantine-tags-in-safe-attachments-policies.png" alt-text="The Quarantine policy selections in a Safe Attachments policy." lightbox="../../media/quarantine-tags-in-safe-attachments-policies.png":::

Full instructions for creating and modifying Safe Attachments policies are described in [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md).

#### Safe Attachments policies in PowerShell

If you'd rather use PowerShell to assign quarantine policies in Safe Attachments policies, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
<New-SafeAttachmentPolicy -Name "<Unique name>" | Set-SafeAttachmentPolicy -Identity "<Policy name>"> -Enable $true -Action <Block | DynamicDelivery> [-QuarantineTag <QuarantineTagName>]
```

**Notes**:

- The _Action_ parameter values Block or DynamicDelivery can result in quarantined messages (the value Allow doesn't quarantine messages). The value of the _Action_ parameter in meaningful only when the value of the _Enable_ parameter is `$true`.

- When you create new Safe Attachments policies without using the _QuarantineTag_ parameter, the default quarantine policy named AdminOnlyAccessPolicy is used for malware detections by Safe Attachments.

  Users can't release their own messages that were quarantined as malware, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

  To see the important parameter values, run the following command:

  ```powershell
  Get-SafeAttachmentPolicy | Format-List Name,Enable,Action,QuarantineTag
  ```

- A new Safe Attachments policy in PowerShell requires a safe attachment policy using the **New-SafeAttachmentPolicy** cmdlet (settings), and an exclusive safe attachment rule using the **New-SafeAttachmentRule** cmdlet (recipient filters). For instructions, see [Use Exchange Online PowerShell to configure Safe Attachments policies](safe-attachments-policies-configure.md#use-exchange-online-powershell-to-configure-safe-attachments-policies).

This example creates a safe attachment policy named Research Department that blocks detected messages and uses the custom quarantine policy named ContosoNoAccess that assigns **No access** permissions to the quarantined messages.

```powershell
New-SafeAttachmentPolicy -Name "Research Department" -Enable $true -Action Block -QuarantineTag NoAccess
```

For detailed syntax and parameter information, see [New-MalwareFilterPolicy](/powershell/module/exchange/new-malwarefilterpolicy).

This example modifies the existing safe attachment policy named Human Resources to use the custom quarantine policy named ContosoNoAccess that assigns **No access** permissions.

```powershell
Set-SafeAttachmentPolicy -Identity "Human Resources" -QuarantineTag ContosoNoAccess
```

For detailed syntax and parameter information, see [Set-MalwareFilterPolicy](/powershell/module/exchange/set-malwarefilterpolicy).

## Configure global quarantine notification settings in the Microsoft 365 Defender portal

The global settings for quarantine policies allow you to customize the quarantine notifications that are sent to recipients of quarantined messages if quarantine notifications are turned on in the quarantine policy. For more information about quarantine notifications, see [Quarantine notifications](quarantine-quarantine-notifications.md).

### Customize quarantine notifications for different languages

Quarantine notifications are already localized based on the recipient's language settings. You can customize the **Sender display name**, **Subject**, and **Disclaimer** values that are used in quarantine notifications based on the recipient's language.

- The **Sender display name** as shown in the following screenshot:

  :::image type="content" source="../../media/quarantine-tags-esn-customization-display-name.png" alt-text="A customized sender display name in a quarantine notification." lightbox="../../media/quarantine-tags-esn-customization-display-name.png":::

- The **Subject** field of quarantine notification messages.

- The **Disclaimer** text that's added to the bottom of quarantine notifications. The localized text, **A disclaimer from your organization:** is always included first, followed by the text you specify as show in the following screenshot:

:::image type="content" source="../../media/quarantine-tags-esn-customization-disclaimer.png" alt-text="A custom disclaimer at the bottom of a quarantine notification." lightbox="../../media/quarantine-tags-esn-customization-disclaimer.png":::

To create customized quarantine notifications for up to three languages, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Quarantine policies** in the **Rules** section. Or, to go directly to the **Quarantine policies** page, use <https://security.microsoft.com/quarantinePolicies>.

2. On the **Quarantine policies** page, select :::image type="icon" source="../../media/m365-cc-sc-gear-icon.png" border="false"::: **Global settings**.

3. In the **Quarantine notification settings** flyout that opens, do the following steps:

   1. Select the language from the **Choose language** box. The default value is **Default**, which means the default language for the Microsoft 365 organization. For more information, see [How to set language and region settings for Microsoft 365](/office365/troubleshoot/access-management/set-language-and-region).

      Although this box is in the middle of the page, you need to select it first. If you enter values in the **Sender display name**, **Subject**, or **Disclaimer** boxes before you select the language value, the other values are removed and you start over when you select the language value.

      > [!NOTE]
      > The language value **English** maps to every English language code except en-US. If you have users with en-US mailboxes only, use the value **Default**. If you have a mix of mailboxes with en-US and other English languages codes (en-GB, en-CA, en-AU, etc.), use the language value **Default** in one customized quarantine notification, and the language value **English** in another customized quarantine notification.

   2. Enter values for **Sender display name**, **Subject**, and **Disclaimer**. The values must be unique for each language. If you try to reuse a value in a different language, you'll get an error when you select **Save**.
   3. Select the **Add** button.
   4. Repeat the previous steps to create a maximum of three customized quarantine notifications based on the recipient's language. An unlabeled box shows the languages that you've configured:

      :::image type="content" source="../../media/quarantine-tags-esn-customization-selected-languages.png" alt-text="The selected languages in the global quarantine notification settings of quarantine policies." lightbox="../../media/quarantine-tags-esn-customization-selected-languages.png":::

     Select the language value in the box to edit the settings for that language. Select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: to remove the language.

4. When you're finished on the **Quarantine notifications** flyout, select **Save**.

   :::image type="content" source="../../media/mdo-quarantine-policy-quarantine-notification-settings.png" alt-text="Quarantine notification settings flyout in the Microsoft 365 Defender portal." lightbox="../../media/mdo-quarantine-policy-quarantine-notification-settings.png":::

### Customize all quarantine notifications

Even if you don't customize quarantine notifications for different languages, settings are available in the **Quarantine notifications flyout** to customize all quarantine notifications. Or, you can configure the settings before, during, or after you customize quarantine notifications for different languages (these settings apply to all languages):

- **Specify sender address**: Select an existing user for the sender email address of quarantine notifications. The default sender is quarantine@messaging.microsoft.com.

- **Use my company logo**: Select this option to replace the default Microsoft logo that's used at the top of quarantine notifications. Before you do this step, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your custom logo.

  A custom logo in a quarantine notification is shown in the following screenshot:

  :::image type="content" source="../../media/quarantine-tags-esn-customization-logo.png" alt-text="A custom logo in a quarantine notification" lightbox="../../media/quarantine-tags-esn-customization-logo.png":::

 - **Send end-user spam notification every (days)**: Select the frequency for quarantine notifications. You can select **Within 4 hours**, **Daily**, or **Weekly**.

When you're finished in the **Quarantine notifications flyout**, select **Save**.

### Use PowerShell to configure global quarantine notification settings

If you'd rather use PowerShell to configure global quarantine notification settings, connect to Exchange Online PowerShell or Exchange Online Protection PowerShell and use the following syntax:

```powershell
Get-QuarantinePolicy -QuarantinePolicyType GlobalQuarantinePolicy | Set-QuarantinePolicy -MultiLanguageSetting ('Language1','Language2','Language3') -MultiLanguageCustomDisclaimer ('Language1 Disclaimer','Language2 Disclaimer','Language3 Disclaimer') -ESNCustomSubject ('Language1 Subject','Language2 Subject','Language3 Subject') -MultiLanguageSenderName ('Language1 Sender Display Name','Language2 Sender Display Name','Language3 Sender Display Name') [-EndUserSpamNotificationCustomFromAddress <InternalUserEmailAddress>] [-OrganizationBrandingEnabled <$true | $false>] [-EndUserSpamNotificationFrequency <04:00:00 | 1.00:00:00 | 7.00:00:00>]
```

**Notes**:

- You can specify a maximum of 3 available languages (the value Default is the [default language for the Microsoft 365 organization](/office365/troubleshoot/access-management/set-language-and-region).
- For each language, you need to specify unique _MultiLanguageCustomDisclaimer_, _ESNCustomSubject_, and _MultiLanguageSenderName_ values.
- If any of the text values contain quotation marks, you need to escape the quotation mark with an additional quotation mark. For example, change `d'assistance` to `d''assistance`.

This example configures the following settings:

- Customized quarantine notifications for the default language and Spanish.
- The quarantine notification sender's email address is set to michelle@contoso.onmicrosoft.com.

```powershell
Get-QuarantinePolicy -QuarantinePolicyType GlobalQuarantinePolicy | Set-QuarantinePolicy -MultiLanguageSetting ('Default','Spanish') -MultiLanguageCustomDisclaimer ('For more information, contact the Help Desk.','Para obtener más información, comuníquese con la mesa de ayuda.') -ESNCustomSubject ('You have quarantined messages','Tienes mensajes en cuarentena') -MultiLanguageSenderName ('Contoso administrator','Administradora de contoso') -EndUserSpamNotificationCustomFromAddress michelle@contoso.onmicrosoft.com
```

For detailed syntax and parameter information, see [Set-QuarantinePolicy](/powershell/module/exchange/set-quarantinepolicy).

## View quarantine policies in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Quarantine policies** in the **Rules** section. Or, to go directly to the **Quarantine policies** page, use <https://security.microsoft.com/quarantinePolicies>.

2. The **Quarantine policies** page shows the list of policies by **Policy name** and **Last updated** date/time.

3. To view the settings of default or custom quarantine policies, select the policy by clicking anywhere in the row other than the check box next to the name. Details are available in the flyout that opens.

4. To view the global settings, select **Global settings**

### View quarantine policies in PowerShell

If you'd rather use PowerShell to view quarantine policies, do any of the following steps:

- To view a summary list of all default or custom policies, run the following command:

  ```powershell
  Get-QuarantinePolicy | Format-Table Name
  ```

- To view the settings of default or custom quarantine policies, replace \<QuarantinePolicyName\> with the name of the quarantine policy, and run the following command:

  ```powershell
  Get-QuarantinePolicy -Identity "<QuarantinePolicyName>"
  ```

- To view the global settings for quarantine notifications, run the following command:

  ```powershell
  Get-QuarantinePolicy -QuarantinePolicyType GlobalQuarantinePolicy
  ```

For detailed syntax and parameter information, see [Get-HostedContentFilterPolicy](/powershell/module/exchange/get-hostedcontentfilterpolicy).

## Modify quarantine policies in the Microsoft 365 Defender portal

You can't modify the default quarantine policies named AdminOnlyAccessPolicy, DefaultFullAccessPolicy, or DefaultFullAccessWithNotificationPolicy.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Quarantine policies** in the **Rules** section. Or, to go directly to the **Quarantine policies** page, use <https://security.microsoft.com/quarantinePolicies>.

2. On the **Quarantine policies** page, select the policy by clicking the check box next to the name.

3. Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit policy** action that appears.

The policy wizard opens with the settings and values of the selected quarantine policy. The steps are virtually the same as described in the [Create quarantine policies in the Microsoft 365 Defender portal](#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal) section. The main difference is: you can't rename an existing policy.

### Modify quarantine policies in PowerShell

If you'd rather use PowerShell to modify a custom quarantine policy, replace \<QuarantinePolicyName\> with the name of the quarantine policy, and use the following syntax:

```powershell
Set-QuarantinePolicy -Identity "<QuarantinePolicyName>" [Settings]
```

The available settings are the same as described for creating quarantine policies earlier in this article.

For detailed syntax and parameter information, see [Set-QuarantinePolicy](/powershell/module/exchange/set-quarantinepolicy).

## Remove quarantine policies in the Microsoft 365 Defender portal

**Notes**:

- You can't remove the default quarantine policies named AdminOnlyAccessPolicy, DefaultFullAccessPolicy, or DefaultFullAccessWithNotificationPolicy.
- Before you remove a quarantine policy, verify that it's not being used. For example, run the following command in PowerShell:

  ```powershell
  Write-Output -InputObject "Anti-spam policies",("-"*25);Get-HostedContentFilterPolicy | Format-List Name,*QuarantineTag; Write-Output -InputObject "Anti-phishing policies",("-"*25);Get-AntiPhishPolicy | Format-List Name,*QuarantineTag; Write-Output -InputObject "Anti-malware policies",("-"*25);Get-MalwareFilterPolicy | Format-List Name,QuarantineTag; Write-Output -InputObject "Safe Attachments policies",("-"*25);Get-SafeAttachmentPolicy | Format-List Name,QuarantineTag
  ```

  If the quarantine policy is being used, [replace the assigned quarantine policy](#step-2-assign-a-quarantine-policy-to-supported-features) before you remove it.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Quarantine policies** in the **Rules** section. Or, to go directly to the **Quarantine policies** page, use <https://security.microsoft.com/quarantinePolicies>.

2. On the **Quarantine policies** page, select the policy by clicking the check box next to the name.

3. Select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** action that appears.

4. Select **Remove policy** in the confirmation dialog.

### Remove quarantine policies in PowerShell

If you'd rather use PowerShell to remove a custom quarantine policy, replace \<QuarantinePolicyName\> with the name of the quarantine policy, and run the following command:

```powershell
Remove-QuarantinePolicy -Identity "<QuarantinePolicyName>"
```

For detailed syntax and parameter information, see [Remove-QuarantinePolicy](/powershell/module/exchange/remove-quarantinepolicy).

## System alerts for quarantine release requests

By default, the default alert policy named **User requested to release a quarantined message** automatically generates an informational alert and sends notification to Organization Management (global administrator) whenever a user requests the release of a quarantined message:

Admins can customize the email notification recipients or create a custom alert policy for more options.

For more information about alert policies, see [Alert policies in Microsoft 365](../../compliance/alert-policies.md).

## Appendix

### Anatomy of a quarantine policy

A quarantine policy contains _permissions_ that are combined into _preset permission groups_. The preset permissions groups are:

- No access
- Limited access
- Full access

As previously described, _default quarantine policies_ enforce historical user capabilities on quarantined messages, and are automatically assigned to actions in [supported protection features](#step-2-assign-a-quarantine-policy-to-supported-features) that quarantine messages.

The default quarantine policies are:

- AdminOnlyAccessPolicy
- DefaultFullAccessPolicy
- DefaultFullAccessWithNotificationPolicy
- NotificationEnabledPolicy (in some organizations)

Quarantine policies also control whether users receive _quarantine notifications_ about messages that were quarantined instead of delivered to them. Quarantine notifications do two things:

- Inform the user that the message is in quarantine.
- Allow users to view and take action on the quarantined message from the quarantine notification. Permissions control what the user can do in the quarantine notification as described in the [Quarantine policy permission details](#quarantine-policy-permission-details) section.

The relationship between permissions, permissions groups, and the default quarantine policies are described in the following tables:

|Permission|No access|Limited access|Full access|
|---|:---:|:---:|:---:|
|(_PermissionToViewHeader_)¹|✔|✔|✔|
|**Block sender** (_PermissionToBlockSender_)||✔|✔|
|**Delete** (_PermissionToDelete_)||✔|✔|
|**Preview** (_PermissionToPreview_)²||✔|✔|
|**Allow recipients to release a message from quarantine** (_PermissionToRelease_)³|||✔|
|**Allow recipients to request a message to be released from quarantine** (_PermissionToRequestRelease_)||✔||

|Default quarantine policy|Permission group used|Quarantine notifications enabled?|
|---|:---:|:---:|
|AdminOnlyAccessPolicy|No access|No|
|DefaultFullAccessPolicy|Full access|No|
|DefaultFullAccessWithNotificationPolicy⁴|Full access|Yes|
|NotificationEnabledPolicy⁵|Full access|Yes|

¹ This permission isn't available in the Defender portal. Turning off the permission in PowerShell doesn't affect the availability of the :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: **View message header** action on quarantined messages. If the message is visible to a user in quarantine, the action is always available for the message.

² The **Preview** permission is unrelated to the **Review message** action that's available in quarantine notifications.

³ **Allow recipients to release a message from quarantine** isn't honored for messages that were quarantined as **malware** by anti-malware policies or Safe Attachments policies, or as **high confidence phishing** by anti-spam policies.

⁴ This policy is used in [preset security policies](preset-security-policies.md) to enable quarantine notifications instead of the policy named DefaultFullAccessPolicy where notifications are turned off.

⁵ Your organization might not have the policy named NotificationEnabledPolicy as described in the next section.

#### Full access permissions and quarantine notifications

The default quarantine policy named DefaultFullAccessPolicy duplicates the historical _permissions_ for less harmful quarantined messages, but _quarantine notifications_ aren't turned on in the quarantine policy. Where DefaultFullAccessPolicy is used by default is described in the feature tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

To give organizations the permissions of DefaultFullAccessPolicy with quarantine notifications turned on, we selectively included a default policy named NotificationEnabledPolicy based on the following criteria:

- The organization existed before the introduction of quarantine policies (July-August 2021).

  **and**

- The **Enable end-user spam notifications** setting was turned on in one or more [anti-spam policies](anti-spam-policies-configure.md). Before the introduction of quarantine policies, this setting determined whether users received notifications about their quarantined messages.

Newer organizations or older organizations that never turned on end-user spam notifications don't have the policy named NotificationEnabledPolicy.

To give users **Full access** permissions _and_ quarantine notifications, organizations that don't have the NotificationEnabledPolicy policy have the following options:

- Use the default policy named DefaultFullAccessWithNotificationPolicy.
- Create and use custom quarantine policies with **Full access** permissions and quarantine notifications turned on.

### Quarantine policy permission details

The following sections describe the effects of preset permission groups and individual permissions for users in quarantined messages and in quarantine notifications.

> [!NOTE]
> As explained earlier, quarantine notifications are turned on only in the default policies named DefaultFullAccessWithNotificationPolicy or ([if your organization is old enough](#full-access-permissions-and-quarantine-notifications)) NotificationEnabledPolicy.

#### Preset permissions groups

The individual permissions that are included in preset permission groups are described in the [Anatomy of a quarantine policy](#anatomy-of-a-quarantine-policy) section.

##### No access

The effect of **No access** permissions (admin only access) on user capabilities depends on the state of quarantine notifications in the quarantine policy:

- **Quarantine notifications turned off**:
  - **On the Quarantine page**: Quarantined messages aren't visible to users.
  - **In quarantine notifications**: Users don't receive quarantine notifications for the messages.

- **Quarantine notifications turned on**:
  - **On the Quarantine page**: Quarantined messages are visible to users, but the only available action is :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: [View message headers](quarantine-end-user.md#view-email-message-headers).
  - **In quarantine notifications**: Users receive quarantine notifications, but the only available action is **Review message**.

##### Limited access

If the quarantine policy assigns **Limited access** permissions, users get the following capabilities:

- **On the Quarantine page and in the message details in quarantine**: The following actions are available:
  - :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: [Request release](quarantine-end-user.md#request-the-release-of-quarantined-email) (the difference from **Full access** permissions)
  - :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: [Delete](quarantine-end-user.md#delete-email-from-quarantine)
  - :::image type="icon" source="../../media/m365-cc-sc-preview-message-icon.png" border="false"::: [Preview message](quarantine-end-user.md#preview-email-from-quarantine)
  - :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: [View message headers](quarantine-end-user.md#view-email-message-headers)
  - :::image type="icon" source="../../media/m365-cc-sc-block-sender-icon.png" border="false":::  [Block sender](quarantine-end-user.md#block-email-senders-from-quarantine)

- **In quarantine notifications**: The following actions are available:
  - **Review message**
  - **Request release** (the difference from **Full access** permissions)
  - **Block sender**

##### Full access

If the quarantine policy assigns **Full access** permissions (all available permissions), users get the following capabilities:

- **On the Quarantine page and in the message details in quarantine**: The following actions are available:
  - :::image type="icon" source="../../media/m365-cc-sc-check-mark-icon.png" border="false"::: [Release](quarantine-end-user.md#release-quarantined-email)  (the difference from **Limited access** permissions)
  - :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: [Delete](quarantine-end-user.md#delete-email-from-quarantine)
  - :::image type="icon" source="../../media/m365-cc-sc-preview-message-icon.png" border="false"::: [Preview message](quarantine-end-user.md#preview-email-from-quarantine)
  - :::image type="icon" source="../../media/m365-cc-sc-view-message-headers-icon.png" border="false"::: [View message headers](quarantine-end-user.md#view-email-message-headers)
  - :::image type="icon" source="../../media/m365-cc-sc-block-sender-icon.png" border="false"::: [Block sender](quarantine-end-user.md#block-email-senders-from-quarantine)

- **In quarantine notifications**: The following actions are available:
  - **Review message**
  - **Release** (the difference from **Limited access** permissions)
  - **Block sender**

#### Individual permissions

##### Block sender permission

The **Block sender** permission (_PermissionToBlockSender_) allows users to add the message sender to the Blocked Senders list in their mailbox.

If the **Block sender** permission is enabled:

- :::image type="icon" source="../../media/m365-cc-sc-block-sender-icon.png" border="false"::: [Block sender](quarantine-end-user.md#block-email-senders-from-quarantine) is available on the **Quarantine** page and in the message details in quarantine.
- **Blocked sender** is available in quarantine notifications.

  For this permission to work correctly in quarantine notifications, users need to be enabled for remote PowerShell. For instructions, see [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell).

If the **Block sender** permission is disabled, users can't block senders from quarantine or in quarantine notifications (the action isn't available).

For more information about the Blocked Senders list, see [Block messages from someone](https://support.microsoft.com/office/274ae301-5db2-4aad-be21-25413cede077#__toc304379667) and [Use Exchange Online PowerShell to configure the safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).

> [!TIP]
> The organization can still receive mail from the blocked sender. Messages from the sender are delivered to user Junk Email folders or to quarantine. To delete messages from the sender upon arrival, use [mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) to **Block the message**.

##### Delete permission

The **Delete** permission (_PermissionToDelete_) allows users to delete their own messages from quarantine (messages where they're a recipient).

If the **Delete** permission is enabled:

- :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: [Delete](quarantine-end-user.md#delete-email-from-quarantine) is available on the **Quarantine** page and in the message details in quarantine.
- No effect in quarantine notifications. Deleting a quarantined message from the quarantine notification is not possible.

If the **Delete** permission is disabled, users can't delete their own messages from quarantine (the action isn't available).

> [!TIP]
> Admins can find out who deleted a quarantined message by searching the admin audit log. For instructions, see [Find who deleted a quarantined message](quarantine-admin-manage-messages-files.md#find-who-deleted-a-quarantined-message).

##### Preview permission

The **Preview** permission (_PermissionToPreview_) allows users to preview their messages in quarantine.

If the **Preview** permission is enabled:

- :::image type="icon" source="../../media/m365-cc-sc-preview-message-icon.png" border="false"::: [Preview message](quarantine-end-user.md#preview-email-from-quarantine) is available on the **Quarantine** page and in the message details in quarantine.
- No effect in quarantine notifications. Previewing a quarantined message from the quarantine notification isn't possible. The **Review message** action in quarantine notifications takes users to the details flyout of the message in quarantine where they can preview the message.

If the **Preview** permission is disabled, users can't preview their own messages in quarantine (the action isn't available).

##### Allow recipients to release a message from quarantine permission

> [!NOTE]
> As explained previously, this permission isn't honored for messages that were quarantined as **malware** by anti-malware or Safe Attachments policies, or as **high confidence phishing** by anti-spam policies. If the quarantine policy gives users this permission, users are instead allowed to _request_ the release of their quarantined malware or high confidence phishing messages.

The **Allow recipients to release a message from quarantine** permission (_PermissionToRelease_) allows users to release their own quarantined messages without admin approval.

If the **Allow recipients to release a message from quarantine** permission is enabled:

- :::image type="icon" source="../../media/m365-cc-sc-check-mark-icon.png" border="false"::: [Release](quarantine-end-user.md#release-quarantined-email) is available on the **Quarantine** page and in the message details in quarantine.
- **Release** is available in quarantine notifications.

If the **Allow recipients to release a message from quarantine** permission is disabled, users can't release their own messages from quarantine or in quarantine notifications (the action isn't available).

##### Allow recipients to request a message to be released from quarantine permission

The **Allow recipients to request a message to be released from quarantine** permission (_PermissionToRequestRelease_) allows users to _request_ the release of their quarantined messages. Messages are released only after an admin approves the request.

If the **Allow recipients to request a message to be released from quarantine** permission is enabled:

- :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: [Request release](quarantine-end-user.md#request-the-release-of-quarantined-email) is available on the **Quarantine** page and in the message details in quarantine.
- **Request release** is available in quarantine notifications.

If the **Allow recipients to request a message to be released from quarantine** permission is disabled, users can't request the release of their own messages from quarantine or in quarantine notifications (the action isn't available).
