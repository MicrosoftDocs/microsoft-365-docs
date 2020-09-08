---
title: "Manage your allowed and blocked URLs in the Tenant Allow/Block List"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Admins can learn how to configure URL entries in the Tenant Allow/Block List in the Security & Compliance Center."
---

# Manage URLs in the Tenant Allow/Block List

> [!NOTE]
> The features described in this topic are in Preview, are subject to change, and are not available in all organizations.

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The Tenant Allow/Block List in the Security & Compliance Center gives you a way to manually override the Microsoft 365 filtering verdicts. The Tenant Allow/Block List is used during mail flow and at the time of user clicks. You can specify URLs to allow or block in the Tenant Allow/Block List.

This topic describes how to configure entries in the Tenant Allow/Block List in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Tenant Allow/Block List** page, use <https://protection.office.com/tenantAllowBlockList>.

- The available URL values are described in the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this topic.

- The Tenant Allow/Block List allows a maximum of 500 entries for URLs.

- An entry should be active within 15 minutes.

- Block entries take precedence over allow entries.

- By default, entries in the Tenant Allow/Block List will expire after 30 days. You can specify a date or set them to never expire.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this topic:

  - To add and remove values from the Tenant Allow/Block List, you need to be a member of one of the following role groups:

    - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

  - For read-only access to the Tenant Allow/Block List, you need to be a member of one of the following role groups:

    - **Security Reader** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - **View-Only Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

## Use the Security & Compliance Center to create URL entries in the Tenant Allow/Block List

For details about the syntax for URL entries, see the [URL syntax for the Tenant Allow/Block List](#url-syntax-for-the-tenant-allowblock-list) section later in this topic.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, verify that the **URLs** tab is selected, and then click **Add**

3. In the **Add new URLs** flyout that appears, configure the following settings:

   - **Add URLs with wildcards**: Enter one URL per line, up to a maximum of 20.

   - **Block/Allow**: Select whether you want to **Allow** or **Block** the specified URLs.

   - **Never expire**: Do one of the following steps:

     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Expires on** box to specify the expiration date for the entries.

     or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on](../../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png).

   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

## Use the Security & Compliance Center to view entries in the Tenant Allow/Block List

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Tenant Allow/Block Lists**.

2. Select the **URLs** tab.

Click on the following column headings to sort in ascending or descending order:

- **Value**
- **Action**: **Block** or **Allow**.
- **Last updated date**
- **Expiration date**
- **Note**

Click **Group** to group the entries by **Action** (**Block** or **Allow**) or **None**.

Click **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click **Clear search** ![Clear search icon](../../media/b6512677-5e7b-42b0-a8a3-3be1d7fa23ee.gif).

Click **Filter**. In the **Filter** flyout that appears, configure any of the following settings:

- **Action**: Select **Allow**, **Block** or both.

- **Never expire**: Select off (![Toggle off](../../media/scc-toggle-off.png)) or on (![Toggle on](../../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png)).

- **Last updated**: Select a start date (**From**), an end date (**To**) or both.

- **Expiration date**: Select a start date (**From**), an end date (**To**) or both.

When you're finished, click **Apply**.

To clear existing filters, click **Filter**, and in the **Filter** flyout that appears, click **Clear filters**.

## Use the Security & Compliance Center to modify entries in the Tenant Allow/Block List

You can't modify the URL value itself. Instead, you need to delete the entry and recreate it.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Tenant Allow/Block Lists**.

2. Select the **URLs** tab.

3. Select the entry that you want to modify, and then click **Edit** ![Edit icon](../../media/0cfcb590-dc51-4b4f-9276-bb2ce300d87e.png).

4. In the flyout that appears, configure the following settings:

   - **Block/Allow**: Select **Allow** or **Block**.

   - **Never expire**: Do one of the following steps:

     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Expires on** box to specify the expiration date for the entry.

     or

     - Move the toggle to the right to configure the entry to never expire: ![Toggle on](../../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png).

   - **Optional note**: Enter descriptive text for the entry.

5. When you're finished, click **Save**.

## Use the Security & Compliance Center to remove entries from the Tenant Allow/Block List

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Tenant Allow/Block Lists**.

2. Select the **URLs** tab.

3. Select the entry that you want to remove, and then click **Delete** ![Delete icon](../../media/87565fbb-5147-4f22-9ed7-1c18ce664392.png).

4. In the warning dialog that appears, click **Delete**.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure the Tenant Allow/Block List

### Use PowerShell to add entries in the Tenant Allow/Block List

To add entries in the Tenant Allow/Block List, use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType Url -Action <Allow | Block> -Entries <String[]> [-ExpirationDate <DateTime>] [-NoExpiration] [-Notes <String>]
```

This example adds a URL block entry for contoso.com and all subdomains (for example, contoso.com, www.contoso.com, and xyz.abc.contoso.com). Because we didn't use the ExpirationDate or NoExpiration parameters, the entry expires after 30 days.

```powershell
New-TenantAllowBlockListItem -ListType Url -Action Block -Entries ~contoso.com
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](https://docs.microsoft.com/powershell/module/exchange/new-tenantallowblocklistitems).

### Use PowerShell to view entries in the Tenant Allow/Block List

To view entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType Url [-Entry <URLValue>] [-Action <Allow | Block>] [-ExpirationDate <DateTime>] [-NoExpiration]
```

This example returns all blocked URLs.

```powershell
Get-TenantAllowBlockListItems -ListType Url -Action Block
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](https://docs.microsoft.com/powershell/module/exchange/get-tenantallowblocklistitems).

### Use PowerShell to modify entries in the Tenant Allow/Block List

You can't modify the URL value itself. Instead, you need to delete the entry and recreate it.

To modify entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType Url -Ids <"Id1","Id2",..."IdN"> [-Action <Allow | Block>] [-ExpirationDate <DateTime>] [-NoExpiration] [-Notes <String>]
```

This example changes the expiration date of the specified entry.

```powershell
Set-TenantAllowBlockListItems -ListType Url -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSRAAAA" -ExpirationDate (Get-Date "5/30/2020 9:30 AM").ToUniversalTime()
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](https://docs.microsoft.com/powershell/module/exchange/set-tenantallowblocklistitems).

### Use PowerShell to remove entries from the Tenant Allow/Block List

To remove entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType Url -Ids <"Id1","Id2",..."IdN">
```

This example removes the specified URL entry from the Tenant Allow/Block List.

```powershell
Remove-TenantAllowBlockListItems -ListType Url -Ids "RgAAAAAI8gSyI_NmQqzeh-HXJBywBwCqfQNJY8hBTbdlKFkv6BcUAAAl_QCZAACqfQNJY8hBTbdlKFkv6BcUAAAl_oSPAAAA0"
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](https://docs.microsoft.com/powershell/module/exchange/remove-tenantallowblocklistitems).

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
