---
title: Getting Started with the 'Microsoft 365 Security' center, OATP, MDATP, MSDO, MSDE, single pane of glass, converged portal, new security portal, new O365 security portal
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

# Getting started with the Microsoft 365 Security center for security admins and operations teams

The new [Microsoft 365 security](https://security.microsoft.com) center combines security capabilities that protect, detect, investigate, and respond to email, collaboration, *and* device threats. This security center brings together features in Microsoft Defender for Endpoint (MSDE), with Microsoft Defender for Office 365 (MSDO) features.

Use this URL to access the new security center: https://security.microsoft.com

This table is a quick reference of MSDO areas where change has occurred between the Security & Compliance center and the Microsoft 365 Security portal. Click the links to navigate to topics.
This table is a quick reference of Email & Collaboration areas where change has occurred between the Security & Compliance center and the Microsoft 365 Security portal. Click the links to navigate to topics.
<p>

|**Changed**  |**Unchanged**  |
|---------|---------|
|Dashboard     |  [Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer?view=o365-worldwide)       |
|[Attack Simulator ](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-insights?view=o365-worldwide)   |  [Policies & Rules](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?view=o365-worldwide)       |
|Investigation    |    [Campaign](https://docs.microsoft.com/microsoft-365/security/office-365-security/campaigns?view=o365-worldwide)     |
|     |    [Submissions](https://docs.microsoft.com/microsoft-365/security/office-365-security/admin-submission?view=o365-worldwide)     |
|     |    [Review](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center?view=o365-worldwide)     |
|     |    [Threat Tracker](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-trackers?view=o365-worldwide)    |
|     |          |

Also, check the 'Related Information' section at the bottom of this article for anything instructive that wouldn't fit here.

## Advanced Hunting example for MSDO Security Operations Teams

The *[Getting Started](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp?view=o365-worldwide#getting-started)* section of the [Microsoft Defender for Office 365 article](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp?view=o365-worldwide) has logical early configuration chunks that look like this:

- Configure everything with 'anti' in the name.
    - anti-malware
    - anti-phishing
    - anti-spam
- Set up everything with 'safe' in the name.
    - safe links
    - safe attachments
- Defend the workloads (ex. SharePoint Online, OneDrive, and Teams)
- Protect with Zero-Hour auto purge

Along with a [link](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide&preserve-view=true) to jump right in and get configuration going on Day 1.

The last step in 'Getting Started' is protecting users with **Zero-Hour auto purge**, also known as ZAP. Knowing if your efforts to ZAP a suspicious or malicious mail, post-delivery, were successful can be very important.

Quickly navigating to Kusto query language to hunt for issues is an advantage of converging these two security centers. MSDO security operations teams can monitor ZAP misses by taking their next steps [here](https://security.microsoft.com/advanced-hunting), under **Hunting** > **Advanced Hunting**.

1. On the Advanced Hunting page, click Query.
1. Copy the query below into the query window.
1. Select Run query.


```kusto
EmailPostDeliveryEvents 
| where Timestamp > ago(7d)
//List malicious emails that were not zapped successfully
| where ActionType has "ZAP" and ActionResult == "Error"
| project ZapTime = Timestamp, ActionType, NetworkMessageId , RecipientEmailAddress 
//Get logon activity of recipients using RecipientEmailAddress and AccountUpn
| join kind=inner IdentityLogonEvents on $left.RecipientEmailAddress == $right.AccountUpn
| where Timestamp between ((ZapTime-24h) .. (ZapTime+24h))
//Show only pertinent info, such as account name, the app or service, protocol, the target device, and type of logon
| project ZapTime, ActionType, NetworkMessageId , RecipientEmailAddress, AccountUpn, 
LogonTime = Timestamp, AccountDisplayName, Application, Protocol, DeviceName, LogonType
```

:::image type="content" source="../../media/Converge 13 Advanced Hunt an Email ZAP.PNG" alt-text="Under Hunting > Advanced Hunting, click Query, and then enter the Kusto query below.":::

The data from this query will appear in the results panel below the query itself. Results include information like 'DeviceName', 'AccountDisplayName', and 'ZapTime' in a customizable result set. Results can also be exported for your records. If the query is one you'll need again, select **Save** > **Save As** and add the query to your list of queries, shared, or community queries.

## Navigation and the Guided Tour

The left navigation, or quick launch bar, will look familiar, but there are some new or updated elements in this security center.
<p>

|Alerts & Actions  |Endpoints  |Email & Collaboration  |Access & Reporting  |
|---------|---------|---------|---------|
|:::image type="content" source="../../media/Converge 1 AlertsAndActions.png" alt-text="The Alerts and Actions quick launch bar.":::     |     :::image type="content" source="../../media/Converge 2 Endpoints.png" alt-text="The Endpoints quicklaunch bar.":::    | :::image type="content" source="../../media/Converge 3 Email and Collab.png" alt-text="The Emails and Collaboration quicklaunch bar.":::        |    :::image type="content" source="../../media/Converge 4 Access and reporting.png" alt-text="The Access and Reporting quicklaunch bar.":::    |

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

## Related information

[The Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center?view=o365-worldwide)

[Email & collaboration alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?view=o365-worldwide#default-alert-policies)

[Hunt for threats across devices, emails, apps, and identities](https://docs.microsoft.com/microsoft-365/security/mtp/advanced-hunting-query-emails-devices?view=o365-worldwide)

[Custom detection rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/custom-detection-rules)

**Attack Simulator** [Create a phishing attack simulation](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide) and [create a payload for training your people](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-payloads?view=o365-worldwide)