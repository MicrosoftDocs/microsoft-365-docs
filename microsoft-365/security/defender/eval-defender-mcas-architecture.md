---
title: Review architecture requirements and the structure for Microsoft Defender for Cloud Apps
description: Microsoft Defender for Cloud Apps technical diagrams explain the architecture in Microsoft 365 Defender, which will help you build a pilot environment.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: bcarter
author: brendacarter
ms.date: 07/09/2021
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
---

# Review architecture requirements and key concepts for Microsoft Defender for Cloud Apps

**Applies to:**

- Microsoft 365 Defender

This article is [Step 1 of 3](eval-defender-mcas-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Cloud Apps alongside Microsoft 365 Defender. For more information about this process, see the [overview article](eval-defender-identity-overview.md).

Before enabling Microsoft Defender for Cloud Apps, be sure you understand the architecture and can meet the requirements.

## Understand the architecture

Microsoft Defender for Cloud Apps is a cloud access security broker (CASB). CASBs act a gatekeeper to broker access in real time between your enterprise users and cloud resources they use, wherever your users are located and regardless of the device they are using. Microsoft Defender for Cloud Apps natively integrates with Microsoft security capabilities, including Microsoft 365 Defender.

Without Defender for Cloud Apps, cloud apps that are used by your organization are unmanaged and unprotected, as illustrated.

:::image type="content" source="../../media/defender/m365-defender-mcas-architecture-a.png" alt-text="The architecture for Microsoft Defender for Cloud Apps" lightbox="../../media/defender/m365-defender-mcas-architecture-a.png":::

In the illustration:

- The use of cloud apps by an organization is unmonitored and unprotected.
- This use falls outside the protections achieved within a managed organization.

### Discovering cloud apps

The first step to managing the use of cloud apps is to discover which cloud apps are used by your organization. This next diagram illustrates how cloud discovery works with Defender for Cloud Apps.

:::image type="content" source="../../media/defender/m365-defender-mcas-architecture-b.png" alt-text="The architecture for Microsoft Defender for Cloud Apps in Cloud discovery" lightbox="../../media/defender/m365-defender-mcas-architecture-b.png":::

In this illustration, there are two methods that can be used to monitor network traffic and discover cloud apps that are being used by your organization.

- A. Cloud App Discovery integrates with Microsoft Defender for Endpoint natively. Defender for Endpoint reports cloud apps and services being accessed from IT-managed Windows 10 and Windows 11 devices.
- B. For coverage on all devices connected to a network, the Defender for Cloud Apps log collector is installed on firewalls and other proxies to collect data from endpoints. This data is sent to Defender for Cloud Apps for analysis.

### Managing cloud apps

After you discover cloud apps and analyze how these apps are used by your organization, you can begin managing cloud apps that you choose.

:::image type="content" source="../../media/defender/m365-defender-mcas-architecture-c.png" alt-text="The architecture for Microsoft Defender for Cloud Apps while the managing the Cloud apps" lightbox="../../media/defender/m365-defender-mcas-architecture-c.png":::

In this illustration:

- Some apps are sanctioned for use. This sanction is a simple way of beginning to manage apps.
- You can enable greater visibility and control by connecting apps with app connectors. App connectors use the APIs of app providers.

### Applying session controls to cloud apps

Microsoft Defender for Cloud Apps serves as a reverse proxy, providing proxy access to sanctioned cloud apps. This provision allows Defender for Cloud Apps to apply session controls that you configure.

:::image type="content" source="../../media/defender/m365-defender-mcas-architecture-d.png" alt-text="The architecture for Microsoft Defender for Cloud Apps - Proxy access session control" lightbox="../../media/defender/m365-defender-mcas-architecture-d.png":::

In this illustration:

- Access to sanctioned cloud apps from users and devices in your organization is routed through Defender for Cloud Apps.
- This proxy access allows session controls to be applied.
- Cloud apps that you have not sanctioned or explicitly unsanctioned are not affected.

Session controls allow you to apply parameters to how cloud apps are used by your organization. For example, if your organization is using Salesforce, you can configure a session policy that allows only managed devices to access your organization's data at Salesforce. A simpler example could be configuring a policy to monitor traffic from unmanaged devices so you can analyze the risk of this traffic before applying stricter policies.

### Integrating with Azure AD with Conditional Access App Control

You might already have SaaS apps added to your Azure AD tenant to enforce multi-factor authentication and other conditional access policies. Microsoft Defender for Cloud Apps natively integrates with Azure AD. All you have to do is configure a policy in Azure AD to use Conditional Access App Control in Defender for Cloud Apps. This routes network traffic for these managed SaaS apps through Defender for Cloud Apps as a proxy, which allows Defender for Cloud Apps to monitor this traffic and to apply session controls.

:::image type="content" source="../../media/defender/m365-defender-mcas-architecture-e.png" alt-text="The architecture for the Microsoft Defender for Cloud Apps - SaaS apps" lightbox="../../media/defender/m365-defender-mcas-architecture-e.png":::

In this illustration:

- SaaS apps are integrated with the Azure AD tenant. This integration allows Azure AD to enforce conditional access policies, including multi-factor authentication.
- A policy is added to Azure Active Directory to direct traffic for SaaS apps to Defender for Cloud Apps. The policy specifies which SaaS apps to apply this policy to. Therefore, after Azure AD enforces any conditional access policies that apply to these SaaS apps, Azure AD then directs (proxies) the session traffic through Defender for Cloud Apps.
- Defender for Cloud Apps monitors this traffic and applies any session control policies that have been configured by administrators.

You might have discovered and sanctioned cloud apps using Defender for Cloud Apps that have not been added to Azure AD. You can take advantage of Conditional Access App Control by adding these cloud apps to your Azure AD tenant and the scope of your conditional access rules.

### Protecting your organization from hackers

Defender for Cloud Apps provides powerful protection on its own. However, when combined with the other capabilities of Microsoft 365 Defender, Defender for Cloud Apps provides data into the shared signals which (together) helps stop attacks.

It's worth repeating this illustration from the overview to this Microsoft 365 Defender evaluation and pilot guide.

:::image type="content" source="../../media/defender/m365-defender-eval-threat-chain.png" alt-text="How Microsoft 365 Defender stops a chain of threats" lightbox="../../media/defender/m365-defender-eval-threat-chain.png":::

Focusing on the right side of this illustration, Microsoft Defender for Cloud Apps notices anomalous behavior like impossible-travel, credential access, and unusual download, file share, or mail forwarding activity and reports these behaviors to the security team. Therefore, Defender for Cloud Apps helps prevent lateral movement by hackers and exfiltration of sensitive data. Microsoft 356 Defender for Cloud correlates the signals from all the components to provide the full attack story.

## Understand key concepts

The following table identified key concepts that are important to understand when evaluating, configuring, and deploying Microsoft Defender for Cloud Apps.

|Concept  |Description |More information  |
|---------|---------|---------|
| Defender for Cloud Apps Dashboard | Presents an overview of the most important information about your organization and gives links to deeper investigation.        | [Working with the dashboard](/cloud-app-security/daily-activities-to-protect-your-cloud-environment)       |
| Conditional Access App Control    | Reverse proxy architecture that integrates with your Identity Provider (IdP) to give Azure AD conditional access policies and selectively enforce session controls.        |  [Protect apps with Microsoft Defender for Cloud Apps Conditional Access App Control](/cloud-app-security/proxy-intro-aad)       |
|  Cloud App Catalog   | The Cloud App Catalog gives you a full picture against Microsoft catalog of over 16,000 cloud apps that are ranked and scored based on more than 80 risk factors.    |  [Working with App risk scores](/cloud-app-security/risk-score)       |
| Cloud Discovery Dashboard    | Cloud Discovery analyzes your traffic logs and is designed to give more insight into how cloud apps are being used in your organization as well as give alerts and risk levels.     |  [Working with discovered apps](/cloud-app-security/discovered-apps)    |
|Connected Apps |Defender for Cloud Apps provides end-to-end protection for connected apps using Cloud-to-Cloud integration, API connectors, and real-time access and session controls using our Conditional App Access Controls. |[Protecting connected apps](/cloud-app-security/protect-connected-apps) |

## Review architecture requirements

### Discovering cloud apps

To discover cloud apps used in your environment, you can implement one or both of the following methods:

- Get up and running quickly with Cloud Discovery by integrating with Microsoft Defender for Endpoint. This native integration enables you to immediately start collecting data on cloud traffic across your Windows 11 and Windows 10 devices, on and off your network.
- To discover all cloud apps accessed by all devices connected to your network, deploy the Defender for Cloud Apps log collector on your firewalls and other proxies. This deployment helps collect data from your endpoints and sends it to Defender for Cloud Apps for analysis. Defender for Cloud Apps natively integrates with some third-party proxies for even more capabilities.

These options are included in [Step 2. Enable the evaluation environment](eval-defender-mcas-enable-eval.md).

### Applying Azure AD Conditional Access policies to cloud apps

Conditional Access App Control (the ability to apply Conditional Access policies to cloud apps) requires integration with Azure AD. This integration isn't a requirement for getting started with Defender for Cloud Apps. It is a step we encourage you to try out during the pilot phase—[Step 3. Pilot Microsoft Defender for Cloud Apps](eval-defender-mcas-pilot.md).

## SIEM integration

You can integrate Microsoft Defender for Cloud Apps with your generic SIEM server or with Microsoft Sentinel to enable centralized monitoring of alerts and activities from connected apps.

Additionally, Microsoft Sentinel includes a Microsoft Defender for Cloud Apps connector to provide deeper integration with Microsoft Sentinel. This arrangement enables you to not only gain visibility into your cloud apps but to also get sophisticated analytics to identify and combat cyberthreats and to control how your data travels.

- [Generic SIEM integration](/cloud-app-security/siem)
- [Stream alerts and Cloud Discovery logs from Defender for Cloud Apps into Microsoft Sentinel](/azure/sentinel/connect-cloud-app-security)

### Next steps

Step 2 of 3: [Enable the evaluation environment for Microsoft Defender for Cloud Apps](eval-defender-mcas-enable-eval.md)

Return to the overview for [Evaluate Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
