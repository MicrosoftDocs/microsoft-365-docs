---
title: Allow or block email using the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier1
description: Admins can learn how to allow or block email and spoofed sender entries in the Tenant Allow/Block List.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Allow or block email using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, admins can create and manage entries for domains and email addresses (including spoofed senders) in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

This article describes how admins can manage entries for email senders in the Microsoft 365 Defender Portal and in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- For domains and email addresses, the maximum number of allow entries is 500, and the maximum number of block entries is 500 (1000 domain and email address entries in total).

- For spoofed senders, the maximum number of allow entries and block entries is 1024 (1024 allow entries and no block entries, 512 allow entries and 512 block entries, etc.).

- Entries for spoofed senders never expire.

- For details about the syntax for spoofed sender entries, see the [Domain pair syntax for spoofed sender entries](#domain-pair-syntax-for-spoofed-sender-entries) section later in this article.

- An entry should be active within 30 minutes, but it might take up to 24 hours for the entry to be active.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Add and remove entries from the Tenant Allow/Block List_: Membership in one of the following role groups:
      - **Organization Management** or **Security Administrator** (Security admin role).
      - **Security Operator** (Tenant AllowBlockList Manager).
    - _Read-only access to the Tenant Allow/Block List_: Membership in one of the following role groups:
      - **Global Reader**
      - **Security Reader**
      - **View-Only Configuration**
      - **View-Only Organization Management**
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Domains and email addresses in the Tenant Allow/Block List

### Create allow entries for domains and email addresses

You can't create allow entries for domains and email addresses directly in the Tenant Allow/Block List. Unnecessary allow entries expose your organization to malicious email that would have been filtered by the system.

Instead, you use the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. When you submit a blocked message as **Should not have been blocked (False positive)**, an allow entry for the sender is added to the **Domains & email addresses** tab on the **Tenant Allow/Block Lists** page. For instructions, see [Submit good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft).

> [!NOTE]
> Allow entries are added based on the filters that determined the message was malicious during mail flow. For example, if the sender email address and a URL in the message were determined to be bad, an allow entry is created for the sender (email address or domain) and the URL.
>
> When the entity in the allow entry is encountered again (during mail flow or at time of click), all filters associated with that entity are overridden.
>
> By default, allow entries for domains and email addresses exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages that contain those entities are delivered, unless something else in the message is detected as malicious.
>
> During mail flow, if messages containing the allowed entity pass other checks in the filtering stack, the messages will be delivered. For example, if a message passes [email authentication checks](email-authentication-about.md), URL filtering, and file filtering, the message is delivered if it's also from an allowed sender.

### Create block entries for domains and email addresses

To create block entries for *domains and email addresses*, use either of the following methods:

- From the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. When you submit a message as **Should have been blocked (False negative)**, you can select **Block all emails from this sender or domain** to add a block entry to the **Domains & email addresses** tab on the **Tenant Allow/Block Lists** page. For instructions, see [Report questionable email to Microsoft](submissions-admin.md#report-questionable-email-to-microsoft).

- From the **Domains & addresses** tab on the **Tenant Allow/Block Lists** page or in PowerShell as described in this section.

To create block entries for *spoofed senders*, see [this section](#create-block-entries-for-spoofed-senders) later in this article.

By default, allow entries for domains and email addresses exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages that contain those entities are delivered, unless something else in the message is detected as malicious. By default, allow entries for spoofed senders never expire.

Email from these blocked senders is marked as *high confidence spam* (SCL = 9). What happens to the messages is determined by the [anti-spam policy](anti-spam-policies-configure.md) that detected the message for the recipient. For more information, see the **Spam** detection action in [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

> [!NOTE]
> Users in the organization also can't *send* email to these blocked domains and addresses. The message is returned in the following non-delivery report (also known as an NDR or bounce message): `550 5.7.703 Your message can't be delivered because messages to XXX, YYY are blocked by your organization using Tenant Allow Block List.` The entire message is blocked for all internal and external recipients of the message, even if only one recipient email address or domain is defined in a block entry.

#### Use the Microsoft 365 Defender portal to create block entries for domains and email addresses in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block Lists** page, verify that the **Domains & addresses** tab is selected.

3. On the **Domains & addresses** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Block**.

4. In the **Block domains & addresses** flyout that opens, configure the following settings:

   - **Domains & addresses**: Enter one email address or domain per line, up to a maximum of 20.

   - **Remove block entry after**: Select from the following values:
     - **1 day**
     - **7 days**
     - **30 days** (default)
     - **Never expire**
     - **Specific date**: The maximum value is 90 days from today.

   - **Optional note**: Enter descriptive text for why you're blocking the email addresses or domains.

5. When you're finished in the **Block domains & addresses** flyout, select **Add**.

Back on the **Domains & email addresses** tab, the entry is listed.

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

### Use the Microsoft 365 Defender portal to view entries for domains and email addresses in the Tenant Allow/Block List

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

Verify the **Domains & addresses** tab is selected.

On the **Domains & addresses** tab, you can sort the entries by clicking on an available column header. The following columns are available:

- **Value**: The domain or email address.
- **Action**: The value **Allow** or **Block**.
- **Modified by**
- **Last updated**
- **Remove on**: The expiration date.
- **Notes**

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Action**: The values are **Allow** and **Block**.
- **Never expire**: :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: or :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::
- **Last updated**: Select **From** and **To** dates.
- **Remove on**: Select **From** and **To** dates.

When you're finished in the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific entries.

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select **Action**. To ungroup the entries, select **None**.

#### Use PowerShell to view entries for domains and email addresses in the Tenant Allow/Block List

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

### Use the Microsoft 365 Defender portal to modify entries for domains and email addresses in the Tenant Allow/Block List

In existing domain and email address entries, you can change the expiration date and note.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Verify the **Domains & addresses** tab is selected.

3. On the **Domains & addresses** tab, select the entry from the list by selecting the check box next to the first column, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.

4. In the **Edit domains & addresses** flyout that opens, the following settings are available:
   - **Block entries**:
     - **Remove block entry after**: Select from the following values:
       - **1 day**
       - **7 days**
       - **30 days**
       - **Never expire**
       - **Specific date**: The maximum value is 90 days from today.
     - **Optional note**
   - **Allow entries**:
     - **Remove allow entry after**: Select from the following values:
       - **1 day**
       - **7 days**
       - **30 days**
       - **Specific date**: The maximum value is 30 days from today.
     - **Optional note**

   When you're finished in the **Edit domains & addresses** flyout, select **Save**.

> [!TIP]
> In the details flyout of an entry on the **Domains & addresses** tab, use :::image type="icon" source="../../media/m365-cc-sc-view-submission-icon.png" border="false"::: **View submission** at the top of the flyout to go to the details of the corresponding entry on the **Submissions** page. This action is available if a submission was responsible for creating the entry in the Tenant Allow/Block List.

#### Use PowerShell to modify entries for domains and email addresses in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType Sender <-Ids <Identity value> | -Entries <Value>> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the specified block entry for the sender email address.

```powershell
Set-TenantAllowBlockListItems -ListType Sender -Entries "julia@fabrikam.com" -ExpirationDate "9/1/2022"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

### Use the Microsoft 365 Defender portal to remove entries for domains and email addresses from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Verify the **Domains & addresses** tab is selected.

3. On **Domains & addresses** tab, do one of the following steps:

   - Select the entry from the list by selecting the check box next to the first column, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
   - Select the entry from the list by clicking anywhere in the row other than the check box. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** at the top of the flyout.

     > [!TIP]
     > To see details about other entries without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

4. In the warning dialog that opens, select **Delete**.

Back on the **Domains & addresses** tab, the entry is no longer listed.

> [!TIP]
> You can select multiple entries by selecting each check box, or select all entries by selecting the check box next to the **Value** column header.

#### Use PowerShell to remove entries for domains and email addresses from the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType Sender `<-Ids <Identity value> | -Entries <Value>>
```

This example removes the specified entry for domains and email addresses from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Sender -Entries "adatum.com"
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## Spoofed senders in the Tenant Allow/Block List

When you override the verdict in the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md), the spoofed sender becomes a manual allow or block entry that only appears on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page.

### Create allow entries for spoofed senders

To create allow entries for *spoofed senders*, use any of the following methods:

- From the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. For instructions, see [Submit good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft).
  - When you submit a message that was detected and blocked by [spoof intelligence](anti-spoofing-spoof-intelligence.md), an allow entry for the spoofed sender is added to the **Spoofed senders** tab in the Tenant Allow/Block List.
  - If the sender wasn't detected and blocked by spoof intelligence, submitting the message to Microsoft doesn't create an allow entry for the sender in the Tenant Allow/Block List.
- From the **Spoof intelligence insight** page at <https://security.microsoft.com/spoofintelligence> *if* the sender was detected and blocked by spoof intelligence. For instructions, see [Override the spoof intelligence verdict](anti-spoofing-spoof-intelligence.md#override-the-spoof-intelligence-verdict).
  - When you override the verdict in the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md), the spoofed sender becomes a manual entry that appears only on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page.
- From the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page or in PowerShell as described in this section.

> [!NOTE]
> Allow entries for spoofed senders account for intra-org, cross-org, and DMARC spoofing.
>
> Only the combination of the spoofed user *and* the sending infrastructure as defined in the [domain pair](#domain-pair-syntax-for-spoofed-sender-entries) is allowed to spoof.
>
> Allow entries for spoofed senders never expire.

#### Use the Microsoft 365 Defender portal to create allow entries for spoofed senders in the Tenant Allow/Block List

In the Tenant Allow/Block List, you can create allow entries for spoofed senders before they're detected and blocked by [spoof intelligence](anti-spoofing-spoof-intelligence.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block Lists** page, select the **Spoofed senders** tab.

3. On the **Spoofed senders** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add**.

4. In the **Add new domain pairs** flyout that opens, configure the following settings:

   - **Add domain pairs with wildcards**: Enter domain pair per line, up to a maximum of 20. For details about the syntax for spoofed sender entries, see the [Domain pair syntax for spoofed sender entries](#domain-pair-syntax-for-spoofed-sender-entries) section later in this article.

   - **Spoof type**: Select one of the following values:
     - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
     - **External**: The spoofed sender is in an external domain.

   - **Action**: Select **Allow** or **Block**.

   When you're finished in the **Add new domain pairs** flyout, select **Add**.

Back on the **Spoofed senders** tab, the entry is listed.

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

### Create block entries for spoofed senders

To create block entries for *spoofed senders*, use any of the following methods:

- From the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. For instructions, see [Report questionable email to Microsoft](submissions-admin.md#report-questionable-email-to-microsoft).
- From the **Spoof intelligence insight** page at <https://security.microsoft.com/spoofintelligence> *if* the sender was detected and allowed by spoof intelligence. For instructions, see [Override the spoof intelligence verdict](anti-spoofing-spoof-intelligence.md#override-the-spoof-intelligence-verdict).
  - When you override the verdict in the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md), the spoofed sender becomes a manual entry that appears only on the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page.
- From the **Spoofed senders** tab on the **Tenant Allow/Block Lists** page or in PowerShell as described in this section.

> [!NOTE]
>
> Only the combination of the spoofed user *and* the sending infrastructure defined in the [domain pair](#domain-pair-syntax-for-spoofed-sender-entries) is blocked from spoofing.
>
> Email from these senders is marked as *phishing*. What happens to the messages is determined by the [anti-spam policy](anti-spam-policies-configure.md) that detected the message for the recipient. For more information, see the **Phishing** detection action in [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).
>
> When you configure a block entry for a domain pair, the spoofed sender becomes a manual allow entry that appears only on the **Spoofed senders** tab in the Tenant Allow/Block List.
>
> Block entries for spoofed senders never expire.

#### Use the Microsoft 365 Defender portal to create block entries for spoofed senders in the Tenant Allow/Block List

The steps are nearly identical to [creating allow entries for spoofed senders](#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-spoofed-senders-in-the-tenant-allowblock-list) as previously described in this article.

The only difference is: for the **Action** value in Step 4, select **Block** instead of **Allow**.

##### Use PowerShell to create block entries for spoofed senders in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListSpoofItems -Identity Default -Action Block -SpoofedUser <Domain | EmailAddress> -SendingInfrastructure <Domain | IPAddress/24> -SpoofType <External | Internal>
```

This example creates a block entry for the sender laura@adatum.com from the source 172.17.17.17/24.

```powershell
New-TenantAllowBlockListSpoofItems -Identity Default -Action Allow -SendingInfrastructure 172.17.17.17/24 -SpoofedUser laura@adatum.com -SpoofType External
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListSpoofItems](/powershell/module/exchange/new-tenantallowblocklistspoofitems).

### Use the Microsoft 365 Defender portal to view entries for spoofed senders in the Tenant Allow/Block List

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

Verify the **Spoofed senders** tab is selected.

On the **Spoofed senders** tab, you can sort the entries by clicking on an available column header. The following columns are available:

   - **Spoofed user**
   - **Sending infrastructure**
   - **Spoof type**: The available values are **Internal** or **External**.
   - **Action**: The available values are **Block** or **Allow**.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Action**: The available values are **Allow** and **Block**.
- **Spoof type**: The available values are **Internal** and **External**.

When you're finished in the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific entries.

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select one of the following values:

- **Action**
- **Spoof type**

To ungroup the entries, select **None**.

#### Use PowerShell to view entries for spoofed senders in the Tenant Allow/Block List

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

### Use the Microsoft 365 Defender portal to modify entries for spoofed senders in the Tenant Allow/Block List

When you modify an allow or block entry for spoofed senders in the Tenant Allow/Block list, you can only change the entry from **Allow** to **Block**, or vice-versa.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Spoofed senders** tab.

3. Select the entry from the list by selecting the check box next to the first column, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.

4. In the **Edit spoofed sender** flyout that opens, select **Allow** or **Block**, and then select **Save**.

#### Use PowerShell to modify entries for spoofed senders in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListSpoofItems -Identity Default -Ids <Identity value> -Action <Allow | Block>
```

This example changes the specified spoofed sender entry from an allow entry to a block entry.

```powershell
Set-TenantAllowBlockListItems -Identity Default -Ids 3429424b-781a-53c3-17f9-c0b5faa02847 -Action Block
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListSpoofItems](/powershell/module/exchange/set-tenantallowblocklistspoofitems).

### Use the Microsoft 365 Defender portal to remove entries for spoofed senders from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **Spoofed senders** tab.

3. On the **Spoofed senders** tab, select the entry from the list by selecting the check box next to the first column, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.

4. In the warning dialog that opens, select **Delete**.

> [!NOTE]
> You can select multiple entries by selecting each check box, or select all entries by selecting the check box next to the **Spoofed user** column header.

#### Use PowerShell to remove entries for spoofed senders from the Tenant Allow/Block List

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

- **Spoofed user**: This value involves the email address of the spoofed user that's displayed in the **From** box in email clients. This address is also known as the `5322.From` or P2 sender address. Valid values include:
  - An individual email address (for example, chris@contoso.com).
  - An email domain (for example, contoso.com).
  - The wildcard character (\*).

- **Sending infrastructure**: This value indicates the source of messages from the spoofed user. Valid values include:
  - The domain found in a reverse DNS lookup (PTR record) of the source email server's IP address (for example, fabrikam.com).
  - If the source IP address has no PTR record, then the sending infrastructure is identified as \<source IP\>/24 (for example, 192.168.100.100/24).
  - A verified DKIM domain.
  - The wildcard character (\*).

Here are some examples of valid domain pairs to identify spoofed senders:

- `contoso.com, 192.168.100.100/24`
- `chris@contoso.com, fabrikam.com`
- `*, contoso.net`

> [!NOTE]
> You can specify wildcards in the sending infrastructure or in the spoofed user, but not in both at the same time. For example, `*, *` isn't permitted.

Adding a domain pair allows or blocks the *combination* of the spoofed user *and* the sending infrastructure *only*. For example, you add an allow entry for the following domain pair:

- **Domain**: gmail.com
- **Sending infrastructure**: tms.mx.com

Only messages from that domain *and* sending infrastructure pair are allowed to spoof. Other senders attempting to spoof gmail.com aren't allowed. Messages from senders in other domains originating from tms.mx.com are checked by spoof intelligence.

## About impersonated domains or senders

You can't create allow entries in the Tenant Allow/Block List for messages that were detected as [impersonated users or impersonated domains by anti-phishing policies in Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

Submitting a message that was incorrectly blocked as impersonation on the **Emails** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email> doesn't add the sender or domain as an allow entry in the Tenant Allow/Block List.

Instead, the domain or sender is added to the **Trusted senders and domains** section in the [anti-phishing policy](anti-phishing-policies-mdo-configure.md#use-the-microsoft-365-defender-portal-to-modify-anti-phishing-policies) that detected the message.

For submission instructions for impersonation false positives, see [Report good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft).

> [!NOTE]
> Currently, Graph Impersonation isn't taken care of from here.

## Related articles

- [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](submissions-admin.md)
- [Report false positives and false negatives](submissions-outlook-report-messages.md)
- [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md)
- [Allow or block files in the Tenant Allow/Block List](tenant-allow-block-list-files-configure.md)
- [Allow or block URLs in the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md)
