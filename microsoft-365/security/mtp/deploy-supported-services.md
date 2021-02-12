---
title: Deploy services supported by Microsoft 365 Defender
description: Learn about the Microsoft security services that can be integrated by Microsoft 365 Defender, their licensing requirements, and deployment procedures
keywords: deploy, licenses, supported services, provisioning, configuration Microsoft Threat Protection, M365, license eligibility, Microsoft Defender ATP, MDATP, Office 365 ATP, Azure ATP, Microsoft Cloud App Security, MCAS, advanced threat protection, E5, A5, EMS
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: lomayor
author: lomayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Deploy supported services

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

[Microsoft 365 Defender](microsoft-threat-protection.md) integrates various Microsoft security services to provide centralized detection, prevention, and investigation capabilities against sophisticated attacks. This article describes the supported services, their licensing requirements, the advantages and limitations associated with deploying one or more services, and links to how you can fully deploy them individually.

## Supported services
A Microsoft 365 E5, E5 Security, A5, or A5 Security license or a valid combination of licenses provides access to the following supported services and entitles you to use Microsoft 365 Defender in Microsoft 365 security center. [See licensing requirements](prerequisites.md#licensing-requirements)

| Supported service | Description |
| ------ | ------ |
| Microsoft Defender for Endpoint | Endpoint protection suite built around powerful behavioral sensors, cloud analytics, and threat intelligence |
|Microsoft Defender for Office 365 | Advanced protection for your apps and data in Office 365, including email and other collaboration tools |
| Microsoft Defender for Identity | Defend against advanced threats, compromised identities, and malicious insiders using correlated Active Directory signals |
| Microsoft Cloud App Security | Identify and combat cyberthreats across your Microsoft and third-party cloud services |

## Deployed services and functionality
Microsoft 365 Defender provides better visibility, correlation, and remediation as you deploy more supported services.

### Benefits of full deployment
To get the complete benefits of Microsoft 365 Defender, we recommend deploying all supported services. Here are some of the key benefits of full deployment:
- Incidents are identified and correlated based on alerts and event signals from all available sensors and service-specific analysis capabilities
- Automated investigation and remediation (AIR) playbooks apply across various entity types, including devices, mailboxes, and user accounts
- A more comprehensive advanced hunting schema can be queried for event and entity data from devices, mailboxes, and other entities

### Limited deployment scenarios
Each supported service that you deploy provides an extremely rich set of raw signals as well as correlated information. While limited deployment doesn’t cause Microsoft 365 Defender functionality to turn off, its ability to provide comprehensive visibility across your endpoints, apps, data, and identities is affected. At the same time, any remediation capabilities only apply to entities that can be managed by the services you’ve deployed.

The table below lists how each supported service provides additional data, opportunities to obtain additional insight by correlating the data, and better remediation and response capabilities.

| Service | Data (signals & correlated info) | Remediation & response scope |
| ------ | ------ | ------ |
| Microsoft Defender for Endpoint | - Endpoint states and raw events<br />- Endpoint detections and alerts, including antivirus, EDR, attack surface reduction<br />- Info on files and other entities observed on endpoints | Endpoints |
|Microsoft Defender for Office 365 | - Mail and mailbox states and raw events<br />- Email, attachment, and link detections | - Mailboxes<br />- Microsoft 365 accounts |
| Microsoft Defender for Identity | - Active Directory signals, including authentication events<br />- Identity-related behavioral detections | Identities |
| Microsoft Cloud App Security | - Detection of unsanctioned cloud apps and services (shadow IT)<br />- Exposure of data to cloud apps<br />- Threat activity associated with cloud apps | Cloud apps |

## Deploy the services
Deploying each service typically requires provisioning to your tenant and some initial configuration. See the following table to understand how each of these services are deployed.

| Service | Provisioning instructions | Initial configuration |
| ------ | ------ | ------ |
| Microsoft Defender for Endpoint | [Microsoft Defender for Endpoint deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases) | *See provisioning instructions* |
|Microsoft Defender for Office 365 | *None, provisioned with Office 365* | [Configure Microsoft Defender for Office 365 policies](https://docs.microsoft.com/microsoft-365/security/defender-365-security/office-365-atp#configure-atp-policies) |
| Microsoft Defender for Identity | [Quickstart: Create your Microsoft Defender for Identity instance](https://docs.microsoft.com/azure-advanced-threat-protection/install-atp-step1) | *See provisioning instructions* |
| Microsoft Cloud App Security | *None* | [Quickstart: Get started with Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/getting-started-with-cloud-app-security) |

Once you’ve deployed the supported services, [turn on Microsoft 365 Defender](mtp-enable.md).

## Related topics

- [Microsoft 365 Defender overview](microsoft-threat-protection.md)
- [Turn on Microsoft 365 Defender](mtp-enable.md)
- [Microsoft Defender for Endpoint overview](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)
- [Microsoft Defender for Office 365 overview](../defender-365-security/office-365-atp.md)
- [Microsoft Cloud App Security overview](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
- [Microsoft Defender for Identity overview](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp)
