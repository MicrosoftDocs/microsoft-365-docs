---
title: Deploy services supported by Microsoft 365 Defender
description: Learn about the Microsoft security services that can be integrated by Microsoft 365 Defender, their licensing requirements, and deployment procedures
keywords: deploy, licenses, supported services, provisioning, configuration Microsoft 365 Defender, M365, license eligibility, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, MCAS, E5, A5, EMS
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-getstarted
  - highpri
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 02/16/2021
---

# Deploy supported services

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

[Microsoft 365 Defender](microsoft-365-defender.md) integrates various Microsoft security services to provide centralized detection, prevention, and investigation capabilities against sophisticated attacks. This article describes the supported services, their licensing requirements, the advantages and limitations associated with deploying one or more services, and links to how you can fully deploy them individually.

## Supported services

A Microsoft 365 E5, E5 Security, A5, or A5 Security license or a valid combination of licenses provides access to the following supported services and entitles you to use Microsoft 365 Defender. [See licensing requirements](prerequisites.md#licensing-requirements)

| Supported service | Description |
| ------ | ------ |
| Microsoft Defender for Endpoint | Endpoint protection suite built around powerful behavioral sensors, cloud analytics, and threat intelligence |
|Microsoft Defender for Office 365 | Advanced protection for your apps and data in Office 365, including email and other collaboration tools |
| Microsoft Defender for Identity | Defend against advanced threats, compromised identities, and malicious insiders using correlated Active Directory signals |
| Microsoft Defender for Cloud Apps | Identify and combat cyberthreats across your Microsoft and third-party cloud services |

## Deployed services and functionality

Microsoft 365 Defender provides better visibility, correlation, and remediation as you deploy more supported services.

### Benefits of full deployment

To get the complete benefits of Microsoft 365 Defender, we recommend deploying all supported services. Here are some of the key benefits of full deployment:

- Incidents are identified and correlated based on alerts and event signals from all available sensors and service-specific analysis capabilities
- Automated investigation and remediation (AIR) playbooks apply across various entity types, including devices, mailboxes, and user accounts
- A more comprehensive advanced hunting schema can be queried for event and entity data from devices, mailboxes, and other entities

### Limited deployment scenarios

Each supported service that you deploy provides an extremely rich set of raw signals as well as correlated information. While limited deployment doesn't cause Microsoft 365 Defender functionality to turn off, its ability to provide comprehensive visibility across your endpoints, apps, data, and identities is affected. At the same time, any remediation capabilities only apply to entities that can be managed by the services you've deployed.

The table below lists how each supported service provides additional data, opportunities to obtain additional insight by correlating the data, and better remediation and response capabilities.

| Service | Data (signals & correlated info) | Remediation & response scope |
| ------ | ------ | ------ |
| Microsoft Defender for Endpoint |<ul><li>Endpoint states and raw events</li><li>Endpoint detections and alerts, including antivirus, EDR, attack surface reduction</li><li>Info on files and other entities observed on endpoints</li></ul> | Endpoints |
|Microsoft Defender for Office 365 |<ul><li>Mail and mailbox states and raw events</li><li>Email, attachment, and link detections</li></ul> | <ul><li>Mailboxes</li><li>Microsoft 365 accounts</li></ul> |
| Microsoft Defender for Identity |<ul><li>Active Directory signals, including authentication events</li><li>Identity-related behavioral detections</li></ul> | Identities |
| Microsoft Defender for Cloud Apps |<ul><li>Detection of unsanctioned cloud apps and services (shadow IT)</li><li>Exposure of data to cloud apps</li><li>Threat activity associated with cloud apps</li></ul> | Cloud apps |

## Deploy the services

Deploying each service typically requires provisioning to your tenant and some initial configuration. See the following table to understand how each of these services is deployed.

| Service | Provisioning instructions | Initial configuration |
| ------ | ------ | ------ |
| Microsoft Defender for Endpoint | [Microsoft Defender for Endpoint deployment guide](../defender-endpoint/deployment-phases.md) | *See provisioning instructions* |
|Microsoft Defender for Office 365 | *None, provisioned with Office 365* | [Configure Microsoft Defender for Office 365 policies](/microsoft-365/security/office-365-security/defender-for-office-365#configure-atp-policies) |
| Microsoft Defender for Identity | [Quickstart: Create your Microsoft Defender for Identity instance](/azure-advanced-threat-protection/install-atp-step1) | *See provisioning instructions* |
| Microsoft Defender for Cloud Apps | *None* | [Quickstart: Get started with Microsoft Defender for Cloud Apps](/cloud-app-security/getting-started-with-cloud-app-security) |

Once you've deployed the supported services, [turn on Microsoft 365 Defender](m365d-enable.md).

## Related topics

- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [Turn on Microsoft 365 Defender](m365d-enable.md)
- [Setup guides for Microsoft 365 Defender](deploy-configure-m365-defender.md)
- [Microsoft Defender for Endpoint overview](../defender-endpoint/microsoft-defender-endpoint.md)
- [Microsoft Defender for Office 365 overview](../office-365-security/defender-for-office-365.md)
- [Microsoft Defender for Cloud Apps overview](/cloud-app-security/what-is-cloud-app-security)
- [Microsoft Defender for Identity overview](/azure-advanced-threat-protection/what-is-atp)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
