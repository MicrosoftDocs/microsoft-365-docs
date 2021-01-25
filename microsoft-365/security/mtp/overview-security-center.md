---
title: Overview - Microsoft 365 security center
description: Advantages in the new Microsoft 365 security center, combining Microsoft Defender for Office 365 (MDO) and Microsoft Defender for Endpoint (MDE), with elements of Microsoft Defender for Identity (MDI) and Microsoft Cloud App Security (MCAS). This article outlines Microsoft 365 security center advances for administrators.
keywords: security, malware, Microsoft 365, M365, security center, monitor, report, identities, data, devices, apps
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 01/12/2021
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
search.appverid: met150
ms.custom: seo-marvel-jun2020
ms.technology: m365d
---

# Microsoft 365 security center overview

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](https://aka.ms/mtp-trial-lab) or [run your pilot project in production](https://aka.ms/m365d-pilotplaybook).

The new Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com) integrates Microsoft 365 services and endpoints, so that devices, email, identities, and app security can be managed from a single location. This center emphasizes quick access to information, simpler layouts, and clarity across a single security center.

The Microsoft 365 security center combines these centers into one:

1. **Microsoft Defender for Office 365**
2. **Microsoft Defender for Endpoint**
3. **Microsoft 365 Defender**

If you need information about what's changed from the Office 365 Security & Compliance center or the Microsoft Defender Security Center, see:

- [Defender for Office 365 in the Microsoft 365 security center](microsoft-365-security-center-mdo.md)
- [Defender for Endpoint in the Microsoft 365 security center](microsoft-365-security-center-mde.md)

> [!NOTE]
> For Defender for Office 365 users, you can now *manage and rotate* DomainKeys Identified Mail (DKIM) keys through the Microsoft 365 security center: https://security.microsoft.com/threatpolicy, or navigate to **Policy & rules > Threat policies > DKIM**.

## What to expect

The Microsoft 365 security center emphasizes *unity, clarity, and common goals* as it merges Microsoft Defender for Office 365 and Microsoft Defender for Endpoint. The merge was based on the priorities listed below, and made without sacrificing the capabilities that each security suite brought to the combination:

- common building blocks
- common terminology
- common entities
- parity

### At-a-glance view of your Microsoft 365 environment
The **Home** page shows many of the common cards that security teams need. The composition of cards and data is dependent on the user role. Because the Microsoft 365 security center uses role-based access control, different roles will see cards that are more meaningful to their day to day jobs.  

This at-a-glance information helps you keep up with the latest activities in your organization. The Microsoft 365 security center brings together signals from different sources to present a holistic view of your Microsoft 365 environment.

The cards fall into these categories:

- **Identities**- Monitor the identities in your organization and keep track of suspicious or risky behaviors. [Learn more about identity protection](https://docs.microsoft.com/azure/active-directory/identity-protection/overview-identity-protection)
- **Data** - Help track user activity that could lead to unauthorized data disclosure.
- **Devices** - Get up-to-date information on alerts, breach activity, and other threats on your devices.
- **Apps** - Gain insight into how cloud apps are being used in your organization. [Learn more about Cloud App Security discovered apps](https://docs.microsoft.com/cloud-app-security/discovered-apps)

## Efficiency gains

Streamlining security centers creates a single pane for investigating any incidents taking place in Office 365. A primary example is the **Incidents** node on the quick launch of the Microsoft 365 security center.

:::image type="content" source="../../media/converged-incidents-2.png.png" alt-text="The Incidents page in MDO.":::

As an example, double-clicking on an incident name with **High** severity brings you to a page that demonstrates the advantage of converging centers.

![Multi-stage incident involving privilege escalation on multiple endpoints, showing see 16 impacted devices and 9 impacted users.](../../media/converged-incident-info-3.png)

> [!TIP]
> The converged **Users** tab is a good place to begin your inquiries. This single page surfaces information for users from converged workloads (Microsoft Defender for Endpoint, Microsoft Defender for Identity, and MCAS, if you leverage it) and a range of sources such as on-premises Active Directory, Azure Active Directory, synced, local, and third-party users.

Incident information shows user/identity specifics and at-risk devices, beside affected mailboxes. It also relates any **Investigation information** and gathered **Evidence**. This makes it easier for admins and security operation teams to pivot from one high-risk alert to the affected users and mailboxes. Looking at the **Incident** tabs at the top of this page, there are other key security pivots available from this single location.

> [!IMPORTANT]
> Along the top of any page for a specific Incident, you'll see the **Summary**, **Alerts**, **Devices**, **Users**, **Mailboxes**, **Investigations**, and **Evidence** tabs.

Selecting **Investigations** opens  a page that features a graphic of the analysis taking place and lists a status (such as **pending approval**) for remediation. Take time to select specific incidents in your environment, drill down into these tabs, and practice building a profile for different kinds of threats. Familiarity will benefit any later pressing investigations.

## Improved processes

The layout has been merged wherever centers overlap. Common controls and content either appear in the same place, or are condensed into one feed of data making it easier to find. For example, unified settings.

### Unified settings

![Settings page covers everything in Microsoft Defender for Endpoints and for Microsoft Defender for Office 365](../../media/converged-settings-4.png)

### Integrated permissions & roles

![Permissions & Roles page showing Endpoints roles & groups, Roles, and Device groups.](../../media/converged-roles-5.png)

 Selecting either of **Roles** or **Device groups** drops admins deeper into the **Permissions** section (but take a second to look at the other nodes here).

![clicked 'Roles' and opened the Settings page, which includes General settings, Permissions, APIs and Rules. Open Permissions and then Roles. Shows all roles](../../media/converged-add-role-9.png)

- **Roles** allow admins to create and bundle permissions, and then add user groups to them. Role creation is done on the General tab. Members of the security team can access parts of the center to do work, once they're added here. After creation, the Role wizard also reminds you that user groups can be added to this Role 'at a later phase' using the **Assigned user groups** tab.

- **Device Groups** work the same way. On the same **General** flyout where you create the Device Group, you can select the **User access** tab to grant Azure AD user groups access to a device group.

:::image type="content" source="../../media/converged-add-role-7a.png" alt-text="Add the Role via the General tab, and then add users / groups to it on the Assigned user groups tab.":::

### Integrated reports

Reports are also unified in the Microsoft 365 security center. Admins can start with a general security report, and branch into specific reports about endpoints, email & collaboration. The links here are dynamically generated based upon workload configuration.

## Office 365 Cloud App Security and other security integrations

As admins and operations teams work, they will find other points where features from different security centers have merged. It's important to explore the new portal to build familiarity and highlight any issues that can be reported through giving feedback on the home page. You can also quickly access self-help, and Microsoft for help, if assistance is called for. Just click the question mark (?).

 If you use **Office 365 Cloud App Security**, you can use its features for discovering Shadow IT apps, controlling app permissions to Office 365, and more by going to **Policies & rules > Manage advanced alerts**.

**Microsoft 365 security center** now shows analysis from Office 365 Cloud App Security in the new **Incidents & Alerts** section. Because this info is included in the converged analysis, it creates a more complete narrative for admins and operations teams.

![Office 365 Cloud App Security page in the Microsoft 365 security center](../../media/converged-advanced-alerts-1.png)

## Feedback
We need your feedback. We're always looking to improve, so if there's something you'd like to see, [send us your Microsoft 365 Defender feedback](https://www.microsoft.com/videoplayer/embed/RE4K5Ci).

## Explore what the security center has to offer

Keep exploring the features and capabilities in the Microsoft 365 security center:

- [The Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center)
- [Email & collaboration alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#default-alert-policies)
- [Hunt for threats across devices, emails, apps, and identities](https://docs.microsoft.com/microsoft-365/security/mtp/advanced-hunting-query-emails-devices)
- [Custom detection rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/custom-detection-rules)
- [Create a phishing attack simulation](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training) and [create a payload for training your teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulation-training-payloads)
- 
- ## Related information
- [Microsoft 365 security center](overview-security-center.md)
- [Microsoft Defender for Office 365 in the Microsoft 365 security center](microsoft-365-security-center-mdo.md)
- [Microsoft Defender for Endpoint in the Microsoft 365 security center](microsoft-365-security-center-mde.md)
- [Redirecting accounts from Microsoft Defender for Office 365 to the new Microsoft 365 security center](microsoft-365-security-mdo-redirection.md)
- [Redirecting accounts from Microsoft Defender for Endpoint to the new Microsoft 365 security center](microsoft-365-security-mde-redirection.md)
