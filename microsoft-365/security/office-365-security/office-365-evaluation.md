---
title: Evaluate Microsoft Defender for Office 365
description: The Microsoft Defender for Office 365 evaluation experience is designed to eliminate the complexities of device and environment configuration so that you can focus on evaluating the capabilities of the security solution.
keywords: evaluate Office 365, Microsoft Defender for Office 365, office 365 evaluation, try office 365, Microsoft Defender, ATP 
f1.keywords:
- NOCSH
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
ms.custom: seo-marvel-apr2020
---

# Evaluate Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

Conducting a comprehensive security product evaluation can help give you informed decisions on upgrades and purchases. It helps to try out the security product’s capabilities to assess how it can help your security operations team in their daily tasks.

The [Microsoft Defender for Office 365](office-365-atp.md) evaluation experience is designed to eliminate the complexities of device and environment configuration so that you can focus on evaluating the capabilities of the security solution. It only applies to email protection and not SharePoint, Office Clients, or Teams.

## How the evaluation works

Defender for Office 365 in evaluation mode creates Defender for Office 365 email policies that log verdicts, such as malware, but don’t act on messages. You are not required to change your MX record configuration.

With evaluation mode, [Safe Attachments](atp-safe-attachments.md), [Safe Links](atp-safe-links.md), and [anti-phishing impersonation policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are setup on your behalf. All Defender for Office 365 policies are created in non-enforcement mode in the background and are not visible to you.

As part of the setup, evaluation mode also configures [Enhanced Filtering for Connectors](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors), which improves filtering accuracy by preserving IP address and sender information which are otherwise lost when mail passes through an email security gateway (ESG) in front of Defender for Office 365. This also improves the filtering accuracy for your Exchange Online Protection (EOP) anti-spam and anti-phishing policies.

To minimize potential production impact on some unsupported scenarios, you can bypass all EOP filtering by creating a transport rule to set the Spam Confidence Level (SCL) to -1. See [Use the EAC to create a mail flow rule that sets the SCL of a message](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md#use-the-eac-to-create-a-mail-flow-rule-that-sets-the-scl-of-a-message) for details.

When the evaluation mode is set up, you will have a report updated daily with up to 90 days of data quantifying the messages that would have been blocked had the policies been made and implemented (for example, delete, send to junk, quarantine). Reports are generated for all Defender for Office 365 and EOP detections. They are aggregated per detection technology (for example, impersonation) and can be filtered by time range. Additionally, message reports can be created on-demand to create custom pivots or to deep dive messages using Threat Explorer.

With the simplified set-up experience, you can focus on:

- Running the evaluation
- Getting a detailed report
- Analyzing the report for action
- Presenting the evaluation outcome

## Before you begin

### Licensing and roles

You'll need to fulfill the licensing requirements or have trial access to Defender for Office 365 to access the evaluation.

Exchange Online roles are required to set up Defender for Office 365 in evaluation mode. The following are needed.

|Task | Role |
|-----| -----|
| Create evaluation policy| Remote and Accepted Domains and Security Admin|
| Edit evaluation policy | Remote and Accepted Domains and Security Admin |
| Delete evaluation policy | Remote and Accepted Domains and Security Admin |
|View evaluation report | Security Admin, Security Reader |

### Enhanced filtering

Your Exchange Online Protection policies, such as bulk and spam protection, will remain the same. Message delivery will also remain the same. However, the evaluation turns on enhanced filtering for connectors, which will impact your mailflow and Exchange Online Protection policies unless bypassed.

Enhanced filtering for connectors will allow tenants to use anti-spoofing protection. Anti-spoofing is not supported if you’re using an email security gateway (ESG) without having turned on Enhanced filtering for connectors.

### URLs

URLs will be detonated during mail flow. If you don’t want specific URLs detonated, manage your list of allowed URLs appropriately. See [Manage URLs in the Tenant Allow/Block List](tenant-allow-block-list.md) for details.

URL links in the email message bodies won't wrap, to lessen customer impact.

### Email routing

You need to prepare the corresponding details that you will need to set up how your email is currently routed, including the name of the inbound connector that routes your mail. If you are just using Exchange Online Protection, you won’t have a connector. [Learn about mail flow and email routing](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/mail-flow)

Supported email routing scenarios include:

- **Third-party partner and/or on-premises service provider**: The inbound connector that you want to evaluate uses a third-party provider and/or you’re using a solution for email security on-premises.  
- **Microsoft Exchange Online Protection only**: The tenant that you want to evaluate uses Office 365 for email security and the Mail Exchange (MX) record points to Microsoft.

### Email security gateway

If you’re using a third-party email security gateway (ESG), you’ll need to know the provider’s name. If you’re using an ESG on-premises or non-supported vendors, you’ll need to know the public IP address(es) for the devices.

Supported third-party partners include:

- Barracuda
- IronPort
- Mimecast
- Proofpoint
- Sophos
- Symantec
- Trend Micro

### Scoping

You will be able to scope the evaluation to an inbound connector. If there's no connector configured, then the evaluation scope will allow admins to gather data from any user in your tenant to evaluate Defender for Office 365.

## Get started with the evaluation lab

Set up the Microsoft Defender for Office 365 evaluation through two access points:

- **Navigation pane**: In the Email & collaboration section, go to Policies & rules > Threat policies >  Defender for Office 365 evaluation
- **Dashboard**: Go to Email & collaboration dashboard > Microsoft Defender for Office 365 card. Select Evaluate.

## Setting up the evaluation lab

Once you start the set-up flow, you will be given two routing options. Depending on your organization’s mail routing setup and evaluation needs, you can select whether you are using a third-party and/or on-premises service provider or only Microsoft Exchange Online. Select **Share data with Microsoft** to get the data aggregation benefits in your detection reports.

- If you are using a third party or service provider on-premises, you'll need to select the name of the vendor from the drop-down menu. Provide the other connector-related details.

- Select Microsoft Exchange Online if the MX record points to Microsoft and you have an Exchange Online mailbox.

Review your settings and edit them if necessary. Then, select **Create evaluation**. You should get a confirmation message to indicate that your set-up is complete.

### Exchange rules (optional)

If you have an existing gateway, you might want to bypass filtering because it will activate enhanced filtering for connectors and alter the incoming sender IP address. To bypass, navigate to the Exchange admin center and create a policy of SCL -1 (if you don’t already have one). For details on the rule components and how they work, see Mail flow rules (transport rules) in Exchange Online.

## Evaluate capabilities

In your daily security operation tasks, it’s important to know what email threats are hiding in your organization, and to identify the nature of the threat, monitor the trends, investigate, and remediate them.  

Look at the dashboard to see how many advanced threat links, advanced threat attachments, potential impersonations, were seen in the emails and collaboration workspaces in your organization.  

Go to **Settings** to turn off your evaluation. However, you need to go through the same set-up process again should you decide to continue your evaluation after having turned it off.

## Provide feedback

Your feedback helps us get better at protecting your environment from advanced attacks. Share your experience and impressions of product capabilities and evaluation results.

Select Give feedback to let us know what you think.
