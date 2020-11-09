---
title: "Data Resiliency in Microsoft 365"
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
description: In this article, learn about the design and principles of data resiliency and recovery in Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Data Resiliency in Microsoft 365

Given the complex nature of cloud computing, Microsoft is mindful that it's not a case of if things will go wrong, but rather when. We design our cloud services to maximize reliability and minimize the negative effects on customers when things do go wrong. We have moved beyond the traditional strategy of relying on complex physical infrastructure, and we have built redundancy directly into our cloud services. We use a combination of less complex physical infrastructure and more intelligent software that builds data resiliency into our services and delivers high availability to our customers. 

## Resiliency and Recoverability Are Built-in 

Building in resiliency and recovery starts with the assumption that the underlying infrastructure and processes will fail at some point: hardware (infrastructure) will fail, humans will make mistakes, and software will have bugs. While it would be incorrect to say that software developers were not thinking about these things before the cloud, how these issues were handled in a typical IT implementation was very different before the cloud:

- First, hardware and infrastructure protections were significant. This meant having datacenters with 99.99% reliability required significant power and network redundancy, and servers were implemented with hardware-based clustering, dual power supplies, dual network interfaces, and the like. 
- Second, process was paramount. Operations teams maintained rigorous procedures, change windows were employed, and there was often significant project management overhead. 
- Third, deployment took place at a glacial pace. Deploying code without owning the source meant waiting for patch releases, and major version releases involved hardware replacement and significant capital outlay. Moreover, the only way to correct a problem was to roll back. Thus, most IT organizations would deploy only major releases to avoid the work to keep up-to-date. 
- Finally, the scale of deployed systems, as well as the level of their interconnectedness was historically much smaller than it is now. 

Today, customers expect continuous innovation from Microsoft without compromising quality, and this is one of the reasons why Microsoft's services and software are built with resiliency and recoverability in mind. 

## Microsoft 365 Data Resiliency Principles

Resiliency refers to the ability of a cloud-based service to withstand certain types of failures and yet remain fully-functional from the customers' perspective. Data resiliency means that no matter what failures occur within Microsoft 365, critical customer data remains intact and unaffected. To that end, Microsoft 365 services have been designed around five specific resiliency principles:

- There is critical and non-critical data. Non-critical data (for example, whether a message was read) can be dropped in rare failure scenarios. Critical data (for example, customer data such as email messages) should be protected at extreme cost. As a design goal, delivered mail messages are always critical, and things like whether a message has been read is non-critical. 
- Copies of customer data must be separated into different fault zones or as many fault domains as possible (e.g., datacenters, accessible by single credentials (process, server, or operator)) to provide failure isolation. 
- Critical customer data must be monitored for failing any part of Atomicity, Consistency, Isolation, Durability (ACID). 
- Customer data must be protected from corruption. It must be actively scanned or monitored, repairable, and recoverable. 
- Most data loss results from customer actions, so allow customers to recover on their own using a GUI that enables them to restore accidentally deleted items. 
 
Through the building of our cloud services to these principles, coupled with robust testing and validation, Microsoft 365 is able to meet and exceed the requirements of customers while ensuring a platform for continuous innovation and improvement. 

## Related Links

- [Dealing with Data Corruption](microsoft-365-dealing-with-data-corruption.md)
- [Malware and Ransomware Protection](microsoft-365-malware-and-ransomware-protection.md)
- [Monitoring and Self-Healing](microsoft-365-monitoring-and-self-healing.md)
- [Exchange Data Resiliency](microsoft-365-exchange-data-resiliency.md)
