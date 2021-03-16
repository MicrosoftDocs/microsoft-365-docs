---
title: Configure junk email settings on Exchange Online mailboxes
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MOE150
  - MED150
  - MBS150
  - MET150
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to configure the junk email settings in Exchange Online mailboxes. Many of these settings are available to users in Outlook or Outlook on the web.
ms.technology: mdo
ms.prod: m365-security
---

# Configure junk email settings on Exchange Online mailboxes

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

In Microsoft 365 organizations with mailboxes in Exchange Online, organizational anti-spam settings are controlled by Exchange Online Protection (EOP). For more information, see [Anti-spam protection in EOP](anti-spam-protection.md).

But, there are also specific anti-spam settings that admins can configure on individual mailboxes in Exchange Online:

- **Enable or disable the junk email rule**: The junk email rule is a hidden Inbox rule named Junk E-mail Rule that's enabled by default in every mailbox. The junk email rule controls the following features:

  - **Move messages to the Junk Email folder based on anti-spam policies**: When an anti-spam policy is configured with the action **Move message to Junk Email folder** for a spam filtering verdict, the junk email filter rule moves the message to the Junk Email folder after the message is delivered to the mailbox. For more information about spam filtering verdicts in anti-spam policies, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md). Similarly, if zero-hour auto purge (ZAP) determines a delivered message is spam or phish, the junk email filter rule moves the message to the Junk Email folder for **Move message to Junk Email folder** spam filtering verdict actions. For more information about ZAP, see [Zero-hour auto purge (ZAP) in Exchange Online](zero-hour-auto-purge.md).

  - **Junk email settings that users configure for themselves in Outlook or Outlook on the web**: The _safelist collection_ is the Safe Senders list, the Safe Recipients list, and the Blocked Senders list on each mailbox. The entries in these lists determine whether the junk email rule moves the message to the Inbox or the Junk Email folder. Users can configure the safelist collection for their own mailbox in Outlook or Outlook on the web (formerly known as Outlook Web App). Admins can configure the safelist collection on any user's mailbox.

When the junk email rule is enabled on the mailbox, EOP is able to move messages to the Junk Email folder based on the spam filtering verdict action **Move message to Junk Email folder** or the Blocked Senders list on the mailbox, and prevent messages from being delivered to the Junk Email folder (based on the Safe Senders list on the mailbox).

 When the junk email rule is disabled on the mailbox, EOP can't move messages to the Junk Email folder based on the spam filtering verdict action **Move message to Junk Email folder** or the safelist collection on the mailbox.

Admins can use Exchange Online PowerShell to disable, enable, and view the status of the junk email rule on mailboxes. Admins can also use Exchange Online PowerShell to configure entries in the safelist collection on mailboxes (the Safe Senders list, the Safe Recipients list, and the Blocked Senders list).

> [!NOTE]
> Messages from senders that users have added to their own Safe Senders lists will skip connection filtering as part of EOP (the SCL is -1). To prevent users from adding entries to their Safe Senders list in Outlook, use Group Policy as mentioned in the  [About junk email settings in Outlook](#about-junk-email-settings-in-outlook) section later in this article. Policy filtering, Content filtering and Defender for Office 365 checks will still be applied to the messages.

## What do you need to know before you begin?

- You can only use Exchange Online PowerShell to do the procedures in this article. To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions in Exchange Online before you can do the procedures in this article. Specifically, you need the **Mail Recipients** role (which is assigned to the **Organization Management**, **Recipient Management**, and **Custom Mail Recipients** role groups by default) or the **User Options** role (which is assigned to the **Organization Management** and **Help Desk** role groups by default). To add users to role groups in Exchange Online, see [Modify role groups in Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups). Note that users with default permissions can do these same procedures on their own mailbox, as long as they have [access to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/disable-access-to-exchange-online-powershell).

- In standalone EOP environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange to translate the EOP spam filtering verdict so the junk email rule can move the message to the Junk Email folder. For details, see [Configure standalone EOP to deliver spam to the Junk Email folder in hybrid environments](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md).

- Safe Senders for shared mailboxes are not synchronized to Azure AD and EOP by design.

## Use Exchange Online PowerShell to enable or disable the junk email rule in a mailbox

> [!NOTE]
> You can only use the **Set-MailboxJunkEmailConfiguration** cmdlet to disable the junk email rule on a mailbox that's been opened in Outlook (in Cached Exchange mode) or Outlook on the web. If the mailbox hasn't been opened, you'll receive the error: `The Junk Email configuration couldn't be set. The user needs to sign in to Outlook Web App before they can modify their Safe Senders and Recipients or Blocked Senders lists.` If you want to suppress this error for bulk operations, you can add `-ErrorAction SilentlyContinue` to the **Set-MailboxJunkEmailConfiguration** command.

To enable or disable the junk email rule on a mailbox, use the following syntax:

```PowerShell
Set-MailboxJunkEmailConfiguration -Identity <MailboxIdentity> -Enabled <$true | $false>
```

This example disables the junk email rule on Ori Epstein's mailbox.

```PowerShell
Set-MailboxJunkEmailConfiguration -Identity "Ori Epstein" -Enabled $false
```

This example disables the junk email rule on all user mailboxes in the organization.

```PowerShell
$All = Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize Unlimited; $All | foreach {Set-MailboxJunkEmailConfiguration $_.Name -Enabled $false}
```

For detailed syntax and parameter information, see [Set-MailboxJunkEmailConfiguration](https://docs.microsoft.com/powershell/module/exchange/set-mailboxjunkemailconfiguration).

> [!NOTE]
>
> - If the user has never opened their mailbox, you might receive an error when you run the previous command. To suppress this error for bulk operations, add `-ErrorAction SilentlyContinue` to the **Set-MailboxJunkEmailConfiguration** command.
>
> - Even if you disable the junk email rule, the Outlook Junk Email Filter (depending on how it's configured) can also determine whether a message is spam, and can move messages to the Inbox or Junk Email folder based on it's own spam verdict and the the safelist collection on the mailbox. For more information, see the [About junk email settings in Outlook](#about-junk-email-settings-in-outlook) section in this article.

### How do you know this worked?

To verify that you have successfully enabled or disabled the junk email rule on a mailbox, use any of the following procedures:

- Replace _\<MailboxIdentity\>_ with the name, alias, or email address of the mailbox, and run the following command to verify the **Enabled** property value:

  ```PowerShell
  Get-MailboxJunkEmailConfiguration -Identity "<MailboxIdentity>" | Format-List Enabled
  ```

## Use Exchange Online PowerShell to configure the safelist collection on a mailbox

The safelist collection on a mailbox includes the Safe Senders list, the Safe Recipients list, and the Blocked Senders list. By default, users can configure the safelist collection on their own mailbox in Outlook or Outlook on the web. Administrators can use the corresponding parameters on the **Set-MailboxJunkEmailConfiguration** cmdlet to configure the safelist collection on a user's mailbox. These parameters are described in the following table.

****

|Parameter on Set-MailboxJunkEmailConfiguration|Outlook on the web setting|
|---|---|
|_BlockedSendersAndDomains_|**Move email from these senders or domains to my Junk Email folder**|
|_ContactsTrusted_|**Trust email from my contacts**|
|_TrustedListsOnly_|**Only trust email from addresses in my Safe senders and domains list and Safe mailing lists**|
|_TrustedSendersAndDomains_<sup>\*</sup>|**Don't move email from these senders to my Junk Email folder**|
|

<sup>\*</sup> **Notes**:

- In Exchange Online, **domain entries** in the Safe Senders list or _TrustedSendersAndDomains_ parameter aren't recognized, so only use email addresses. In standalone EOP with directory synchronization, domain entries aren't synchronized by default, but you can enable synchronization for domains. For more information, see [KB3019657](https://support.microsoft.com/help/3019657).

- You can't directly modify the Safe Recipients list by using the **Set-MailboxJunkEmailConfiguration** cmdlet (the _TrustedRecipientsAndDomains_ parameter doesn't work). You modify the Safe Senders list, and those changes are synchronized to the Safe Recipients list.

To configure the safelist collection on a mailbox, use the following syntax:

```PowerShell
Set-MailboxJunkEmailConfiguration <MailboxIdentity> -BlockedSendersAndDomains <EmailAddressesOrDomains | $null> -ContactsTrusted <$true | $false> -TrustedListsOnly <$true | $false> -TrustedSendersAndDomains  <EmailAddresses | $null>
```

To enter multiple values and overwrite any existing entries for the _BlockedSendersAndDomains_ and _TrustedSendersAndDomains_ parameters, use the following syntax: `"<Value1>","<Value2>"...`. To add or remove one or more values without affecting other existing entries, use the following syntax: `@{Add="<Value1>","<Value2>"... ; Remove="<Value3>","<Value4>...}`

This example configures the following settings for the safelist collection on Ori Epstein's mailbox:

- Add the value shopping@fabrikam.com to the Blocked Senders list.

- Remove the value chris@fourthcoffee.com from the Safe Senders list and the Safe Recipients list.

- Configures contacts in the Contacts folder to be treated as trusted senders.

```PowerShell
Set-MailboxJunkEmailConfiguration "Ori Epstein" -BlockedSendersAndDomains @{Add="shopping@fabrikam.com"} -TrustedSendersAndDomains @{Remove="chris@fourthcoffee.com"} -ContactsTrusted $true
```

This example removes the domain contoso.com from the Blocked Senders list in all user mailboxes in the organization.

```PowerShell
$All = Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize Unlimited; $All | foreach {Set-MailboxJunkEmailConfiguration $_.Name -BlockedSendersAndDomains @{Remove="contoso.com"}}
```

For detailed syntax and parameter information, see [Set-MailboxJunkEmailConfiguration](https://docs.microsoft.com/powershell/module/exchange/set-mailboxjunkemailconfiguration).

> [!NOTE]
>
> - If the user has never opened their mailbox, you might receive an error when you run the previous commands. To suppress this error for bulk operations, add `-ErrorAction SilentlyContinue` to the **Set-MailboxJunkEmailConfiguration** command.
>
> - Even if the junk email rule is disabled on the mailbox, you can still configure the safelist collection, and the Outlook Junk Email Filter is able to move messages to the Inbox or the Junk Email folder. For more information, see the [About junk email settings in Outlook](#about-junk-email-settings-in-outlook) section in this article.
>
> - The Outlook Junk Email Filter has additional safelist collection settings (for example, **Automatically add people I email to the Safe Senders list**). For more information, see [Use Junk Email Filters to control which messages you see](https://support.microsoft.com/office/274ae301-5db2-4aad-be21-25413cede077).

### How do you know this worked?

To verify that you have successfully configured the safelist collection on a mailbox, use any of following procedures:

- Replace _\<MailboxIdentity\>_ with the name, alias, or email address of the mailbox, and run the following command to verify the property values:

  ```PowerShell
  Get-MailboxJunkEmailConfiguration -Identity "<MailboxIdentity>" | Format-List trusted*,contacts*,blocked*
  ```

  If the list of values is too long, use this syntax:

  ```PowerShell
  (Get-MailboxJunkEmailConfiguration -Identity <MailboxIdentity>).BlockedSendersAndDomains
  ```

## About junk email settings in Outlook

To enable, disable, and configure the client-side Junk Email Filter settings that are available in Outlook, use Group Policy. For more information, see [Administrative Template files (ADMX/ADML) and Office Customization Tool for Microsoft 365 Apps for enterprise, Office 2019, and Office 2016](https://www.microsoft.com/download/details.aspx?id=49030) and [How to deploy junk email settings, such as the Safe Senders list, by using Group Policy](https://support.microsoft.com/help/2252421).

When the Outlook Junk Email Filter is set to the default value **No automatic filtering** in **Home** \> **Junk** \> **Junk E-Mail Options** \> **Options**, Outlook doesn't attempt to classify massages as spam, but still uses the safelist collection (the Safe Senders list, Safe Recipients list, and Blocked Senders list) to move messages to the Junk Email folder after delivery. For more information about these settings, see [Overview of the Junk Email Filter](https://support.microsoft.com/office/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089).

When the Outlook Junk Email Filter is set to **Low** or **High**, the Outlook Junk Email Filter uses its own SmartScreen filter technology to identify and move spam to the Junk Email folder. This spam classification is separate from the spam confidence level (SCL) that's determined by EOP. In fact, Outlook ignores the SCL from EOP (unless EOP marked the message to skip spam filtering) and uses its own criteria to determine whether the message is spam. Of course, it's possible that the spam verdict from EOP and Outlook might be the same. For more information about these settings, see [Change the level of protection in the Junk Email Filter](https://support.microsoft.com/office/e89c12d8-9d61-4320-8c57-d982c8d52f6b).

> [!NOTE]
> In November 2016, Microsoft stopped producing spam definition updates for the SmartScreen filters in Exchange and Outlook. The existing SmartScreen spam definitions were left in place, but their effectiveness will likely degrade over time. For more information, see [Deprecating support for SmartScreen in Outlook and Exchange](https://techcommunity.microsoft.com/t5/exchange-team-blog/deprecating-support-for-smartscreen-in-outlook-and-exchange/ba-p/605332).

So, the Outlook Junk Email Filter is able to use the mailbox's safelist collection and its own spam classification to move messages to the Junk Email folder, even if the junk email rule is disabled in the mailbox.

Outlook and Outlook on the web both support the safelist collection. The safelist collection is saved in the Exchange Online mailbox, so changes to the safelist collection in Outlook appear in Outlook on the web, and vice-versa.

## Limits for junk email settings

The safelist collection (the Safe Senders list, Safe Recipients list, and Blocked Senders list) that's stored in the user's mailbox is also synchronized to EOP. With directory synchronization, the safelist collection is synchronized to Azure AD.

- The safelist collection in the user's mailbox has a limit of 510 KB, which includes all lists, plus additional junk email filter settings. If a user exceeds this limit, they will receive an Outlook error that looks like this:

  > Cannot/Unable add to the server Junk E-mail lists. You are over the size allowed on the server. The Junk E-mail filter on the server will be disabled until your Junk E-mail lists have been reduced to the size allowed by the server.

  For more information about this limit and how to change it, see [KB2669081](https://support.microsoft.com/help/2669081).

- The synchronized safelist collection in EOP has the following synchronization limits:

  - 1024 total entries in the Safe Senders list, the Safe Recipients list, and external contacts if **Trust email from my contacts** is enabled.
  - 500 total entries in the Blocked Senders list and Blocked Domains list.

  When the 1024 entry limit is reached, the following things happen:

  - The list stops accepting entries in PowerShell and Outlook on the web, but no error is displayed.

    Outlook users can continue to add more than 1024 entries until they reach the Outlook limit of 510 KB. Outlook can use these additional entries, as long as an EOP filter doesn't block the message before delivery to the mailbox (mail flow rules, anti-spoofing, etc.).

- With directory synchronization, the entries are synchronized to Azure AD in the following order:

  1. Mail contacts if **Trust email from my contacts** is enabled.
  2. The Safe Sender list and Safe Recipient list are combined, de-duplicated, and sorted alphabetically whenever a change is made for the first 1024 entries.

  The first 1024 entries are used, and relevant information is stamped in the message headers.

  Entries over 1024 that weren't synchronized to Azure AD are processed by Outlook (not Outlook on the web), and no information is stamped in the message headers.

As you can see, enabling the **Trust email from my contacts** setting reduces the number of Safe Senders and Safe Recipients that can be synchronized. If this is a concern, then we recommend using Group Policy to turn this feature off:

- File name: outlk16.opax
- Policy setting: **Trust e-mail from contacts**
