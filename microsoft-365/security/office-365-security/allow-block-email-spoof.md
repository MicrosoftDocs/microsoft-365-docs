---
title: Allow or block email using the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
description: Admins can learn how to allow or block email and spoofed sender entries in the Tenant Allow/Block List in the Security portal.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Allow or block email using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

This article describes how to create and manage allow and block entries for domains and email addresses (including spoofed senders) that are available in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage your allows and blocks in the Tenant Allow/Block List](manage-tenant-allow-block-list.md).

You manage allow and block entries for email in the Microsoft 365 Defender Portal or in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- For domains and email addresses, the maximum number of allow entries is 500, and the maximum number of block entries is 500 (1000 domain and email address entries total).

- For spoofed senders, the maximum number of entries is 1024.

- Entries for spoofed senders never expire.

- For details about the syntax for spoofed sender entries, see the [Domain pair syntax for spoofed sender entries](#domain-pair-syntax-for-spoofed-sender-entries) section later in this article.

- An entry should be active within 30 minutes, but it might take up to 24 hours for the entry to be active.

- You need to be assigned permissions in Exchange Online before you can do the procedures in this article:
  - To add and remove values from the Tenant Allow/Block List, you need to be a member of one of the following role groups:
    - **Organization Management** or **Security Administrator** role group (**Security admin role**)
    - **Security Operator** role group (**Tenant AllowBlockList Manager**).
  - For read-only access to the Tenant Allow/Block List, you need to be a member of one of the following role groups:
    - **Global Reader**  role group
    - **Security Reader** role group
    - **View-Only configuration** role group

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!Note]
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions *and* permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  > - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

## Domains and email addresses in the Tenant Allow/Block List

### Create block entries for domains and email addresses

You have the following options to create block entries for domains and email addresses:

- [The Submissions page in the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-block-entries-for-domains-and-email-addresses-in-the-submissions-portal)
- The Tenant Allow/Block List in [the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-block-entries-for-domains-and-email-addresses-in-the-tenant-allowblock-list) or in [PowerShell](#use-powershell-to-create-block-entries-for-domains-and-email-addresses-in-the-tenant-allowblock-list)

To create block entries for spoofed senders, see the [Use the Microsoft 365 Defender portal to view allow or block entries for spoofed senders in the Tenant Allow/Block List](#use-the-microsoft-365-defender-portal-to-view-allow-or-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list) section later in this article.

#### Use the Microsoft 365 Defender portal to create block entries for domains and email addresses in the Submissions portal

When you use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report email messages as **Should have been blocked (False negative)**, you can select **Block all emails from this recipient** to add a block entry for the sender on the **Domains & addresses** tab in the Tenant Allow/Block List.

For instructions, see [Report questionable email to Microsoft](admin-submission.md#report-questionable-email-to-microsoft).

#### Use the Microsoft 365 Defender portal to create block entries for domains and email addresses in the Tenant Allow/Block List

You can create block entries for domains and email addresses directly in the Tenant Allow/Block List.

Email messages from these senders are marked as *high confidence spam* (SCL = 9). What happens to the messages is determined by the [anti-spam policy](configure-your-spam-filter-policies.md) that detected the message for the recipient. In the default anti-spam policy and new custom policies, messages that are marked as high confidence spam are delivered to the Junk Email folder by default. In Standard and Strict [preset security policies](preset-security-policies.md), high confidence spam messages are quarantined.

> [!NOTE]
> Users in the organization can't send email to these blocked domains and addresses. They'll receive the following non-delivery report (also known as an NDR or bounce message): `550 5.7.703 Your message can't be delivered because one or more recipients are blocked by your organization's tenant recipient block policy.` The entire message is blocked for all recipients of the message, even if only one recipient email address or domain is defined in a block entry.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, verify that the **Domains & addresses** tab is selected.

3. On the **Domains & addresses** tab, click ![Block icon.](../../media/m365-cc-sc-create-icon.png) **Block**.

4. In the **Block domains & addresses** flyout that appears, configure the following settings:

   - **Domains & addresses**: Enter one email address or domain per line, up to a maximum of 20.

   - **Remove block entry after**: The default value is **30 days**, but you can select from the following values:
     - **1 day**
     - **7 days**
     - **30 days**
     - **Never expire**
     - **Specific date**: The maximum value is 90 days from today.

   - **Optional note**: Enter descriptive text for the entries.

5. When you're finished, click **Add**.

##### Use PowerShell to create block entries for domains and email addresses in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType Sender -Block -Entries "DomainOrEmailAddress1","DomainOrEmailAddress1",..."DomainOrEmailAddressN" <-ExpirationDate Date | -NoExpiration> [-Notes <String>]
```

This example adds a block entry for the specified email address that expires on a specific date.

```powershell
New-TenantAllowBlockListItems -ListType Sender -Block -Entries "test@badattackerdomain.com","test2@anotherattackerdomain.com" -ExpirationDate 8/20/2022
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

### Use the Microsoft 365 Defender portal to create allow entries for domains and email addresses in the Submissions portal

You can't create allow entries for domains and email addresses directly in the Tenant Allow/Block List. Instead, you use the Submissions portal at <https://security.microsoft.com/reportsubmission> to report the message as a false positive, which also adds an allow entry for the sender on the **Domains & addresses** tab in the Tenant Allow/Block List.

For instructions, see [Report good email to Microsoft](admin-submission.md#report-good-email-to-microsoft).

> [!NOTE]
> Microsoft does not allow you to create allow entries directly as it leads to creation of allows that are not needed, thus exposing your organization to malicious email which might otherwise have been filtered by the system.
>
> Microsoft manages the allow creation process from Submission by creating allows for those entities (domains or email addresses, spoofed senders, URLs, files) which were determined to be malicious by filters during mail flow. For example, if the sender and a URL in the message were determined to be bad, an allow entry is created for the sender, and an allow entry is created for the URL.
>
> When that entity (domain or email address, URL, file) is encountered again, all filters associated with that entity are skipped.
>
> During mail flow, if messages from the domain or email address pass other checks in the filtering stack, the messages will be delivered. For example, if [email authentication](email-validation-and-authentication.md) passes, a message from a sender in the allow entry will be delivered.

### Use the Microsoft 365 Defender portal to view allow or block entries for domains and email addresses in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Verify the **Domains & addresses** tab is selected. The following columns are available:

   - **Value**: The domain or email address.
   - **Action**: The value **Allow** or **Block**.
   - **Modified by**
   - **Last updated**
   - **Remove on**: The expiration date.
   - **Notes**

   You can click on a column heading to sort in ascending or descending order.

   Click ![Group icon.](../../media/m365-cc-sc-group-icon.png) **Group** to group the results by **None** or **Action**.

   Click ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon.](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the results. The following values are available in the **Filter** flyout that appears:

   - **Action**: **Allow** and **Block**.
   - **Never expire**: ![Toggle on.](../../media/scc-toggle-on.png) or ![Toggle off.](../../media/scc-toggle-off.png)
   - **Last updated**: Select **From** and **To** dates.
   - **Remove on**: Select **From** and **To** dates.

   When you're finished, click **Apply**. To clear existing filters, click ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters** in the **Filter** flyout.

#### Use PowerShell to view allow or block entries for domains and email addresses in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType Sender [-Allow] [-Block] [-Entry <Domain or Email address value>] [<-ExpirationDate Date | -NoExpiration>]
```

This example returns all allow and block entries for domains and email addresses.

```powershell
Get-TenantAllowBlockListItems -ListType Sender
```

This example filters the results for block entries for domains and email addresses.

```powershell
Get-TenantAllowBlockListItems -ListType Sender -Block
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

### Use the Microsoft 365 Defender portal to modify allow or block entries for domains and email addresses in the Tenant Allow/Block List

When you modify allow or block entries for domains and email addresses in the Tenant Allow/Block list, you can only modify the expiration date and notes.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Verify the **Domains & addresses** tab is selected.

3. On the **Domains & addresses** tab, select the check box of the entry that you want to modify, and then click the ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** button that appears.

4. The following settings are available in the **Edit domain & addresses** flyout that appears:

   - **Remove allow entry after** or **Remove block entry after**:
     - You can extend allow entries for a maximum of 30 days after the creation date.
     - You can extend block entries for a maximum of 90 days after the creation date or set them to **Never expire**.

   - **Optional note**

   When you're finished, click **Save**.

Note that with **allow expiry management** (currently in private preview), if Microsoft has not learned from the allow, Microsoft will automatically extend the expiry time of allows, which are going to expire soon, by 30 days to prevent legitimate email from going to junk or quarantine again. If Microsoft does not learn within 90 calendar days from the date of allow creation, Microsoft will remove the allow.

If Microsoft has learned from the allow, the allow will be removed and you will get an alert informing you about it.

> [!NOTE]
> For allow entries only, if you select the entry by clicking anywhere in the row other than the check box, you can select ![View submission icon.](../../media/m365-cc-sc-view-submission-icon.png) **View submission** in the details flyout that appears to go to the **Submissions** page at <https://security.microsoft.com/reportsubmission>.

#### Use PowerShell to modify allow or block entries for domains and email addresses in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType Sender <-Ids <Identity value> | -Entries <Value value>> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the specified block entry for domains and email addresses.

```powershell
Set-TenantAllowBlockListItems -ListType Sender -Entries "julia@fabrikam.com" -ExpirationDate "9/1/2022"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

### Use the Microsoft 365 Defender portal to remove allow or block entries for domains and email addresses in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Verify the **Domains & addresses** tab is selected.

3. On **Domains & addresses** tab, do one of the following steps:

   - Select the check box of the entry that you want to remove, and then click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears.
   - Select the entry that you want to remove by clicking anywhere in the row other than the check box. In the details flyout that appears, click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.

> [!NOTE]
> You can select multiple entries by selecting each check box, or select all entries by selecting the check box next to the **Value** column header.

#### Use PowerShell to remove allow or block entries for domains and email addresses from the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType Sender <-Ids <Identity value> | -Entries <Value value>>
```

This example removes the specified block entry for domains and email addresses from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Sender -Entries "adatum.com"
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## Spoofed senders in the Tenant Allow/Block List

### Create allow entries for spoofed senders

You have the following options to create block entries for spoofed senders:

- [The Submissions page in the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-domains-and-email-addresses-in-the-submissions-portal)
- The Tenant Allow/Block List in [the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-spoofed-senders-in-the-tenant-allowblock-list) or in [PowerShell](#use-powershell-to-create-block-entries-for-spoofed-senders-in-the-tenant-allowblock-list)

> [!NOTE]
> Allow entries for spoofed senders take care of intra-org, cross-org, and DMARC spoofing.
>
> Only the combination of the spoofed user *and* the sending infrastructure as defined in the [domain pair](#domain-pair-syntax-for-spoofed-sender-entries) is allowed to spoof.
>
> When you configure an allow entry for a domain pair, messages from that domain pair no longer appear in the [spoof intelligence insight](learn-about-spoof-intelligence.md).
>
> Allow entries for spoofed senders never expire.

#### Use the Microsoft 365 Defender portal to create allow entries for spoofed senders in the Submissions portal

Submitting messages that were blocked by [spoof intelligence](learn-about-spoof-intelligence.md) to Microsoft in the **Submissions** portal at <https://security.microsoft.com/reportsubmission> adds the sender as an allow entry for the sender on the **Spoofed senders** tab in Tenant Allow/Block List.

For instructions, see [Report good email to Microsoft](admin-submission.md#report-good-email-to-microsoft).

> [!NOTE]
> When you override the verdict in the spoof intelligence insight, the spoofed sender becomes a manual allow or block entry that only appears on the **Spoofed senders** tab in the Tenant Allow/Block List.
>
> If the sender has not been blocked by spoof intelligence, submitting the email message to Microsoft won't create an allow entry in the Tenant Allow/Block List.

#### Use the Microsoft 365 Defender portal to create allow entries for spoofed senders in the Tenant Allow/Block List

In the Tenant Allow/Block List, you can create allow entries for spoofed senders before they're detected and blocked by [spoof intelligence](learn-about-spoof-intelligence.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, select the **Spoofed senders** tab, and then click ![Add icon.](../../media/m365-cc-sc-create-icon.png) **Add**.

3. In the **Add new domain pairs** flyout that appears, configure the following settings:

   - **Add domain pairs with wildcards**: Enter domain pair per line, up to a maximum of 20. For details about the syntax for spoofed sender entries, see the [Domain pair syntax for spoofed sender entries](#domain-pair-syntax-for-spoofed-sender-entries) section later in this article.

   - **Spoof type**: Select one of the following values:
     - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
     - **External**: The spoofed sender is in an external domain.

   - **Action**: Select **Allow** or **Block**.

   When you're finished, click **Add**.

##### Use PowerShell to create allow entries for spoofed senders in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListSpoofItems -Identity Default -Action Allow -SpoofedUser <Domain | EmailAddress> -SendingInfrastructure <Domain | IPAddress/24> -SpoofType <External | Internal>
```

This example creates an allow entry for the sender bob@contoso.com from the source contoso.com.

```powershell
New-TenantAllowBlockListSpoofItems -Identity Default -Action Allow -SendingInfrastructure contoso.com -SpoofedUser bob@contoso.com -SpoofType External
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListSpoofItems](/powershell/module/exchange/new-tenantallowblocklistspoofitems).

### Use the Microsoft 365 Defender portal to create block entries for spoofed senders in the Tenant Allow/Block List

You create block entries for spoofed senders directly in the Tenant Allow/Block List.

> [!NOTE]
> Email messages from these senders are blocked as *phishing*.
>
> Only the combination of the spoofed user *and* the sending infrastructure as defined in the [domain pair](#domain-pair-syntax-for-spoofed-sender-entries) is blocked from spoofing.
>
> When you configure a block entry for a domain pair, messages from that domain pair no longer appear in the [spoof intelligence insight](learn-about-spoof-intelligence.md).
>
> Block entries for spoofed senders never expire.

The instructions to report the message are nearly identical to the steps in [Use the Microsoft 365 Defender portal to create allow entries for domains and email addresses in the Submissions portal](#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-domains-and-email-addresses-in-the-submissions-portal).

The only difference is: for the **Action** value in Step 4, choose **Block** instead of **Allow**.

#### Use PowerShell to create block entries for spoofed senders in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListSpoofItems -Identity Default -Action Block -SpoofedUser <Domain | EmailAddress> -SendingInfrastructure <Domain | IPAddress/24> -SpoofType <External | Internal>
```

This example creates a block entry for the sender laura@adatum.com from the source 172.17.17.17/24.

```powershell
New-TenantAllowBlockListSpoofItems -Identity Default -Action Allow -SendingInfrastructure 172.17.17.17/24 -SpoofedUser laura@adatum.com -SpoofType External
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListSpoofItems](/powershell/module/exchange/new-tenantallowblocklistspoofitems).

### Use the Microsoft 365 Defender portal to view allow or block entries for spoofed senders in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Verify the **Spoofed senders** tab is selected. The following columns are available:

   - **Spoofed user**
   - **Sending infrastructure**
   - **Spoof type**: The value **Internal** or **External**.
   - **Action**: The value **Block** or **Allow**.

   You can click on a column heading to sort in ascending or descending order.

   Click ![Group icon.](../../media/m365-cc-sc-group-icon.png) **Group** to group the results by **None**, **Action**, or **Spoof type**.

   Click ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon.](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the results. The following values are available in the **Filter** flyout that appears:

   - **Action**: **Allow** and **Block**.
   - **Spoof type**: **Internal** and **External**.

   When you're finished, click **Apply**. To clear existing filters, click ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters** in the **Filter** flyout.

#### Use PowerShell to view allow or block entries for spoofed senders in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

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

### Use the Microsoft 365 Defender portal to modify allow or block entries for spoofed senders in the Tenant Allow/Block List

When you modify an allow or block entry for spoofed senders in the Tenant Allow/Block list, you can only change the entry from **Allow** to **Block**, or vice-versa.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Spoofed senders** tab.

3. On the **Spoofed senders** tab, select the entry that you want to modify, and then click the ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** button that appears.

4. In the **Edit spoofed sender** flyout that appears, choose **Allow** or **Block**.

5. When you're finished, click **Save**.

#### Use PowerShell to modify allow or block entries for spoofed senders in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListSpoofItems -Identity Default -Ids <Identity value> -Action <Allow | Block>
```

This example changes spoofed sender entry from allow to block.

```powershell
Set-TenantAllowBlockListItems -Identity Default -Ids 3429424b-781a-53c3-17f9-c0b5faa02847 -Action Block
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListSpoofItems](/powershell/module/exchange/set-tenantallowblocklistspoofitems).

### Use the Microsoft 365 Defender portal to remove allow or block entries for spoofed senders in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Spoofed senders** tab.

3. On the **Spoofed senders** tab, select the entry that you want to remove, and then click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears.

4. In the warning dialog that appears, click **Delete**.

> [!NOTE]
> You can select multiple entries by selecting each check box, or selecting all entries by selecting the check box next to the **Spoofed user** column header.

#### Use PowerShell to remove allow or block entries for spoofed senders from the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListSpoofItems -Identity domain.com\Default -Ids <Identity value>
```

```powershell
Remove-TenantAllowBlockListSpoofItems -Identity domain.com\Default -Ids d86b3b4b-e751-a8eb-88cc-fe1e33ce3d0c
```

This example removes the specified spoofed sender. You get the Ids parameter value from the Identity property in the output of Get-TenantAllowBlockListSpoofItems command.

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListSpoofItems](/powershell/module/exchange/remove-tenantallowblocklistspoofitems).

### Domain pair syntax for spoofed sender entries

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

Adding a domain pair only allows or blocks the *combination* of the spoofed user *and* the sending infrastructure. It does not allow email from the spoofed user from any source, nor does it allow email from the sending infrastructure source for any spoofed user.

For example, you add an allow entry for the following domain pair:

- **Domain**: gmail.com
- **Sending infrastructure**: tms.mx.com

Only messages from that domain *and* sending infrastructure pair are allowed to spoof. Other senders attempting to spoof gmail.com aren't allowed. Messages from senders in other domains originating from tms.mx.com are checked by spoof intelligence.

> [!NOTE]
> You can specify wildcards in the sending infrastructure or in the spoofed user, but not in both at the same time. For example, `*, *` is not permitted.

## About impersonated domains or senders

In organizations with Microsoft Defender for Office 365, you can't create allow entries in the Tenant/Allow/Block List for messages that were detected as impersonation by [domain or sender impersonation protection](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

Reporting a message that was incorrectly blocked as impersonation in the Submissions portal at <https://security.microsoft.com/reportsubmission> does not add the sender or domain as an allow entry in the Tenant Allow/Block List.

Instead, the domain or sender is added to the **Trusted senders and domains section** in the [anti-phishing policy](configure-mdo-anti-phishing-policies.md#use-the-microsoft-365-defender-portal-to-modify-anti-phishing-policies) that detected the message.

The instructions to report the message are identical to the steps in [Use the Microsoft 365 Defender portal to create allow entries for domains and email addresses in the Submissions portal](#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-domains-and-email-addresses-in-the-submissions-portal).

> [!NOTE]
> Currently, Graph Impersonation is not taken care from here.

## Related articles

- [Use the Submissions portal to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](admin-submission.md)
- [Report false positives and false negatives](report-false-positives-and-false-negatives.md)
- [Manage your allows and blocks in the Tenant Allow/Block List](manage-tenant-allow-block-list.md)
- [Allow or block files in the Tenant Allow/Block List](allow-block-files.md)
- [Allow or block URLs in the Tenant Allow/Block List](allow-block-urls.md)
