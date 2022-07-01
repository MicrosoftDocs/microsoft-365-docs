---
title: Microsoft 365 Defender portal
description: The Microsoft 365 Defender portal combines protection, detection, investigation, and response to email, collaboration, identity, device, and app threats, in a central place.
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
ms.custom: 
  - admindeeplinkDEFENDER
  - intro-overview
ms.topic: conceptual
ms.technology: m365d
adobe-target: true
---

# Microsoft 365 Defender portal

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> combines protection, detection, investigation, and response to email*, collaboration, identity, device, and cloud app threats, in a central place. The Microsoft 365 Defender portal emphasizes quick access to information, simpler layouts, and bringing related information together for easier use. It includes:

- **[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)** Microsoft Defender for Office 365 helps organizations secure their enterprise with a set of prevention, detection, investigation and hunting features to protect email, and Office 365 resources.
- **[Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-advanced-threat-protection)** delivers preventative protection, post-breach detection, automated investigation, and response for devices in your organization.
- **[Microsoft Defender for Identity](/defender-for-identity/what-is.md)** is a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization.
- **[Microsoft Defender for Cloud Apps](/cloud-app-security/)** is a comprehensive cross-SaaS and PaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.

Watch this short video to learn about the Microsoft 365 Defender portal.  
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBKau]

## What to expect

The Microsoft 365 Defender portal helps security teams investigate and respond to attacks by bringing in signals from different workloads into a set of unified experiences for:

- Incidents & alerts
- Hunting
- Action center
- Threat analytics

Microsoft 365 Defender emphasizes *unity, clarity, and common goals*. 

> [!NOTE]
> The Microsoft 365 Defender portal is accessible without any need for customers to take migration steps or purchase a new license. For example, this new portal is accessible to administrators with an E3 subscription, just as it is to those with Microsoft Defender for Office 365 Plan 1 and Plan 2; however, Exchange Online Protection, or Defender for Office 365 Plan 1 customers see only the security features their subscription license supports. The goal of the portal is to centralize security.

## Unified investigations

Centralizing security information creates a single place for investigating security incidents across Microsoft 365. A primary example is **Incidents** under **Incidents & alerts** on the quick launch of Microsoft 365 Defender.

:::image type="content" source="../../media/converged-incidents-2.png.png" alt-text="The Incidents page in the Microsoft 365 Defender portal" lightbox="../../media/converged-incidents-2.png.png":::

Selecting an incident name displays a page that demonstrates the value of centralizing security information.

:::image type="content" source="../../media/converged-incident-info-3.png" alt-text="The Summary page for an incident in the Microsoft 365 Defender portal" lightbox="../../media/converged-incident-info-3.png":::

Along the top of an incident page, you'll see the **Summary**, **Alerts**, **Devices**, **Users**, **Mailboxes**, **Investigations**, **Evidence and response**, and **Graph**  tabs. Select these tabs for more detailed information. For example, the **Users** tab displays information for users from converged workloads (Microsoft Defender for Endpoint, Microsoft Defender for Identity, and Microsoft Defender for Cloud Apps) and a range of sources such as on-premises Active Directory Domain Services (AD DS), Azure AD, and third-party identity providers. For more information, see [investigate users](investigate-users.md).

Take the time to review the incidents in your environment, drill down into these tabs, and practice building an understanding of how to access the information provided for incidents for different kinds of threats.

For more information, see [incidents in Microsoft 365 Defender](incidents-overview.md).

## Improved processes

Common controls and content either appear in the same place, or are condensed into one feed of data making it easier to find. For example, unified settings.

### Unified settings

:::image type="content" source="../../media/converged-add-role-9.png" alt-text="The Settings page in the Microsoft 365 Defender portal" lightbox="../../media/converged-add-role-9.png":::

### Permissions & roles

:::image type="content" source="../../media/converged-roles-5.png" alt-text="The Endpoints roles & groups displayed on the Permissions & roles page" lightbox="../../media/converged-roles-5.png":::

Access to Microsoft 365 Defender is configured with Azure AD global roles or by using custom roles.

- Learn more about how to [manage access to Microsoft 365 Defender](m365d-permissions.md)
- Learn more about how to [create custom roles](custom-roles.md) in Microsoft 365 Defender


### Integrated reports

Reports are also unified in Microsoft 365 Defender. Admins can start with a general security report, and branch into specific reports about endpoints, email & collaboration. The links here are dynamically generated based upon workload configuration.

### Quickly view your Microsoft 365 environment

The **Home** page shows many of the common cards that security teams need. The composition of cards and data is dependent on the user role. Because Microsoft 365 Defender portal uses role-based access control, different roles will see cards that are more meaningful to their day to day jobs.

This at-a-glance information helps you keep up with the latest activities in your organization. Microsoft 365 Defender brings together signals from different sources to present a holistic view of your Microsoft 365 environment.

The cards fall into these categories:

- **Identities**- Monitor the identities in your organization and keep track of suspicious or risky behaviors. [Learn more about identity protection](/azure/active-directory/identity-protection/overview-identity-protection).
- **Data** - Help track user activity that could lead to unauthorized data disclosure.
- **Devices** - Get up-to-date information on alerts, breach activity, and other threats on your devices.
- **Apps** - Gain insight into how cloud apps are being used in your organization. [Learn more about discovered apps in Defender for Cloud Apps](/cloud-app-security/discovered-apps).


### Search across entities (Preview)

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

## Threat analytics with better data coverage

Track and respond to emerging threats with the following Microsoft 365 Defender threat analytics integrated experience:

- Better data coverage between Microsoft Defender for Endpoint and Microsoft Defender for Office 365, making combined incident management, automatic investigation, remediation, and proactive or reactive threat hunting across-domain possible.
- Email-related detections and mitigations from Microsoft Defender for Office 365, in addition to the endpoint data already available from Microsoft Defender for Endpoint.
- A view of threat-related incidents which aggregate alerts into end-to-end attack stories across Microsoft Defender for Endpoint and Microsoft Defender for Office 365 to reduce the work queue, as well as simplify and speed up your investigation.
- Attack attempts detected and blocked by Microsoft 365 Defender solutions. There's also data that you can use to drive preventive actions that mitigate the risk of further exposure and increase resilience.
- Enhanced design that puts actionable information in the spotlight to help you  quickly identify data to urgently focus on, investigate, and leverage from the reports.

## A centralized Learning Hub

<a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> includes a learning hub that provides guidance from resources such as the Microsoft security blog, the Microsoft security community on YouTube, and the official documentation.

> [!NOTE]
> There are helpful **filters** along the top of Microsoft 365 Defender learning hub that will let you choose between products (currently Microsoft 365 Defender, Microsoft Defender for Endpoint, and Microsoft Defender for Office 365). Notice that the number of learning resources for each section is listed, which can help learners keep track of how many resources they have at hand for training and learning.
>
> Along with the Product filter, current topics, types of resources (from videos to webinars), levels of familiarity or experience with security areas, security roles, and product features are listed.

> [!TIP]
> There are lots of other learning opportunities in [Microsoft Learn](/learn/). You'll find certification training such as [Course MS-500T02-A: Implementing Microsoft 365 Threat Protection](/learn/certifications/courses/ms-500t02).

## Send us your feedback

We need your feedback. We're always looking to improve, so if there's something you'd like to see, [watch this video to find out how you can trust us to read your feedback](https://www.microsoft.com/videoplayer/embed/RE4K5Ci).

## Explore what the Microsoft 365 Defender portal has to offer

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
