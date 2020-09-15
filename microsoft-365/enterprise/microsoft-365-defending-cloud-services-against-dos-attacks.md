---
title: "Defending Microsoft 365 cloud services against denial-of-service attacks"
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
description: In this article, learn how Microsoft defends its cloud services against denial-of-service (DoS) attacks.
ms.custom: seo-marvel-apr2020
---

# Defending Microsoft 365 cloud services against denial-of-service attacks

Microsoft datacenters are protected by defense-in-depth security that includes perimeter fencing, video cameras, security personnel, and secure entrances that use biometrics, smartcard, and multi-factor authentication. The defense-in-depth security continues through every area of the facility and to each physical server unit. The [Microsoft Cloud Infrastructure and Operations Group](https://www.microsoft.com/cloud-platform/global-datacenters) delivers the core infrastructure and foundational technologies for our cloud services. Our datacenters comply with industry standards for physical security and reliability and are managed, monitored, and administered by Microsoft operations personnel.

To further protect our cloud services, Microsoft provides a DDoS defense system that is part of the Microsoft Azure continuous monitoring and penetration-testing processes. The Azure DDoS defense system is designed not only to withstand attacks from the outside, but also from other Azure tenants. Azure uses standard detection and mitigation techniques such as SYN cookies, rate limiting, and connection limits to protect against DDoS attacks.

Microsoft's cloud services are subject to the threat of attack from multiple sources. To mitigate and protect against the various DoS threats, a highly-scalable and dynamic Azure-based threat detection and mitigation system have been developed and implemented with the primary objective of protecting the underlying infrastructure from DoS attacks and helping to prevent service interruptions for cloud services customers. The Azure DoS mitigation system protects inbound, outbound, and region-to-region traffic.

Most DoS attacks launched against targets at the Network (L3) and Transport (L4) layers of the [Open Systems Interconnection](https://docs.microsoft.com/windows-hardware/drivers/network/windows-network-architecture-and-the-osi-model) (OSI) model. Attacks directed at the L3 and L4 layers are designed to flood a network interface or service with attack traffic to overwhelm resources and deny the ability to respond to legitimate traffic. Specifically, L3 and L4 attacks attempt to either saturate the capacity of network links, devices, or services or overwhelm the CPUs of servers or virtual machines supporting an application.

To guard against L3 and L4 attacks Microsoft has designed, developed, and deployed a solution aimed specifically at safeguarding the infrastructure and customer targets that come under attack by protecting these layers. Protecting the infrastructure ensures that attack traffic intended for one customer does not result in collateral damage or diminished network quality of service for other customers. The solution uses traffic sampling data from datacenter routers. This data is analyzed by a network monitoring service to detect attacks. When an attack is detected, automated defense mechanisms kick in.

## Application-Level Defenses
Microsoft engineering teams follow the rigorous standards set by [Microsoft Operational Security Assurance](https://www.microsoft.com/SDL/OperationalSecurityAssurance) to help protect customer data. Microsoft's cloud services are intentionally built to support a very high load as well as to protect and mitigate against application-level DoS attacks. We have implemented a scaled-out architecture where services are distributed across multiple global datacenters with regional isolation and throttling features in some of the workloads.

Each customer's country or region, which the customer's administrator identifies during the initial setup of the services, determines the primary storage location for that customer's data. Customer data is replicated between redundant datacenters according to a primary/backup strategy. A primary datacenter hosts the application software along with all the primary customer data running on the software. A backup datacenter provides automatic failover. If the primary datacenter ceases to function for any reason, requests are redirected to the copy of the software and customer data in the backup datacenter. At any given time, customer data may be processed in either the primary or the backup datacenter. Distributing data across multiple datacenters reduces the affected surface area in case one datacenter is attacked. Furthermore, the services in the affected datacenter can be quickly redirected to the secondary datacenter as one of the recovery mechanisms, and vice versa (redirected back to the primary datacenter once service is restored).

Individual workloads include built-in features that manage resource utilization. For example, the throttling mechanisms in Exchange Online and SharePoint Online are part of a multi-layered approach to defending against DoS attacks. Throttling for Exchange Online users is based on the level of resources consumed by the end user, whether the resources are in Active Directory, the Exchange Online information store, or elsewhere. A budget is allocated to each client to limit the resources consumed by a user. Exchange Online throttling for user activity and system components is based on [workload management](https://technet.microsoft.com/library/jj150503(v=exchg.150).aspx). An Exchange Online workload is an Exchange Online feature, protocol, or service that has been explicitly defined for the purposes of Exchange Online system resource management. Each Exchange Online workload requires system resources such as CPU, mailbox database operations, or Active Directory requests to perform user requests or background work. Examples of Exchange Online workloads include Outlook on the web, Exchange ActiveSync, mailbox migration, and mailbox assistants. Tenant administrators can manage Exchange workload management throttling settings for users with the Exchange Management Shell. There are various forms of throttling that have been implemented within Exchange Online, including PowerShell, Exchange Web Services, and POP and IMAP, Exchange ActiveSync, mobile device connections, recipients, and more. While administrators of on-premises Exchange deployments can configure throttling policies, Administrators cannot configure throttling policies for Exchange Online.

The most common trigger for throttling in SharePoint Online is client-side object model (CSOM) code that performs too many actions at too high a frequency. With CSOM, many actions can be performed with a single request, which can exceed usage limits and cause per-user throttling.

Regardless of the activity that might result in throttling, when a user exceeds usage limits, SharePoint Online throttles any further requests from that user account, usually for a short period. While a user throttle is in effect, all actions by that user are throttled until the throttle expires, according to the following criteria:
- For requests performed by the user directly in a browser, SharePoint Online redirects to a throttling information page, and the requests fail.
- For all other requests, including CSOM calls, SharePoint Online returns HTTP status code 429 ("too many requests"), and the requests fail.

If the offending process continues to exceed usage limits, SharePoint Online may completely block the process and return HTTP status code 503 ("service unavailable").

## Vulnerability and Penetration Testing
Microsoft uses many [security technologies and practices](https://www.microsoft.com/trustcenter/security/threatmanagement) to [protect its cloud infrastructure](https://blogs.technet.microsoft.com/hybridcloud/2015/05/05/protecting-your-datacenter-and-cloud-from-emerging-threats/) and on-premises networks against modern, sophisticated threats, including using antimalware components and services for cloud services, virtual machines (VMs), and other systems. Advanced Threat Analytics, which monitors normal usage patterns for networks, systems, and users, and employs machine learning to flag any behavior that is out of the ordinary, and regular penetration testing.

In addition to performing our own penetration tests and offering to our customers a [Microsoft Cloud Unified Penetration Testing program](https://technet.microsoft.com/mt784683), we also engage with third-party security professionals who perform regular vulnerability assessments of and penetration testing against our cloud services. We make the reports from these third-party vulnerability assessments available for download from the [Service Trust](https://aka.ms/STP) and the [Service Assurance](https://aka.ms/ServiceAssurance) portals.
