---
title: Getting Started with the 'Microsoft 365 Security' dashboard, OATP, MDATP, MSDO, MSDE, single pane of glass, converged portal, new security portal, new O365 security portal
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 12/07/2020
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
description: "Advantages in the newly merged Microsoft 365 Security center, combining Microsoft Defender for Office 365 (MDO) and Microsoft Defender for Endpoint (MDE). This article outlines Microsoft 365 Security center advances for administrators."
---

# Microsoft 365 Security center advantages

The new portal is the result of customer feedback over time. This security center emphasizes quick access to information, simpler layouts, and clarity across a single security center. The new design fortifies Office 365, by combining and streamlining *Office 365* security work, and *device security work*.

The Microsoft 365 Security center creates a big picture in one place and adds features where it's logical.

> [!NOTE]
> In one new addition, you now *manage and rotate* DomainKeys Identified Mail (DKIM) keys through the Microsoft 365 Security center. It's on this page https://security.microsoft.com/threatpolicy, or navigate to **Policy & rules > Threat policies > DKIM**.

The new [Microsoft 365 Security portal](https://security.microsoft.com/) combines:

1. **Microsoft Defender for Office 365 (or MDO)**
2. **Microsoft Defender for Endpoint (or MDE)**

in one easy to navigate location. This means security for your Office 365 or Microsoft 365 subscription, and for the devices that connect to it, are done from a single portal.

If you want more information on the security center convergence see [Getting started with the Microsoft 365 Security](https://docs.microsoft.com/microsoft-365/security/office-365-security/microsoft-365-security-center-getting-started.md).

## What to expect

The Microsoft security center emphasizes *unity, clarity, and common goals*. Some of the priorities used to merge Microsoft Defender for Office 365 and Microsoft Defender for Endpoint include emphasizing:

- **Common building blocks**
- **Common terminology**
- **Common entities**
- **Parity**

without sacrificing the capabilities that each security suite brought to the combination.

> [!NOTE]
> If you leverage Office 365 Cloud App Security, you can use its additional features for discovering **Shadow IT apps**, **controlling app permissions to Office 365**, and *more*, all accessible through **Policies & rules > Manage advanced alerts**. <p> **Microsoft 365 security center** now shows analysis from Office 365 Cloud App Security in the new **Incidents & Alerts** section. Because this info is *included* in the converged analysis, it creates a more complete narrative for admins and operations teams. <p>:::image type="content" source="../../media/1. Converged 1.png" alt-text="Office 365 Cloud App Security page in the Microsoft 365 security center.":::

## Efficiency gains

Streamlining security centers also creates a single pane for investigating any incidents taking place in Office 365. A primary example is the **Incidents** node on the quick launch of the Microsoft security center.

:::image type="content" source="../../media/1. Converged 2.png" alt-text="The Incidents node on the Microsoft 365 security center page has the subsections Incidents, Endpoint alerts, and Email & Collaboration alerts.":::

Double-clicking on an incident name listed here, for example, on a Severity *High* incident, brings you to a page that better demonstrates the advantage of converging centers.

:::image type="content" source="../../media/1. Converged 3.png" alt-text="I clicked 'multi-stage incident involving privilege escalation on multiple endpoints’, and see 16 impacted devices and 9 impacted users.":::

> [!TIP]
> The converged Users tab is a good place to begin your inquiries. This single page surfaces information for users from converged workloads (Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and MCAS, if you leverage it), and across a range of sources, such as on-premises AD, Azure AD, synced, local, and Third party users.

Incident information relates user / identity specifics and at-risk devices, side-by-side with effected mailboxes, as well as any Investigation information and gathered Evidence. This makes it easier for admins and ops teams to pivot from one high-risk alert, to its effected users and mailboxes, among other pivots that can now be done in this single place.

> [!IMPORTANT]
> Along the top of any page for a specific Incident, you'll see the **Summary**, **Alerts**, **Devices**, **Users**, **Mailboxes**, **Investigations**, and **Evidence** tabs. Selecting these will bring you to unified data about the incident. For example, our High severity incident would list information from 9 users, and 16 devices, on respective tabs. <p> Selecting **Investigations** will bring you to a page that features a graphic of the analysis taking place, for example, on a user mailbox, and list a status (such as 'pending approval') for remediation. Take time to select specific incidents in your environment, drill down into these tabs, and practice building a profile for different kinds of threats. Familiarity will benefit any later pressing investigations.

## Improved processes

The layout has also been merged wherever centers overlap, so that common controls and content either appear in the same place, or are condensed into one feed of data. That makes the data easier to find. A couple of examples of this combination are:

**Unified settings**

:::image type="content" source="../../media/1. Converged 4.png" alt-text="The Settings page covers everything in Microsoft Defender for Endpoints and for Microsoft Defender for Office 365. And, yeah, I can't abbreviate those. Sorry.":::

**Integrated permissions & roles**

:::image type="content" source="../../media/1. Converged 5.png" alt-text="The Permissions & Roles page showing Endpoints roles & groups, Roles, and Device groups.":::

 click on either of *Roles* or *Device groups* will drop admins deeper into Settings, in the **Permissions** section (but take a second to look at the other nodes here).

:::image type="content" source="../../media/1. Converged 6.png" alt-text="I clicked 'Roles' and drilled down into the Settings page, which includes General settings, Permissions, APIs and Rules, et cetera. My click brought me to Permissions > Roles. It shows all roles.":::

**Roles** will allow you to add / create new Roles for the Microsoft 365 Security center (in General). The wizard will remind you that user groups can be added to this Role in a later phase, using the Assigned user groups tab. **Device Groups** work the same way. On the same General flyout where you create the Device Group, you can click the User access tab to grant Azure AD user groups access to a device group.

:::image type="content" source="../../media/1. Converged 7.png" alt-text="The little graphic explains you add the Role via the General tab, and then add users / groups to it on the Assigned user groups tab. Nice.":::



### Related information

[The Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center?view=o365-worldwide)

[Email & collaboration alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?view=o365-worldwide#default-alert-policies)

[Hunt for threats across devices, emails, apps, and identities](https://docs.microsoft.com/microsoft-365/security/mtp/advanced-hunting-query-emails-devices?view=o365-worldwide)

[Custom detection rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/custom-detection-rules)

**Attack Simulator** [Create a phishing attack simulation](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide) and [create a payload for training your people](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-payloads?view=o365-worldwide)

