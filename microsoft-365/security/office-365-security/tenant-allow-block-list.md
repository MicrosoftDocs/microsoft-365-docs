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

localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to manage allows and blocks in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Manage the Tenant Allow/Block List

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
>
> The features described in this article are in Preview, are subject to change, and are not available in all organizations.  If your organization does not have the spoof features as described in this article, see the older spoof management experience at [Manage spoofed senders using the spoof intelligence policy and spoof intelligence insight in EOP](walkthrough-spoof-intelligence-insight.md).


In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The Tenant Allow/Block List in the Microsoft 365 Defender portal gives you a way to manually override the Microsoft 365 filtering verdicts. The Tenant Allow/Block List is used during mail flow for incoming messages (does not apply to intra-org messages) and at the time of user clicks. You can specify the following types of overrides:

- URLs to block.
- Files to block.
- Spoofed senders to allow or block. If you override the allow or block verdict in the [spoof intelligence insight](learn-about-spoof-intelligence.md), the spoofed sender becomes a manual allow or block entry that only appears on the **Spoof** tab in the Tenant Allow/Block List. You can also manually create allow or block entries for spoofed senders here before they're detected by spoof intelligence.
- URLs to allow.
- Files to allow. 

This article describes how to configure entries in the Tenant Allow/Block List in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com/>. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

- You specify files by using the SHA256 hash value of the file. To find the SHA256 hash value of a file in Windows, run the following command in a Command Prompt:

  ```console
  certutil.exe -hashfile "<Path>\<Filename>" SHA256
  ```

  An example value is `768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3a`. Perceptual hash (pHash) values are not supported.

- The available URL values are described in the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this article.

- The Tenant Allow/Block List allows a maximum of 500 entries for URLs, and 500 entries for file hashes.

- The maximum number of characters for each entry is:
  - File hashes = 64
  - URL = 250

- An entry should be active within 30 minutes.

- By default, entries in the Tenant Allow/Block List will expire after 30 days. You can specify a date or set them to never expire.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in Exchange Online before you can do the procedures in this article:
  - **URLs and files**:
    - To add and remove values from the Tenant Allow/Block List, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
    - For read-only access to the Tenant Allow/Block List, you need to be a member of the **Global Reader** or **Security Reader** role groups.
  - **Spoofing**: One of the following combinations:
    - **Organization Management**
    - **Security Administrator** <u>and</u> **View-Only Configuration** or **View-Only Organization Management**.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  >
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  >
  > - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

## Configure the Tenant Allow/Block List

### Use the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

To add, edit, and delete all blocks, see [Add blocks in the Tenant Allow/Block List](manage-tenant-blocks.md).

To add, edit, and delete all allows, see [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md).

### Use Exchange Online PowerShell or standalone EOP PowerShell

To manage all allows and blocks, see [Add blocks in the Tenant Allow/Block List](manage-tenant-blocks.md) and [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md).

## Use PowerShell to manage spoofed sender entries to the Tenant Allow/Block List

### Create allow or block spoofed sender entries

**Notes**:

- Only the _combination_ of the spoofed user _and_ the sending infrastructure as defined in the domain pair is specifically allowed or blocked from spoofing.
- When you configure an allow or block entry for a domain pair, messages from that domain pair no longer appear in the spoof intelligence insight.
- Entries for spoofed senders never expire.
- Spoof supports both allow and block. URL supports only allow.

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, select the **Spoofing** tab, and then click ![Block icon](../../media/m365-cc-sc-create-icon.png) **Add**.

3. In the **Add new domain pairs** flyout that appears, configure the following settings:
   - **Add new domain pairs with wildcards**: Enter one domain pair per line, up to a maximum of 20. For details about the syntax for spoofed sender entries, see below.
   - **Spoof type**: Select one of the following values:
     - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
     - **External**: The spoofed sender is in an external domain.
   - **Action**: Select **Allow** or **Block**.

4. When you're finished, click **Add**.

### Add allow or block spoofed sender entries

To add spoofed sender entries in the Tenant Allow/Block List, use the following syntax:

```powershell
New-TenantAllowBlockListSpoofItems -SpoofedUser <Domain | EmailAddress | *> -SendingInfrastructure <Domain | IPAddress/24> -SpoofType <External | Internal> -Action <Allow | Block>
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListSpoofItems](/powershell/module/exchange/new-tenantallowblocklistspoofitems).

### View allow or block spoofed sender entries

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

### Modify allow or block spoofed sender entries

To modify allow or block spoofed sender entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListSpoofItems -Ids <"Id1","Id2",..."IdN"> -Action <Allow | Block>
```

This example changes spoofed sender entry from allow to block.

```powershell
Set-TenantAllowBlockListItems -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSRAAAA" -Action Block
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListSpoofItems](/powershell/module/exchange/set-tenantallowblocklistspoofitems).

### Remove allow or block spoofed sender entries

To remove allow or block spoof sender entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListSpoofItems -Ids <"Id1","Id2",..."IdN">
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListSpoofItems](/powershell/module/exchange/remove-tenantallowblocklistspoofitems).

## URL syntax for the Tenant Allow/Block List

- IP4v and IPv6 addresses are allowed, but TCP/UDP ports are not.

- Filename extensions are not allowed (for example, test.pdf).

- Unicode is not supported, but Punycode is.

- Hostnames are allowed if all of the following statements are true:
  - The hostname contains a period.
  - There is at least one character to the left of the period.
  - There are at least two characters to the right of the period.

  For example, `t.co` is allowed; `.com` or `contoso.` are not allowed.

- Subpaths are not implied.

  For example, `contoso.com` does not include `contoso.com/a`.

- Wildcards (*) are allowed in the following scenarios:

  - A left wildcard must be followed by a period to specify a subdomain.

    For example, `*.contoso.com` is allowed; `*contoso.com` is not allowed.

  - A right wildcard must follow a forward slash (/) to specify a path.

    For example, `contoso.com/*` is allowed; `contoso.com*` or `contoso.com/ab*` are not allowed.

  - All subpaths are not implied by a right wildcard.

    For example, `contoso.com/*` does not include `contoso.com/a`.

  - `*.com*` is invalid (not a resolvable domain and the right wildcard does not follow a forward slash).

  - Wildcards are not allowed in IP addresses.

- The tilde (~) character is available in the following scenarios:

  - A left tilde implies a domain and all subdomains.

    For example `~contoso.com` includes `contoso.com` and `*.contoso.com`.

- URL entries that contain protocols (for example, `http://`, `https://`, or `ftp://`) will fail, because URL entries apply to all protocols.

- A username or password aren't supported or required.

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

**Entry**: `*.contoso.com/*`

- **Allow match** and **Block match**:

  - abc.contoso.com/ab
  - abc.xyz.contoso.com/a/b/c
  - www.contoso.com/a
  - www.contoso.com/b/a/c
  - xyz.contoso.com/ba

- **Allow not matched** and **Block not matched**: contoso.com/b

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
