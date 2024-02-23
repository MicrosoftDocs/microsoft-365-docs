---
title: Threat hunting in Threat Explorer and Real-time detections
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
description: Use Threat Explorer or Real-time detections in the Microsoft Defender portal to investigate and respond to threats efficiently.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Threat hunting in Threat Explorer and Real-time detections in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have **Explorer** (also known as **Threat Explorer**) or **Real-time detections**. These features are powerful, near real-time tools to help Security Operations (SecOps) teams investigate and respond to threats. For more information, see [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).

Threat Explorer or Real-time detections allow you to take the following actions:

- See malware detected by Microsoft 365 security features.
- View phishing URL and click verdict data.
- Start an automated investigation and response process (Threat Explorer only).
- Investigate malicious email.
- And more.

Watch this short video to learn how to hunt and investigate email and collaboration-based threats using Defender for Office 365.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWyPRU]

> [!TIP]
> Advanced hunting in Microsoft Defender XDR supports an easy-to-use query builder that doesn't use the Kusto Query Language (KQL). For more information, see [Build queries using guided mode](/microsoft-365/security/defender/advanced-hunting-query-builder).

## Threat Explorer and Real-time detections walk-through

Threat Explorer or Real-time detections is available in the **Email & collaboration** section in the Microsoft Defender portal at <https://security.microsoft.com>:

- **Real-time detections** is available in _Defender for Office 365 Plan 1_. The **Real-time detections** page is available directly at <https://security.microsoft.com/realtimereportsv3>.

  :::image type="content" source="../../media/te-rtd-select-real-time-detections.png" alt-text="Real-time detections in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-real-time-detections.png":::

- **Threat Explorer** is available in _Defender for Office 365 Plan 2_. The **Explorer** page is available directly at <https://security.microsoft.com/threatexplorerv3>.

  :::image type="content" source="../../media/te-rtd-select-threat-explorer.png" alt-text="Explorer in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-threat-explorer.png":::

Threat Explorer contains the same information and capabilities as Real-time detections, but with the following additional features:

- More views.
- More property filtering options, including the option to save queries.
- Threat hunting and remediation actions.

For more information about the differences between Defender for Office 365 Plan 1 and Plan 2, see the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-security-comparison.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

Use the tabs (views) at the top of the page to start your investigation.

The available views in Threat Explorer and Real-time detections are described in the following table:

|View|Threat<br/>Explorer|Real-time<br/>detections|Description|
|---|:---:|:---:|---|
|**All email**|✔||Default view for Threat Explorer. Information about all email messages sent by external users into your organization, or email sent between internal users in your organization.|
|**Malware**|✔|✔|Default view for Real-time detections. Information about email messages that contain malware.|
|**Phish**|✔|✔|Information about email messages that contain phishing threats.|
|**Campaigns**|✔||Information about malicious email that Defender for Office 365 Plan 2 identified as part of a [coordinated phishing or malware campaign](campaigns.md).|
|**Content malware**|✔|✔|Information about malicious files detected by the following features: <ul><li>[Built-in virus protection in SharePoint, OneDrive, and Microsoft Teams](anti-malware-protection-for-spo-odfb-teams-about.md)</li><li>[Safe Attachments for Sharepoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li></ul>|
|**URL clicks**|✔||Information about user clicks on URLs in email messages, Teams messages, SharePoint files, and OneDrive files.|

Use the date/time filter and the available filter properties in the view to refine the results:

- For instructions to create filters, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).
- The available filter properties for each view are described in the following locations:
  - [Filterable properties in the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer)
  - [Filterable properties in the Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-malware-view-in-threat-explorer-and-real-time-detections)
  - [Filterable properties in the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-phish-view-in-threat-explorer-and-real-time-detections)
  - [Filterable properties in the Campaigns view in Threat Explorer](campaigns.md#filters-on-the-campaigns-page)
  - [Filterable properties in the Content malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-content-malware-view-in-threat-explorer-and-real-time-detections)
  - [Filterable properties in the URL clicks view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-url-clicks-view-in-threat-explorer)

> [!TIP]
> Remember to select **Refresh** after you create or update the filter. The filters affect the information in the chart and the details area of the view.

You can think of refining the focus in Threat Explorer or Real-time detections as layers to make retracing your steps easier:

- The first layer is the view you're using.
- The second later is the filters you're using in that view.

For example, you can retrace the steps you took to find a threat by recording your decisions like this: To find the issue in Threat Explorer, I used the **Malware** view and used a **Recipient** filter focus.

> [!TIP]
> If you use [User tags](user-tags-about.md) to mark high value targets accounts (for example, the **Priority account** tag) you can use those tags as filters. For example, the **Phish** view with a **Tags** filter focus. This method shows phishing attempts directed at high value target accounts during a specific time period.

Also, be sure to test your display options. Different audiences (for example, management) might react better or worse to different presentations of the same data.

For example, in Threat Explorer the **All email** view, the **Email origin** and **Campaigns** views (tabs) are available in the details area at the bottom of the page:

- Some people might think the world map in the **Email origin** tab does a better job of showing how widespread the detected threats are.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png" alt-text="The world map in the Email origin view in the details area of the All email view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-email-origin-tab.png":::

- Others might find the detailed information in the table in the **Campaigns** tab more useful to convey the information.

  :::image type="content" source="../../media/te-rtd-all-email-view-details-area-campaign-tab.png" alt-text="The details table in the Campaign tab in the All email view view in Threat Explorer." lightbox="../../media/te-rtd-all-email-view-details-area-campaign-tab.png":::

You can use this information for the following results:

- To show the need for security and protection.
- To later demonstrate the effectiveness of any actions.

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

Here, the analyst can take actions like submitting the message as Spam, Phishing, or Malware, contacting recipients, or further investigations that can include triggering Automated Investigation and Response (or AIR) playbooks (if you have Plan 2). Or, the message can also be submitted as clean.

:::image type="content" source="../../media/threat-explorer-email-actions-drop-down-new.png" alt-text="Screenshot of the Actions drop down." lightbox="../../media/threat-explorer-email-actions-drop-down-new.png":::

