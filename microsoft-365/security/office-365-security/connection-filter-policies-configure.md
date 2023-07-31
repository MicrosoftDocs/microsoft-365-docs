---
title: Configure the default connection filter policy
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
ms.assetid: 6ae78c12-7bbe-44fa-ab13-c3768387d0e3
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn how to configure connection filtering in Exchange Online Protection (EOP) to allow or block emails from email servers.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure connection filtering

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Exchange Online mailboxes or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, _connection filtering_ and the default connection filter policy identify good or bad source email servers by IP addresses. The key components of the default connection filter policy are:

- **IP Allow List**: Skip spam filtering for all incoming messages from the specified source IP addresses or IP address ranges. All incoming messages are scanned for malware and high-confidence phishing. For other scenarios where spam filtering still occurs on messages from servers in the IP Allow List, see the [Scenarios where messages from sources in the IP Allow List are still filtered](#scenarios-where-messages-from-sources-in-the-ip-allow-list-are-still-filtered) section later in this article. For more information about how the IP Allow List should fit into your overall safe senders strategy, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md).

- **IP Block List**: Block all incoming messages from the specified source IP addresses or IP address ranges. The incoming messages are rejected, aren't marked as spam, and no other filtering occurs. For more information about how the IP Block List should fit into your overall blocked senders strategy, see [Create block sender lists in EOP](create-block-sender-lists-in-office-365.md).

- **Safe list**: The _safe list_ in the connection filter policy is a dynamic allow list that requires no customer configuration. Microsoft identifies these trusted email sources from subscriptions to various third-party lists. You enable or disable the use of the safe list; you can't configure the servers in the list. Spam filtering is skipped on incoming messages from the email servers on the safe list.

This article describes how to configure the default connection filter policy in the Microsoft 365 Microsoft 365 Defender portal or in Exchange Online PowerShell. For more information about how EOP uses connection filtering is part of your organization's overall anti-spam settings, see [Anti-spam protection](anti-spam-protection-about.md).

> [!NOTE]
> The IP Allow List, safe list, and the IP Block List are one part of your overall strategy to allow or block email in your organization. For more information, see [Create safe sender lists](create-safe-sender-lists-in-office-365.md) and [Create blocked sender lists](create-block-sender-lists-in-office-365.md).
>
> IPv6 ranges are not supported.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Modify policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to policies_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- To find the source IP addresses of the email servers (senders) that you want to allow or block, you can check the connecting IP (**CIP**) header field in the message header. To view a message header in various email clients, see [View internet message headers in Outlook](https://support.microsoft.com/office/cd039382-dc6e-4264-ac74-c048563d212c).

- The IP Allow List takes precedence over the IP Block List (an address on both lists isn't blocked).

- The IP Allow List and the IP Block List each support a maximum of 1273 entries, where an entry is a single IP address, an IP address range, or a Classless InterDomain Routing (CIDR) IP.

## Use the Microsoft 365 Defender portal to modify the default connection filter policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select **Connection filter policy (Default)** from the list by clicking anywhere in the row other than the check box next to the name.

3. In the policy details flyout that opens, use the **Edit** links to modify the policy settings:

   - **Description** section: Select **Edit description** to enter a description for the policy in the **Description** box of the **Edit name and description** flyout that opens. You can't modify the name of the policy.

     When you're finished in the **Edit name and description** flyout, select **Save**.

   - **Connection filtering** section: Select **Edit connection filter policy**. In the flyout that opens, configure the following settings:

     - **Always allow messages from the following IP addresses or address range**: This setting is the IP Allow List. Click in the box, enter a value, and then press the ENTER key or select the complete value that's displayed below the box. Valid values are:
       - Single IP: For example, 192.168.1.1.
       - IP range: For example, 192.168.0.1-192.168.0.254.
       - CIDR IP: For example, 192.168.0.1/25. Valid subnet mask values are /24 through /32. To skip spam filtering for /1 to /23, see the [Skip spam filtering for a CIDR IP outside of the available range](#skip-spam-filtering-for-a-cidr-ip-outside-of-the-available-range) section later in this article.

       Repeat this step as many times as necessary. To remove an existing entry, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

   - **Always block messages from the following IP addresses or address range**: This setting is the IP Block List. Enter a single IP, IP range, or CIDR IP in the box as previously described in the **Always allow messages from the following IP addresses or address range** setting.

   - **Turn on safe list**: Enable or disable the use of the safe list to identify known, good senders that skip spam filtering. To use the safe list, select the check box.

   When you're finished in the flyout, select **Save**.

4. Back on the policy details flyout, select **Close**.

## Use the Microsoft 365 Defender portal to view the default connection filter policy

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

On the **Anti-spam policies** page, the following properties are displayed in the list of policies:

- **Name**: The default connection filter policy is named **Connection filter policy (Default)**.
- **Status**: The value is **Always on** for the default connection filter policy.
- **Priority**: The value is **Lowest** for the default connection filter policy.
- **Type**: The value is blank for the default connection filter policy.

To change the list of policies from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific policies.

Select the default connection filter policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

## Use Exchange Online PowerShell or standalone EOP PowerShell to modify the default connection filter policy

Use the following syntax:

```powershell
Set-HostedConnectionFilterPolicy -Identity Default [-AdminDisplayName <"Optional Comment">] [-EnableSafeList <$true | $false>] [-IPAllowList <IPAddressOrRange1,IPAddressOrRange2...>] [-IPBlockList <IPAddressOrRange1,IPAddressOrRange2...>]
```

- Valid IP address or address range values are:
  - Single IP: For example, 192.168.1.1.
  - IP range: For example, 192.168.0.1-192.168.0.254.
  - CIDR IP: For example, 192.168.0.1/25. Valid network mask values are /24 through /32.
- To _overwrite_ any existing entries with the values you specify, use the following syntax: `IPAddressOrRange1,IPAddressOrRange2,...,IPAddressOrRangeN`.
- To _add or remove_ IP addresses or address ranges without affecting other existing entries, use the following syntax: `@{Add="IPAddressOrRange1","IPAddressOrRange2",...,"IPAddressOrRangeN";Remove="IPAddressOrRange3","IPAddressOrRange4",...,"IPAddressOrRangeN"}`.
- To empty the IP Allow List or IP Block List, use the value `$null`.

This example configures the IP Allow List and the IP Block List with the specified IP addresses and address ranges.

```powershell
Set-HostedConnectionFilterPolicy -Identity Default -IPAllowList 192.168.1.10,192.168.1.23 -IPBlockList 10.10.10.0/25,172.17.17.0/24
```

This example adds and removes the specified IP addresses and address ranges from the IP Allow List.

```powershell
Set-HostedConnectionFilterPolicy -Identity Default -IPAllowList @{Add="192.168.2.10","192.169.3.0/24","192.168.4.1-192.168.4.5";Remove="192.168.1.10"}
```

For detailed syntax and parameter information, see [Set-HostedConnectionFilterPolicy](/powershell/module/exchange/set-hostedconnectionfilterpolicy).

## How do you know these procedures worked?

To verify that you've successfully modified the default connection filter policy, do any of the following steps:

- On the **Anti-spam policies** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antispam>, select **Connection filter policy (Default)** from the list by clicking anywhere in the row other than the check box next to the name, and verify the policy settings in the details flyout that opens.

- In Exchange Online PowerShell or standalone EOP PowerShell, run the following command and verify the settings:

  ```powershell
  Get-HostedConnectionFilterPolicy -Identity Default
  ```

- Send a test message from an entry on the IP Allow List.

## Additional considerations for the IP Allow List

The following sections identify additional items that you need to know about when you configure the IP Allow List.

> [!NOTE]
> All incoming messages are scanned for malware and high-confidence phishing, regardless of whether the message source is in the IP Allow List.

### Skip spam filtering for a CIDR IP outside of the available range

As described earlier in this article, you can only use a CIDR IP with the network mask /24 to /32 in the IP Allow List. To skip spam filtering on messages from source email servers in the /1 to /23 range, you need to use Exchange mail flow rules (also known as transport rules). But, we recommend that you don't use the mail flow rule method, because the messages are blocked if an IP address in the /1 to /23 CIDR IP range appears on any of Microsoft's proprietary or third-party block lists.

Now that you're fully aware of the potential issues, you can create a mail flow rule with the following settings (at a minimum) to ensure that messages from these IP addresses skip spam filtering:

- Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> (enter your CIDR IP with a /1 to /23 network mask).
- Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **Bypass spam filtering**.

You can audit the rule, test the rule, activate the rule during a specific time period, and other selections. We recommend testing the rule for a period before you enforce it. For more information, see [Manage mail flow rules in Exchange Online](/Exchange/security-and-compliance/mail-flow-rules/manage-mail-flow-rules).

### Skip spam filtering on selective email domains from the same source

Typically, adding an IP address or address range to the IP Allow List means you trust all incoming messages from that email source. What if that source sends email from multiple domains, and you want to skip spam filtering for some of those domains, but not others? You can use the IP Allow List in combination with a mail flow rule.

For example, the source email server 192.168.1.25 sends email from the domains contoso.com, fabrikam.com, and tailspintoys.com, but you only want to skip spam filtering for messages from senders in fabrikam.com:

1. Add 192.168.1.25 to the IP Allow List.

2. Configure a mail flow rule with the following settings (at a minimum):
   - Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> 192.168.1.25 (the same IP address or address range that you added to the IP Allow List in the previous step).
   - Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **0**.
   - Rule exception: **The sender** \> **domain is** \> fabrikam.com (only the domain or domains that you want to skip spam filtering).

### Scenarios where messages from sources in the IP Allow List are still filtered

Messages from an email server in your IP Allow List are still subject to spam filtering in the following scenarios:

- An IP address in your IP Allow List is also configured in an on-premises, IP-based inbound connector in _any_ tenant in Microsoft 365 (let's call this Tenant A), **and** Tenant A and the EOP server that first encounters the message both happen to be in _the same_ Active Directory forest in the Microsoft datacenters. In this scenario, **IPV:CAL** _is_ added to the message's [anti-spam message headers](message-headers-eop-mdo.md) (indicating the message bypassed spam filtering), but the message is still subject to spam filtering.

- Your tenant that contains the IP Allow List and the EOP server that first encounters the message both happen to be in _different_ Active Directory forests in the Microsoft datacenters. In this scenario, **IPV:CAL** *isn't* added to the message headers, so the message is still subject to spam filtering.

If you encounter either of these scenarios, you can create a mail flow rule with the following settings (at a minimum) to ensure that messages from the problematic IP addresses skip spam filtering:

- Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> (your IP address or addresses).
- Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **Bypass spam filtering**.

## New to Microsoft 365?

****

:::image type="content" source="../../media/eac8a413-9498-4220-8544-1e37d1aaea13.png" alt-text="The short icon for LinkedIn Learning."::: **New to Microsoft 365?** Discover free video courses for **Microsoft 365 admins and IT pros**, brought to you by LinkedIn Learning.
