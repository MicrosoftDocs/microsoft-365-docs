---
title: Configure the default connection filter policy
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
ms.assetid: 6ae78c12-7bbe-44fa-ab13-c3768387d0e3
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn how to configure connection filtering in Exchange Online Protection (EOP) to allow or block emails from email servers.
ms.technology: mdo
ms.prod: m365-security
---

# Configure connection filtering

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


If you're a Microsoft 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, you use connection filtering in EOP (specifically, the default connection filter policy) to identify good or bad source email servers by their IP addresses. The key components of the default connection filter policy are:

- **IP Allow List**: Skip spam filtering for all incoming messages from the source email servers that you specify by IP address or IP address range. For scenarios where spam filtering might still occur on messages from these sources, see the [Scenarios where messages from sources in the IP Allow List are still filtered](#scenarios-where-messages-from-sources-in-the-ip-allow-list-are-still-filtered) section later in this article. For more information about how the IP Allow List should fit into your overall safe senders strategy, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md).

- **IP Block List**: Block all incoming messages from the source email servers that you specify by IP address or IP address range. The incoming messages are rejected, are not marked as spam, and no additional filtering occurs. For more information about how the IP Block List should fit into your overall blocked senders strategy, see [Create block sender lists in EOP](create-block-sender-lists-in-office-365.md).

- **Safe list**: The *safe list* is a dynamic allow list in the Microsoft datacenter that requires no customer configuration. Microsoft identifies these trusted email sources from subscriptions to various third-party lists. You enable or disable the use of the safe list; you can't configure the source email servers on the safe list. Spam filtering is skipped on incoming messages from the email servers on the safe list.

This topic describes how to configure the default connection filter policy in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes). For more information about how EOP uses connection filtering is part of your organization's overall anti-spam settings, see see [Anti-spam protection](anti-spam-protection.md).

> [!NOTE]
> The IP Allow List, safe list, and the IP Block List are one part of your overall strategy to allow or block email in your organization. For more information, see [Create safe sender lists](create-safe-sender-lists-in-office-365.md) and [Create blocked sender lists](create-block-sender-lists-in-office-365.md).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Anti-spam settings** page, use <https://protection.office.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in the Security & Compliance Center before you can do the procedures in this article:
  - To modify the default connection filter policy, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to the default connection filter policy, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).
  - The **View-Only Organization Management** role group in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- To find the source IP addresses of the email servers (senders) that you want to allow or block, you can check the connecting IP (**CIP**) header field in the message header. To view a message header in various email clients, see [View internet message headers in Outlook](https://support.microsoft.com/office/cd039382-dc6e-4264-ac74-c048563d212c).

- The IP Allow List takes precedence over the IP Block List (an address on both lists is not blocked).

- The IP Allow List and the IP Block List each support a maximum of 1273 entries, where an entry is a single IP address, an IP address range, or a Classless InterDomain Routing (CIDR) IP.

## Use the Security & Compliance Center to modify the default connection filter policy

1. In the Security & Compliance Center and go to **Threat management** \> **Policy** \> **Anti-Spam**.

2. On the **Anti-spam settings** page, expand **Connection filter policy** by clicking ![Expand icon](../../media/scc-expand-icon.png), and then click **Edit policy**.

3. In the **Default** flyout that appears, configure any of the following settings:

   - **Description**: Enter optional descriptive text.

   - **IP Allow List**: Click **Edit**. In the **IP Allow List** flyout that appears, enter an IPV4 address in the **Address or address range** box using the following syntax:

     - Single IP: For example, 192.168.1.1.

     - IP range: For example, 192.168.0.1-192.168.0.254.

     - CIDR IP: For example, 192.168.0.1/25. Valid network mask values are /24 through /32. To skip spam filtering for CIDR IP mask values /1 to /23, see the [Skip spam filtering for a CIDR IP outside of the available range](#skip-spam-filtering-for-a-cidr-ip-outside-of-the-available-range) section later in this article.

     To add the IP address or address range, click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.png). To remove an entry, select the entry in **Allowed IP Address** and then click **Remove** ![Remove](../../media/scc-remove-icon.png). When you're finished, click **Save**.

   - **IP Block List**: Click **Edit**. In the **IP Block List** flyout that appears, enter a single IP, IP range, or CIDR IP in the **Address or address range** box as previously described in the **IP Allow List** setting.

     To add the IP address or address range, click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.png). To remove an entry, select the entry in **Blocked IP Address** and then click **Remove** ![Remove](../../media/scc-remove-icon.png). When you're finished, click **Save**.

   - **Turn on safe list**: Enable or disable the use of the safe list to identify known, good senders that will skip spam filtering.

4. When you're finished, click **Save**.

## Use the Security & Compliance Center to view the default connection filter policy

1. In the Security & Compliance Center and go to **Threat management** \> **Policy** \> **Anti-Spam**.

2. On the **Anti-spam settings** page, click the drop down next to the default policy named **Connection filter policy**.

3. The policy settings are displayed in the drop down that opens.

## Use Exchange Online PowerShell or standalone EOP PowerShell to modify the default connection filter policy

Use the following syntax:

```powershell
Set-HostedConnectionFilterPolicy -Identity Default [-AdminDisplayName <"Optional Comment">] [-EnableSafeList <$true | $false>] [-IPAllowList <IPAddressOrRange1,IPAddressOrRange2...>] [-IPBlockList <IPAddressOrRange1,IPAddressOrRange2...>]
```

**Notes**:

- Valid IP address or address range values are:

  - Single IP: For example, 192.168.1.1.

  - IP range: For example, 192.168.0.1-192.168.0.254.

  - CIDR IP: For example, 192.168.0.1/25. Valid network mask values are /24 through /32.

- To *overwrite* any existing entries with the values you specify, use the following syntax: `IPAddressOrRange1,IPAddressOrRange2,...,IPAddressOrRangeN`.

- To *add or remove* IP addresses or address ranges without affecting other existing entries, use the following syntax: `@{Add="IPAddressOrRange1","IPAddressOrRange2",...,"IPAddressOrRangeN";Remove="IPAddressOrRange3","IPAddressOrRange4",...,"IPAddressOrRangeN"}`.

- To empty the IP Allow List or IP Block List, use the value `$null`.

This example configures the IP Allow List and the IP Block List with the specified IP addresses and address ranges.

```powershell
Set-HostedConnectionFilterPolicy -Identity Default -IPAllowList 192.168.1.10,192.168.1.23 -IPBlockList 10.10.10.0/25,172.17.17.0/24
```

This example adds and removes the specified IP addresses and address ranges from the IP Allow List.

```powershell
Set-HostedConnectionFilterPolicy -Identity Default -IPAllowList @{Add="192.168.2.10","192.169.3.0/24","192.168.4.1-192.168.4.5";Remove="192.168.1.10"}
```

For detailed syntax and parameter information, see [Set-HostedConnectionFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/set-hostedconnectionfilterpolicy).

## How do you know this worked?

To verify that you've successfully modified the default connection filter policy, do any of the following steps:

- In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-Spam** \> click the drop down next to **Connection filter policy (always ON**), and verify the settings.

- In Exchange Online PowerShell or standalone EOP PowerShell, run the following command and verify the settings:

  ```powershell
  Get-HostedConnectionFilterPolicy -Identity Default
  ```

- Send a test message from an entry on the IP Allow List.

## Additional considerations for the IP Allow List

The following sections identify additional items that you need to know about when you configure the IP Allow List.

### Skip spam filtering for a CIDR IP outside of the available range

As described earlier in this article, you can only use a CIDR IP with the network mask /24 to /32 in the IP Allow List. To skip spam filtering on messages from source email servers in the /1 to /23 range, you need to use Exchange mail flow rules (also known as transport rules). But, we recommend that you don't do this if at all possible, because the messages will be blocked if an IP address in the /1 to /23 CIDR IP range appears on any of Microsoft's proprietary or third-party block lists.

Now that you're fully aware of the potential issues, you can create a mail flow rule with the following settings (at a minimum) to ensure that messages from these IP addresses will skip spam filtering:

- Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> (enter your CIDR IP with a /1 to /23 network mask).

- Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **Bypass spam filtering**.

You can audit the rule, test the rule, activate the rule during a specific time period, and other selections. We recommend testing the rule for a period before you enforce it. For more information, see [Manage mail flow rules in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/mail-flow-rules/manage-mail-flow-rules).

### Skip spam filtering on selective email domains from the same source

Typically, adding an IP address or address range to the IP Allow List means you trust all incoming messages from that email source. But what if that source sends email from multiple domains, and you want to skip spam filtering for some of those domains, but not others? You can't use the IP Allow List alone to do this, but you can use the IP Allow List in combination with a mail flow rule.

For example, the source email server 192.168.1.25 sends email from the domains contoso.com, fabrikam.com, and tailspintoys.com, but you only want to skip spam filtering for messages from senders in fabrikam.com. To do this, use the following steps:

1. Add 192.168.1.25 to the IP Allow List.

2. Configure a mail flow rule with the following settings (at a minimum):

   - Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> 192.168.1.25 (the same IP address or address range that you added to the IP Allow List in the previous step).

   - Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **0**.

   - Rule exception: **The sender** \> **domain is** \> fabrikam.com (only the domain or domains that you want to skip spam filtering).

### Scenarios where messages from sources in the IP Allow List are still filtered

Messages from an email server in your IP Allow List are still subject to spam filtering in the following scenarios:

- An IP address in your IP Allow List is also configured in an on-premises, IP-based inbound connector in *any* tenant in Microsoft 365 (let's call this Tenant A), **and** Tenant A and the EOP server that first encounters the message both happen to be in *the same* Active Directory forest in the Microsoft datacenters. In this scenario, **IPV:CAL** *is* added to the message's [anti-spam message headers](anti-spam-message-headers.md) (indicating the message bypassed spam filtering), but the message is still subject to spam filtering.

- Your tenant that contains the IP Allow List and the EOP server that first encounters the message both happen to be in *different* Active Directory forests in the Microsoft datacenters. In this scenario, **IPV:CAL** *is not* added to the message headers, so the message is still subject to spam filtering.

If you encounter either of these scenarios, you can create a mail flow rule with the following settings (at a minimum) to ensure that messages from the problematic IP addresses will skip spam filtering:

- Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> (your IP address or addresses).

- Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **Bypass spam filtering**.

## New to Microsoft 365?

****

![The short icon for LinkedIn Learning](../../media/eac8a413-9498-4220-8544-1e37d1aaea13.png) **New to Microsoft 365?** Discover free video courses for **Microsoft 365 admins and IT pros**, brought to you by LinkedIn Learning.
