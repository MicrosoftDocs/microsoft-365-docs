---
title: Threat analytics in Microsoft 365 Defender
ms.reviewer: 
description: Learn about emerging threats and attack techniques and how to stop them. Assess their impact to your organization and evaluate your organizational resilience.
keywords: threat analytics, risk evaluation, Microsoft 365 Defender, M365D, mitigation status, secure configuration, Microsoft Defender for Office 365, Microsoft Defender for Office 365 threat analytics, MDO threat analytics, integrated MDE and MDO threat analytics data, threat analytics data integration, integrated Microsoft 365 Defender threat analytics   
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security 
- m365initiative-m365-defender 
- tier1
ms.topic: conceptual
ms.custom: seo-marvel-apr2020
search.appverid: met150
ms.date: 02/16/2021
---

# Threat analytics in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Threat analytics is our in-product threat intelligence solution from expert Microsoft security researchers. It's designed to assist security teams to be as efficient as possible while facing emerging threats, such as:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Watch this short video to learn more about how threat analytics can help you track the latest threats and stop them.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWwJfU]

You can access threat analytics either from the upper left-hand side of Microsoft 365 security portal's navigation bar, or from a dedicated dashboard card that shows the top threats to your org, both in terms of impact, and in terms of exposure.

:::image type="content" source="../../media/threat-analytics/ta_inlandingpage_mtp.png" alt-text="The threat analytics landing page" lightbox="../../media/threat-analytics/ta_inlandingpage_mtp.png":::

High impact threats have the greatest potential to cause harm, while high exposure threats are the ones that your assets are most vulnerable to. Getting visibility on active or ongoing campaigns and knowing what to do through threat analytics can help equip your security operations team with informed decisions.

_Where to access threat analytics_

With more sophisticated adversaries and new threats emerging frequently and prevalently, it's critical to be able to quickly:

- Identify and react to emerging threats
- Learn if you're currently under attack
- Assess the impact of the threat to your assets
- Review your resilience against or exposure to the threats
- Identify the mitigation, recovery, or prevention actions you can take to stop or contain the threats

Each report provides an analysis of a tracked threat and extensive guidance on how to defend against that threat. It also incorporates data from your network, indicating whether the threat is active and if you have applicable protections in place.

## View the threat analytics dashboard

The threat analytics dashboard ([security.microsoft.com/threatanalytics3](https://security.microsoft.com/threatanalytics3)) highlights the reports that are most relevant to your organization. It summarizes the threats in the following sections:

- **Latest threats**—lists the most recently published or updated threat reports, along with the number of active and resolved alerts.
- **High-impact threats**—lists the threats that have the highest impact to your organization. This section lists threats with the highest number of active and resolved alerts first.
- **Highest exposure**—lists threats with the highest exposure levels first. the exposure level of a threat is calculated using two pieces of information: how severe the vulnerabilities associated with the threat are, and how many devices in your organization could be exploited by those vulnerabilities.

Select a threat from the dashboard to view the report for that threat.

:::image type="content" source="../../media/threat-analytics/ta_dashboard_mtp.png" alt-text="The threat analytics dashboard" lightbox="../../media/threat-analytics/ta_dashboard_mtp.png":::

_Threat analytics dashboard. You can also select the Search field to key in a keyword that's related to the threat analytics report that you'd like to read._

## View a threat analytics report

Each threat analytics report provides information in several sections:

- [**Overview**](#overview-quickly-understand-the-threat-assess-its-impact-and-review-defenses)
- [**Analyst report**](#analyst-report-get-expert-insight-from-microsoft-security-researchers)
- [**Related incidents**](#related-incidents-view-and-manage-related-incidents)
- [**Impacted assets**](#impacted-assets-get-list-of-impacted-devices-and-mailboxes)
- [**Prevented email attempts**](#prevented-email-attempts-view-blocked-or-junked-threat-emails)
- [**Exposure & mitigations**](#exposure-and-mitigations-review-list-of-mitigations-and-the-status-of-your-devices)

### Overview: Quickly understand the threat, assess its impact, and review defenses

The **Overview** section provides a preview of the detailed analyst report. It also provides charts that highlight the impact of the threat to your organization, and your exposure through misconfigured and unpatched devices.

:::image type="content" source="../../media/threat-analytics/ta_overview_mtp.png" alt-text="The overview section of a threat analytics report" lightbox="../../media/threat-analytics/../../media/threat-analytics/ta_overview_mtp.png":::

_Overview section of a threat analytics report_

#### Assess impact on your organization

Each report includes charts designed to provide information about the organizational impact of a threat:

- **Related incidents**—provides an overview of the impact of the tracked threat to your organization with the following data:
  - Number of active alerts and the number of active incidents they're associated with
  - Severity of active incidents
- **Alerts over time**—shows the number of related **Active** and **Resolved** alerts over time. The number of resolved alerts indicates how quickly your organization responds to alerts associated with a threat. Ideally, the chart should be showing alerts resolved within a few days.
- **Impacted assets**—shows the number of distinct devices and email accounts (mailboxes) that currently have at least one active alert associated with the tracked threat. Alerts are triggered for mailboxes that received threat emails. Review both org- and user-level policies for overrides that cause the delivery of threat emails.
- **Prevented email attempts**—shows the number of emails from the past seven days that were either blocked before delivery or delivered to the junk mail folder.

#### Review security resilience and posture

Each report includes charts that provide an overview of how resilient your organization is against a given threat:

- **Secure configuration status**—shows the number of devices with misconfigured security settings. Apply the recommended security settings to help mitigate the threat. Devices are considered **Secure** if they've applied _all_ the tracked settings.
- **Vulnerability patching status**—shows the number of vulnerable devices. Apply security updates or patches to address vulnerabilities exploited by the threat.

#### View reports per threat tags

You can filter the threat report list and view the most relevant reports according to a specific threat tag (category) or a report type.

- **Threat tags**—assist you in viewing the most relevant reports according to a specific threat category. For example, all reports related to ransomware.
- **Report types**—assist you in viewing the most relevant reports according to a specific report type. For example, all reports that cover tools and techniques.
- **Filters**—assist you in efficiently reviewing the threat report list and filtering the view based on a specific threat tag or report type. For example, review all threat reports related to ransomware category, or threat reports that cover vulnerabilities.

##### How does it work?

The Microsoft Threat Intelligence team has added threat tags to each threat report:

- Four threat tags are now available:
  - Ransomware
  - Phishing
  - Vulnerability
  - Activity group
- Threat tags are presented at the top of the threat analytics page. There are counters for the number of available reports under each tag.

  :::image type="content" source="../../media/threat-analytics/ta-threattags-mtp.png" alt-text="The threat tags" lightbox="../../media/threat-analytics/ta-threattags-mtp.png":::

- The list can also be sorted by threat tags:

  :::image type="content" source="../../media/threat-analytics//ta-taglist-mtp.png" alt-text="The Threat tags section" lightbox="../../media/threat-analytics//ta-taglist-mtp.png":::

- Filters are available per threat tag and report type:

  :::image type="content" source="../../media/threat-analytics/ta-threattag-filters-mtp.png" alt-text="The Filters page" lightbox="../../media/threat-analytics/ta-threattag-filters-mtp.png":::

### Analyst report: Get expert insight from Microsoft security researchers

In the **Analyst report** section, read through the detailed expert write-up. Most reports provide detailed descriptions of attack chains, including tactics and techniques mapped to the MITRE ATT&CK framework, exhaustive lists of recommendations, and powerful [threat hunting](advanced-hunting-overview.md) guidance.

[Learn more about the analyst report](threat-analytics-analyst-reports.md)

### Related incidents: View and manage related incidents

The **Related incidents** tab provides the list of all incidents related to the tracked threat. You can assign incidents or manage alerts linked to each incident. 

:::image type="content" source="../../media/threat-analytics/ta_related_incidents_mtp.png" alt-text="The related incidents section of a threat analytics report" lightbox="../../media/threat-analytics/ta_related_incidents_mtp.png":::

_Related incidents section of a threat analytics report_

### Impacted assets: Get list of impacted devices and mailboxes

An asset is considered impacted if it's affected by an active, unresolved alert. The **Impacted assets** tab lists the following types of impacted assets:

- **Impacted devices**—endpoints that have unresolved Microsoft Defender for Endpoint alerts. These alerts typically fire on sightings of known threat indicators and activities.
- **Impacted mailboxes**—mailboxes that have received email messages that have triggered Microsoft Defender for Office 365 alerts. While most messages that trigger alerts are typically blocked, user- or org-level policies can override filters.

:::image type="content" source="../../media/threat-analytics/ta_impacted_assets_mtp.png" alt-text="The impacted assets section of a threat analytics report" lightbox="../../media/threat-analytics/ta_impacted_assets_mtp.png":::

_Impacted assets section of a threat analytics report_

### Prevented email attempts: View blocked or junked threat emails

Microsoft Defender for Office 365 typically blocks emails with known threat indicators, including malicious links or attachments. In some cases, proactive filtering mechanisms that check for suspicious content will instead send threat emails to the junk mail folder. In either case, the chances of the threat launching malware code on the device is reduced.

The **Prevented email attempts** tab lists all the emails that have either been blocked before delivery or sent to the junk mail folder by Microsoft Defender for Office 365.

:::image type="content" source="../../media/threat-analytics/ta_prevented_email_attempts_mtp.png" alt-text="The prevented email attempts section of a threat analytics report" lightbox="../../media/threat-analytics/ta_prevented_email_attempts_mtp.png":::

_Prevented email attempts section of a threat analytics report_

### Exposure and mitigations: Review list of mitigations and the status of your devices

In the **Exposure & mitigations** section, review the list of specific actionable recommendations that can help you increase your organizational resilience against the threat. The list of tracked mitigations includes:

- **Security updates**—deployment of supported software security updates for vulnerabilities found on onboarded devices
- **Supported security configurations**
  - Cloud-delivered protection  
  - Potentially unwanted application (PUA) protection
  - Real-time protection

Mitigation information in this section incorporates data from [Microsoft Defender Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt), which also provides detailed drill-down information from various links in the report.

:::image type="content" source="../../media/threat-analytics/ta_mitigations_mtp.png" alt-text="The mitigations section of a threat analytics report showing secure configuration details" lightbox="../../media/threat-analytics/ta_mitigations_mtp.png":::

:::image type="content" source="../../media/threat-analytics/ta_mitigations_mtp2.png" alt-text="The mitigations section of a threat analytics report showing vulnerability details" lightbox="../../media/threat-analytics/ta_mitigations_mtp2.png":::

_Exposure & mitigations section of a threat analytics report_

## Set up email notifications for report updates

You can set up email notifications that will send you updates on threat analytics reports.

To set up email notifications for threat analytics reports, perform the following steps:

1. Select **Settings** in the Microsoft 365 Defender sidebar. Select **Microsoft 365 Defender** from the list of settings.
 
![Screenshot with "Settings" and "Microsoft 365 Defender" both highlighted in red](../../media/threat-analytics/ta_create_notification_0.png)

2. Choose **Email notifications** > **Threat analytics**, and select the button, **+ Create a notification rule**. A flyout will appear.

![Screenshot with "+ Create a notification rule" highlighted in red](../../media/threat-analytics/ta_create_notification_1.png)

3. Follow the steps listed in the flyout. First, give your new rule a name. The description field is optional, but a name is required. You can toggle the rule on or off using the checkbox under the description field.

> [!NOTE]
> The name and description fields for a new notification rule only accept English letters and numbers. They don't accept spaces, dashes, underscores, or any other punctuation.

![Screenshot of the naming screen, with all fields filled out and the "Turn rule on" checkbox checked](../../media/threat-analytics/ta_create_notification_2.png)

4. Choose which kind of reports you want to be notified about. You can choose between being updated about all newly published or updated reports, or only those reports which have a certain tag or type.

![Screenshot of the notification screen, with Ransomware tags selected and a drop down menu for types open](../../media/threat-analytics/ta_create_notification_3.png)

5. Add at least one recipient to receive the notification emails. You can also use this screen to check how the notifications will be received, by sending a test email.

![Screenshot of the recipients screen. There are 3 recipients listed, and a test email has been sent, as indicated by a green checkmark](../../media/threat-analytics/ta_create_notification_4.png)

6. Review your new rule. If there is anything you would like to change, select the **Edit** button at the end of each subsection. Once your review is complete, select the **Create rule** button.

![Screenshot of the review screen. An edit button is highlighted in red](../../media/threat-analytics/ta_create_notification_5.png)

7. Congratulations! Your new rule has been successfully created. Select the **Done** button to complete the process and close the flyout.

![Screenshot of the rule created screen. A successfully created rule will display green checkmarks along the sidebar, and a big green check in the main area of the screen](../../media/threat-analytics/ta_create_notification_6.png)

8. Your new rule will now appear in the list of Threat analytics email notifications.

![Screenshot of the list of email notification rules within the Settings screen](../../media/threat-analytics/ta_create_notification_7.png)

## Additional report details and limitations

> [!NOTE]
> As part of the unified security experience, threat analytics is now available not just for Microsoft Defender for Endpoint, but also for Microsoft Defender for Office 365 license holders.
>
> If you are not using the Microsoft 365 security portal (Microsoft 365 Defender), you can also see the report details (without the Microsoft Defender for Office data) in the Microsoft Defender Security Center portal (Microsoft Defender for Endpoint).

To access threat analytics reports, you need certain roles and permissions. See [Custom roles in role-based access control for Microsoft 365 Defender](custom-roles.md) for details.

- To view alerts, incidents, or impacted assets data, you need to have permissions to Microsoft Defender for Office or Microsoft Defender for Endpoint alerts data, or both.
- To view prevented email attempts, you need to have permissions to Microsoft Defender for Office hunting data.
- To view mitigations, you need to have permissions to Defender Vulnerability Management data in Microsoft Defender for Endpoint.

When looking at the threat analytics data, remember the following factors:

- Charts reflect only mitigations that are tracked. Check the report overview for additional mitigations that aren't shown in the charts.
- Mitigations don't guarantee complete resilience. The provided mitigations reflect the best possible actions needed to improve resiliency.
- Devices are counted as "unavailable" if they haven't transmitted data to the service.
- Antivirus-related statistics are based on Microsoft Defender Antivirus settings. Devices with third-party antivirus solutions can appear as "exposed".

## Related articles

- [Proactively find threats with advanced hunting](advanced-hunting-overview.md)
- [Understand the analyst report section](threat-analytics-analyst-reports.md)
- [Assess and resolve security weaknesses and exposures](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
