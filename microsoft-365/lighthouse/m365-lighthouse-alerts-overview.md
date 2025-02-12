---
title: "Overview of the Alerts page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 08/08/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-manage
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view alerts in Lighthouse."
---

# Overview of the Alerts page in Microsoft 365 Lighthouse

As a Managed Service Provider (MSP), you need to monitor and respond to the security issues of your customers efficiently and effectively. Microsoft 365 Lighthouse provides an alerts tool that gives you a consolidated view of all the high-priority detections and alerts across your customers. You can see a prioritized list of the most urgent issues that require your attention and take immediate action to resolve them. You can also enable push alerts to your existing support systems and flows, so you never miss a critical alert that needs your intervention.

To help you get started, Lighthouse provides a default set of alert rules based on best practices and recommendations. You can use these alert rules as is or modify them according to your preferences and needs. You can also create custom alert rules for more control and flexibility.

## Alerts tab

The **Alerts** tab provides a consolidated view of potential security issues across all your customers. The tab contains two sections:

- **Active alerts by date created**: A graph that displays the number of active alerts over time.

- **Alerts table**: A list of current alerts that can be filtered by alert type, severity, status, or assigned to.
 
The **Alerts** tab also includes the following options:

- **Export:** Select to export alert data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current alert data.
- **Search:** Enter keywords to locate a specific alert in the list.

From the list of alerts, select any alert to open the alert details pane. The **Overview** tab in this pane includes the following information:

- Affected tenants
- Alert description
- Rule that triggered the alert
- Alert type
- Time stamp (first detected, last updated)
- Impacted entity

From the **Overview** tab, you can update the severity and status of the alert and assign the alert to a specific user to resolve. 

Select the **Comments and history** tab in the alert details pane to see a complete history of the alert. You can add additional comments to the alert as needed.

:::image type="content" source="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-tab.png" alt-text="Screenshot of the Alerts tab in Lighthouse." lightbox="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-tab.png":::

### Alert types

Lighthouse offers several configurable alert types from the following services: Microsoft Defender for Business (MDB), Microsoft Defender Antivirus, and Microsoft Entra ID. 

Lighthouse does *not* currently support alerts from the following services: Microsoft Defender for Cloud Apps, Microsoft Defender for Office 365 (MDO), or additional Azure services. 
 
The following table provides details about the different alert types that Lighthouse supports. 


| Alert type | Available values during creation of alert rule |
|--|--|
| Non-compliant device | **Alert severity:** Low, Medium, High, Informational<br>**Compliance state:** Not compliance, In grace period, Not evaluated<br>**Device type:** Desktop, Windows RT, Win MO6, Nokia, Windows Phone, Mac, Windows CE, Embedded Windows, iPhone, iPad, iPod, Android, SoC Consumer, Unix, Mac MDM, Windows HoloLens, Windows Surface Hub, Android (for work), Android (Enterprise), Windows 10x, Android (Google Mobile Services), Palm, Unknown |
| Devices without antivirus protection | **Alert severity:** Low, Medium, High, Informational<br>**Threat protection:** Enabled, Disabled<br>**Antivirus updates:** Needs updates |
| Variance detection | **Alert severity:** Low, Medium, High, Informational<br>**Deployment status:** Incomplete, Ineligible, Failed |
| Risky user | **Alert severity:** Low, Medium, High, Informational<br>**Risk state:** At risk, Confirmed compromised |
| Windows logs | **Alert severity:** Low, Medium, High, Informational<br>**Entry type:** Error, Warning, Information, Success audit, Failure audit<br>**Log name:** All logs, Application, Security, Setup, System |
| Security incident | **Alert severity:** Low, Medium, High, Informational<br>**Classification:** Not specified, False positive, True positive, Benign positive<br>**Determination:** Not specified, Apt, Malware, Security personnel, Security testing, Unwanted software, Other, Multi-staged attack, Compromised user, Phishing, Malicious user activity, Clean, Insufficient data, Confirmed user activity, Line of business application<br>**Service source:** Not specified, Microsoft Defender for Endpoint, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, Microsoft Defender for Office 365, Microsoft 365 Defender, Microsoft Entra Identity Protection, Microsoft App Governance, Data Loss Prevention, Microsoft Defender for Cloud<br>**Status:** All, Unknown, New, In progress, Resolved |
| Lighthouse communications | **Alert severity:** Low, Medium, High, Informational<br>**Lighthouse system events:** All events, Initial data availability |
| Active threat on device | **Alert severity:** Low, Medium, High, Informational<br>**Threat type:** All threats, Miscellaneous, Virus, Malware, Spyware<br>**Severity:** Unknown, Low, Moderate, High, Severe |

## Alert rules tab

The **Alert rules** tab shows a summary of all the alert rules in your partner tenant. Lighthouse provides eight default alert rules that are automatically applied to all customers. You can edit existing alert rules or create your own custom alert rules.  

The **Alert rules** tab also includes the following options:

- **Create alert rule:** Select to have Lighthouse guide you through the process of creating a custom alert rule.
- **Edit alert rule:** Select to edit an existing alert rule.
- **Delete:** Select to delete an alert rule from the list.
- **Search:** Enter keywords to locate a specific alert rule in the list.

:::image type="content" source="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-rules-tab.png" alt-text="Screenshot of Alert rules tab." lightbox="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-rules-tab.png":::

## Related content

[Create and manage alert rules](m365-lighthouse-create-manage-alert-rules.md) (article)\
[Overview of the Threat management page in Microsoft 365 Lighthouse](m365-lighthouse-threat-management-page-overview.md) (article)\
[Mitigate threats in Microsoft 365 Lighthouse with Microsoft Defender Antivirus](m365-lighthouse-mitigate-threats.md) (article)\
[Overview of the Device security page in Microsoft 365 Lighthouse](m365-lighthouse-device-security-overview.md) (article)\
[Overview of the Vulnerability management page in Microsoft 365 Lighthouse](m365-lighthouse-vulnerability-management-page-overview.md) (article)
