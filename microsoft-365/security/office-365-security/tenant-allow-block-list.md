---
title: "Specify a mailbox for user submissions of spam and phishing messages"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Admins can learn how to configure a mailbox to collect spam and phishing email that are reported by users."
---

# Use the Allowed/Blocked List portal in EOP

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The the Allowed/Blocked List portal in the Security & Compliance Center gives you a way to manually override the EOP filtering verdicts. The lists are used during mail flow and at the time of user clicks. Entries should take effect in less than 15 minutes.

- **URL overrides**:

  - IP4v and IPv6 addresses are allowed, but TCP/UDP ports are not.
  - Filename extensions are not allowed (for example, test.pdf).
  - Unicode is not supported, but Punycode is.
  - Hostnames are allowed if all of the following statements are true:
  
    - The hostname contains a period.
    - There is at least one character to the left of the period.
    - There are at least two characters to the right of the period.

    For example, `t.co` is allowed; `.com` or `contoso.` are not allowed.
  
  - Wildcards (*) are allowed in the following scenarios:

    - A left wildcard must be followed by a period to specify a subdomain.

      For example, `*.contoso.com` is allowed; `*contoso.com` is not allowed.

    - A right wildcard must follow a forward slash (/) to specify a path.

      For example, `contoso.com/*` is allowed; `contoso.com*` or `contoso.com/ab*` are not allowed.

    - All subpaths are not implied by a right wildcard.

      For example, `contoso.com/*` does not include `contoso.com/a`.

    - `*.com*` is invalid (not a resolvable domain and the right wildcard does not follow a forward slash).

    - Wildcards are not allowed in IP addresses.

  - The tilde (~) character is available for searches in the following scenarios:

    - A left tilde implies domains and all subdomains.

      For example `~contoso.com` includes `contoso.com ` and `*.contoso.com`.

  - URL entries that contain protocols (for example, `http://`, `https://`, or `ftp://`) will fail, because URL entries apply to all protocols.

  - A username or password aren't supported or required.

  - Quotes (' or ") are invalid characters.

  - A URL should include all redirects where possible.

- **File overrides**:

  - Must be SHA256 and an exact match.

  - Perceptual hashing (pHash) is not allowed.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Anti-spam settings** page, use <https://protection.office.com/allowBlockList>.

- The Allowed/Blocked List allows a maximum of 500 entries for URLs, and 500 entries for file hashes.

- Entries in the Blocked List take precedence over entries in the Allowed List.

- By default, entries in the Allowed/Blocked List will expire after 30 days. You can specify a date or set them to never expire.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform these procedures. To add and remove values from the lists, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to lists, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Use the Security & Compliance Center to create URL entries in the Allow/Block List

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Allowed/Blocked Lists**.

2. On the **Allowed/Blocked List** page, verify that the **URLs** tab is selected, and then click **Add**

3. In the **Add new URLs** flyout that appears, configure the following settings.

   - **Add URLs with wildards**: For more information about valid entries, see the <> section in this topic.

   - **Block/Allow**: Select whether you want to **Allow** or **Block** the specified URLs.

   - **Never expire**: Do one of the following actions:

     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Expires on** box to specify the expiration date for the entry.

     - Move the toggle to the right to configure the entry to never expire: ![Toggle on](../../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png).

   - **Optional note**: Enter descriptive text for the entry.

4. When you're finished, click **Add**.

## Use the Security & Compliance Center to create file entries in the Allow/Block List

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Allowed/Blocked Lists**.

2. On the **Allowed/Blocked List** page, select **Files** tab, and then click **Add**.


## Use the Security & Compliance Center to view URL entries in the Allow/Block List

## Use the Security & Compliance Center to view file entries in the Allow/Block List

## Use the Security & Compliance Center to modify URL and file entries in the Allow/Block List

## Use the Security & Compliance Center to remove URL and file entries from the Allow/Block List

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure the Allow/Block List

### Use PowerShell to add URL and file entries in the Allow/Block List

### Use PowerShell to view URL and file entries in the Allow/Block List

### Use PowerShell to modify URL and file entries in the Allow/Block List

### Use PowerShell to remove URL and file entries from the Allow/Block List


|Scenario|Entry|Match|Not Matched|Block Match|Block Not Matched|Comment|
|---|---|---|---|---|---|---|
|No Wildcards|**contoso.com**|contoso.com|abc-contoso.com <br/><br/> contoso.com/a <br/><br/> payroll.contoso.com <br/><br/> test.com/contoso.com <br/><br/> test.com/q=contoso.com <br/><br/> www.contoso.com <br/><br/> www.contoso.com/q=a@contoso.com||abc-contoso.com|When no star or tilde, then bubble up exception for blocks that this applies to both subpath and domain portion, as written. i.e blocks here are "contain"|
|Left Wildcard Subdomain|**\*.contoso.com**|www.contoso.com <br/><br/> xyz.abc.contoso.com|contoso.com <br/><br/> www.contoso.com/abc <br/><br/> 123contoso.com <br/><br/> test.com/contoso.com|www.contoso.com <br/><br/> xyz.abc.contoso.com|contoso.com <br/><br/> www.contoso.com/abc <br/><br/> 123contoso.com <br/><br/> test.com/contoso.com||
|Right Wildcard at top of path|**contoso.com/a/\***|contoso.com/a/b <br/><br/> contoso.com/a/b/c <br/><br/> contoso.com/a/?q=joe@t.com|contoso.com <br/><br/> www.contoso.com <br/><br/> www.contoso.com/q=a@contoso.com <br/><br/> contoso.com/a|contoso.com/a/b <br/><br/> contoso.com/a/b/c <br/><br/> contoso.com/a/?q=joe@t.com|contoso.com <br/><br/> www.contoso.com <br/><br/> [www.contoso.com/q=a@contoso.com](http://www.contoso.com/q=a@contoso.com) <br/><br/> contoso.com/a||
|Left tilde|**~contoso.com**|contoso.com <br/><br/> www.contoso.com <br/><br/> xyz.abc.contoso.com|contoso.com/abc <br/><br/> www.contoso.com/abc <br/><br/> 123contoso.com|contoso.com <br/><br/> www.contoso.com <br/><br/> xyz.abc.contoso.com|contoso.com/abc <br/><br/> www.contoso.com/abc <br/><br/> 123contoso.com|For blocks, they could just use the no wildcard or tilde option to be more thorough and clear, but this option works as well.|
|Right Wildcard Suffix|**contoso.com/\***|contoso.com/a <br/><br/> contoso.com/ab <br/><br/> contoso.com/a/b/c <br/><br/> contoso.com/b <br/><br/> contoso.com/ba <br/><br/> contoso.com/b/a/c <br/><br/> contoso.com/?q=whatever@test.com|contoso.com|contoso.com/a <br/><br/> contoso.com/ab <br/><br/> contoso.com/a/b/c <br/><br/> contoso.com/b <br/><br/> contoso.com/ba <br/><br/> contoso.com/b/a/c <br/><br/> contoso.com/?q=whatever@test.com|contoso.com||
|Left Wildcard Subdomain & Right Wildcard Suffix|**\*.contoso.com/\***|www.contoso.com/a <br/><br/> abc.contoso.com/ab <br/><br/> abc.xyz.contoso.com/a/b/c <br/><br/> xyz.contoso.com/ba <br/><br/> www.contoso.com/b/a/c|contoso.com/b|www.contoso.com/a <br/><br/> abc.contoso.com/ab <br/><br/> abc.xyz.contoso.com/a/b/c <br/><br/> xyz.contoso.com/ba <br/><br/> www.contoso.com/b/a/c|contoso.com/b||
|Left and right tilde|**~contoso.com~**|contoso.com <br/><br/> www.contoso.com <br/><br/> xyz.abc.contoso.com <br/><br/> contoso.com/a <br/><br/> www.contoso.com/b|123contoso.com <br/><br/> contoso.org|contoso.com <br/><br/> www.contoso.com <br/><br/> xyz.abc.contoso.com <br/><br/> contoso.com/a <br/><br/> www.contoso.com/b|123contoso.com <br/><br/> contoso.org|For blocks, they could just use the no wildcard or tilde option to be more thorough and clear, but this option works as well.|
|IP Address|**1.2.3.4**|1.2.3.4|1.2.3.4/a <br/><br/> 11.2.3.4/a|1.2.3.4|1.2.3.4/a <br/><br/> 11.2.3.4/a|Same applies to IPv6|
|IP Address with right wildcard|**1.2.3.4/\***|1.2.3.4/ab <br/><br/> 1.2.3.4/abc|1.2.3.4/b <br/><br/> 1.2.3.4/baaaa|1.2.3.4/ab <br/><br/> 1.2.3.4/abc|1.2.3.4/b <br/><br/> 1.2.3.4/baaaa|Same applies to IPv6|
|Missing/Invalid domain|**contoso** <br/><br/> **\*.contoso.\*** <br/><br/> **\*.com** <br/><br/> **\*.pdf**|\-|\-|\-|\-|Error: Not a valid domain <br/><br/> (error is on it not being a domain even though file extensions are not allowed anyways)|
|Wildcard on text/without spacing characters|**\*contoso.com** <br/><br/> **contoso.com\*** <br/><br/> **\*1.2.3.4** <br/><br/> **1.2.3.4\*** <br/><br/> **contoso.com/a\*** <br>**contoso.com/ab\***|\-|\-|\-|\-|Error: Improper use of a wildcard|
|No IP port support|**contoso.com:443** <br/><br/> **abc.contoso.com:25**|\-|\-|\-|\-|Error: No support for IP ports, all protocols are checked against the URL|
|Non-descriptive Wildcards|**\*** <br/><br/> **\*.\***|\-|\-|\-|\-|Error: Improper use of a wildcard|
|Middle Wildcard|**conto\*so.com** <br/><br/> **conto~so.com**|\-|\-|\-|\-|Error: Improper use of a wildcard|
|Double wildcard|**contoso.com/\*\*** <br/><br/> **contoso.com/\*/\***|\-|\-|\-|\-|Error: Improper use of a wildcard|