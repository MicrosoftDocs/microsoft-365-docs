---
title: Microsoft Defender for Endpoints in the Microsoft 365 security center
description: Learn about changes from the Microsoft Defender Security Center to the Microsoft 365 security center
keywords: Getting Started with the 'Microsoft 365 Security' center, OATP, MDATP, MSDO, MSDE, single pane of glass, converged portal, new security portal, new O365 security portal
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 11/03/2020
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
description: "Manage security for Office 365 and endpoint devices in the same place, the Microsoft 365 Security center. This article outlines what's new and where to find things."
---

# Microsoft Defender for Endpoints in the Microsoft 365 security center

The new [Microsoft 365 security center](https://security.microsoft.com) combines security capabilities that protect, detect, investigate, and respond to email, collaboration, *and* device threats. This security center brings together features in Microsoft Defender for Endpoint (MSDE), with Microsoft Defender for Office 365 (MSDO) features.

Use this URL to access the new security center: https://security.microsoft.com

## Navigation and the Guided Tour

The left navigation, or quick launch bar, will look familiar, but there are some new or updated elements in this security center.
<p>

|Alerts & Actions  |Endpoints  
|---------|---------
|:::image type="content" source="../../media/Converge 1 AlertsAndActions.png" alt-text="The Alerts and Actions quick launch bar.":::     |     :::image type="content" source="../../media/Converge 2 Endpoints.png" alt-text="The Endpoints quicklaunch bar.":::   

|Email & Collaboration  |Access & Reporting  |
|---------|---------|
 | :::image type="content" source="../../media/Converge 3 Email and Collab.png" alt-text="The Emails and Collaboration quicklaunch bar.":::        |    :::image type="content" source="../../media/Converge 4 Access and reporting.png" alt-text="The Access and Reporting quicklaunch bar.":::    |

> [!IMPORTANT]
> The Microsoft 365 Security portal (https://security.microsoft.com) **combines** security features in https://securitycenter.windows.com, and https://protection.office.com. However, what *you* see will depend on your subscription. If you have Microsoft Defender for Office 365 Plan 1 or 2, as standalone subscriptions, for example, you won't see capabilities around Security for Endpoints.

The home page of the new portal surfaces:

- Secure Score ratings
- the number of users and devices at risk
- active incident lists
- lists of privileged OAuth apps
- device health data
- tweets from Microsoft’s security intelligence twitter feed
- and more summary information

As soon as you arrive at this information page, you’ll also see a pop-up for security notifications if there are any.

:::image type="content" source="../../media/Converge 5 Microsoft 365 Security center.png" alt-text="This is the Microsoft Security center page with Home, Endpoints, Email and Collaboration, and miscellaneous areas.":::

The home page also welcomes you to the new Microsoft 365 security center experience with three headings **Intro**, **Next steps**, and **Give feedback**.

- The links under ‘Next steps’ will take you to the [Secure Score](https://security.microsoft.com/securescore?viewid=overview) page for deeper analysis of your security posture. Otherwise, clicking to [Proactively hunt](https://security.microsoft.com/advanced-hunting) for intrusions will take you directly to Hunting > Advanced Hunting.
- ‘Give feedback’ will allow you to both [join the Windows Insider program](https://insider.windows.com/) and preview coming changes, and the **leave feedback** on your experiences with the portal.

The ‘Welcome’ page will disappear after you navigate through the Next button to Close. Be sure to take note of any URLs you’d want for your records, or bookmark this page (since the URLs are listed above).

The ‘Guided Tour’ bar will remain on the page and has these useful features.  

:::image type="content" source="../../media/Converge 12 Home Page Guided Tour bar.gif" alt-text="An animation showing the Guided tour drop-down. Options are Tours of Endpoint and Email and Collaboration pages. Next is a link to the Office 365 Security and Compliance center for comparison. The last link is to the 'What's New' page curated by the Product Group for Office 365 Security.":::

## Changes

This table is a quick reference the areas where change has occurred between the Microsoft Defender Security Center and the Microsoft 365 security portal.
<p>

### Alerts and actions

|**New area**  |**Description of change**  |
|---------|---------|
| Incidents & alerts  | Previously separate sections, "Incidents" and "Alerts queue"  |
| Hunting  |  Now includes "Advanced hunting" and "Custom detection rules"   |
| Threat analytics |  It's on it's own, no longer under the "Dashboards" section.   |


### Endpoints

|**New area**  |**Description of change**  |
|---------|---------|
|Search   |  Instead of being in the heading, Microsoft Defender for Endpoint search bar is moving under the Endpoints section, where you can continue to search for devices, files, users, URLs, IPs, vulnerabilities, software, and recommendations.  |
|[Dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard)   |  This page will be the current “Security operations” dashboard. The threat analytics dashboard will be in the first navigation section, generally called alerts and actions.   |
|Device inventory | No changes |
|[Vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)    |    Name was shortened to fit in the navigation pane. It is the same as the threat and vulnerability management section, with all the pages underneath.     |
| Partners and APIs | No changes, except the & became "and" |
| Evaluations & tutorials    |     New testing and learning capabilities     |
| Configuration management   |  No changes  |

### Access and reporting

|**New area**  |**Description of change**  |
|---------|---------|
| Reports  | Previously separate sections, "Incidents" and "Alerts queue"  |
| Hunting  |  Now includes "Advanced hunting" and "Custom detection rules"   |
| Threat analytics |  It's on it's own, no longer under the "Dashboards" section.   |

## Related information

[The Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center?view=o365-worldwide)

[Email & collaboration alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?view=o365-worldwide#default-alert-policies)

[Hunt for threats across devices, emails, apps, and identities](https://docs.microsoft.com/microsoft-365/security/mtp/advanced-hunting-query-emails-devices?view=o365-worldwide)

[Custom detection rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/custom-detection-rules)

**Attack Simulator** [Create a phishing attack simulation](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide) and [create a payload for training your people](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-payloads?view=o365-worldwide)