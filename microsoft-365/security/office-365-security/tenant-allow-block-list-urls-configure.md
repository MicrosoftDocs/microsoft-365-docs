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
description: Admins can learn how to allow or block URLs in the Tenant Allow/Block List.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Allow or block URLs using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, admins can create and manage entries for URLs in the Tenant Allow/Block List. For more information about the Tenant Allow/Block List, see [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md).

> [!NOTE]
> To allow phishing URLs from third-party phishing simulations, use the [advanced delivery configuration](skip-filtering-phishing-simulations-sec-ops-mailboxes.md) to specify the URLs. Don't use the Tenant Allow/Block List.

This article describes how admins can manage entries for URLs in the Microsoft 365 Defender Portal and in Exchange Online PowerShell.

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

## Create allow entries for URLs

You can't create allow entries for URLs directly in the Tenant Allow/Block List. Unnecessary allow entries expose your organization to malicious email that would have been filtered by the system.

Instead, you use the **URLs** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=url>. When you submit a blocked URL as **Should not have been blocked (False positive)**, you can select **Allow this URL** to add and allow entry for the URL on the **URLs** tab on the **Tenant Allow/Block Lists** page. For instructions, see [Report good URLs to Microsoft](submissions-admin.md#report-good-urls-to-microsoft).

> [!NOTE]
> We create allow entries for URLs that were determined to be malicious by our filters during mail flow or at time of click.
>
> We allow subsequent messages that contain variations of the original URL. For example, you use the **Submissions** page to report the incorrectly blocked URL `www.contoso.com/abc`. If your organization later receives a message that contains the URL (for example but not limited to: `www.contoso.com/abc`, `www.contoso.com/abc?id=1`, `www.contoso.com/abc/def/gty/uyt?id=5`, or `*.contoso.com/abc`), the message isn't blocked based on the URL. In other words, you don't need to report multiple variations of the same URL as good to Microsoft.
>
> When the entity in the allow entry is encountered again (during mail flow or at time of click), all filters associated with that entity are overridden.
>
> By default, allow entries for URLs exist for 30 days. During those 30 days, Microsoft learns from the allow entries and [removes them or automatically extends them](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447). After Microsoft learns from the removed allow entries, messages that contain those URLs are delivered, unless something else in the message is detected as malicious.
>
> During mail flow, if messages containing the allowed URL pass other checks in the filtering stack, the messages are delivered. For example, if a message passes [email authentication checks](email-authentication-about.md) and file filtering, the message is delivered if it also contains an allowed URL.
>
> During time of click, the URL allow entry overrides all filters associated with the URL entity, which allows users to access the URL.
>
> A URL allow entry doesn't prevent the URL from being wrapped by Safe Links protection in Defender for Office 365. For more information, see [Do not rewrite list in SafeLinks](safe-links-about.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies).

## Create block entries for URLs

Email messages that contain these blocked URLs are blocked as *high confidence phishing*. Messages that contain the blocked URLs are quarantined.

To create block entries for URLs, use either of the following methods:

You have the following options to create block entries for URLs:

- From the **URLs** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=url>. When you submit a message as **Should have been blocked (False negative)**, you can select **Block this URL** to add a block entry to the **URLs** tab on the **Tenant Allow/Block Lists** page. For instructions, see [Report questionable URLs to Microsoft](submissions-admin.md#report-questionable-urls-to-microsoft).

- From the **URLs** tab on the **Tenant Allow/Block Lists** page or in PowerShell as described in this section.

### Use the Microsoft 365 Defender portal to create block entries for URLs in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, select the **URLs** tab.

3. On the **URLs** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Block**.

4. In the **Block URLs** flyout that opens, configure the following settings:

   - **Add URLs with wildcards**: Enter one URL per line, up to a maximum of 20. For details about the syntax for URL entries, see the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this article.

   - **Remove block entry after**: Select from the following values:
     - **Never expire**
     - **1 day**
     - **7 days**
     - **30 days** (default)
     - **Specific date**: The maximum value is 90 days from today.

   - **Optional note**: Enter descriptive text for why you're blocking the URLs.

   When you're finished in the **Block URLs** flyout, select **Add**.

Back on the **URLs** tab, the entry is listed.

#### Use PowerShell to create block entries for URLs in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType Url -Block -Entries "Value1","Value2",..."ValueN" <-ExpirationDate <Date> | -NoExpiration> [-Notes <String>]
```

This example adds a block entry for the URL contoso.com and all subdomains (for example, contoso.com and xyz.abc.contoso.com). Because we didn't use the ExpirationDate or NoExpiration parameters, the entry expires after 30 days.

```powershell
New-TenantAllowBlockListItems -ListType Url -Block -Entries *contoso.com
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to view entries for URLs in the Tenant Allow/Block List

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

Select the **URLs** tab.

On the **URLs** tab, you can sort the entries by clicking on an available column header. The following columns are available:

   - **Value**: The URL.
   - **Action**: The available values are **Allow** or **Block**.
   - **Modified by**
   - **Last updated**
   - **Remove on**: The expiration date.
   - **Notes**

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filter** flyout that opens:

- **Action**: The available values are **Allow** and **Block**.
- **Never expire**: :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: or :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::
- **Last updated**: Select **From** and **To** dates.
- **Remove on**: Select **From** and **To** dates.

When you're finished in the **Filter** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific entries.

To group the entries, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select **Action**. To ungroup the entries, select **None**.

### Use PowerShell to view entries for URLs in the Tenant Allow/Block List

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

## Use the Microsoft 365 Defender portal to modify entries for URLs in the Tenant Allow/Block List

In existing URL entries, you can change the expiration date and note.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **URLs** tab

3. On the **URLs** tab, select the entry from the list by selecting the check box next to the first column, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.

4. In the **Edit URL** flyout that opens, the following settings are available:
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

   When you're finished in the **Edit URL** flyout, select **Save**.

> [!TIP]
> In the details flyout of an entry on the **URLs** tab, use :::image type="icon" source="../../media/m365-cc-sc-view-submission-icon.png" border="false"::: **View submission** at the top of the flyout to go to the details of the corresponding entry on the **Submissions** page. This action is available if a submission was responsible for creating the entry in the Tenant Allow/Block List.

### Use PowerShell to modify entries for URLs in the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType Url <-Ids <Identity value> | -Entries <Value>> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

This example changes the expiration date of the block entry for the specified URL.

```powershell
Set-TenantAllowBlockListItems -ListType Url -Entries "~contoso.com" -ExpirationDate "9/1/2022"
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

## Use the Microsoft 365 Defender portal to remove entries for URLs from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the **URLs** tab.

3. On the **URLs** tab, do one of the following steps:

   - Select the entry from the list by selecting the check box next to the first column, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
   - Select the entry from the list by clicking anywhere in the row other than the check box. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** at the top of the flyout.

     > [!TIP]
     > To see details about other entries without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

4. In the warning dialog that opens, select **Delete**.

Back on the **URLs** tab, the entry is no longer listed.

> [!TIP]
> You can select multiple entries by selecting each check box, or select all entries by selecting the check box next to the **Value** column header.

### Use PowerShell to remove entries for URLs from the Tenant Allow/Block List

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType Url <-Ids <Identity value> | -Entries <Value>>
```

This example removes the block entry for the specified URL from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Url -Entries "*cohovineyard.com
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## URL syntax for the Tenant Allow/Block List

- IPv4 and IPv6 addresses are allowed, but TCP/UDP ports aren't.

- Filename extensions aren't allowed (for example, test.pdf).

- Unicode isn't supported, but Punycode is.

- Hostnames are allowed if all of the following statements are true:
  - The hostname contains a period.
  - There is at least one character to the left of the period.
  - There are at least two characters to the right of the period.

  For example, `t.co` is allowed; `.com` or `contoso.` aren't allowed.

- Subpaths aren't implied for allows.

  For example, `contoso.com` doesn't include `contoso.com/a`.

- Wildcards (*) are allowed in the following scenarios:

  - A left wildcard must be followed by a period to specify a subdomain. (applicable only for blocks)

    For example, `*.contoso.com` is allowed; `*contoso.com` isn't allowed.

  - A right wildcard must follow a forward slash (/) to specify a path.

    For example, `contoso.com/*` is allowed; `contoso.com*` or `contoso.com/ab*` aren't allowed.

  - `*.com*` is invalid (not a resolvable domain and the right wildcard doesn't follow a forward slash).

  - Wildcards aren't allowed in IP addresses.

- The tilde (~) character is available in the following scenarios:

  - A left tilde implies a domain and all subdomains.

    For example, `~contoso.com` includes `contoso.com` and `*.contoso.com`.

- A username or password isn't supported or required.

- Quotes (' or ") are invalid characters.

- A URL should include all redirects where possible.

### URL entry scenarios

Valid URL entries and their results are described in the following subsections.

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
