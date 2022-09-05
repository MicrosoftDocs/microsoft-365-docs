---
title: Threat Explorer and Real-time detections basics in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 05/05/2021
ms.localizationpriority: medium
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
description: Use Explorer or Real-time detections to investigate and respond to threats efficiently.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Explorer and Real-time detections

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In this article:

- [Differences between Explorer and Real-time detections](#differences-between-explorer-and-real-time-detections)
- [Updated experience for Explorer and Real-time detections](#updated-experience-for-explorer-and-real-time-detections)
- [Required licenses and permissions](#required-licenses-and-permissions)

> [!NOTE]
> This is part of a **3-article series** on **Explorer (also known as Threat Explorer)**, **email security**, and **Explorer and Real-time detections basics** (such as differences between the tools, and permissions needed to operate them). The other two articles in this series are [Threat hunting in Explorer](threat-hunting-in-threat-explorer.md) and [Email security with Explorer](email-security-in-microsoft-defender.md).

This article explains the difference between Explorer and real-time detections reporting, updated experience with Explorer and real-time detections where you can toggle between old and new experiences, and the licenses and permissions that are required.

If your organization has [Microsoft Defender for Office 365](defender-for-office-365.md), and you have the [permissions](#required-licenses-and-permissions), you can use **Explorer** (also known as **Threat Explorer**) or **Real-time detections** to detect and remediate threats.

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration**, and then choose **Explorer** _or_ **Real-time detections**. To go directly to the page, use <https://security.microsoft.com/threatexplorer> or <https://security.microsoft.com/realtimereports>.

With these tools, you can:

- See malware detected by Microsoft 365 security features.
- View phishing URL and click verdict data.
- Start an automated investigation and response process from a view in Explorer.
- Investigate malicious email, and more.

For more information, see [Email security with Explorer](email-security-in-microsoft-defender.md).

## Differences between Explorer and Real-time detections

- *Real-time detections* is a reporting tool available in Defender for Office 365 Plan 1. *Threat Explorer* is a threat hunting and remediation tool available in Defender for Office 365 Plan 2.
- The Real-time detections report allows you to view detections in real time. Threat Explorer does this as well, but it provides additional details for a given attack, such as highlighting attack campaigns, and gives security operations teams the ability to remediate threats (including triggering an [Automated Investigation and Response investigation](automated-investigation-response-office.md).
- An *All email* view is available in Threat Explorer, but not included in the Real-time detections report.
- Rich filtering capabilities and remediation actions are included in Threat Explorer. For more information, see [Microsoft Defender for Office 365 Service Description: Feature availability across Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Updated experience for Explorer and Real-time detections

The experience for Threat Explorer and Real-time detections is updated to align with modern accessibility standards, and to optimize the workflow. For a short while, you will be able to toggle between the old experience and the new one.  

> [!NOTE]
> Toggling impacts only your account and does not impact anyone else within your tenant. 

Threat Explorer and Real-time detections is divided into the following views:

- *All email*: Shows all email analyzed by Defender for office 365 and contains both good and malicious emails. This feature is only present in Threat Explorer and is not available for Real-time detections. By default, it is set to show data for two days, which can be expanded up to 30 days. This is also the default view for Threat Explorer.  

- *Malware view*: Shows emails on which a malware threat was identified. This is the default view for Real-time detections, and shows data for two days (can be expanded to 30 days).  

- *Phish view*: Shows emails on which a phish threat was identified.

- *Content malware view*: Shows malicious detections identified in files shared through OneDrive, SharePoint, or Teams. 

Here are the common components within these experiences:

- Filters

    - You can use the various filters to view the data based on email or file attributes.  

    - By default, the time filter is applied to the records, and is applied for two days.  

    - If you are applying multiple filters, they are applied in 'AND' mode and you can use the advanced filter to change it to 'OR' mode.  

    - You can use commas to add multiple values for the same filter.  

    > [!div class="mx-imgBorder"]
    > ![Explorer filters](../../media/explorer-new-experience-filters.png)

- Charts

    - Charts provide a visual, aggregate view of data based on filters. You can use different filters to view the data by different dimensions.  

    > [!NOTE]
    > You may see no results in chart view even if you are seeing an entry in the list view. This happens if the filter does not produce any data. For example, if you have applied the filter malware family, but the underlying data does not have any malicious emails, then you may see the message no data available for this scenario.  

    > [!div class="mx-imgBorder"]
    > ![Explorer chart view](../../media/explorer-new-experience-export-chart-data.png)

- Results grid  

    - Results grid shows the email results based on the filters you have applied.  

    - Based on the configuration set in your tenant, data will be shown in UTC or local timezone, with the timezone information available in the first column.  

    - You can navigate to the individual email entity page from the list view by clicking the **Open in new window** icon. 

    - You can also customize your columns to add or remove columns to optimize your view.

    > [!Note]
    > You can toggle between the *Chart View* and the *List View* to maximize your result set.  

    > [!div class="mx-imgBorder"]
    > ![Explorer grid view](../../media/explorer-new-experience-list-chart-view.png)

- Detailed flyout  

    - You can click on hyperlinks to get to the email summary panel (entries in Subject column), recipient, or IP flyout.  

    - The email summary panel replaces the legacy email flyout, and also provides a path to access the email entity panel.  

    - The individual entity flyouts like IP, recipient, and URL would reflect the same information, but presented in a single tab-based view, with the ability to expand and collapse the different sections based on requirement.  

    - For flyouts like URLs, you can click **View all Email** or **View all Clicks** to view the full set of emails/clicks containing that URL, as well as export the result set.  

- Actions

    - From Threat Explorer, you can trigger remediation actions like *Delete an email*. For more information on remediation, remediation limits, and tracking remediation see [Remediate malicious email](remediate-malicious-email-delivered-office-365.md).  

- Export

    - You can click **Export chart data** to export the chart details. Similarly, click **Export email list** to export email details.

    - You can export up to 200K records for email list. However, for better system performance and reduced download time, you should use various email filters.

    > [!div class="mx-imgBorder"]
    > ![Export chart data](../../media/explorer-new-experience-export-chart-data.png)

In addition to these features, you will also get updated experiences like *Top URLs*, *Top clicks*, *Top targeted users*, and *Email origin*. *Top URLs*, *Top clicks*, and *Top targeted users* can be further filtered based on the filter that you apply within Explorer. 

## Required licenses and permissions

You must have [Microsoft Defender for Office 365](defender-for-office-365.md) to use either of Explorer or Real-time detections:

- Explorer is only included in Defender for Office 365 Plan 2.
- The Real-time detections report is included in Defender for Office 365 Plan 1.

Security Operations teams need to assign licenses for all users who should be protected by Defender for Office 365 and be aware that Explorer and Real-time detections show detection data for licensed users.

To view and use Explorer *or* Real-time detections, you need the following permissions:

- In Defender for Office 365:
  - Organization Management
  - Security Administrator (this can be assigned in the Azure Active Directory admin center (<https://aad.portal.azure.com>)
  - Security Reader
- In Exchange Online:
  - Organization Management
  - View-Only Organization Management
  - View-Only Recipients
  - Compliance Management

To learn more about roles and permissions, see the following articles:

- [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md)
- [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)

## More information

- [Threat Explorer collect email details on the email entity page](mdo-email-entity-page.md)
- [Find and investigate malicious email that was delivered](investigate-malicious-email-that-was-delivered.md)
- [View malicious files detected in SharePoint Online, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md)
- [Threat protection status report](view-email-security-reports.md#threat-protection-status-report)
- [Automated investigation and response in Microsoft Threat Protection](automated-investigation-response-office.md)
