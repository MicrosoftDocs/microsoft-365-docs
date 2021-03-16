---
title: Evaluate Microsoft Defender for Office 365
description: Defender for Office 365 in evaluation mode creates Defender for Office 365 email policies that log verdicts, such as malware, but don't act on messages.
keywords: evaluate Office 365, Microsoft Defender for Office 365, office 365 evaluation, try office 365, Microsoft Defender, ATP
f1.keywords: 
  - NOCSH
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.topic: article

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - M365-security-compliance
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Evaluate Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

> [!IMPORTANT]
> Microsoft Defender for Office 365 evaluation is in public preview. This preview version is provided without a service level agreement. Certain features might not be supported or might have constrained capabilities.

Conducting a comprehensive security product evaluation can help give you informed decisions on upgrades and purchases. It helps to try out the security product's capabilities to assess how it can help your security operations team in their daily tasks.

The [Microsoft Defender for Office 365](defender-for-office-365.md) evaluation experience is designed to eliminate the complexities of device and environment configuration so that you can focus on evaluating the capabilities of the security solution. It only applies to email protection and not SharePoint, Office Clients like Word, or Teams.

If you don't already have a license that supports Microsoft Defender for Office 365, you can start a [free 30-day evaluation](https://admin.microsoft.com/AdminPortal/Home#/catalog/offer-details/microsoft-defender-for-office-365-plan-2-/223860DC-15D6-42D9-A861-AE05473069FA) and test the capabilities in the Office 365 Security & Compliance center (https://protection.office.com/homepage). You'll enjoy the quick set-up and you can easily turn it off if necessary.

## How the evaluation works

Defender for Office 365 in evaluation mode creates Defender for Office 365 email policies that log verdicts, such as malware, but don't act on messages. You are not required to change your MX record configuration.

With evaluation mode, [Safe Attachments](atp-safe-attachments.md), [Safe Links](atp-safe-links.md), and [mailbox intelligence based impersonation policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are set up on your behalf. All Defender for Office 365 policies are created in non-enforcement mode in the background and are not visible to you.

As part of the setup, evaluation mode also configures [Enhanced Filtering for Connectors](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors). It improves filtering accuracy by preserving IP address and sender information, which are otherwise lost when mail passes through an email security gateway (ESG) in front of Defender for Office 365. Enhanced Filtering for Connectors also improves the filtering accuracy for your existing Exchange Online Protection (EOP) anti-spam and anti-phishing policies.

Enabled Enhanced Filtering for Connectors improves filtering accuracy but may alter deliverability for certain messages if you have an ESG in front of Defender for Office 365, and currently do not bypass EOP filtering. The impact is limited to EOP policies; MDO policies setup as part of the evaluation are created in non-enforcement mode. To minimize potential production impact, you can bypass all EOP filtering by creating a transport rule to set the Spam Confidence Level (SCL) to -1. See [Use the EAC to create a mail flow rule that sets the SCL of a message](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md#use-the-eac-to-create-a-mail-flow-rule-that-sets-the-scl-of-a-message) for details.

When the evaluation mode is set up, you will have a report updated daily with up to 90 days of data quantifying the messages that would have been blocked if the policies were implemented (for example, delete, send to junk, quarantine). Reports are generated for all Defender for Office 365 and EOP detections. They are aggregated per detection technology (for example, impersonation) and can be filtered by time range. Additionally, message reports can be created on-demand to create custom pivots or to deep dive messages using Threat Explorer.

With the simplified set-up experience, you can focus on:

- Running the evaluation
- Getting a detailed report
- Analyzing the report for action
- Presenting the evaluation outcome

## Before you begin

### Licensing

To access the evaluation, you'll need to meet the licensing requirements. Any of the following licenses will work:

- Microsoft Defender for Office 365 Plan 1
- Microsoft Defender for Office 365 Plan 2
- Microsoft 365 E5, Microsoft 365 E5 Security
- Office 365 E5

If you don't have one of those licenses, then you'll need to obtain a trial license.

#### Trial

To obtain a trial license for Microsoft Defender for Office 365, you need to have the **Billing admin role** or **Global admin role**. Request permission from someone that has the Global admin role. [Learn about subscriptions and licenses](https://docs.microsoft.com/microsoft-365/commerce/licenses/subscriptions-and-licenses)

Once you have the proper role, the recommended path is to obtain a trial license for Microsoft Defender for Office 365 (Plan 2) in the Microsoft 365 admin center by going to Billing > Purchase services. The trial includes a 30-day free trial for 25 licenses. [Get a trial for Microsoft Defender for Office 365 (Plan 2)](https://admin.microsoft.com/AdminPortal/Home#/catalog/offer-details/microsoft-defender-for-office-365-plan-2-/223860DC-15D6-42D9-A861-AE05473069FA).

You'll have a 30-day window with the evaluation to monitor and report on advanced threats. You'll also have the option to buy a paid subscription if you want the full Defender for Office 365 capabilities.

### Roles

Exchange Online roles are required to set up Defender for Office 365 in evaluation mode.

- [Learn about permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo)
- [Learn about assigning admin roles](../../admin/add-users/assign-admin-roles.md)

The following roles are needed:

|Task|Role|
|---|---|
|Get a free trial or buy Microsoft Defender for Office 365 (Plan 2)|Billing admin role OR Global admin role|
|Create evaluation policy|Remote and Accepted Domains role; Security admin role|
|Edit evaluation policy|Remote and Accepted Domains role; Security admin role|
|Delete evaluation policy|Remote and Accepted Domains role; Security admin role |
|View evaluation report|Security admin role OR Security reader role|
|


### Enhanced filtering

Your Exchange Online Protection policies, such as bulk and spam protection, will remain the same. However, the evaluation turns on enhanced filtering for connectors, which may impact your mail flow and Exchange Online Protection policies unless bypassed.

Enhanced filtering for connectors allows tenants to use anti-spoofing protection. Anti-spoofing is not supported if you're using an email security gateway (ESG) without having turned on Enhanced filtering for connectors.

### URLs

URLs will be detonated during mail flow. If you don't want specific URLs detonated, manage your list of allowed URLs appropriately. See [Manage the Tenant Allow/Block List](tenant-allow-block-list.md) for details.

URL links in the email message bodies won't wrap, to lessen customer impact.

### Email routing

Prepare the corresponding details that you will need to set up how your email is currently routed, including the name of the inbound connector that routes your mail. If you are just using Exchange Online Protection, you won’t have a connector. [Learn about mail flow and email routing](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/mail-flow)

Supported email routing scenarios include:

- **Third-party partner and/or on-premises service provider**: The inbound connector that you want to evaluate uses a third-party provider and/or you're using a solution for email security on-premises.
- **Microsoft Exchange Online Protection only**: The tenant that you want to evaluate uses Office 365 for email security and the Mail Exchange (MX) record points to Microsoft.

### Email security gateway

If you're using a third-party email security gateway (ESG), you'll need to know the provider's name. If you're using an ESG on-premises or non-supported vendors, you'll need to know the public IP address(es) for the devices.

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

## Get started with the evaluation

Find the Microsoft Defender for Office 365 evaluation set-up card in the Office 365 Security & Compliance center (https://protection.office.com/homepage) from three access points:

- Threat management > Dashboard
- Threat management > Policy
- Reports > Dashboard

## Setting up the evaluation

Once you start the set-up flow for your evaluation, you'll be given two routing options. Depending on your organization's mail routing setup and evaluation needs, you can select whether you are using a third-party and/or on-premises service provider or only Microsoft Exchange Online.

- If you are using a third-party partner and/or on-premises service provider, you'll need to select the name of the vendor from the drop-down menu. Provide the other connector-related details.

- Select Microsoft Exchange Online if the MX record points to Microsoft and you have an Exchange Online mailbox.

Review your settings and edit them if necessary. Then, select **Create evaluation**. You should get a confirmation message to indicate that your set-up is complete.

Your Microsoft Defender for Office 365 evaluation report is generated once per day. It may take up to 24 hours for the data to populate.

### Exchange rules (optional)

If you have an existing gateway, enabling evaluation mode will activate enhanced filtering for connectors. This improves filtering accuracy by altering the incoming sender IP address. This may change the filter verdicts and if you are not bypassing Exchange Online Protection this may alter deliverability for certain messages. In this case you might want to temporarily bypass filtering to analyze impact. To bypass, navigate to the Exchange admin center and create a policy of SCL -1 (if you don't already have one). For details on the rule components and how they work, see Mail flow rules (transport rules) in Exchange Online.

## Evaluate capabilities

After the evaluation report has been generated, see how many advanced threat links, advanced threat attachments, and potential impersonations were identified in the emails and collaboration workspaces in your organization.

Once the trial has expired, you can continue to access the report for 90 days. However, it won't collect any more information. If you want to continue using Microsoft Defender for Office 365 after your trial has expired, make sure you [buy a paid subscription for Microsoft Defender for Office 365 (Plan 2)](https://admin.microsoft.com/AdminPortal/Home#/catalog/offer-details/microsoft-defender-for-office-365-plan-2-/223860DC-15D6-42D9-A861-AE05473069FA).

You can go to **Settings** to update your routing or turn off your evaluation at any time. However, you need to go through the same set-up process again should you decide to continue your evaluation after having turned it off.

## Provide feedback

Your feedback helps us get better at protecting your environment from advanced attacks. Share your experience and impressions of product capabilities and evaluation results.

Select **Give feedback** to let us know what you think.
