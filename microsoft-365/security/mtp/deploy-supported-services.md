---
title: Deploy services supported by Microsoft Threat Protection
description: Learn about the Microsoft security services that can be integrated by Microsoft Threat Protection, their licensing requirements, and deployment procedures 
keywords: deploy, licenses, supported services, provisioning, configuration Microsoft Threat Protection, M365, license eligibility, Microsoft Defender ATP, MDATP, Office 365 ATP, Azure ATP, Microsoft Cloud App Security, MCAS, advanced threat protection, E5, A5, EMS
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Deploy supported services

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

[Microsoft Threat Protection](microsoft-threat-protection.md) integrates various Microsoft security services to provide centralized detection, prevention, and investigation capabilities against sophisticated attacks. This article describes the supported services, their licensing requirements, the advantages and limitations associated with deploying one or more services, and links to how you can fully deploy them individually.

## Supported services
A [Microsoft 365 E5, E5 Security, or A5 license or a valid combination of licenses](prerequisites.md#licensing-requirements) provides access to the following supported services and entitles you to use Microsoft Threat Protection in Microsoft 365 security center.

| Supported service | Description |
| ------ | ------ |
| Microsoft Defender ATP | Endpoint protection suite built around powerful behavioral sensors, cloud analytics, and threat intelligence |
| Office 365 ATP | Advanced protection for your apps and data in Office 365, including email and other collaboration tools |
| Azure ATP | Safeguard against advanced threats, compromised identities, and malicious insiders using correlated Active Directory signals |
| Microsoft Cloud App Security | Identifies and combats cyberthreats across your Microsoft and third-party cloud services |

## Deployed services and functionality
Microsoft Threat Protection provides better visibility, correlation, and remediation as you deploy more supported services.

### Benefits of full deployment
To get the complete benefits of Microsoft Threat Protection, we recommend deploying all supported services. Here are some of the key benefits of full deployment:
- Incidents are identified and correlated based on alerts and event signals from all available sensors and service-specific analysis capabilities
- Automated investigation and remediation (AIR) playbooks apply across various entity types, including devices, mailboxes, and user accounts
- A more comprehensive advanced hunting schema can be queried for event and entity data from devices, mailboxes, and other entities

### Limited deployment scenarios
Each supported service that you deploy provides an extremely rich set of raw signals as well as correlated information. While limited deployment doesn’t cause Microsoft Threat Protection functionality to turn off, its ability to provide comprehensive visibility across your endpoints, apps, data, and identities is affected. At the same time, any remediation capabilities only apply to entities that can be managed by the services you’ve deployed.

The table below lists how each supported service provides additional data, opportunities to obtain additional insight by correlating the data, and better remediation and response capabilities.

| Service | Data (signals & correlated info) | Remediation & response scope |
| ------ | ------ | ------ |
| Microsoft Defender ATP | - Endpoint states and raw events<br />- Endpoint detections and alerts, including antivirus, EDR, attack surface reduction<br />- Info on files and other entities observed on endpoints | Endpoints |
| Office 365 ATP | - Mail and mailbox states and raw events<br />- Email, attachment, and link detections | - Mailboxes<br />- Office 365 accounts |
| Azure ATP | - Active Directory signals, including authentication events<br />- Identity-related behavioral detections | Identities |
| Microsoft Cloud App Security | - Detection of unsanctioned cloud apps & services (shadow IT)<br />- Exposure of data to cloud apps<br />- Threat activity associated cloud apps | Cloud apps |

## Deploy the services
Deploying each service typically requires provisioning to your tenant and some initial configuration. See the following table to understand how each of these services are deployed.

| Service | Provisioning instructions | Initial configuration |
| ------ | ------ | ------ |
| Microsoft Defender ATP | [Validate licensing provisioning and complete set up for Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/licensing) | *See provisioning instructions* |
| Office 365 ATP | *None, provisioned with Office 365* | [Configure ATP policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#configure-atp-policies) |
| Azure ATP | [Quickstart: Create your Azure ATP instance](https://docs.microsoft.com/azure-advanced-threat-protection/install-atp-step1) | *See provisioning instructions* |
| Microsoft Cloud App Security | *None* | [Quickstart: Get started with Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/getting-started-with-cloud-app-security) |

Once you’ve deployed the supported services, [turn on Microsoft Threat Protection](mtp-enable.md).

## Related topics

- [Microsoft Threat Protection overview](microsoft-threat-protection.md)
- [Turn on Microsoft Threat Protection](mtp-enable.md)
- [Microsoft Defender ATP overview](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)
- [Office 365 ATP overview](../office-365-security/office-365-atp.md)
- [Microsoft Cloud App Security overview](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
- [Azure ATP overview](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp)
