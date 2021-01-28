---
title: Microsoft Defender for Office 365 in the Microsoft 365 security center
description: Learn about changes from the Office 365 Security and Compliance center to the Microsoft 365 security center.
keywords: Microsoft 365 security, Getting started with the Microsoft 365 security center, OATP, MDATP, MDO, MDE, single pane of glass, new security portal, new defender security portal
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: Admin
ms.topic: overview
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.prod: m365-security
ms.technology: m365d
---

# Microsoft Defender for Office 365 in the Microsoft 365 security center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

[!INCLUDE [Prerelease](../includes/prerelease.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft Defender for Office 365](https://go.microsoft.com/fwlink/?linkid=2148715)

The improved [Microsoft 365 security center](https://docs.microsoft.com/microsoft-365/security/mtp/overview-security-center) at [https://security.microsoft.com](https://security.microsoft.com) combines security capabilities from existing Microsoft security portals, including Microsoft Defender Security Center and the Office 365 Security & Compliance Center. This improved center helps security teams protect their organization from threats more effectively and efficiently.

If you are familiar with the Office 365 Security and Compliance portal (protection.office.com), this article describes some of the changes and improvements in the Microsoft 365 security center.

Learn more about the benefits: [Overview of the Microsoft 365 security center](overview-security-center.md)

If you are looking for compliance-related items, visit the [Microsoft 365 compliance center](https://compliance.microsoft.com/homepage).

## What's changed

This table is a quick reference of Email & Collaboration areas where change has occurred between the **Security & Compliance center** and the **Microsoft 365 Security** portal. Click the links to read more about these areas.

|**Area**  |**Description of change**  |
|---------|---------|
[Explorer](/microsoft-365/security/office-365-security/threat-explorer) | Threat Explorer helps security teams review and assess the latest email-based threats to their organization. |
[Attack Simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-insights)   | Use Attack Simulation training to run realistic attack scenarios in your organization. These simulated attacks can help train your workforce before a real attack impacts your organization. Attack simulation training includes, more options, enhanced reports, and improved training flows help make your attack simulation and training scenarios easier to deliver and manage.  |
|[Investigation](/microsoft-365/security/office-365-security/office-365-air#changes-are-coming-soon-in-your-security-center) | Brings together AIR capabilities in [Defender for Office 365](/microsoft-365/security/office-365-security/office-365-atp) and [Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations). With these updates and improvements, your security operations team will be able to view details about automated investigations and remediation actions across your email, collaboration content, user accounts, and devices, all in one place.  | 

No changes to these areas:
- [Policies & Rules](/microsoft-365/compliance/alert-policies)
- [Campaign](/microsoft-365/security/office-365-security/campaigns)
- [Submissions](/microsoft-365/security/office-365-security/admin-submission)
- [Review](/microsoft-365/security/mtp-action-center)
- [Threat Tracker](/microsoft-365/security/office-365-security/threat-trackers)

Also, check the **Related Information** section at the bottom of this article.

> [!IMPORTANT]
> The Microsoft 365 Security portal (https://security.microsoft.com) combines security features in https://securitycenter.windows.com, and https://protection.office.com. However, what you see will depend on your subscription. If you only have Microsoft Defender for Office 365 Plan 1 or 2, as standalone subscriptions, for example, you won't see capabilities around Security for Endpoints and Defender for Office Plan 1 customers won't see items such as Threat Analytics.

## Microsoft 365 security center Home page

The Home page of the portal surfaces:

- Secure Score ratings
- the number of users and devices at risk
- active incident lists
- lists of privileged OAuth apps
- device health data
- tweets from Microsoft’s security intelligence twitter feed
- and more summary information

Using the **Guided tour** you can take a quick tour of Endpoint or Email & collaboration pages. Note that what you see here will depend on if you have license for Defender for Office 365 and/or Defender for Endpoint.  

Also included is a link to the **Office 365 Security and Compliance center** for comparison. The last link is to the **What's New** page that describes recent updates.

## Improved navigation

The left navigation, or quick launch bar, will look familiar. However, there are some new and updated elements in this security center.

### Incidents & Alerts, and Actions
Brings together incident and alert management across your email, devices, and identities. You can also hunt for security threats using hunting queries. The new unified Alert queue helps pull together alerts from different sources, giving you one place to review all alerts. 

![The Alerts and Actions quick launch on the left of the Microsoft 365 security center screen with menu options.](../../media/m3d-nav1.png)

### Threat Analytics
Threat Analytics provides a summary of the latest threats that could be affecting your organization. With this information, security teams can learn the specifics about each individual threat in the Threat Analytics reports as well as see how these threats might be impacting your organization. New in the Microsoft 365 security center is a combined view of threats that include signals from both Defender for Endpoint as well as Defender for Office 365.

[Learn more about Threat Analytics](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/threat-analytics)

### Email & collaboration

Track and investigate threats to your users' email, track campaigns, and more. If you've used the Office 365 Security and Compliance center, this will familiar.

:::image type="content" source="../../media/converge-3-email-and-collab-new.png" alt-text="The quick launch menu for Email & Collab (or MSDO), on the left side of the Microsoft 365 security center.":::

### Access and Reports

View reports, change your settings, and modify user roles.

:::image type="content" source="../../media/converge-4-access-and-reporting-new.png" alt-text="The quick launch menu for Microsoft 365 security center permissions and reporting, on the left side of the security center.":::


> [!NOTE]
> For Defender for Office 365 users, you can now *manage and rotate* DomainKeys Identified Mail (DKIM) keys through the Microsoft 365 security center: https://security.microsoft.com/threatpolicy, or navigate to **Policy & rules > Threat policies > DKIM**.

## Advanced Hunting example for Microsoft Defender for Office 365
Want to get started searching for email threats using advanced hunting? Try this:

The [Getting Started](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#getting-started) section of the [Microsoft Defender for Office 365 article](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) has logical early configuration chunks that look like this:

1. Configure everything with 'anti' in the name.
- anti-malware
- anti-phishing
- anti-spam
2. Set up everything with 'safe' in the name.
- safe links
- safe attachments
3. Defend the workloads (ex. SharePoint Online, OneDrive, and Teams)
4. Protect with Zero-Hour auto purge

Along with a [link](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats&preserve-view=true) to jump right in and get configuration going on Day 1.

The last step in **Getting Started** is protecting users with **Zero-Hour auto purge**, also known as ZAP. Knowing if your efforts to ZAP a suspicious or malicious mail, post-delivery, were successful can be very important.

Quickly navigating to Kusto query language to hunt for issues is an advantage of converging these two security centers. Security teams can monitor ZAP misses by taking their next steps [here](https://security.microsoft.com/advanced-hunting), under **Hunting** > **Advanced Hunting**.

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

:::image type="content" source="../../media/converge-13-advanced-hunt-an-email-zap-new.png" alt-text="The Advanced hunting page (under Hunting)with Query selected at the top of the query panel, and running a Kusto query to capture ZAP actions over the last 7 days.":::

The data from this query will appear in the results panel below the query itself. Results include information like 'DeviceName', 'AccountDisplayName', and 'ZapTime' in a customizable result set. Results can also be exported for your records. If the query is one you'll need again, select **Save** > **Save As** and add the query to your list of queries, shared, or community queries.

## Related information
- [Microsoft 365 security center](overview-security-center.md)
- [Microsoft Defender for Office 365 in the Microsoft 365 security center](microsoft-365-security-center-mdo.md)
- [The Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center)
- [Email & collaboration alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#default-alert-policies)
- [Hunt for threats across devices, emails, apps, and identities](https://docs.microsoft.com/microsoft-365/security/mtp/advanced-hunting-query-emails-devices)
- [Custom detection rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/custom-detection-rules)
- [Create a phishing attack simulation](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training) and [create a payload for training your people](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-payloads)
