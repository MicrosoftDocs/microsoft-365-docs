---
title: Email security with Threat Explorer in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 05/03/2021
localization_priority: Normal
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
description: Use Explorer and Real-time detections in the Security &amp; Compliance Center to investigate and respond to threats efficiently.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Email security with Threat Explorer in Microsoft Defender for Office 365

- [View malware detected in email](#view-malware-detected-in-email)
- [View phishing URL and click verdict data](#view-phishing-url-and-click-verdict-data)
- [Review email messages reported by users](#review-email-messages-reported-by-users)
- [Start automated investigation and response](#start-automated-investigation-and-response)

> [!NOTE]
> This is part of a three-article series on **threat hunting**, **email security**, and **Real-time detections**. The other two articles are [Threat hunting in Threat Explorer](threat-hunting-in-threat-explorer.md) and [Threat Explorer and Real-time detection basics](real-time-detections.md). 

This article explains how to view and investigate malware and phishing attempts that are detected in email by Microsoft 365 security features. 

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

## View malware detected in email

To see malware detected in email sorted by Microsoft 365 technology, use the [Email > Malware](threat-explorer-views.md#email--malware) view of Explorer (or Real-time detections). Malware is the default view, so it may be selected as soon as you open Explorer.

1. In the Security & Compliance Center (<https://protection.office.com>), choose **Threat management** \> **Explorer** (or **Real-time detections**). (This example uses Explorer.) 
If you're in the converged Microsoft 365 security center (https://security.microsoft.com/) scroll to **Email & collaboration** > **Explorer**.

From here, start at the View, choose a particular frame of time to investigate (if needed), and focus your filters.

2. In the **View** menu, choose **Email** \> **Malware**.

   > [!div class="mx-imgBorder"]
   > ![View menu for Explorer](../../media/ExplorerViewEmailMalwareMenu.png)

3. Click **Sender**, and then choose **Basic** \> **Detection technology**.

   Your detection technologies are now available as filters for the report.

   > [!div class="mx-imgBorder"]
   > ![Malware detection technologies](../../media/ExplorerEmailMalwareDetectionTech.png)

4. Choose an option. Then select the **Refresh** button to apply that filter.

   > [!div class="mx-imgBorder"]
   > ![Selected detection technology](../../media/ExplorerEmailMalwareDetectionTechATP.png)

The report refreshes to show the results that malware detected in email, using the technology option you selected. From here, you can conduct further analysis. 

## View phishing URL and click verdict data

You can view phishing attempts through URLs in email, including a list of URLs that were allowed, blocked, and overridden. To identify URLs that were clicked, [Safe Links](safe-links.md) must be configured. Make sure that you set up [Safe Links policies](set-up-safe-links-policies.md) for time-of-click protection and logging of click verdicts by Safe Links.

To review phish URLs in messages and clicks on URLs in phish messages, use the [**Email** > **Phish**](threat-explorer-views.md#email--phish) view of Explorer or Real-time detections.

1. In the Security & Compliance Center (<https://protection.office.com>), choose **Threat management** \> **Explorer** (or **Real-time detections**). (This example uses Explorer.)

2. In the **View** menu, choose **Email** \> **Phish**.

   > [!div class="mx-imgBorder"]
   > ![View menu for Explorer in phishing context](../../media/ExplorerViewEmailPhishMenu.png)

3. Click **Sender**, and then choose **URLs** \> **Click verdict**.

4. Select one or more options, such as **Blocked** and **Block overridden**, and then select the **Refresh** button on the same line as the options to apply that filter. (Don't refresh your browser window.)

   > [!div class="mx-imgBorder"]
   > ![URLs and click verdicts](../../media/ThreatExplorerEmailPhishClickVerdictOptions.png)

   The report refreshes to show two different URL tables on the URL tab under the report:

   - **Top URLs** are the URLs in the messages that you filtered down to and the email delivery action counts for each URL. In the Phish email view, this list typically contains legitimate URLs. Attackers include a mix of good and bad URLs in their messages to try to get them delivered, but they make the malicious links look more interesting. The table of URLs is sorted by total email count, but this column is hidden to simplify the view.

   - **Top clicks** are the Safe Links-wrapped URLs that were clicked, sorted by total click count. This column also isn't displayed, to simplify the view. Total counts by column indicate the Safe Links click verdict count for each clicked URL. In the Phish email view, these are usually suspicious or malicious URLs. But the view could include URLs that aren't threats but are in phish messages. URL clicks on unwrapped links don't show up here.

   The two URL tables show top URLs in phishing email messages by delivery action and location. The tables show URL clicks that were blocked or visited despite a warning, so you can see what potential bad links were presented to users and that the user's clicked. From here, you can conduct further analysis. For example, below the chart you can see the top URLs in email messages that were blocked in your organization's environment.

   > [!div class="mx-imgBorder"]
   > ![Explorer URLs that were blocked](../../media/ExplorerPhishClickVerdictURLs.png)

   Select a URL to view more detailed information.

   > [!NOTE]
   > In the URL flyout dialog box, the filtering on email messages is removed to show the full view of the URL's exposure in your environment. This lets you filter for email messages you're concerned about in Explorer, find specific URLs that are potential threats, and then expand your understanding of the URL exposure in your environment (via the URL details dialog box) without having to add URL filters to the Explorer view itself.

### Interpretation of click verdicts

Within the Email or URL flyouts, Top Clicks as well as within our filtering experiences, you'll see different click verdict values:

- **None:** Unable to capture the verdict for the URL. The user might have clicked through the URL.
- **Allowed:** The user was allowed to navigate to the URL.
- **Blocked:** The user was blocked from navigating to the URL.
- **Pending verdict:** The user was presented with the detonation-pending page.
- **Blocked overridden:** The user was blocked from navigating directly to the URL. But the user overrode the block to navigate to the URL.
- **Pending verdict bypassed:** The user was presented with the detonation page. But the user overrode the message to access the URL.
- **Error:** The user was presented with the error page, or an error occurred in capturing the verdict.
- **Failure:** An unknown exception occurred while capturing the verdict. The user might have clicked through the URL.

## Review email messages reported by users

You can see email messages that users in your organization reported as *Junk*, *Not Junk*, or *Phishing* through the [Report message or Report phishing add ins](report-false-positives-and-false-negatives.md). To see them, use the [**Email** > **Submissions**](threat-explorer-views.md#email--submissions) view of Explorer (or Real-time detections).

1. In the Security & Compliance Center (<https://protection.office.com>), choose **Threat management** \> **Explorer** (or **Real-time detections**). (This example uses Explorer.)

2. In the **View** menu, choose **Email** \> **Submissions**.

   > [!div class="mx-imgBorder"]
   > ![View menu for Explorer for emails](../../media/explorer-view-menu-email-user-reported.png)

3. Click **Sender**, and then choose **Basic** \> **Report type**.

4. Select an option, such as **Phish**, and then select the **Refresh** button.

   > [!div class="mx-imgBorder"]
   > ![User-reported phish](../../media/EmailUserReportedReportType.png)

The report refreshes to show data about email messages that people in your organization reported as a phishing attempt. You can use this information to conduct further analysis, and, if necessary, adjust your [anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

## Start automated investigation and response

> [!NOTE]
> Automated investigation and response capabilities are available in *Microsoft Defender for Office 365 Plan 2* and *Office 365 E5*.

[Automated investigation and response](automated-investigation-response-office.md) can save your security operations team time and effort spent investigating and mitigating cyberattacks. In addition to configuring alerts that can trigger a security playbook, you can start an automated investigation and response process from a view in Explorer. For details, see [Example: A security administrator triggers an investigation from Explorer](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).

## Other articles

[Investigate emails with the Email Entity Page](mdo-email-entity-page.md)