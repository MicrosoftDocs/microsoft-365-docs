---
title: Manage your allows and blocks in the Tenant Allow/Block List
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
  - M365-security-compliance
ms.custom:
description: Admins can learn how to manage allows and blocks in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Manage the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The Tenant Allow/Block List in the Microsoft 365 Defender portal gives you a way to manually override the Microsoft 365 filtering verdicts. The Tenant Allow/Block List is used during mail flow for incoming messages (does not apply to intra-org messages) and at the time of user clicks. You can specify the following types of overrides:

- URLs to block.
- Files to block.
- Sender emails or domains to block.
- Spoofed senders to allow or block. If you override the allow or block verdict in the [spoof intelligence insight](learn-about-spoof-intelligence.md), the spoofed sender becomes a manual allow or block entry that only appears on the **Spoof** tab in the Tenant Allow/Block List. You can also manually create allow or block entries for spoofed senders here before they're detected by spoof intelligence.
- URLs to allow.
- Files to allow.
- Sender emails or domains to allow.

This article describes how to configure entries in the Tenant Allow/Block List in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

- You specify files by using the SHA256 hash value of the file. To find the SHA256 hash value of a file in Windows, run the following command in a Command Prompt:

  ```console
  certutil.exe -hashfile "<Path>\<Filename>" SHA256
  ```

  An example value is `768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3a`. Perceptual hash (pHash) values are not supported.

- The available URL values are described in the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this article.

- The Tenant Allow/Block List allows a maximum of 500 entries for senders, 500 entries for URLs, 500 entries for file hashes, and 1024 entries for spoofing (spoofed senders).

- The maximum number of characters for each entry is:
  - File hashes = 64
  - URL = 250

- An entry should be active within 30 minutes.

- By default, entries in the Tenant Allow/Block List will expire after 30 days. You can specify a date or set them to never expire.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in Exchange Online before you can do the procedures in this article:
  - **Senders, URLs and files**:
    - To add and remove values from the Tenant Allow/Block List, you need to be a member of
      - **Organization Management** or **Security Administrator** role group (**Security admin role**)
      - **Security Operator** role group (**Tenant AllowBlockList Manager**).
    - For read-only access to the Tenant Allow/Block List, you need to be a member of
      - **Global Reader**  role group
      - **Security Reader** role group
  - **Spoofing**: One of the following combinations:
    - **Organization Management**
    - **Security Administrator** <u>and</u> **View-Only Configuration** or **View-Only Organization Management**.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  >
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions *and* permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  > - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

## Configure the Tenant Allow/Block List

### Use the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

To add all blocks, see [Add blocks in the Tenant Allow/Block List](manage-tenant-blocks.md).

To add all allows, see [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md).

To modify and remove all blocks and allows, see [Modify and remove entries in the Tenant Allow/Block List](modify-remove-entries-tenant-allow-block.md).

### Use Exchange Online PowerShell or standalone EOP PowerShell

To manage all allows and blocks, see [Add blocks in the Tenant Allow/Block List](manage-tenant-blocks.md), [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md), and [Modify and remove entries in the Tenant Allow/Block List](modify-remove-entries-tenant-allow-block.md).

## View entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the tab you want. The columns that are available depend on the tab you selected:

   - **Senders**:
     - **Value**: The sender domain or email address.
     - **Action**: The value **Allow** or **Block**.
     - **Modified by**
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Spoofing**
     - **Spoofed user**
     - **Sending infrastructure**
     - **Spoof type**: The value **Internal** or **External**.
     - **Action**: The value **Block** or **Allow**.
   - **URLs**:
     - **Value**: The URL.
     - **Action**: The value **Allow** or **Block**.
     - **Modified by**
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Files**
     - **Value**: The file hash.
     - **Action**: The value **Allow** or **Block**.
     - **Modified by**
     - **Last updated**
     - **Remove on**
     - **Notes**

   You can click on a column heading to sort in ascending or descending order.

   You can click **Group** to group the results. The values that are available depend on the tab you selected:

   - **Senders**: You can group the results by **Action**.
   - **Spoofing**: You can group the results by **Action** or **Spoof type**.
   - **URLs**: You can group the results by **Action**.
   - **Files**: You can group the results by **Action**.

   Click **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon.](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click **Filter** to filter the results. The values that are available in **Filter** flyout that appears depend on the tab you selected:

   - **Senders**
     - **Action**
     - **Never expire**
     - **Last updated date**
     - **Remove on**
   - **Spoofing**
     - **Action**
     - **Spoof type**
   - **URLs**
     - **Action**
     - **Never expire**
     - **Last updated date**
     - **Remove on**
   - **Files**
     - **Action**
     - **Never expire**
     - **Last updated**
     - **Remove on**

   When you're finished, click **Apply**. To clear existing filters, click **Filter**, and in the **Filter** flyout that appears, click **Clear filters**.

3. When you're finished, click **Add**.

## View sender, file or URL entries in the Tenant Allow/Block List

To view block sender, file or URL entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType <Sender | FileHash | URL> [-Entry <SenderValue | FileHashValue | URLValue>] [<-ExpirationDate Date | -NoExpiration>]
```

This example returns information for the specified file hash value.

```powershell
Get-TenantAllowBlockListItems -ListType FileHash -Entry "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"
```

This example returns all blocked URLs.

```powershell
Get-TenantAllowBlockListItems -ListType Url -Block
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

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

> [!NOTE]
> This scenario applies only to blocks.

**Entry**: `*.contoso.com`

- **Block match**:
  - www.contoso.com
  - xyz.abc.contoso.com

- **Block not matched**:
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

> [!NOTE]
> This scenario applies only to blocks.

**Entry**: `*.contoso.com/*`

- **Block match**:
  - abc.contoso.com/ab
  - abc.xyz.contoso.com/a/b/c
  - www.contoso.com/a
  - www.contoso.com/b/a/c
  - xyz.contoso.com/ba

- **Block not matched**: contoso.com/b

#### Scenario: Left and right tilde

**Entry**: `~contoso.com~`

- **Allow match** and **Block match**:

  - contoso.com
  - contoso.com/a
  - www.contoso.com
  - www.contoso.com/b
  - xyz.abc.contoso.com

- **Allow not matched** and **Block not matched**:

  - 123contoso.com
  - contoso.org

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

## Domain pair syntax for spoofed sender entries in the Tenant Allow/Block List

A domain pair for a spoofed sender in the Tenant Allow/Block List uses the following syntax: `<Spoofed user>, <Sending infrastructure>`.

- **Spoofed user**: This value involves the email address of the spoofed user that's displayed in the **From** box in email clients. This address is also known as the `5322.From` address. Valid values include:
  - An individual email address (for example, chris@contoso.com).
  - An email domain (for example, contoso.com).
  - The wildcard character (for example, \*).

- **Sending infrastructure**: This value indicates the source of messages from the spoofed user. Valid values include:
  - The domain found in a reverse DNS lookup (PTR record) of the source email server's IP address (for example, fabrikam.com).
  - If the source IP address has no PTR record, then the sending infrastructure is identified as \<source IP\>/24 (for example, 192.168.100.100/24).

Here are some examples of valid domain pairs to identify spoofed senders:

- `contoso.com, 192.168.100.100/24`
- `chris@contoso.com, fabrikam.com`
- `*, contoso.net`

The maximum number of spoofed sender entries is 1000.

Adding a domain pair only allows or blocks the *combination* of the spoofed user *and* the sending infrastructure. It does not allow email from the spoofed user from any source, nor does it allow email from the sending infrastructure source for any spoofed user.

For example, you add an allow entry for the following domain pair:

- **Domain**: gmail.com
- **Infrastructure**: tms.mx.com

Only messages from that domain *and* sending infrastructure pair are allowed to spoof. Other senders attempting to spoof gmail.com aren't allowed. Messages from senders in other domains originating from tms.mx.com are checked by spoof intelligence.


## What to expect after you add an allow or block entry

After you add an allow entry through the Submissions portal or a block entry in the Tenant Allow/Block List, the entry should start working immediately.

We recommend letting entries automatically expire after 30 days to see if the system has learned about the allow or block. If not, you should make another entry to give the system another 30 days to learn.
