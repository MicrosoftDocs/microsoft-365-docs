---
title: Allow or block emails using the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
description: Admins can learn how to allow or block emails and spoofed sender entries in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Allow or block emails using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

You can use the Microsoft 365 Defender portal or PowerShell to allow or block emails (including spoofing emails) using the Tenant Allow/Block List.

## Create block for domains or email addresses entries 

### Use the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, verify that the **Domains & addresses** tab is selected, and then click ![Block icon.](../../media/m365-cc-sc-create-icon.png) **Block**.

3. In the **Block domains & addresses** flyout that appears, configure the following settings:
   - **Email addresses or domains**: Enter one email address or domain per line, up to a maximum of 20.
   - **Never expire**: Do one of the following steps:
     - Verify the setting is turned off (![Toggle off.](../../media/scc-toggle-off.png)) and use the **Remove on** box to specify the expiration date for the entries.

       or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on.](../../media/scc-toggle-on.png).
   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

> [!NOTE]
> - The emails from these addresses or domains will be blocked as _high confidence spam_ (SCL = 9) and moved to junk folder.
> - Users in the organization won't be able to send emails to these blocked domains and addresses. They will receive a non-delivery report which will state the following: "5.7.1  Your message can't be delivered because one or more recipients are blocked by your organization’s tenant allow/block list policy."

### Use PowerShell

To add domains or email addresses block entries in the Tenant Allow/Block List, use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType <Sender> -Block -Entries "Value1","Value2",..."ValueN" <-ExpirationDate Date | -NoExpiration> [-Notes <String>]
```

This example adds a block for the specified email address or domain that expires on a specific date.

```powershell
New-TenantAllowBlockListItems -ListType Sender -Block -Entries "test@badattackerdomain.com", "test2@anotherattackerdomain.com" -ExpirationDate 8/20/2021
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

## Create allow sender entries 

### Use Microsoft 365 Defender

Allow senders email addresses (or domains) on the **Submissions** page in Microsoft 365 Defender.

You can't directly modify the Tenant Allow/Block List to add allow entries. Instead, use [admin submissions](admin-submission.md) to submit the blocked message. This action will add the corresponding URL, file, spoofed sender domain pair, impersonated domain (or user) and/or domains or email addresses to the Tenant Allow/Block List. If the item has not been blocked, then the allow won't be created. In most cases where the message was determined to be a false positive that was incorrectly blocked, the allow entry will be removed on the specified expiration date.

> [!IMPORTANT]
> - Because Microsoft manages the allow entries for you, unneeded domains or email addresses, URL, or file allow entries that aren't needed will be removed. This behavior protects your organization and helps prevent misconfigured allow entries. If you disagree with the verdict, you might need to open a support case to help determine why a message is still considered bad.


1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** tab is selected, and then click ![Submit to Microsoft for analysis icon.](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for review** flyout to submit a message by adding the network message ID or uploading the email file.

4. In the **Select a reason for submitting to Microsoft** section, select **Should not have been blocked (false positive)**.

5. Turn on **Allow messages like this** option.

6. From the **Remove after** drop-down list, specify how long you want the allow option to work.

7. Add why you are adding the allow using the **Optional Note** box. 

8. When you're finished, select the **Submit** button.

  :::image type="content" source="../../media/admin-submission-allow-messages.png" alt-text="Submit malware to Microsoft for analysis example." lightbox="../../media/admin-submission-allow-messages.png":::

> [!NOTE]
>
> - During mail flow, Based on which filters determined the mail to be malicious, the allows are added. For example, the sender and URL are determined to be bad, an allow will be added for each.
> - When that entity (domain or email address, URL, file) is encountered again, all filters associated with that entity are skipped.
> - During mail flow, if the rest of the filters find the email containing this entity to be clean, the email will be delivered. For example, a sender allow (when authentication passes) will bypass all verdicts except malware and high confidence phishing associated with an attachment or URL.

## View domain or email addresses entries 

To view blocked domains or email addresses entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType <Sender> [-Entry <SenderValue | FileHashValue | URLValue>] [<-ExpirationDate Date | -NoExpiration>]
```
For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

## Modify domain or email addresses entries 

To modify allowed or blocked domains or email addresses entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType <Sender> -Ids <"Id1","Id2",..."IdN"> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

## Remove domain or email addresses entries 

To remove allowed or blocked domains or email addresses entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType <Sender> -Ids <"Id1","Id2",..."IdN">
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## Domain pair syntax for spoofed sender entries

A domain pair for a spoofed sender in the Tenant Allow/Block List uses the following syntax: `<Spoofed user>, <Sending infrastructure>`.

- **Spoofed user**: This value involves the email address of the spoofed user that's displayed in the **From** box in email clients. This address is also known as the `5322.From` address. Valid values include:
  - An individual email address (for example, chris@contoso.com).
  - An email domain (for example, contoso.com).
  - The wildcard character (for example, \*).

- **Sending infrastructure**: This value indicates the source of messages from the spoofed user. Valid values include:
  - The domain found in a reverse DNS lookup (PTR record) of the source email server's IP address (for example, fabrikam.com).
  - If the source IP address has no PTR record, then the sending infrastructure is identified as \<source IP\>/24 (for example, 192.168.100.100/24).
  - A verified DKIM domain.

Here are some examples of valid domain pairs to identify spoofed senders:

- `contoso.com, 192.168.100.100/24`
- `chris@contoso.com, fabrikam.com`
- `*, contoso.net`

The maximum number of spoofed sender entries is 1000.

Adding a domain pair only allows or blocks the *combination* of the spoofed user *and* the sending infrastructure. It does not allow email from the spoofed user from any source, nor does it allow email from the sending infrastructure source for any spoofed user.

For example, you add an allow entry for the following domain pair:

- **Domain**: gmail.com
- **Infrastructure**: tms.mx.com

Only messages from that domain _and_ sending infrastructure pair are allowed to spoof. Other senders attempting to spoof gmail.com aren't allowed. Messages from senders in other domains originating from tms.mx.com are checked by spoof intelligence.

> [!NOTE]
> You can't use wildcards in the sending infrastructure.

## Create blocked spoofed sender entries

### Use Microsoft 365 Defender

> [!NOTE]
> Email from these senders will be blocked as _phish_.
>
> Only the _combination_ of the spoofed user _and_ the sending infrastructure as defined in the domain pair is specifically allowed or blocked from spoofing.
>
> When you configure an allow or block entry for a domain pair, messages from that domain pair no longer appear in the spoof intelligence insight.
>
> Entries for spoofed senders never expire.

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, select the **Spoofed senders** tab, and then click ![Block icon.](../../media/m365-cc-sc-create-icon.png) **Add**.

3. In the **Add new domain pairs** flyout that appears, configure the following settings:
   - **Add new domain pairs with wildcards**: Enter one domain pair per line, up to a maximum of 20. For details about the syntax for spoofed sender entries, see [Manage the Tenant Allow/Block List](tenant-allow-block-list.md).
   - **Spoof type**: Select one of the following values:
     - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
     - **External**: The spoofed sender is in an external domain.
   - **Action**: Select **Block**.

4. When you're finished, click **Add**.

> [!NOTE]
> The emails from these senders will be blocked as _phish_.

### Use PowerShell

To add spoofed sender entries in the Tenant Allow/Block List, use the following syntax:

```powershell
New-TenantAllowBlockListSpoofItems -SpoofedUser <Domain | EmailAddress | *> -SendingInfrastructure <Domain | IPAddress/24> -SpoofType <External | Internal> -Action <Allow | Block>
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListSpoofItems](/powershell/module/exchange/new-tenantallowblocklistspoofitems).

## Create allowed spoofed sender entries 

### Use the Tenant Allow/Block List in Microsoft 365 Defender

> [!NOTE]
>
> - Only the _combination_ of the spoofed user _and_ the sending infrastructure as defined in the domain pair is specifically allowed or blocked from spoofing.
> - When you configure an allow or block entry for a domain pair, messages from that domain pair no longer appear in the spoof intelligence insight.
> - Entries for spoofed senders never expire.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, select the **Spoofed senders** tab, and then click ![Add icon.](../../media/m365-cc-sc-create-icon.png) **Add**.

3. In the **Add new domain pairs** flyout that appears, configure the following settings:
   - **Add new domain pairs with wildcards**: Enter one domain pair per line, up to a maximum of 20. For details about the syntax for spoofed sender entries, see [Manage the Tenant Allow/Block List](tenant-allow-block-list.md).
   - **Spoof type**: Select one of the following values:
     - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
     - **External**: The spoofed sender is in an external domain.
   - **Action**: Select **Allow**.

4. When you're finished, click **Add**.

### Use Admin Submission in Microsoft 365 Defender

You can also allow spoofed senders using the **Submissions** page in Microsoft 365 Defender.

Use [admin submissions](admin-submission.md) to submit the blocked message. This action will add the corresponding URL, file, spoofed sender domain pair, impersonated domain (or user) and/or sender to the Tenant Allow/Block List. If the item has not been blocked, then the allow won't be created. 

> [!IMPORTANT]
>
> - Spoof allows take care of intra-org, cross-org and DMARC spoofing.
> - The optional note in the admin submission don't apply to spoof allows.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** tab is selected, and then click ![Submit to Microsoft for analysis icon.](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for review** flyout to submit a message by adding the network message ID or uploading the email file.

4. In the **Select a reason for submitting to Microsoft** section, select **Should not have been blocked (false positive)**.

5. Turn on **Allow messages like this** option.

6. From the **Remove after** drop-down list, specify how long you want the allow option to work though it does not applies to spoof allows as they never expire.

7. When you're finished, select the **Submit** button.

  :::image type="content" source="../../media/admin-submission-allow-messages.png" alt-text="Submit malware to Microsoft for analysis example." lightbox="../../media/admin-submission-allow-messages.png":::

> [!NOTE]
>
> - The spoofed sender domain pair will be created and visible in the **Spoofed senders** tab under the **Tenant allow/block list** page.


### Use PowerShell

To add spoofed sender entries in the Tenant Allow/Block List in [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListSpoofItems -SpoofedUser <Domain | EmailAddress | *> -SendingInfrastructure <Domain | IPAddress/24> -SpoofType <External | Internal> -Action <Allow | Block>
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListSpoofItems](/powershell/module/exchange/new-tenantallowblocklistspoofitems).

## View spoofed sender entries

To view spoofed sender entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Get-TenantAllowBlockListSpoofItems [-Action <Allow | Block>] [-SpoofType <External | Internal>
```

This example returns all spoofed sender entries in the Tenant Allow/Block List.

```powershell
Get-TenantAllowBlockListSpoofItems
```

This example returns all allow spoofed sender entries that are internal.

```powershell
Get-TenantAllowBlockListSpoofItems -Action Allow -SpoofType Internal
```

This example returns all blocked spoofed sender entries that are external.

```powershell
Get-TenantAllowBlockListSpoofItems -Action Block -SpoofType External
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListSpoofItems](/powershell/module/exchange/get-tenantallowblocklistspoofitems).

## Modify spoofed sender entries 

To modify allow or block spoofed sender entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListSpoofItems -Ids <"Id1","Id2",..."IdN"> -Action <Allow | Block>
```

This example changes spoofed sender entry from allow to block.

```powershell
Set-TenantAllowBlockListItems -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSRAAAA" -Action Block
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListSpoofItems](/powershell/module/exchange/set-tenantallowblocklistspoofitems).

## Remove spoofed sender entries 

To remove allow or block spoof sender entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListSpoofItems -Ids <"Id1","Id2",..."IdN">
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListSpoofItems](/powershell/module/exchange/remove-tenantallowblocklistspoofitems).

## Create impersonated sender entries

### Use Admin Submission in Microsoft 365 Defender

You can also allow impersonated senders using the **Submissions** page in Microsoft 365 Defender.

Use [admin submissions](admin-submission.md) to submit the blocked message. This action will add the corresponding URL, file, spoofed sender domain pair, impersonated domain (or user) and/or sender to the Tenant Allow/Block List. If the item has not been blocked, then the allow won't be created. 

> [!IMPORTANT]
>
> - Impersonation allows take care of domain and user impersonation.
> - Graph Impersonation is not taken care from here for now.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, verify that the **Emails** tab is selected, and then click ![Submit to Microsoft for analysis icon.](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for review** flyout to submit a message by adding the network message ID or uploading the email file.

4. In the **Select a reason for submitting to Microsoft** section, select **Should not have been blocked (false positive)**.

5. Turn on **Allow messages like this** option.

6. From the **Remove after** drop-down list, specify how long you want the allow option to work though it does not applies to impersonated allows as they never expire.

7. When you're finished, select the **Submit** button.

  :::image type="content" source="../../media/admin-submission-allow-messages.png" alt-text="Submit malware to Microsoft for analysis example." lightbox="../../media/admin-submission-allow-messages.png":::

> [!NOTE]
> The impersonated domain (or user) will be created and visible in the **Trusted senders and domains** section in the anti-phishing policy at <https://security.microsoft.com/antiphishing>.

## Related articles

- [Admin submissions](admin-submission.md)
- [Report false positives and false negatives](report-false-positives-and-false-negatives.md)
- [Manage your allows and blocks in the Tenant Allow/Block List](manage-tenant-allow-block-list.md)
- [Allow or block files in the Tenant Allow/Block List](allow-block-files.md)
- [Allow or block URLs in the Tenant Allow/Block List](allow-block-urls.md)
