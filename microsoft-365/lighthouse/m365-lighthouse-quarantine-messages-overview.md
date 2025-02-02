---
title: "Overview of the Quarantined messages page in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 10/27/2023
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage quarantined messages."
---
# Overview of the Quarantined messages page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets you see insights and information about quarantined email messages across all your customer tenants. From a single view, you can triage quarantined email messages and take the appropriate actions. The data is available if the tenant has implemented Exchange Online Protection (EOP) and Microsoft Defender for Office365 Plan 1 (MDO).

You can access the information in Lighthouse by selecting **Home** in the left navigation pane, or by selecting **Quarantined messages** in the left navigation pane to open the **Quarantined messages** page.

> [!NOTE]
> This page provides the number of tenants for which data is unavailable because they do not have the required licenses.

## Quarantined messages page

From this page, you can view consolidated statistics across your customer tenants, trending data for the type and volume of quarantine data, and information related to quarantine queues in individual customer tenants.

The **Status of messages** section provides a consolidated view across eligible tenants currently onboarded to Lighthouse. The view includes

- Total messages in quarantine
- Total messages awaiting review
- Messages that are currently approaching the default quarantine limit of 30 days and are about to be automatically removed (expire)
- Messages that have been released from quarantine
- Total number of mailboxes impacted across all your tenants

The data reflects the last 30 days; however, you can use the **Time range** filter to modify the view.

The **Quarantine reason** section contains a breakdown of quarantine counts by Exchange Online Protection (EOP) and Microsoft Defender for Office365 Plan 1 (MDO) policy type. These types include

- Malware
- Phishing
- High Confidence Phishing
- Spam
- Bulk Email

The quarantine list is a sortable view of quarantine information by tenant. Within this view, you can filter by the following information:

- **Quarantine reason:** Any, Malware, Phish, High confidence phish, Spam, Bulk Email
- **Policy type:** Any, Anti-malware, Anti-phishing, Anti-spam, Safe Attachments, Transport Rule, Unknown
- **About to expire:** Any, Today, within two days, within seven days

You also can adjust the columns and sort data based on tenant, message status, and expiration dates.

:::image type="content" source="../media/m365-lighthouse-data-protection/quarantine-email-page.png" alt-text="Screenshot of the Quarantined messages page." lightbox="../media/m365-lighthouse-data-protection/quarantine-email-page.png":::

The **Copy Link to Messages in Microsoft** **365 Defender** option provides a link to Microsoft Defender portal where you can access and manage your tenant's email quarantine queue. You must authenticate before you can take any action.

## Related content

[Quarantined email messages](../security/office-365-security/quarantine-about.md) (article)\
[Microsoft recommendations for EOP and Defender for Office 365 security settings](../security/office-365-security/recommended-settings-for-eop-and-office365.md) (article)\
[Exchange Online Protection (EOP) overview](../security/office-365-security/eop-about.md) (article)\
[Overview of the Threat management page](m365-lighthouse-threat-management-page-overview.md) (article)
