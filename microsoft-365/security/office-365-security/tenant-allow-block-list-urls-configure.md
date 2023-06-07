---
title: Allow or block URLs using the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: chrisda
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150manage-tenant-allows.md
ms.collection:
  - m365-security
  - tier1
description: Admins can learn how to allow or block URLs in the Tenant Allow/Block List in the Security portal.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/7/2023
---

# Allow or block URLs using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, admins can create and manage allow and block entries for URLs in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

> [!NOTE]
> To allow phishing URLs from third-party phishing simulations, use the [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md) to specify the URLs. Don't use the Tenant Allow/Block List.

You manage allow and block entries for URLs in the Microsoft 365 Defender Portal or in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>. To go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- For URL entry syntax, see the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this article.

- For URLs, the maximum number of allow entries is 500, and the maximum number of block entries is 500 (1000 URL entries total).

- You can enter a maximum of 250 characters in a URL entry.

- An entry should be active within 30 minutes, but it might take up to 24 hours for the entry to be active.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - *Add and remove entries from the Tenant Allow/Block List*: Membership in one of the following role groups:
      - **Organization Management** or **Security Administrator** (Security admin role).
      - **Security Operator** (Tenant AllowBlockList Manager).
    - *Read-only access to the Tenant Allow/Block List*: Membership in one of the following role groups:
      - **Global Reader**
      - **Security Reader**
      - **View-Only Configuration**
      - **View-Only Organization Management**
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions *and* permissions for other features in Microsoft 365.

## Create block entries for URLs

Email messages that contain these blocked URLs are blocked as *high confidence phishing*. Messages that contain the blocked URLs are quarantined.

You have the following options to create block entries for URLs:

- [The Submissions page in the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-on-the-submissions-page)
- The Tenant Allow/Block List in [the Microsoft 365 Defender portal](#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list) or in [PowerShell](#use-powershell-to-create-block-entries-for-urls-in-the-tenant-allowblock-list)

### Use the Microsoft 365 Defender portal to create block entries for URLs on the Submissions page

When you use the **Submissions** page at <https://security.microsoft.com/reportsubmission> to submit URLs as **Should have been blocked (False negative)**, you can select **Block this URL** to add a block entry on the **URLs** tab in the Tenant Allow/Block List.

For instructions, see [Submit questionable URLs to Microsoft](submissions-admin.md#report-questionable-urls-to-microsoft).

### Use the Microsoft 365 Defender portal to create block entries for URLs in the Tenant Allow/Block List

You can create block entries for URLs directly in the Tenant Allow/Block List.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, select the **URLs** tab.

3. On the **URLs** tab, click ![Block icon.](../../media/m365-cc-sc-create-icon.png) **Block**.

4. In the **Block URLs** flyout that appears, configure the following settings:

   - **Add URLs with wildcards**: Enter one URL per line, up to a maximum of 20. For details about the syntax for URL entries, see the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this article.

   - **Remove block entry after**: The default value is **30 days**, but you can select from the following values:
     - **Never expire**
     - **1 day**
     - **7 days**
     - **30 days**
     - **Specific date**: The maximum value is 90 days from today.

   - **Optional note**: Enter descriptive text for why you're blocking the URLs.

5. When you're finished, click **Add**.

#### Use PowerShell to create block entries for URLs in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType Url -Block -Entries "Value1","Value2",..."ValueN" <-ExpirationDate <Date> | -NoExpiration> [-Notes <String>]
```

This example adds a block entry for the URL contoso.com and all subdomains (for example, contoso.com and xyz.abc.contoso.com). Because we didn't use the ExpirationDate or NoExpiration parameters, the entry expires after 30 days.

```powershell
New-TenantAllowBlockListItems -ListType Url -Block -Entries ~contoso.com
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to create allow entries for URLs on the Submissions page

You can't create URL allow entries directly in the Tenant Allow/Block List. Instead, you use the **Submissions** page at <https://security.microsoft.com/reportsubmission> to submit the URL as a false positive, which also adds an allow entry on the **URLs** tab in the Tenant Allow/Block List.

For instructions, see [Submit good URLs to Microsoft](submissions-admin.md#report-good-urls-to-microsoft).

> [!IMPORTANT]
> Microsoft does not allow you to create allow entries directly. Unnecessary allow entries expose your organization to malicious email which could have been filtered by the system.
>
> Microsoft manages the allow entry creation process for URLs from the **Submissions** page. We'll create allow entries for URLs that were determined to be malicious by our filters during mail flow or at time of click.
>
> We allow subsequent messages that contain variations of the original URL. For example, you use the **Submissions** page to report the incorrectly blocked URL `www.contoso.com/abc`. If your organization later receives a message that contains the URL (for example but not limited to: `www.contoso.com/abc`, `www.contoso.com/abc?id=1`, `www.contoso.com/abc/def/gty/uyt?id=5`, or `*.contoso.com/abc`), the message won't be blocked based on the URL. In other words, you don't need to report multiple variations of the same URL as good to Microsoft.
>
> When the URL is encountered again, all filters associated with the URL are overridden.
>
> By default, allow entries for URLs exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages that contain those URLs will be delivered, unless something else in the message is detected as malicious.
>
> During mail flow, if messages containing the allowed URL pass other checks in the filtering stack, the messages will be delivered. For example, if a message passes [email authentication checks](email-authentication-about.md) and file filtering, a message containing an allowed URL will be delivered.
>
> During time of click, the URL allow entry overrides all filters associated with the URL entity, allowing the user to access the content in the URL.
>
> Adding an allow entry for a URL does not prevent it from being wrapped by Safe Links. For more information, see [Do not rewrite list in SafeLinks](safe-links-about.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies).

## Use the Microsoft 365 Defender portal to view existing allow or block entries for URLs in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **URL** tab. The following columns are available:

   - **Value**: The URL.
   - **Action**: The values are **Allow** or **Block**.
   - **Modified by**
   - **Last updated**
   - **Remove on**: The expiration date.
   - **Notes**

   Click on a column heading to sort in ascending or descending order.

   Click ![Group icon.](../../media/m365-cc-sc-group-icon.png) **Group** to group the results by **None** or **Action**.

   Click ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search**, enter all or part of a value, and then press the ENTER key to find a specific value. When you're finished, click ![Clear search icon.](../../media/m365-cc-sc-close-icon.png) to clear the search.

   Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the results. The following values are available in the **Filter** flyout that appears:

   - **Action**: The values are **Allow** and **Block**.
   - **Never expire**: ![Toggle on.](../../media/scc-toggle-on.png) or ![Toggle off.](../../media/scc-toggle-off.png)
   - **Last updated**: Select **From** and **To** dates.
   - **Remove on**: Select **From** and **To** dates.

   When you're finished, click **Apply**. To clear existing filters, click ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters** in the **Filter** flyout.

### Use PowerShell to view existing allow or block entries for URLs in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType Url [-Allow] [-Block] [-Entry <URLValue>] [<-ExpirationDate <Date> | -NoExpiration>]
```

This example returns all allowed and blocked URLs.

```powershell
Get-TenantAllowBlockListItems -ListType Url
```

This example filters the results by blocked URLs.

```powershell
Get-TenantAllowBlockListItems -ListType Url -Block
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to modify existing allow or block entries for URLs in the Tenant Allow/Block List

You can make the following modifications to entries for URLs in the Tenant Allow/Block list:

- **Block entries**: The expiration date and notes.
- **Allow entries**: The expiration date and notes.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **URLs** tab

3. On the **URLs** tab, select the check box of the entry that you want to modify, and then click the ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** button that appears.

4. The following values are available in the **Edit URL** flyout that appears:
   - **Remove block entry after**: You can extend block entries for a maximum of 90 days from the system date or set them to **Never expire**.
   - **Remove allow entry after**: You can extend allow entries for a maximum of 30 days from the system date.
   - **Optional note**

   When you're finished, click **Save**.

> [!TIP]
> For entries added via submission, if you select the entry by clicking anywhere in the row other than the check box, you can select ![View submission icon.](../../media/m365-cc-sc-view-submission-icon.png) **View submission** in the details flyout that opens up. It takes you to the submission details that added the entry.

### Use PowerShell to modify existing allow or block entries for URLs in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType Url <-Ids <Identity value> | -Entries <Value>> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the block entry for the specified URL.

```powershell
Set-TenantAllowBlockListItems -ListType Url -Entries "~contoso.com" -ExpirationDate "9/1/2022"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to remove existing allow or block entries for URLs from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **URLs** tab.

3. On the **URLs** tab, do one of the following steps:

   - Select the check box of the entry that you want to remove, and then click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears.
   - Select the entry that you want to remove by clicking anywhere in the row other than the check box. In the details flyout that appears, click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.

> [!TIP]
> You can select multiple entries by selecting each check box, or select all entries by selecting the check box next to the **Value** column header.

### Use PowerShell to remove existing allow or block entries for URLs from the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType Url <-Ids <Identity value> | -Entries <Value>>
```

This example removes the block entry for the specified URL from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Url -Entries "~cohovineyard.com
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## URL syntax for the Tenant Allow/Block List

- IPv4 and IPv6 addresses are allowed, but TCP/UDP ports are not.

- Filename extensions are not allowed (for example, test.pdf).

- Unicode is not supported, but Punycode is.

- Hostnames are allowed if all of the following statements are true:
  - The hostname contains a period.
  - There is at least one character to the left of the period.
  - There are at least two characters to the right of the period.

  For example, `t.co` is allowed; `.com` or `contoso.` are not allowed.

- Subpaths are not implied for allows.

  For example, `contoso.com` does not include `contoso.com/a`.

- Wildcards (*) are allowed in the following scenarios:

  - A left wildcard must be followed by a period to specify a subdomain. (only applicable for blocks)

    For example, `*.contoso.com` is allowed; `*contoso.com` is not allowed.

  - A right wildcard must follow a forward slash (/) to specify a path.

    For example, `contoso.com/*` is allowed; `contoso.com*` or `contoso.com/ab*` are not allowed.

  - `*.com*` is invalid (not a resolvable domain and the right wildcard does not follow a forward slash).

  - Wildcards are not allowed in IP addresses.

- The tilde (~) character is available in the following scenarios:

  - A left tilde implies a domain and all subdomains.

    For example `~contoso.com` includes `contoso.com` and `*.contoso.com`.

- A username or password isn't supported or required.

- Quotes (' or ") are invalid characters.

- A URL should include all redirects where possible.

### URL entry scenarios

Valid URL entries and their results are described in the following sections.

#### Scenario: No wildcards

**Entry**: `contoso.com`

- **Allow match**: contoso.com

- **Allow not matched**:
  - abc-contoso.com
  - contoso.com/a
  - payroll.contoso.com
  - test.com/contoso.com
  - test.com/q=contoso.com
  - www.contoso.com
  - www.contoso.com/q=a@contoso.com

- **Block match**:
  - contoso.com
  - contoso.com/a
  - payroll.contoso.com
  - test.com/contoso.com
  - test.com/q=contoso.com
  - www.contoso.com
  - www.contoso.com/q=a@contoso.com

- **Block not matched**: abc-contoso.com

#### Scenario: Left wildcard (subdomain)

> [!TIP]
> Allow entries of this pattern are supported only from [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).

**Entry**: `*.contoso.com`

- **Allow match** and **Block match**:
  - www.contoso.com
  - xyz.abc.contoso.com

- **Allow not matched** and **Block not matched**:
  - 123contoso.com
  - contoso.com
  - test.com/contoso.com
  - www.contoso.com/abc

#### Scenario: Right wildcard at top of path

**Entry**: `contoso.com/a/*`

- **Allow match** and **Block match**:
  - contoso.com/a/b
  - contoso.com/a/b/c
  - contoso.com/a/?q=joe@t.com

- **Allow not matched** and **Block not matched**:
  - contoso.com
  - contoso.com/a
  - www.contoso.com
  - www.contoso.com/q=a@contoso.com

#### Scenario: Left tilde

> [!TIP]
> Allow entries of this pattern are supported only from [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).

**Entry**: `~contoso.com`

- **Allow match** and **Block match**:
  - contoso.com
  - www.contoso.com
  - xyz.abc.contoso.com

- **Allow not matched** and **Block not matched**:
  - 123contoso.com
  - contoso.com/abc
  - www.contoso.com/abc

#### Scenario: Right wildcard suffix

**Entry**: `contoso.com/*`

- **Allow match** and **Block match**:
  - contoso.com/?q=whatever@fabrikam.com
  - contoso.com/a
  - contoso.com/a/b/c
  - contoso.com/ab
  - contoso.com/b
  - contoso.com/b/a/c
  - contoso.com/ba

- **Allow not matched** and **Block not matched**: contoso.com

#### Scenario: Left wildcard subdomain and right wildcard suffix

> [!TIP]
> Allow entries of this pattern are supported only from [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).

**Entry**: `*.contoso.com/*`

- **Allow match** and **Block match**:
  - abc.contoso.com/ab
  - abc.xyz.contoso.com/a/b/c
  - www.contoso.com/a
  - www.contoso.com/b/a/c
  - xyz.contoso.com/ba

- **Allow not matched** and **Block not matched**: contoso.com/b

#### Scenario: Left and right tilde

> [!TIP]
>  Allow entries of this pattern are supported only from [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).

**Entry**: `~contoso.com~`

- **Allow match** and **Block match**:

  - contoso.com
  - contoso.com/a
  - www.contoso.com
  - www.contoso.com/b
  - xyz.abc.contoso.com
  - abc.xyz.contoso.com/a/b/c
  - contoso.com/b/a/c
  - test.com/contoso.com

-  **Allow not matched** and **Block not matched**:

  - 123contoso.com
  - contoso.org
  - test.com/q=contoso.com

#### Scenario: IP address

**Entry**: `1.2.3.4`

- **Allow match** and **Block match**: 1.2.3.4

- **Allow not matched** and **Block not matched**:

  - 1.2.3.4/a
  - 11.2.3.4/a

#### IP address with right wildcard

**Entry**: `1.2.3.4/*`

- **Allow match** and **Block match**:

  - 1.2.3.4/b
  - 1.2.3.4/baaaa

### Examples of invalid entries

The following entries are invalid:

- **Missing or invalid domain values**:

  - contoso
  - \*.contoso.\*
  - \*.com
  - \*.pdf

- **Wildcard on text or without spacing characters**:

  - \*contoso.com
  - contoso.com\*
  - \*1.2.3.4
  - 1.2.3.4\*
  - contoso.com/a\*
  - contoso.com/ab\*

- **IP addresses with ports**:

  - contoso.com:443
  - abc.contoso.com:25

- **Non-descriptive wildcards**:

  - \*
  - \*.\*

- **Middle wildcards**:

  - conto\*so.com
  - conto~so.com

- **Double wildcards**

  - contoso.com/\*\*
  - contoso.com/\*/\*

## Related articles

- [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](submissions-admin.md)
- [Report false positives and false negatives](submissions-outlook-report-messages.md)
- [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md)
- [Allow or block files in the Tenant Allow/Block List](tenant-allow-block-list-files-configure.md)
- [Allow or block emails in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md)
