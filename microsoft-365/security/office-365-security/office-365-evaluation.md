---
title: Evaluate Microsoft Defender for Office 365
description: Defender for Office 365 in evaluation mode creates Defender for Office 365 email policies that log verdicts, such as malware, but don't act on messages.
keywords: evaluate Office 365, Microsoft Defender for Office 365, office 365 evaluation, try office 365, Microsoft Defender, Microsoft Defender for Endpoint
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 04/21/2021
audience: ITPro
ms.topic: article

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection:
  - M365-security-compliance
ms.custom: 
- seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Evaluate Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

> [!IMPORTANT]
> Microsoft Defender for Office 365 evaluation is in public preview. This preview version is provided without a service level agreement. Certain features might not be supported or might have constrained capabilities.

Conducting a thorough security product evaluation can help give you informed decisions on upgrades and purchases. It helps to try out the security product's capabilities to assess how it can help your security operations team in their daily tasks.

The [Microsoft Defender for Office 365](defender-for-office-365.md) evaluation experience is designed to eliminate the complexities of device and environment configuration so that you can focus on evaluating the capabilities of Microsoft Defender for Office 365. With evaluation mode, all messages sent to Exchange Online mailboxes can be evaluated without pointing MX records to Microsoft. The feature only applies to email protection and not to Office Clients like Word, SharePoint, or Teams.

If you don't already have a license that supports Microsoft Defender for Office 365, you can start a [free 30-day evaluation](https://admin.microsoft.com/AdminPortal/Home#/catalog/offer-details/microsoft-defender-for-office-365-plan-2-/223860DC-15D6-42D9-A861-AE05473069FA) and test the capabilities in the Microsoft 365 Defender portal at <https://security.microsoft.com>. You'll enjoy the quick set-up and you can easily turn it off if necessary.

> [!NOTE]
> If you're in the Microsoft 365 Defender portal at <https://security.microsoft.com>, you can start a Defender for Office 365 evaluation here: **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Evaluation mode** in the **Others** section. Or, to go directly to the **Evaluation mode** page, use <https://security.microsoft.com/atpEvaluation>.

## How the evaluation works

Defender for Office 365 in evaluation mode creates Defender for Office 365 email policies that log verdicts, such as malware, but don't act on messages. You're not required to change your MX record configuration.

With evaluation mode, [Safe Attachments](safe-attachments.md), [Safe Links](safe-links.md), and [mailbox intelligence in anti-pishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are set up on your behalf. All Defender for Office 365 policies are created in non-enforcement mode in the background and are not visible to you.

As part of the setup, evaluation mode also configures [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as _skip listing_). This configuration improves filtering accuracy by preserving IP address and sender information, which are otherwise lost when mail passes through an email security gateway (ESG) in front of Defender for Office 365. Enhanced Filtering for Connectors also improves the filtering accuracy for your existing Exchange Online Protection (EOP) anti-spam and anti-phishing policies.

Enhanced Filtering for Connectors improves filtering accuracy but may alter deliverability for certain messages if you have an ESG in front of Defender for Office 365 and currently don't bypass EOP filtering. The impact is limited to EOP policies; Defender for Office 365 policies set up as part of the evaluation are created in non-enforcement mode. To minimize potential production impact, you can bypass most EOP filtering by creating a mail flow rule (also known as a transport rule) to set the spam confidence level (SCL) of messages to -1. See [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl) for details.

When the evaluation mode is set up, you'll have a daily report with up to 90 days of data quantifying the messages that would have been blocked if the policies were implemented (for example, delete, send to junk, quarantine). Reports are generated for all Defender for Office 365 and EOP detections. Reports are aggregated per detection technology (for example, impersonation) and can be filtered by time range. Additionally, message reports can be created on-demand to create custom pivots or to deep dive messages using Explorer.

With the simplified set up experience, you can focus on:

- Running the evaluation
- Getting a detailed report
- Analyzing the report for action
- Presenting the evaluation outcome

## Before you begin

### Licensing

To access the evaluation, you'll need to meet the licensing requirements. Any of the following licenses will work:

- Microsoft Defender for Office 365 Plan 1
- Microsoft Defender for Office 365 Plan 2
- Microsoft 365 E5, Microsoft 365 E5 Security
- Office 365 E5

If you don't have one of those licenses, then you'll need to obtain a trial license.

#### Trial

To obtain a trial license for Microsoft Defender for Office 365, you need to have the **Billing admin role** or **Global admin role**. Request permission from someone that has the Global admin role. [Learn about subscriptions and licenses](../../commerce/licenses/subscriptions-and-licenses.md)

Once you have the proper role, the recommended path is to obtain a trial license for Microsoft Defender for Office 365 (Plan 2) in the Microsoft 365 admin center at <https://admin.microsoft.com> and then go to **Billing** \> **Purchase services** and then find and select the Microsoft Defender for Office 365 (Plan 2) trial. Or, to go directly to the trial page, use <https://admin.microsoft.com/AdminPortal/Home#/catalog/offer-details/microsoft-defender-for-office-365-plan-2-/223860DC-15D6-42D9-A861-AE05473069FA)> The trial includes a 30-day free trial for 25 licenses.

You'll have a 30-day window with the evaluation to monitor and report on advanced threats. You'll also have the option to buy a paid subscription if you want the full Defender for Office 365 capabilities.

### Roles

**Exchange Online roles** are required to set up Defender for Office 365 in evaluation mode. Assigning a Microsoft 365 compliance or security admin role won't work.

- [Learn about permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)
- [Learn about assigning admin roles](../../admin/add-users/assign-admin-roles.md)

The following roles are needed:

|Task|Role (in Exchange Online)|
|---|---|
|Get a free trial or buy Microsoft Defender for Office 365 (Plan 2)|Billing admin role OR Global admin role|
|Create evaluation policy|Remote and Accepted Domains role; Security admin role|
|Edit evaluation policy|Remote and Accepted Domains role; Security admin role|
|Delete evaluation policy|Remote and Accepted Domains role; Security admin role |
|View evaluation report|Security admin role OR Security reader role|

### Enhanced Filtering for Connectors

Your Exchange Online Protection policies, such as bulk and spam protection, will remain the same. However, the evaluation turns on Enhanced Filtering for Connectors, which may impact your mail flow and Exchange Online Protection policies unless bypassed.

Enhanced Filtering for Connectors allows tenants to use anti-spoofing protection. Anti-spoofing is not supported if you're using an email security gateway (ESG) without having turned on Enhanced Filtering for Connectors.

### URLs

URLs will be detonated during mail flow. If you don't want specific URLs detonated, manage your list of allowed URLs appropriately. See [Manage the Tenant Allow/Block List](tenant-allow-block-list.md) for details.

URL links in the email message bodies won't wrap, to lessen customer impact.

### Email routing

Prepare the corresponding details that you'll need to set up how your email is currently routed, including the name of the inbound connector that routes your mail. If you're just using Exchange Online Protection, you won't have a connector. [Learn about mail flow and email routing](/office365/servicedescriptions/exchange-online-service-description/mail-flow)

Supported email routing scenarios include:

- **Third-party partner and/or on-premises service provider**: The inbound connector that you want to evaluate uses a third-party provider and/or you're using a solution for email security on-premises.
- **Microsoft Exchange Online Protection only**: The tenant that you want to evaluate uses Office 365 for email security and the Mail Exchange (MX) record points to Microsoft.

### Email security gateway

If you're using a third-party email security gateway (ESG), you'll need to know the provider's name. If you're using an on-premises ESG or non-supported vendors, you'll need to know the public IP address(es) for the devices.

Supported third-party partners include:

- Barracuda
- IronPort
- Mimecast
- Proofpoint
- Sophos
- Symantec
- Trend Micro

### Scoping

You'll be able to scope the evaluation to an inbound connector. If there's no connector configured, then the evaluation scope will allow admins to gather data from any user in your tenant to evaluate Defender for Office 365.

## Get started with the evaluation

Find the Microsoft Defender for Office 365 evaluation set-up card in the Microsoft 365 Defender portal from the following access points:

- **Endpoints** \> **Vulnerability Management** \> **Dashboard** (<https://security.microsoft.com/tvm_dashboard>)
- **Email & collaboration** \> **Policies & rules** \> **Threat policies** (<https://security.microsoft.com/threatpolicy>)
- **Reports** \> **Email & collaboration** \> **Email & collaboration reports** (<https://security.microsoft.com/emailandcollabreport>)

## Setting up the evaluation

Once you start the set-up flow for your evaluation, you'll be given two routing options. Depending on your organization's mail routing setup and evaluation needs, you can select whether you're using a third-party and/or on-premises service provider or only Microsoft Exchange Online.

- If you're using a third-party partner and/or on-premises service provider, you'll need to select the name of the vendor from the drop-down menu. Provide the other connector-related details.

- Select **Microsoft Exchange Online** if the MX record points to Microsoft and you have an Exchange Online mailbox.

Review your settings and edit them if necessary. Then, select **Create evaluation**. You should get a confirmation message to indicate that your set-up is complete.

Your Microsoft Defender for Office 365 evaluation report is generated once per day. It may take up to 24 hours for the data to populate.

### Exchange mail flow rules (optional)

If you have an existing gateway, enabling evaluation mode will activate Enhanced Filtering for Connectors. This feature improves filtering accuracy by altering the incoming sender IP address. This feature might change the filter verdicts, and if you're not bypassing Exchange Online Protection, this may alter deliverability for certain messages. In this case, you might want to temporarily bypass filtering to analyze impact. To bypass filtering, create a mail flow rule (also known as a transport rule) in the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com/#/transportrules> that sets the SCL of messages to -1 (if you don't already have one). For instructions, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

## Evaluate capabilities

After the evaluation report has been generated, see how many advanced threat links, advanced threat attachments, and potential impersonations were identified in the emails and collaboration workspaces in your organization.

Once the trial has expired, you can continue to access the report for 90 days. However, it won't collect any more information. If you want to continue using Microsoft Defender for Office 365 after your trial has expired, make sure you [buy a paid subscription for Microsoft Defender for Office 365 (Plan 2)](https://admin.microsoft.com/AdminPortal/Home#/catalog/offer-details/microsoft-defender-for-office-365-plan-2-/223860DC-15D6-42D9-A861-AE05473069FA).

You can go to **Settings** to update your routing or turn off your evaluation at any time. However, you need to go through the same set-up process again should you decide to continue your evaluation after having turned it off.

## Provide feedback

Your feedback helps us get better at protecting your environment from advanced attacks. Share your experience and impressions of product capabilities and evaluation results.

Select **Give feedback** to let us know what you think.
