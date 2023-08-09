---
title: Email security with Threat Explorer in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.date: 6/15/2023
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
description: View and investigate malware phishing attempts.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Email security with Threat Explorer in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article explains how to view and investigate malware and phishing attempts that are detected in email by Microsoft 365 security features.

## View malware detected in email

To see malware detected in email sorted by Microsoft 365 technology, use the [Malware](threat-explorer-views.md#malware) view of Explorer (or Real-time detections).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration**, and then choose **Explorer** or **Real-time detections**. To go directly to the page, use <https://security.microsoft.com/threatexplorer> or <https://security.microsoft.com/realtimereports>.

   This example uses **Explorer**.

   From here, start at the **Malware** view, choose a particular frame of time to investigate (if needed), and focus your filters, as per the [Explorer walk- through](threat-explorer-threat-hunting.md#threat-explorer-walk-through).

2. In the **Explorer** page, verify that **Malware** is selected.

3. Select the filter dropdown, and then choose **Basic** \> **Detection technology** in the dropdown list.

   :::image type="content" source="../../media/threat-explorer-malware-detection.png" alt-text="Screenshot of the malware detection technology." lightbox="../../media/threat-explorer-malware-detection.png":::

   Your detection technologies are now available as filters for the report.

4. Choose an option, and then click **Refresh** to apply that filter (don't refresh your browser window).

   :::image type="content" source="../../media/threat-explorer-malware-detection2.png" alt-text="Screenshot of the selected detection technology." lightbox="../../media/threat-explorer-malware-detection2.png":::

   The report refreshes to show the results that malware detected in email, using the technology option you selected. From here, you can conduct further analysis.

### Report a message as clean in Explorer

You can use the **Report clean** option in Explorer to report a message as false positive.

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Explorer**, and then verify that **Phish** is selected.

2. Verify that you're on the **Email** tab, and then from the list of reported messages, select the one you'd like to report as clean.

3. Click **Message actions** to expand the list of options.

4. Scroll down the list of options to go to the **Start new submission** section, and then select **Report clean**. A flyout appears.

   :::image type="content" source="../../media/report-clean-option-explorer-new.png" alt-text="Screenshot of the Report clean option in the Explorer." lightbox="../../media/report-clean-option-explorer-new.png":::

5. Select the **Allow emails with similar attributes** checkbox. From the dropdown list, specify the number of days you want the message to be removed, add a note if needed, and then select **Submit**.

## View phishing URL and click verdict data

You can view phishing attempts through URLs in email, including a list of URLs that were allowed, blocked, and overridden. To identify URLs that were clicked, you must configure [Safe Links](safe-links-about.md) first. Make sure that you set up [Safe Links policies](safe-links-policies-configure.md) for time-of-click protection and logging of click verdicts by Safe Links.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration**, and then choose **Explorer** or **Real-time detections**. To go directly to the page, use <https://security.microsoft.com/threatexplorer> or <https://security.microsoft.com/realtimereports>.

   This example uses **Explorer**.

2. In the **Explorer** page, verify that **Phish** is selected.

   :::image type="content" source="../../media/explorer-view-email-phish-menu-new.png" alt-text="Screenshot of the View menu for Explorer in phishing context." lightbox="../../media/explorer-view-email-phish-menu-new.png":::

3. Select the filter dropdown, and then choose **URLs** \> **Click verdict** in the dropdown list.

4. In options that appear, select one or more options, such as **Blocked** and **Block overridden**, and then click **Refresh** (don't refresh your browser window).

    :::image type="content" source="../../media/threat-explorer-click-verdict-new.png" alt-text="Screenshot of URLs and click verdicts." lightbox="../../media/threat-explorer-click-verdict-new.png":::

   The report refreshes to show two different URL tables on the **URLs** tab under the report:

   - **Top URLs** are the URLs in the messages that you filtered down to and the email delivery action counts for each URL. This list typically contains legitimate URLs. Attackers include a mix of good and bad URLs in their messages to try to get them delivered, but they make the malicious links look more interesting. The table of URLs is sorted by total email count, but this column is hidden to simplify the view.

   - **Top clicks** are the Safe Links-wrapped URLs that were clicked, sorted by total click count. This column also isn't displayed, to simplify the view. Total counts by column indicate the Safe Links click verdict count for each clicked URL. Usually, these are suspicious or malicious URLs. But the view could include URLs that aren't threats but are in phish messages. URL clicks on unwrapped links don't show up here.

   The two URL tables show top URLs in phishing email messages by delivery action and location. The tables show URL clicks that were blocked or visited despite a warning, so you can see what potential bad links were presented to users and that the users clicked. From here, you can conduct further analysis. For example, below the chart you can see the top URLs in email messages that were blocked in your organization's environment.

   :::image type="content" source="../../media/threat-explorer-click-verdict-urls.png" alt-text="Screenshot of the Explorer URLs that were blocked." lightbox="../../media/threat-explorer-click-verdict-urls.png":::

   > [!NOTE]
   > In the URL flyout dialog box, the filtering on email messages is removed to show the full view of the URL's exposure in your environment. This lets you filter for email messages you're concerned about in Explorer, find specific URLs that are potential threats, and then expand your understanding of the URL exposure in your environment (via the URL details dialog box) without having to add URL filters to the Explorer view itself.

### Interpretation of click verdicts

In the Email or URL flyouts, Top Clicks, and in our filtering experiences, you'll see different click verdict values:

- **None:** Unable to capture the verdict for the URL. The user might have clicked through the URL.
- **Allowed:** The user was allowed to navigate to the URL.
- **Blocked:** The user was blocked from navigating to the URL.
- **Pending verdict:** The user was presented with the detonation-pending page.
- **Blocked overridden:** The user was blocked from navigating directly to the URL. But the user overrode the block to navigate to the URL.
- **Pending verdict bypassed:** The user was presented with the detonation page. But the user overrode the message to access the URL.
- **Error:** The user was presented with the error page, or an error occurred in capturing the verdict.
- **Failure:** An unknown exception occurred while capturing the verdict. The user might have clicked through the URL.

## Start automated investigation and response

> [!NOTE]
> Automated investigation and response capabilities are available in *Microsoft Defender for Office 365 Plan 2* and *Office 365 E5*.

[Automated investigation and response](air-about-office.md) can save your security operations team time and effort spent investigating and mitigating cyberattacks. In addition to configuring alerts that can trigger a security playbook, you can start an automated investigation and response process from a view in Explorer. For details, see [Example: A security administrator triggers an investigation from Explorer](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).

## Other articles

[Investigate emails with the Email Entity Page](mdo-email-entity-page.md)
