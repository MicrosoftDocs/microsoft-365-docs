---
title: "Configure the default connection filter policy, IP Allow List, IP Block List, enable or disable safe list"
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
ms.assetid: 6ae78c12-7bbe-44fa-ab13-c3768387d0e3
ms.collection:
- M365-security-compliance
description: "To make sure that email sent from people you trust isn't blocked, you can use the connection filter policy to create an Allow list, also known as a safe sender list, of IP addresses that you trust. You can also create a blocked senders list."
---

# Configure connection filtering in Office 365

Most of us have friends and business partners we trust. It can be frustrating to find email from them in your Junk Email folder, or even blocked entirely as spam. You use connection filtering (specifically, the default connection filter policy) to define good or bad email sources (email servers) by their IP addresses. The key components of the default connection filter policy are:

- **IP Allow List**: Always allow messages from the IP addresses or IP address ranges you specify. Anti-spam filtering is skipped on these incoming messages.

- **IP Block List**: Always blocks email from the IP addresses or IP address ranges you specify. The incoming messages are rejected, are not marked as spam, and no additional filtering occurs.

- **Safe list**: The *safe list* is a dynamic allow list in the Microsoft datacenter that requires no customer configuration. Microsoft identifies the trusted senders on the safe list from subscriptions to various third-party lists of trusted email sources. You enable or disable the use of the safe list; you can't configure the senders on the safe list. Anti-spam filtering is skipped on these incoming messages.

This topic describes how to configure the default connection filter policy in the Office 365 Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Office 365 customers; Exchange Online Protection PowerShell for standalone EOP customers).

> [!NOTE]
> The IP Allow List, safe list, and the IP Block List are just one part of your overall strategy to allow or block email in your organization. For more information, see [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md), [How to prevent good email messages from being marked as spam in Office 365](prevent-email-from-being-marked-as-spam.md), and [Create blocked sender lists in Office 365](create-block-sender-lists-in-office-365.md).

## What do you need to know before you begin?

- To open the Office 365 Security & Compliance Center, see [Go to the Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/go-to-the-securitycompliance-center).

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform these procedures. To modify the default connection filter policy, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to the default connection filter policy, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- To find the source IP addresses of the email servers (senders) that you want to allow or block, you can check connecting IP (**CIP**) header field in the message header. To view a message header in various email clients, see [View internet message headers in Outlook](https://support.office.com/article/cd039382-dc6e-4264-ac74-c048563d212c).

- The following connection filter procedure can also be performed via remote PowerShell. Use the [Get-HostedConnectionFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-hostedconnectionfilterpolicy) cmdlet to review your settings, and the [Set-HostedConnectionFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedconnectionfilterpolicy) to edit your connection filter policy settings. To learn how to use Windows PowerShell to connect to Exchange Online Protection, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell). To learn how to use Windows PowerShell to connect to Exchange Online, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

## Use the Security & Compliance Center to edit the default connection filter policy

You create an IP Allow list or IP Block list by editing the connection filter policy in the Exchange admin center (EAC). The connection filter policy settings are applied to inbound messages only.

1. In the Security & Compliance Center, go to to **Threat management** \> **Policy** \> **Anti-Spam**.

2. On the **Anti-spam settings** page, click the drop down arrow next to **Connection filter policy (always ON**), and then click **Edit policy**.

3. In the **Default** flyout that appears, configure any of the following settings:

   - **Description**: Enter optional descriptive text.

   - **IP Allow List**: Click **Edit**. In the **IP Allow List** flyout that appears, enter an IPV4 address in the **Address or address range** box using the following syntax:

     - Single IP: For example, 192.168.1.1.

     - IP range: For example, 192.168.0.1-192.168.0.254.

     - CIDR IP: Classless InterDomain Routing (CIDR), for example, 192.168.0.1/25. Valid network mask values are /24 through /32. To specify mask values /1 to /23, you need to use a mail flow rule (also known as a transport rule).

     To add the IP address or range, click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.png). To remove an entry, select the entry in **Allowed IP Address** and then click **Remove** ![Remove](../media/scc-remove-icon.png). When you're finished, click **Save**.

   - **IP Block List**: Click **Edit**. In the **IP Block List** flyout that appears, enter a single IP, IP range, or CIDR IP in the **Address or address range** box as previously described in the **IP Allow List** setting.

     To add the IP address or range, click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.png). To remove an entry, select the entry in **Blocked IP Address** and then click **Remove** ![Remove](../media/scc-remove-icon.png). When you're finished, click **Save**.

   - **Turn on safe list**: Enable or disable the use of the safe list to identify known, good senders that will skip spam filtering.

   To create these lists, click ![Add Icon](../media/ITPro-EAC-AddIcon.gif). In the subsequent dialog box, specify the IP address or address range, and then click **ok**. Repeat this process to add additional addresses. (You can also edit or remove IP addresses after they have been added.)

   Specify IPV4 IP addresses in the format nnn.nnn.nnn.nnn where nnn is a number from 0 to 255. You can also specify Classless Inter-Domain Routing (CIDR) ranges in the format nnn.nnn.nnn.nnn/rr where rr is a number from 24 to 32. To specify ranges outside of the 24 to 32 range, see the next section, [Additional considerations when configuring IP Allow lists](#additional-considerations-when-configuring-ip-allow-lists).

   > [!NOTE]
   > If you add an IP address to both lists, email sent from that IP address is allowed. <br/><br/> You can specify a maximum of 1273 entries, where an entry is either a single IP address or a CIDR range of IP addresses from /24 to /32. <br/><br/> If you're sending TLS-encrypted messages, IPv6 addresses and address ranges are not supported.

4. When you're finished, click **Save**.

## Additional considerations when configuring IP Allow lists

The following are additional considerations you may want to consider or that you should be aware of when configuring an IP Allow list.

### Specifying a CIDR range that falls outside of the recommended range

To specify a CIDR IP address range from /1 to /23, you must create a mail flow rule that operates on the IP address range that sets the spam confidence level (SCL) to **Bypass spam filtering** (meaning that all messages received from within this IP address range are set to "not spam") and no additional filtering is performed by the service). However, if any of these IP addresses appear on any of Microsoft's proprietary block lists or on any of our third-party block lists, these messages will still be blocked. It is therefore strongly recommended that you use the /24 to /32 IP address range.

To create this mail flow rule, perform the following steps.

1. In the EAC, navigate to **Mail flow** \> **Rules**.

2. Click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) and then select **Create a new rule**.

3. Give the rule a name and then click **More options**.

4. Under **Apply this rule if**, select **The sender** and then choose **IP address is in any of these ranges or exactly matches**.

5. In the **specify IP addresses**, specify the IP address range, click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then click **ok**.

6. Under **Do the following** box, set the action by choosing **Modify the message properties** and then **set the spam confidence level (SCL)**. In the **specify SCL** box, select **Bypass spam filtering**, and click **ok**.

7. If you'd like, you can make selections to audit the rule, test the rule, activate the rule during a specific time period, and other selections. We recommend testing the rule for a period before you enforce it. [Procedures for mail flow rules in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/mail-flow-rule-procedures) contains more information about these selections.

8. Click **save** to save the rule. The rule appears in your list of rules.

After you create and enforce the rule, the service bypasses spam filtering for the IP address range you specified.

### Scoping an IP Allow list exception for a specific domain

In general, we recommend that you add the IP addresses (or IP address ranges) for all your domains that you consider safe to the IP Allow list. However, if you don't want your IP Allow List entry to apply to all your domains, you can create a mail flow rule (also known as a transport rule) that excepts specific domains.

For example, let's say you have three domains: ContosoA.com, ContosoB.com, and ContosoC.com, and you want to add the IP address (for simplicity's sake, let's use 1.2.3.4) and skip filtering only for domain ContosoB.com. You would create an IP Allow list for 1.2.3.4, which sets the spam confidence level (SCL) to -1 (meaning it is classified as non-spam) for all domains. You can then create a mail flow rule that sets the SCL for all domains except ContosoB.com to 0. This results in the message being rescanned for all domains associated with the IP address except for ContosoB.com which is the domain listed as the exception in the rule. ContosoB.com still has an SCL of -1 which means skip filtering, whereas ContosoA.com and ContosoC.com have SCLs of 0, meaning they will be rescanned by the content filter.

To do this, perform the following steps:

1. In the EAC, navigate to **Mail flow** \> **Rules**.

2. Click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) and then select **Create a new rule**.

3. Give the rule a name and then click **More options**.

4. Under **Apply this rule if**, select **The sender** and then choose **IP address is in any of these ranges or exactly matches**.

5. In the **specify IP addresses** box, specify the IP address or IP address range you entered in the IP Allow list, click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then click **OK**.

6. Under **Do the following**, set the action by choosing **Modify the message properties** and then **Set the spam confidence level (SCL)**. In the **Specify SCL** box, select **0**, and click **OK**.

7. Click **Add exception**, and under **Except if**, select **The sender** and choose **domain is**.

8. In the **Specify domain** box, enter the domain for which you want to bypass spam filtering, such as **contosob.com**. Click **Add** ![Add Icon](../media/ITPro-EAC-AddIcon.gif) to move it to the list of phrases. Repeat this step if you want to add additional domains as exceptions, and click **ok** when you are finished.

9. If you'd like, you can make selections to audit the rule, test the rule, activate the rule during a specific time period, and other selections. We recommend testing the rule for a period before you enforce it. [Procedures for mail flow rules in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/mail-flow-rule-procedures) contains more information about these selections.

10. Click **Save** to save the rule. The rule appears in your list of rules.

After you create and enforce the rule, spam filtering for the IP address or IP address range you specified is bypassed only for the domain exception you entered.

### Scenarios where allowed IP addresses are still filtered

Messages from allowed IP addresses that you've configured in connection filter policies are still subject to spam filtering in the following scenarios:

- The source IP address in your connection filter policy is also configured in an on-premises, IP-based inbound connector in *any* tenant (let's call this Tenant A), **and** Tenant A and the Exchange Online Protection server that first encounters the message in Office 365 both happen to be in the same Active Directory forest in the Microsoft datacenters. In this scenario, **IPV:CAL** is added to the message's [anti-spam message headers](anti-spam-message-headers.md) (indicating the message bypassed spam filtering), but the message is still subject to spam filtering.

- Your tenant (where you've configured the connection filter policy) and the Exchange Online Protection server that first encounters the message in Office 365 both happen to be in different Active Directory forests in the Microsoft datacenters. In this scenario, **IPV:CAL** is not added to the message headers, so the message is still subject to spam filtering.

If you encounter either of these scenarios, you can create a mail flow rule in the EAC with (at a minimum) the following settings to ensure messages from the IP address or addresses bypass spam filtering:

- Rule condition: **Apply this rule if** \> **The sender** \> **IP address is in any of these ranges or exactly matches** \> (your IP address or addresses).

- Rule action: **Modify the message properties** \> **Set the spam confidence level (SCL)** \> **Bypass spam filtering**.

This is basically the same rule creation procedure from the previous [Scoping an IP Allow list exception for a specific domain](#scoping-an-ip-allow-list-exception-for-a-specific-domain) section.

## New to Office 365?

||
|:-----|
|![The short icon for LinkedIn Learning](../media/eac8a413-9498-4220-8544-1e37d1aaea13.png) **New to Office 365?** Discover free video courses for **Office 365 admins and IT pros**, brought to you by LinkedIn Learning.|

## For more information

[Safe sender and blocked sender lists in Exchange Online](safe-sender-and-blocked-sender-lists-faq.md)

[Configure your spam filter policies](configure-your-spam-filter-policies.md)

[Configure the outbound spam policy](configure-the-outbound-spam-policy.md)

[How to prevent good email from being marked as spam in Office 365](prevent-email-from-being-marked-as-spam.md)

[How to reduce spam email in Office 365](reduce-spam-email.md)
