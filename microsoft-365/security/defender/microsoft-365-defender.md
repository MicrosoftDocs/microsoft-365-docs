---
title: Microsoft 365 Defender
description: Microsoft 365 Defender is a coordinated threat protection solution designed to protect devices, identity, data and applications
keywords: introduction to MMicrosoft 365 Defender, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365initiative-m365-defender
  - m365solution-m365-defender
  - m365solution-scenario
  - m365solution-overview
ms.custom: 
  - admindeeplinkDEFENDER
  - intro-overview
ms.topic: conceptual
ms.technology: m365d
adobe-target: true
---

# Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender is a unified pre- and post-breach enterprise defense suite that natively coordinates detection, prevention, investigation, and response across endpoints, identities, email, and applications to provide integrated protection against sophisticated attacks.

With the integrated Microsoft 365 Defender solution, security professionals can stitch together the threat signals that each of these products receive and determine the full scope and impact of the threat; how it entered the environment, what it's affected, and how it's currently impacting the organization. Microsoft 365 Defender takes automatic action to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities.

<center><h2>Microsoft 365 Defender services</center></h2>
<table><tr><td><center><b><a href="/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint"><b>Microsoft Defender for Endpoint</b></center></a></td>
<td><center><b><a href="/microsoft-365/security/defender-vulnerability-management/defender-vulnerability-management"><b>Microsoft Defender Vulnerability Management</b></center></a></td>
<td><center><b><a href="/microsoft-365/security/office-365-security/overview"><b>Microsoft Defender for Office 365</b></center></a></td>
<td><center><b><a href="/defender-for-identity/"><b>Microsoft Defender for Identity</b></a></center></td>
<td><center><b><a href="/cloud-app-security/"><b>Microsoft Defender for Cloud Apps</b></a></center></td>
</tr>
</table>
<br>

## Microsoft 365 Defender interactive guide

In this interactive guide, you'll learn how to protect your organization with Microsoft 365 Defender. You'll see how Microsoft 365 Defender can help you detect security risks, investigate attacks to your organization, and prevent harmful activities automatically.

[Check out the interactive guide](https://aka.ms/M365Defender-InteractiveGuide)

## Microsoft 365 Defender protection

Microsoft 365 Defender services protect:

- **Endpoints with Defender for Endpoint** - Defender for Endpoint is a unified endpoint platform for preventative protection, post-breach detection, automated investigation, and response.
- **Assets with Defender Vulnerability Management** - Microsoft Defender Vulnerability Management delivers continuous asset visibility, intelligent risk-based assessments, and built-in remediation tools to help your security and IT teams prioritize and address critical vulnerabilities and misconfigurations across your organization.
- **Email and collaboration with Defender for Office 365** - Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools.
- **Identities with  Defender for Identity and Azure Active Directory (Azure AD) Identity Protection** - Defender for Identity uses your on-premises Active Directory Domain Services (AD DS) signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Azure AD Identity Protection automates the detection and remediation of identity-based risks in your cloud-based Azure AD.
- **Applications with Microsoft Defender for Cloud Apps** - Microsoft Defender for Cloud Apps is a comprehensive cross-SaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4Bzww]

Microsoft 365 Defender's unique cross-product layer augments the individual service components to:

- Help protect against attacks and coordinate defensive responses across the services through signal sharing and automated actions.
- Narrate the full story of the attack across product alerts, behaviors, and context for security teams by joining data on alerts, suspicious events and impacted assets to 'incidents'.
- Automate response to compromise by triggering self-healing for impacted assets through automated remediation.
- Enable security teams to perform detailed and effective threat hunting across endpoint and Office data.

Here's an example of how the Microsoft 365 Defender portal correlates all related alerts across products into a single incident.

:::image type="content" source="../../media/overview-incident.png" alt-text="The incident overview page" lightbox="../../media/overview-incident.png":::

Here's an example of the list of related alerts for an incident.

:::image type="content" source="../../media/incident-list.png" alt-text="The list of alerts for an incident" lightbox="../../media/incident-list.png":::

Here's an example of query-based hunting on top of email and endpoint raw data.

:::image type="content" source="../../media/advanced-hunting.png" alt-text=" The Advanced Hunting page with query details" lightbox="../../media/advanced-hunting.png":::

Microsoft 365 Defender cross-product features include:

- **Cross-product single pane of glass in the Microsoft 365 Defender portal** - A central view for all information on detections, impacted assets, automated actions taken, and related evidence in a single queue and a single pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. 
- **Combined incidents queue** - To help security professionals focus on what is critical by ensuring the full attack scope, impacted assets and automated remediation actions are grouped together and surfaced in a timely manner. 
- **Automatic response to threats** - Critical threat information is shared in real time between the Microsoft 365 Defender products to help stop the progression of an attack. 

   For example, if a malicious file is detected on an endpoint protected by Defender for Endpoint, it will instruct Defender for Office 365 to scan and remove the file from all e-mail messages. The file will be blocked on sight by the entire Microsoft 365 security suite.

- **Self-healing for compromised devices, user identities, and mailboxes** - Microsoft 365 Defender uses AI-powered automatic actions and playbooks to remediate impacted assets back to a secure state. Microsoft 365 Defender leverages automatic remediation capabilities of the suite products to ensure all impacted assets related to an incident are automatically remediated where possible.
- **Cross-product threat hunting** - Security teams can leverage their unique organizational knowledge to hunt for signs of compromise by creating their own custom queries over the raw data collected by the various protection products. Microsoft 365 Defender provides query-based access to 30 days of historic raw signals and alert data across endpoint and Defender for Office 365 data.

## Get started

Microsoft 365 Defender licensing requirements must be met before you can enable the service in the Microsoft 365 Defender portal at <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank"><https://security.microsoft.com></a> For more information, see:

- [Licensing requirements](prerequisites.md#licensing-requirements)
- [Turn on Microsoft 365 Defender](m365d-enable.md)

## The Microsoft 365 Defender portal

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> combines protection, detection, investigation, and response to *email*, *collaboration*, *identity*, *device*, and *app* threats, in a central place.

This single pane of glass brings together functionality from existing Microsoft security portals, like the Microsoft 365 Defender portal and the Office 365 Security & Compliance center. The Microsoft 365 Defender portal emphasizes quick access to information, simpler layouts, and bringing related information together for easier use. It includes:

- **[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)** Microsoft Defender for Office 365 helps organizations secure their enterprise with a set of prevention, detection, investigation and hunting features to protect email, and Office 365 resources.
- **[Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-advanced-threat-protection)** delivers preventative protection, post-breach detection, automated investigation, and response for devices in your organization.
- **[Microsoft 365 Defender](microsoft-365-defender.md)** is part of Microsoft's *Extended Detection and Response* (XDR) solution that leverages the Microsoft 365 security portfolio to automatically analyze threat data across domains, and build a picture of an attack on a single dashboard.
- **[Microsoft Defender for Cloud Apps](/cloud-app-security/)** is a comprehensive cross-SaaS and PaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.

If you need information about what's changed from the Office 365 Security & Compliance center or the Microsoft 365 Defender portal, see:

- [Defender for Office 365 in Microsoft 365 Defender](microsoft-365-security-center-mdo.md)
- [Defender for Endpoint in Microsoft 365 Defender](microsoft-365-security-center-mde.md)

> [!NOTE]
> The Microsoft 365 Defender portal uses and enforces existing roles-based access, and will move each security model into the unified portal. Each converged workload has its own roles-based access. The roles already in the products will be converged into the Microsoft 365 Defender portal automatically. However, Microsoft Defender for Cloud Apps will still handle its own roles and permissions.

Watch this short video to learn about the new unified portal in Microsoft 365 Defender.  
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBKau]

### What to expect

All the security content that you use in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077143" target="_blank">Office 365 Security & Compliance Center</a> and the Microsoft 365 security center can now be found in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.

The Microsoft 365 Defender portal helps security teams investigate and respond to attacks by bringing in signals from different workloads into a set of unified experiences for:

- Incidents & alerts
- Hunting
- Action center
- Threat analytics

Microsoft 365 Defender emphasizes *unity, clarity, and common goals* as it merges Microsoft Defender for Office 365 and Microsoft Defender for Endpoint. The merge was based on the priorities listed below, and made without sacrificing the capabilities that each security suite brought to the combination of:

- Common building blocks
- Common terminology
- Common entities
- Feature parity with other workloads

> [!NOTE]
> The Microsoft 365 Defender portal is accessible without any need for customers to take migration steps or purchase a new license. For example, this new portal is accessible to administrators with an E3 subscription, just as it is to those with Microsoft Defender for Office 365 Plan 1 and Plan 2; however, Exchange Online Protection, or Defender for Office 365 Plan 1 customers see only the security features their subscription license supports. The goal of the portal is to centralize security.

### Unified investigations

Centralizing security information creates a single place for investigating security incidents across Microsoft 365. A primary example is **Incidents** under **Incidents & alerts** on the quick launch of Microsoft 365 Defender.

:::image type="content" source="../../media/converged-incidents-2.png.png" alt-text="The Incidents page in the Microsoft 365 Defender portal" lightbox="../../media/converged-incidents-2.png.png":::

Selecting an incident name displays a page that demonstrates the value of centralizing security information.

:::image type="content" source="../../media/converged-incident-info-3.png" alt-text="The Summary page for an incident in the Microsoft 365 Defender portal" lightbox="../../media/converged-incident-info-3.png":::

Along the top of an incident page, you'll see the **Summary**, **Alerts**, **Devices**, **Users**, **Mailboxes**, **Investigations**, **Evidence and response**, and **Graph**  tabs. Select these tabs for more detailed information. For example, the **Users** tab displays information for users from converged workloads (Microsoft Defender for Endpoint, Microsoft Defender for Identity, and Microsoft Defender for Cloud Apps) and a range of sources such as on-premises Active Directory Domain Services (AD DS), Azure AD, and third-party identity providers. For more information, see [investigate users](investigate-users.md).

Take the time to review the incidents in your environment, drill down into these tabs, and practice building an understanding of how to access the information provided for incidents for different kinds of threats.

For more information, see [incidents in Microsoft 365 Defender](incidents-overview.md).

### Improved processes

Common controls and content either appear in the same place, or are condensed into one feed of data making it easier to find. For example, unified settings.

#### Unified settings

:::image type="content" source="../../media/converged-add-role-9.png" alt-text="The Settings page in the Microsoft 365 Defender portal" lightbox="../../media/converged-add-role-9.png":::

#### Permissions & roles

:::image type="content" source="../../media/converged-roles-5.png" alt-text="The Endpoints roles & groups displayed on the Permissions & roles page" lightbox="../../media/converged-roles-5.png":::

Access to Microsoft 365 Defender is configured with Azure AD global roles or by using custom roles. For Defender for Endpoint, see [Assign user access to the Microsoft 365 Defender portal](/microsoft-365/security/defender-endpoint/assign-portal-access). For Defender for Office 365, see [Permissions in the Microsoft Purview compliance portal and Microsoft 365 Defender](../office-365-security/permissions-microsoft-365-compliance-security.md).

- Learn more about how to [manage access to Microsoft 365 Defender](m365d-permissions.md)
- Learn more about how to [create custom roles](custom-roles.md) in Microsoft 365 Defender

> [!NOTE]
> Microsoft Defender for Endpoint in Microsoft 365 Defender supports [granting access to managed security service providers (MSSPs)](/windows/security/threat-protection/microsoft-defender-atp/grant-mssp-access) in the same that way access is [granted in the Microsoft 365 Defender portal](./mssp-access.md).

#### Integrated reports

Reports are also unified in Microsoft 365 Defender. Admins can start with a general security report, and branch into specific reports about endpoints, email & collaboration. The links here are dynamically generated based upon workload configuration.

#### Quickly view your Microsoft 365 environment

The **Home** page shows many of the common cards that security teams need. The composition of cards and data is dependent on the user role. Because Microsoft 365 Defender portal uses role-based access control, different roles will see cards that are more meaningful to their day to day jobs.

This at-a-glance information helps you keep up with the latest activities in your organization. Microsoft 365 Defender brings together signals from different sources to present a holistic view of your Microsoft 365 environment.

The cards fall into these categories:

- **Identities**- Monitor the identities in your organization and keep track of suspicious or risky behaviors. [Learn more about identity protection](/azure/active-directory/identity-protection/overview-identity-protection).
- **Data** - Help track user activity that could lead to unauthorized data disclosure.
- **Devices** - Get up-to-date information on alerts, breach activity, and other threats on your devices.
- **Apps** - Gain insight into how cloud apps are being used in your organization. [Learn more about discovered apps in Defender for Cloud Apps](/cloud-app-security/discovered-apps).


#### Search across entities (Preview)

>[!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.
The search bar is located at the top of the page. As you type, suggestions are provided so that it's easier to find entities. The enhanced search results page centralizes the results from all entities.

You can search across the following entities in Defender for Endpoint and Defender for Identity: 

- **Devices** - supported for both Defender for Endpoint and Defender for Identity. Supports use of search operators. 
- **Users** - supported for Defender for Endpoint, Defender for Identity, and Defender for Cloud Apps. 
- **Files, IPs, and URLs** - same capabilities as in Defender for Endpoint.

    >[!NOTE]
    >IP and URL searches are exact match and don't appear in the search results page – they lead directly to the entity page. 

- **TVM** -  same capabilities as in Defender for Endpoint (vulnerabilities, software, and recommendations). 

 





### Threat analytics with better data coverage

Track and respond to emerging threats with the following Microsoft 365 Defender threat analytics integrated experience:

- Better data coverage between Microsoft Defender for Endpoint and Microsoft Defender for Office 365, making combined incident management, automatic investigation, remediation, and proactive or reactive threat hunting across-domain possible.
- Email-related detections and mitigations from Microsoft Defender for Office 365, in addition to the endpoint data already available from Microsoft Defender for Endpoint.
- A view of threat-related incidents which aggregate alerts into end-to-end attack stories across Microsoft Defender for Endpoint and Microsoft Defender for Office 365 to reduce the work queue, as well as simplify and speed up your investigation.
- Attack attempts detected and blocked by Microsoft 365 Defender solutions. There's also data that you can use to drive preventive actions that mitigate the risk of further exposure and increase resilience.
- Enhanced design that puts actionable information in the spotlight to help you  quickly identify data to urgently focus on, investigate, and leverage from the reports.

### A centralized Learning Hub

<a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> includes a learning hub that bubbles up official guidance from resources such as the Microsoft security blog, the Microsoft security community on YouTube, and the official documentation at docs.microsoft.com.

Inside the learning hub, Email & Collaboration (Microsoft Defender for Office 365) guidance is side-by-side with Endpoint (Microsoft Defender for Endpoint) and Microsoft 365 Defender learning resources.

The learning hub opens with Learning paths organized around topics such as "How to Investigate Using Microsoft 365 Defender?" and "Microsoft Defender for Office 365 Best Practices". This section is currently curated by the security Product Group inside Microsoft. Each Learning path reflects a projected time it takes to get through the concepts. For example 'Steps to take when a Microsoft Defender for Office 365 user account is compromised' is projected to take 8 minutes, and is valuable learning on the fly.

After clicking through to the content, it may be useful to bookmark this site and organize bookmarks into a 'Security' or 'Critical' folder. To see all Learning paths, click the Show all link in the main panel.

> [!NOTE]
> There are helpful **filters** along the top of Microsoft 365 Defender learning hub that will let you choose between products (currently Microsoft 365 Defender, Microsoft Defender for Endpoint, and Microsoft Defender for Office 365). Notice that the number of learning resources for each section is listed, which can help learners keep track of how many resources they have at hand for training and learning.
>
> Along with the Product filter, current topics, types of resources (from videos to webinars), levels of familiarity or experience with security areas, security roles, and product features are listed.

> [!TIP]
> There are lots of other learning opportunities in [Microsoft Learn](/learn/). You'll find certification training such as [Course MS-500T02-A: Implementing Microsoft 365 Threat Protection](/learn/certifications/courses/ms-500t02).

### Send us your feedback

We need your feedback. We're always looking to improve, so if there's something you'd like to see, [watch this video to find out how you can trust us to read your feedback](https://www.microsoft.com/videoplayer/embed/RE4K5Ci).

You can also leave feedback from this article. In the 'Feedback' section at the end under 'Submit and view feedback for', the options are *This product*, or *This page*.

Use the **This product** button for *product* feedback:

1. Select *This product* at the bottom of the article.
    1. Right-click the button and 'Open in a new tab' if you want to keep reading these directions.
2. This will navigate to the **UserVoice forum**.
3. You have 2 options:
    1. Scroll down to the text box *How can we improve compliance or protect your users better in Office 365?* and paste in *Microsoft 365 Defender*. You can search the results for an idea like yours and up-vote it, or use the button for **Post a new idea**.
    1. If you feel certain this issue is already reported, and want to raise its profile with a vote (or votes), use the *Give Feedback* box on the right side of UserVoice. Search for *Microsoft 365 Defender*, **find the issue, and use the vote button** to raise its status.

Use *This page* for feedback on the article itself. Thanks for your feedback. Your voice helps us improve products.

### Explore what the Microsoft 365 Defender portal has to offer

Keep exploring the features and capabilities in Microsoft 365 Defender:

- [Manage incidents and alerts](manage-incidents.md)
- [Track and respond to emerging threats with threat analytics](threat-analytics.md)
- [The Action center](m365d-action-center.md)
- [Hunt for threats across devices, emails, apps, and identities](./advanced-hunting-query-emails-devices.md)
- [Custom detection rules](./custom-detection-rules.md)
- [Email & collaboration alerts](../../compliance/alert-policies.md#default-alert-policies)
- [Create a phishing attack simulation](../office-365-security/attack-simulation-training.md) and [create a payload for training your teams](/microsoft-365/security/office-365-security/attack-simulation-training-payloads)

## Training for security analysts

With this learning path from Microsoft Learn, you can understand Microsoft 365 Defender and how it can help identify, control, and remediate security threats.

|Training:|Detect and respond to cyber attacks with Microsoft 365 Defender|
|---|---|
|![Microsoft 365 Defender training icon.](../../media/microsoft-365-defender/m365-defender-secure-organization.svg)|Microsoft 365 Defender unifies threat signals across endpoints, identities, email, and applications to provide integrated protection against sophisticated cyber attacks. Microsoft 365 Defender is the central experience to investigate and respond to incidents and proactively search for ongoing malicious cyber security activities.<p> 1 hr 38 min - Learning Path - 5 Modules|

> [!div class="nextstepaction"]
> [Start >](/learn/paths/defender-detect-respond/)


## See also

- [What's new in Microsoft 365 Defender](whats-new.md)
- [Microsoft Defender for Office 365 in Microsoft 365 Defender](microsoft-365-security-center-mdo.md)
- [Microsoft Defender for Endpoint in Microsoft 365 Defender](microsoft-365-security-center-mde.md)
