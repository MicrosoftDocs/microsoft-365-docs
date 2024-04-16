---
title: Email security with Threat Explorer and Real-time detections in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.date: 2/27/2024
ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
description: Use Threat Explorer (Explorer) or Real-time detections to view and investigate malware and phishing attempts in email.
ms.custom:
- seo-marvel-apr2020
ms.service: defender-office-365
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 1 and Plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Email security with Threat Explorer and Real-time detections in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](mdo-about.md) included in their subscription or purchased as an add-on have **Explorer** (also known as **Threat Explorer**) or **Real-time detections**. These features are powerful, near real-time tools to help Security Operations (SecOps) teams investigate and respond to threats. For more information, see [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).

This article explains how to view and investigate detected malware and phishing attempts in email using Threat Explorer or Real-time Detections.

> [!TIP]
> For other email scenarios using Threat Explorer and Real-time detections, see the following articles:
>
> - [Threat hunting in Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-threat-hunting.md)
> - [Investigate malicious email that was delivered in Microsoft 365](threat-explorer-investigate-delivered-malicious-email.md)

## What do you need to know before you begin?

- Threat Explorer is included in Defender for Office 365 Plan 2. Real-time detections is included in Defender for Office Plan 1:
  - The differences between Threat Explorer and Real-time detections are described in [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).
  - The differences between Defender for Office 365 Plan 2 and Defender for Office Plan 1 are described in the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-about.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

- For permissions and licensing requirements for Threat Explorer and Real-time detections, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

## View phishing email sent to impersonated users and domains

For more information about user and domain impersonation protection in anti-phishing policies in Defender for Office 365, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

In the default or custom anti-phishing policies, you need to specify the users and domains to protect from impersonation, including domains you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)). In the Standard or Strict preset security policies, domains that you own automatically receive impersonation protection, but you need to specify any users or custom domains for impersonation protection. For instructions, see the following articles:

- [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md)
- [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)

Use the following steps to review phishing messages and search for impersonated users or domains.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Phish** view. For more information about the **Phish** view, see [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

4. Do any of the following steps:
   - **Find any user or domain impersonation attempts**:
     - Select the **Sender address** (property) box, and then select **Detection technology** in the **Basic** section of the drop down list.
     - Verify **Equal any of** is selected as the filter operator.
     - In the property value box, select **Impersonation domain** and **Impersonation user**

   - **Find specific impersonated user attempts**:
     - Select the **Sender address** (property) box, and then select **Impersonated user** in the **Basic** section of the drop down list.
     - Verify **Equal any of** is selected as the filter operator.
     - In the property value box, enter the full email address of the recipient. Separate multiple recipient values by commas.

   - **Find specific impersonated domain attempts**:
     - Select the **Sender address** (property) box, and then select **Impersonated domain** in the **Basic** section of the drop down list.
     - Verify **Equal any of** is selected as the filter operator.
     - In the property value box, enter the domain (for example, contoso.com). Separate multiple domain values by commas.

5. Enter more conditions using other filterable properties as required. For instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).

6. When you're finished creating the filter conditions, select **Refresh**.

7. In the details area below the chart, verify the **Email** tab (view) is selected.

   You can sort the entries and show more columns as described in [Email view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).

   - If you select the **Subject** value of an entry in the table, an email details flyout opens. This details flyout is known as the _Email summary panel_ and contains standardized summary information that's also available on the [Email entity page](mdo-email-entity-page.md) for the message.

     For details about the information in the Email summary panel, see [The Email summary panel](mdo-email-entity-page.md#the-email-summary-panel).

     For information about the available actions at the top of the Email summary panel for Threat Explorer and Real-time detections, see [Email details from the Email view of the details area in the All email view](threat-explorer-real-time-detections-about.md#email-details-from-the-email-view-of-the-details-area-in-the-all-email-view) (the same actions are also available from the **Phish** view).

   - If you select the **Recipient** value of an entry in the table, a different details flyout opens. For more information, see [Recipient details from the Email view of the details area in the Phish view](threat-explorer-real-time-detections-about.md#recipient-details-from-the-email-view-of-the-details-area-in-the-phish-view).

## Export URL click data

You can export URL click data to a CSV file to view the **Network Message ID** and **Click verdict** values, which help explain where your URL click traffic came from.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Phish** view. For more information about the **Phish** view, see [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range, and then select **Refresh**. The default is yesterday and today.

4. In the details area, select the **Top URLs** or **Top clicks** tab (view).

5. In the **Top URLs** or **Top clicks** view, select one or more entries from the table by selecting the check box next to the first column, and then select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export**.
**Explorer** \> **Phish** \> **Clicks** \> **Top URLs** or **URL Top Clicks** \> select any record to open the URL flyout.

You can use the Network Message ID value to search for specific messages in Threat Explorer or Real-time detections or external tools. These searches identify the email message that's associated with a click result. Having the correlated Network Message ID makes for quicker and more powerful analysis.

## View malware detected in email

Use the following steps in Threat Explorer or Real-time detections to see the malware detected in email by Microsoft 365.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Malware** view. For more information about the **Phish** view, see [Malware view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

4. Select the **Sender address** (property) box, and then select **Detection technology** in the **Basic** section of the drop down list.
   - Verify **Equal any of** is selected as the filter operator.
   - In the property value box, select one or more of the following values:
     - **Anti-malware protection**
     - **File detonation**
     - **File detonation reputation**
     - **File reputation**
     - **Fingerprint matching**

5. Enter more conditions using other filterable properties as required. For instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).

6. When you're finished creating the filter conditions, select **Refresh**.

The report shows the results that malware detected in email, using the technology options you selected. From here, you can conduct further analysis.

## Report messages as clean

You can use the **Submissions** page in the Defender portal at <https://security.microsoft.com/reportsubmission> to [report messages as clean (false positives) to Microsoft](submissions-admin.md#report-good-email-to-microsoft). But you can also submit messages as clean to Microsoft from Explorer or Real-time detections.

For instructions, see [Email remediation in Threat Explorer and Real-time detections](threat-explorer-threat-hunting.md#email-remediation).

To summarize:

- Select a message from the details table in the **Email** tab (view) in the **All email**, **Malware**, or **Phish** views by selecting the check box in the row, and then select **Message actions** and then one of the following options:
  - **Threat Explorer**: Select **Submit to Microsoft** in the **Start new submission** section. For further instruction, see [Start new submission actions in Threat Explorer](threat-explorer-threat-hunting.md#start-new-submission-actions-in-threat-explorer).
  - **Real-time detections**: Select **Report clean**. For further instruction, see [Start new submission actions in Real-time detections](threat-explorer-threat-hunting.md#start-new-submission-actions-in-real-time-detections).

Or

- Select a message from the details table in the **Email** tab (view) in the **All email**, **Malware**, or **Phish** views by clicking on the **Subject** value.

  In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-take-actions-icon.png" border="false"::: **Take action** \> **Submit to Microsoft for review** \> **I've confirmed it's clean**. For further instructions, see [Remediate using Take action](threat-explorer-threat-hunting.md#remediate-using-take-action).

## View phishing URL and click verdict data

Safe Links protection tracks URLs that were allowed, blocked, and overridden. Safe Links protection is on by default, thanks to Built-in protection in [preset security policies](preset-security-policies.md). Safe Links protection is on in the Standard and Strict preset security policies. You can also create and configure Safe Links protection in [custom Safe Links policies](safe-links-policies-configure.md). For more information about the Safe Links policy settings, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

Use the following steps to see phishing attempts using URLs in email messages.

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select the **Phish** view. For more information about the **Phish** view, see [Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

4. Select the **Sender address** (property) box, and then select **Click verdict** in the **URLs** section of the drop down list.
   - Verify **Equal any of** is selected as the filter operator.
   - In the property value box, select one or more of the following values:
     - **Blocked**
     - **Blocked overridden**

   For explanations of the **Click verdict** values, see **Click verdict** in [Filterable properties in the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#filterable-properties-in-the-all-email-view-in-threat-explorer).

5. Enter more conditions using other filterable properties as required. For instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections).

6. When you're finished creating the filter conditions, select **Refresh**.

The **Top URLs** tab (view) in the details area below the chart shows the count of **Messages blocked**, **Messages junked**, and **Messages delivered** for the top five URLs. For more information, see [Top URLs view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#top-urls-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).

The **Top clicks** tab (view) in the details area below the chart shows the top five clicked links that were wrapped by Safe Links. URL clicks on unwrapped links don't show up here. For more information, see [Top clicks view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#top-clicks-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections).

These URL tables show URLs that were blocked or visited despite a warning. This information shows the potential bad links that were presented to users. From here, you can conduct further analysis.

Select a URL from an entry in the view for details. For more information, see [URL details for the Top URLs and Top clicks tabs in Phish view](threat-explorer-real-time-detections-about.md#top-urls-details-for-the-phish-view).

> [!TIP]
> In the URL details flyout, the filtering on email messages is removed to show the full view of the URL's exposure in your environment. This behavior lets you filter for specific email messages, find specific URLs that are potential threats, and then expand your understanding of the URL exposure in your environment without having to add URL filters in the **Phish** view.

### Interpretation of click verdicts

The **Click verdict** property results are visible in the following locations:

- [Click verdict chart pivot for the URL clicks view of the details area of the All email view (Threat Explorer only) or Phish view](threat-explorer-real-time-detections-about.md#click-verdict-pivot-for-the-url-clicks-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)
- [Top clicks view for the details area of the All email view in Threat Explorer](threat-explorer-real-time-detections-about.md#top-clicks-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)
- [Top clicks view for the details area of the Phish view in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#top-clicks-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)
- [Top clicks view for the details area of the URL clicks view in Threat Explorer](threat-explorer-real-time-detections-about.md#top-clicks-view-for-the-details-area-of-the-url-clicks-view-in-threat-explorer)

The verdict values are described in the following list:

- **Allowed**: The user was allowed to open the URL.
- **Block overridden**: The user was blocked from directly opening the URL, but they overrode the block to open the URL.
- **Blocked**: The user was blocked from opening the URL.
- **Error**: The user was presented with the error page, or an error occurred in capturing the verdict.
- **Failure**: An unknown exception occurred while capturing the verdict. The user might have opened the URL.
- **None**: Unable to capture the verdict for the URL. The user might have opened the URL.
- **Pending verdict**: The user was presented with the detonation pending page.
- **Pending verdict bypassed**: The user was presented with the detonation page, but they overrode the message to open the URL.

## Start automated investigation and response in Threat Explorer

[Automated investigation and response (AIR)](air-about-office.md) in Defender for Office 365 Plan 2 can save time and effort as you investigate and mitigate cyberattacks. You can configure alerts that trigger a security playbook, and you can start AIR in Threat Explorer. For details, see [Example: A security administrator triggers an investigation from Explorer](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).

## Other articles

[Investigate email with the Email entity page](mdo-email-entity-page.md)
