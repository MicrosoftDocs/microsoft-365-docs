---
title: "Microsoft 365 internal logging for Microsoft 365 engineering"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, find an explanation of how internal logging for Microsoft 365 Engineering teams works.
ms.custom: seo-marvel-apr2020
---

# Internal logging for Microsoft 365 engineering

In addition to the events and log data available for customers, there is also an internal log data collection system that is available to Microsoft 365 engineers at Microsoft. Many different types of log data are uploaded from Microsoft 365 servers to an internal, big data computing service called Cosmos. Each service team uploads audit logs from their respective servers into the Cosmos database for aggregation and analysis. This data transfer occurs over a FIPS 140-2-validated TLS connection on specifically approved ports and protocols using a proprietary automation tool called the Office Data Loader (ODL). The tools used in Microsoft 365 to collect and process audit records do not allow permanent or irreversible changes to the original audit record content or time ordering.

Service teams use Cosmos as a centralized repository to conduct an analysis of application usage, to measure system and operational performance, and to look for abnormalities and patterns that may indicate problems or security issues. Each service team uploads a baseline of logs into Cosmos, depending on what they are looking to analyze, that often include:

- Event logs
- AppLocker logs
- Performance data
- System Center data
- Call detail records
- Quality of experience data
- IIS Web Server logs
- SQL Server logs
- Syslog data
- Security audit logs

Prior to uploading data into Cosmos, the ODL application uses a scrubbing service to obfuscate any fields that contain customer data, such as tenant information and end-user identifiable information, and replace those fields with a hash value. The anonymized and hashed logs are rewritten and then uploaded into Cosmos. Service teams run scoped queries against their data in Cosmos for correlation, alerting, and reporting. The period of audit log data retention in Cosmos is determined by the service teams; most audit log data is retained for 90 days or longer to support security incident investigations and to meet regulatory retention requirements.

Access to Microsoft 365 data stored in Cosmos is restricted to authorized personnel. Microsoft restricts the management of audit functionality to the limited subset of service team members that are responsible for audit functionality. These team members do not have the ability to modify or delete data from Cosmos, and all changes to logging mechanisms for Cosmos are recorded and audited.

Each service team accesses its log data for analysis by authorizing certain applications to conduct specific analysis. For example, the Microsoft 365 Security team uses data from Cosmos through a proprietary event log parser to correlate, alert, and generate actionable reports on possible suspicious activity in the Microsoft 365 production environment. The reports from this data are used to correct vulnerabilities, and to improve the overall performance of the service. If a specific alert or report requires further investigation, service personnel can request that data be imported back into the Microsoft 365 service. Since the specific log being imported from Cosmos is in encrypted and service personnel do not have access to decryption keys, the target log is programmatically passed through a decryption service that returns scoped results to the authorized service personnel. Any vulnerabilities found from this exercise are reported and escalated using Microsoft's standard security incident management channels.
