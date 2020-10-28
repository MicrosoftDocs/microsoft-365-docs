---
title: "Microsoft 365 Monitoring and Self-Healing"
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
ms.custom:
- seo-marvel-apr2020
description: "In this article you will, learn about the monitoring and self-healing capabilities of Microsoft 365."
---

# Microsoft 365 Monitoring and Self-Healing

Given the scale of Microsoft 365, it would be impossible to keep customer data resilient and safe from malware without built-in monitoring that is comprehensive, alerting that is intelligent, and self-healing that is fast and reliable. Monitoring a set of services at the scale of Microsoft 365 is very challenging. New mindsets and methodologies needed to be introduced, and whole new sets of technology needed to be created to operate and manage the service in a connected global environment. We have moved away from the traditional monitoring approach of data collection and filtering to create alerts to an approach that is based on data analysis; taking signals and building confidence in that data and then using automation to recover or resolve the issue. This approach helps take humans out of the recovery equation, which in turn makes operations less expensive, faster, and less error prone. 

Fundamental to Microsoft 365 monitoring is a collection of technologies that comprise our Data Insights Engine, which is built on Azure, SQL Azure, and [open-source streaming database technology](https://cassandra.apache.org/). It is designed to collect and aggregate data and reach conclusions. Currently, it processes more than 500 million events per hour from more than 100,000 servers (~15 TB per day) scattered across dozens of datacenters in many regions, and these numbers are growing. 

Microsoft 365 uses *outside-in monitoring*, which involves creating synthetic transactions to test everything that is important. For example, in Exchange Online each scenario is testing every database worldwide every five minutes in a scattered fashion, providing near continuous coverage of everything that lives in the system. From multiple locations, 250 million test transactions per day are performed to create a robust baseline or heartbeat for the service. 

Microsoft 365 also uses the concept of *Red Alert*, which shrinks down all the monitoring signals from all of the machines in our datacenters to something manageable by a human being. The concept is quite simple: If something is happening across multiple signals, there must be something going on. It is not about building confidence in one signal, it is about having reasonable fidelity for each signal so that you get greater accuracy. This monitoring system is so powerful that we do not have 24x7 staff watching our monitors; all we have is the machinery that wakes up if it detects a problem, in which case it will page the appropriate on-call personnel, or more often as is the case, it will just go ahead and solve the problem. Once we start collecting signals and building red alerts off them, we can start triangulating across all our service partitions. 

Based on the combination of the failure alert and the Red Alerts, this alert indicates exactly which components could be having a problem, and that the system is going to try to correct the problem by itself by restarting a mailbox server. 

In addition to self-healing capabilities such as single page restore, Exchange Online includes several features that take an approach to monitoring and self-healing which focuses on preserving the end-user experience. These features include *Managed Availability*, which provides built-in monitoring and recovery actions, and AutoReseed, which automatically restores database redundancy after a disk failure. 

## Managed Availability 

Managed availability provides a native health checking and recovery solution that monitors and protects the end user's experience through recovery-oriented actions. Managed availability is the integration of built-in monitoring and recovery actions with the Exchange high availability platform. It's designed to detect and recover from problems as soon as they occur and are discovered by the system. Unlike previous external monitoring solutions and techniques for Exchange, managed availability doesn't try to identify or communicate the root cause of an issue. Instead, it's focused on recovery aspects that address three key areas of the end-user experience:

- **Availability** - Can users access the service? 
- **Latency** - How is the experience for users? 
- **Errors** - Are users able to accomplish what they want? 

Managed availability is an internal feature that runs on every Microsoft 365 server running Exchange Online. It polls and analyzes hundreds of health metrics every second. If something is found to be wrong, most of the time it is fixed automatically. But there will always be issues that managed availability will not be able to fix on its own. In those cases, managed availability will escalate the issue to a Microsoft 365 support team by means of event logging.

## AutoReseed

Exchange Online servers are deployed in a configuration that stores multiple databases and their log streams on the same non-RAID disk. This configuration is often referred to as *just a bunch of disks* (JBOD) because no storage redundancy mechanisms, such as RAID, are being used to duplicate the data on the disk. When a disk fails in a JBOD environment, the data on that disk is lost. 

Given the size of Exchange Online and the fact that deployed within it are millions of disk drives, disk drive failures are a regular occurrence in Exchange Online. In fact, more than 100 fail every day. When a disk fails in an on-premises enterprise deployment, an administrator must manually replace the failed disk and restore the affected data. In a cloud deployment the size of Microsoft 365, having operators (cloud administrators) manually replacing disks is neither practical nor economically feasible. 

Automatic Reseed, or *AutoReseed*, is a feature that is the replacement for what is normally operator-driven action in response to a disk failure, database corruption event, or other issue that necessitates a reseeding of a database copy. AutoReseed is designed to automatically restore database redundancy after a disk failure by using spare disks that have been provisioned on the system. If a disk fails, the database copies stored on that disk are automatically reseeded to a preconfigured spare disk on the server, thereby restoring redundancy. 