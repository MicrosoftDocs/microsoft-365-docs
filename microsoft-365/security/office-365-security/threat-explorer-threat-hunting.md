---
title: Threat hunting in Threat Explorer for Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.date: 6/20/2023
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
description: Use Threat Explorer or Real-time detections in the Microsoft 365 Defender portal to investigate and respond to threats efficiently.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Threat hunting in Threat Explorer for Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

If your organization has [Microsoft Defender for Office 365](defender-for-office-365.md), and you have the [permissions](#required-licenses-and-permissions), you can use **Explorer** or **Real-time detections** to detect and remediate threats.

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration**, and then choose **Explorer** or **Real-time detections**. To go directly to the page, use <https://security.microsoft.com/threatexplorer> or <https://security.microsoft.com/realtimereports>.

With these tools, you can:

- See malware detected by Microsoft 365 security features
- View phishing URL and click verdict data
- Start an automated investigation and response process from a view in Explorer
- Investigate malicious email, and more

For more information, see [Email security with Threat Explorer](email-security-in-microsoft-defender.md).

> [!TIP]
> Advanced hunting in Microsoft 365 Defender now supports an easy-to-use query builder for analysts who want to hunt through cloud app data and other threat data (if available), even if they do not know Kusto Query Language (KQL). To get started, read [Build queries using guided mode](/microsoft-365/security/defender/advanced-hunting-query-builder).

Watch this short video to learn how to hunt and investigate email and collaboration-based threats using Microsoft Defender for Office 365.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWyPRU]

## Threat Explorer walk-through

In Microsoft Defender for Office 365, there are two subscription plans—Plan 1 and Plan 2. Manually operated Threat hunting tools exist in both plans, under different names and with different capabilities.

Defender for Office 365 Plan 1 uses *Real-time detections*, which is a subset of the *Threat Explorer* (also called *Explorer*) hunting tool in Plan 2. In this series of articles, most of the examples were created using the full Threat Explorer. Admins should test any steps in Real-time detections to see where they apply.

After you go to **Explorer**, by default, you'll arrive on the **All email** page, but use the tabs to navigate to the available views. If you're hunting phish or digging into a threat campaign, choose those views.

Once a security operations (Sec Ops) person selects the data they want to see, they can further narrow down the data by applying filters such as Sender, Recipient, and Subject,  or select an appropriate date range to get the desired results. Remember to select Refresh to complete your filtering actions.

:::image type="content" source="../../media/sender-drop-down-new.png" alt-text="Screenshot of the Sender button in Threat Explorer." lightbox="../../media/sender-drop-down-new.png":::

Refining focus in Explorer or Real-time detection can be thought of in layers. The first is **View**. The second can be thought of as a *filtered focus*. For example, you can retrace the steps you took in finding a threat by recording your decisions like this: To find the issue in Explorer, **I chose the Malware View with a Recipient filter focus**. This makes retracing your steps easier.

> [!TIP]
> If Sec Ops uses **Tags** to mark accounts they consider high valued targets, they can make selections like *Phish View with a Tags filter focus (include a date range if used)*. This will show them any phishing attempts directed at their high value user targets during a time-range (like dates when certain phishing attacks are happening a lot for their industry).

With the new version of Threat Explorer, users can use the following new dropdown options with four new operators on the filters:

- Equals any of – returns values matching the exact user input.
- Equals none of – returns values not matching the exact user input.
- Contains any of – returns values partially matching user input.
- Contains none of – returns values not partially matching user input.

Note that these filter conditions are available based on filter types and input types.

Use the **Column options** button to get the kind of information on the table that would be most helpful:

:::image type="content" source="../../media/threat-explorer-column-options-new.png" alt-text="Screenshot of the Column options button highlighted." lightbox="../../media/threat-explorer-column-options-new.png":::

:::image type="content" source="../../media/column-options-new.png" alt-text="Screenshot showing available options in Columns." lightbox="../../media/column-options-new.png":::

In the same mien, make sure to test your display options. Different audiences will react well to different presentations of the same data. For some viewers, the **Email Origins** map can show that a threat is widespread or discreet more quickly than the **Campaign display** option right next to it. Sec Ops can make use of these displays to best make points that underscore the need for security and protection, or for later comparison, to demonstrate the effectiveness of their actions.

:::image type="content" source="../../media/threat-explorer-email-origin-map-new.png" alt-text="Screenshot of the Email Origins map." lightbox="../../media/threat-explorer-email-origin-map-new.png":::

:::image type="content" source="../../media/threat-explorer-campaign-display-new.png" alt-text="Screenshot of the Campaign display options." lightbox="../../media/threat-explorer-campaign-display-new.png":::

### Email investigation

When you see a suspicious email, click the name to expand the flyout on the right. Here, the banner that lets Sec Ops see the [email entity page](mdo-email-entity-page.md) is available.

The email entity page pulls together contents that can be found under **Details**, **Attachments**, **Devices**, but includes more organized data. This includes things like DMARC results, plain text display of the email header with a copy option, verdict information on attachments that were securely detonated, and files those detonations dropped (can include IP addresses that were contacted and screenshots of pages or files). URLs and their verdicts are also listed with similar details reported.

When you reach this stage, the email entity page will be critical to the final step—*remediation*.

:::image type="content" source="../../media/threat-explorer-email-entity-page-new.png" alt-text="Screenshot of the email entity page." lightbox="../../media/threat-explorer-email-entity-page-new.png":::

> [!TIP]
> To learn more about the rich email entity page (seen below on the **Analysis** tab), including the results of detonated Attachments, findings for included URLs, and safe Email preview, click [here](mdo-email-entity-page.md).

:::image type="content" source="../../media/threat-explorer-analysis-tab-new.png" alt-text="Screenshot of the Analysis tab of the email entity page." lightbox="../../media/threat-explorer-analysis-tab-new.png":::

### Email remediation

Once a Sec Ops person determines that an email is a threat, the next Explorer or Real-time detection step is dealing with the threat and remediating it. This can be done by returning to Threat Explorer, selecting the checkbox for the problem email, and using the **Actions** button.

:::image type="content" source="../../media/threat-explorer-email-actions-button-new.png" alt-text="Screenshot of the Actions button in the Threat Explorer." lightbox="../../media/threat-explorer-email-actions-button-new.png":::

Here, the analyst can take actions like reporting the mail as Spam, Phishing, or Malware, contacting recipients, or further investigations that can include triggering Automated Investigation and Response (or AIR) playbooks (if you have Plan 2). Or, the mail can also be reported as clean.

:::image type="content" source="../../media/threat-explorer-email-actions-drop-down-new.png" alt-text="Screenshot of the Actions drop down." lightbox="../../media/threat-explorer-email-actions-drop-down-new.png":::

## Required licenses and permissions

You must have [Microsoft Defender for Office 365](defender-for-office-365.md) to use Explorer or Real-time detections.

- Explorer is included in Defender for Office 365 Plan 2.
- The Real-time detections report is included in Defender for Office 365 Plan 1.
- Plan to assign licenses for all users who should be protected by Defender for Office 365. Explorer and Real-time detections show detection data for licensed users.

To view and use Explorer or Real-time detections, you must have the following permissions:

- In the Microsoft 365 Defender portal:
  - Organization Management
  - Security Administrator (this can be assigned in the Azure Active Directory admin center (<https://aad.portal.azure.com>)
  - Security Reader
- In Exchange Online:
  - Organization Management
  - View-Only Organization Management
  - View-Only Recipients
  - Compliance Management

To learn more about roles and permissions, see the following resources:

- [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md)
- [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)
- [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell)

## More information

- [Find and investigate malicious email that was delivered](investigate-malicious-email-that-was-delivered.md)
- [View malicious files detected in SharePoint Online, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)
- [Get an overview of the views in Threat Explorer (and Real-time detections)](threat-explorer-views.md)
- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
- [Automated investigation and response in Microsoft Threat Protection](air-about-office.md)
- [Investigate emails with the Email Entity Page](mdo-email-entity-page.md)
