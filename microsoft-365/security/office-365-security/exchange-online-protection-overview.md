---
title: Exchange Online Protection (EOP) overview
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 09/18/2020
audience: ITPro
ms.topic: overview

localization_priority: Normal
ms.assetid: 1270a65f-ddc3-4430-b500-4d3a481efb1e
ms.custom: 
  - seo-marvel-apr2020
description: Learn how Exchange Online Protection (EOP) can help protect your on-premises email organization in standalone and hybrid environments.
ms.technology: mdo
ms.prod: m365-security
---

# Exchange Online Protection overview

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Exchange Online Protection (EOP) is the cloud-based filtering service that helps protect your organization against spam and malware. EOP is included in all Microsoft 365 organizations with Exchange Online mailboxes. However, EOP is also available in the following on-premises scenarios:

- **In a standalone scenario**: EOP provides cloud-based email protection for your on-premises Exchange organization or for any other on-premises SMTP email solution.

- **In a hybrid deployment**: EOP can be configured to protect your email environment and control mail routing when you have a mix of on-premises and cloud mailboxes.

In these scenarios, EOP can simplify the management of your email environment and alleviate many of the burdens that come with maintaining on-premises hardware and software.

The rest of this topic explains how EOP works in standalone and hybrid environments.

## How EOP works

To understand how EOP works, it helps to see how it processes incoming email:

:::image type="content" source="../../media/tp_emailprocessingineopt3.png" alt-text="Graphic of email from either the Internet or Customer feedback passing into EOP and through the Connection, Anti-malware, Mailflow Rules-slash-Policy Filtering, and Content Filtering, before the verdict of either junk mail or quarantine, or end user mail delivery.":::

- When an incoming message enters EOP, it initially passes through connection filtering, which checks the sender's reputation. The majority of spam is stopped at this point and rejected by EOP. For more information, see [Configure connection filtering](configure-the-connection-filter-policy.md).

- Then the message is inspected for signs of malware. If malware is found in the message or the attachment(s) the message is routed to an admin only quarantine store. You can learn more about configuring anti-malware [here](configure-anti-malware-policies.md).

- Messages continue through policy filtering, where they are evaluated against custom mail flow rules (also known as transport rules) that you create or enforce from a template. For example, you can have a rule that sends a notification to a manager when mail arrives from a specific sender. Data loss prevention (DLP) checks also happen at this point (Exchange Enterprise CAL with Services).

- Next, the message passes through content filtering (also known as Anti-spam). A message that this filter determines to be spam *or phish* can be sent to quarantine, or a user's Junk Email folder, among other options. For more information see [Configure anti-spam policies](configure-your-spam-filter-policies.md) and [Configure anti-phishing policies](configure-anti-phishing-policies-eop.md).

Any message that passes all of these protection layers successfully is delivered to the recipient.

For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## EOP plans and features for on-premises email organizations

The available EOP subscription plans are:

- **EOP standalone**: You enroll in EOP to protect your on-premises email organization.

- **EOP features in Exchange Online**: Any subscription that includes Exchange Online (standalone or as part of Microsoft 365) uses EOP to protect your Exchange Online mailboxes.

- **Exchange Enterprise CAL with Services**: If you have an on-premises Exchange organization where you've purchased additional Exchange Enterprise CAL with Services licenses, EOP is part of the included services.

For information about requirements, important limits, and feature availability across all EOP subscription plans, see the [Exchange Online Protection service description](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description).

> [!NOTE]
> If you have a Microsoft 365 or Office 365 subscription that includes Exchange Online mailboxes, you have EOP. For steps to set up EOP security features in your subscription, and information on the added security a Microsoft Defender for Office 365 subscription can give you, see [protect against threats](protect-against-threats.md). The recommended settings for EOP feature for setup can be found in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

## Setting up EOP for on-premises email organizations

Setting up EOP can be simple, especially in the case of a small organization with a handful of compliance rules. However, if you have a large organization with multiple domains, custom compliance rules, or hybrid mail flow, set up can take more planning and time.

If you've already purchased EOP, see [Set up your EOP service](/exchange/standalone-eop/set-up-your-eop-service) to ensure that you complete all the steps necessary to configure EOP to protect your messaging environment.

### EOP datacenters

EOP runs on a worldwide network of datacenters that are designed to provide the best availability. For example, if a datacenter becomes unavailable, email messages are automatically routed to another datacenter without any interruption in service. Servers in each datacenter accept messages on your behalf, providing a layer of separation between your organization and the internet, thereby reducing load on your servers. Through this highly available network, Microsoft can ensure that email reaches your organization in a timely manner.

EOP performs load balancing between datacenters but only within a region. If you're provisioned in one region all your messages will be processed using the mail routing for that region. The following list shows the how regional mail routing works for the EOP datacenters:

- In Europe, the Middle East, and Africa (EMEA), all Exchange Online mailboxes are located in EMEA datacenters, and all messages are routed through EMEA datacenters for EOP filtering.

- In Asia-Pacific (APAC), all Exchange Online mailboxes are located in APAC datacenters, and messages are currently routed through APAC datacenters for EOP filtering.

- In the Americas, services are distributed in the following locations:

  - South America: Exchange Online mailboxes are located in datacenters in Brazil and Chile. All messages are routed through local datacenters for EOP filtering. Quarantined messages are stored in the datacenter where the tenant is located.

  - Canada: Exchange Online mailboxes are located in datacenters in Canada. All messages are routed through local datacenters for EOP filtering. Quarantined messages are stored in the datacenter where the tenant is located.

  - United States: Exchange Online mailboxes are located in U.S. datacenters. All messages are routed through local datacenters for EOP filtering. Quarantined messages are stored in the datacenter where the tenant is located.

- For the Government Community Cloud (GCC), all Exchange Online mailboxes are located in U.S. datacenters and all messages are routed through U.S. datacenters for EOP filtering.

## EOP Help for admins

The Help content for EOP administrators consists of the following top-level categories:

- [Configure EOP, Day 1, for Microsoft Defender for Office 365 admins](protect-against-threats.md): Configuring EOP protection and detection tools at the core of Microsoft Defender for Office 365.

- [EOP features](eop-features.md): Provides a list of features that are available in EOP.

- [Set up your EOP service](/exchange/standalone-eop/set-up-your-eop-service): Provides steps for setting up your EOP service, and links to additional information.

- [Switch to EOP from Google Postini, the Barracuda Spam and Virus Firewall, or Cisco IronPort](switch-to-eop-from-google-postini-the-barracuda-spam-and-virus-firewall-or-cisco.md): Describes the process for switching to EOP from another email protection product.

- [Manage recipients in standalone EOP](/exchange/standalone-eop/manage-recipients-in-eop): Describes how to manage mail users and groups in standalone EOP.

- [Mail flow in EOP](mail-flow-in-eop.md): Describes how to configure custom mail flow scenarios using connectors, how to manage domains associated with the service, and how to enable the Directory Based Edge Blocking (DBEB) feature.

- [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md): Describes recommended configuration settings and considerations for after you set up and provision your service.

- [Auditing reports in Exchange Online](/exchange/security-and-compliance/exchange-auditing-reports/exchange-auditing-reports): Describes how to use auditing reports to track configuration changes to the service.

- [Anti-spam and anti-malware protection in EOP](anti-spam-and-anti-malware-protection.md): Describes spam filtering and malware filtering and shows how to customize them to best meet the needs of your organization. Also describes tasks that administrators and end users can perform on quarantined messages.

- [Reporting and message trace in Exchange Online Protection](reporting-and-message-trace-in-exchange-online-protection.md): Describes the reports and troubleshooting tools that are available.

- [Exchange admin center in Exchange Online](/exchange/exchange-admin-center) or [Exchange admin center in standalone EOP](/exchange/standalone-eop/exchange-admin-center-eop): Describes how to access and navigate through the Exchange admin center (EAC) management interface in order to manage related EOP features.

- [Exchange Online Protection PowerShell](/powershell/exchange/exchange-online-protection-powershell): Provides information about remote PowerShell, which lets you manage your EOP service from the command line.

- [Help and support for EOP](help-and-support-for-eop.md) Provides information about obtaining help and technical support.