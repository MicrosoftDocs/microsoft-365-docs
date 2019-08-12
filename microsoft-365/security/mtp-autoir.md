---
title: Automatically investigate and remediate issues using Microsoft Threat Protection 
description: Get an overview of automated investigation and remediation capabilities in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
---

# Automatically investigate and remediate issues in Microsoft 365

**Applies to**:
- Microsoft 365

## Summary

With automated investigation and remediation (AIR) capabilities in Microsoft Threat Protection, security administrators can set up alerts that trigger investigations automatically or start an automated investigation manually. Once an investigation is underway, your security team can use the [Action center](mtp-action-center.md) to monitor progress, approve pending actions, review the results, and remediate security issues. 

## The automated investigation and remediation flow

|Phase  |What happens  |
|---------|---------|
|Automated investigation begins     |An automated investigation begins when one of the following occurs:<br/>- An alert triggers an incident that includes an automated investigation<br/>- A security analyst starts an investigation manually while viewing an alert or a security report        |
|The automated investigation runs     |- Details about the threat and affected entities (user accounts, machines, and so on) are gathered<br/>- The investigation scope can increase if new alerts or entities related to the initial threat emerge          |
|Details and results emerge |- During and after an automated investigation, details are available in the Action center<br/>- Automated investigation results inform remediation steps  |
|Remediation steps are taken |- Remediation happens automatically or by approval from your security operations team |

## Automated investigation begins

An automated investigation can begin when one of the following occurs:
- An alert triggers an automated investigation; or
- An analyst starts an automated investigation manually.

### An alert can trigger an automated investigation

Most often, an automated investigation begins when an alert is triggered and an incident is created. Not every alert will trigger an automated investigation; this depends on how your organization's alert policies are configured. With automated investigation and remediation capabilities, several kinds of alerts can be configured to work with security playbooks that define the automated investigation process. Here are just a few examples:
- Malware is detected on a user's machine
- A malicious file is detected in email
- A user account is flagged as compromised
- ... and many other other scenarios.

> [!NOTE]
> To view (or set up) alerts, in the Microsoft 365 security center, in the navigation pane, choose **Alerts**.

### An analyst can start an automated investigation

The Microsoft 365 security center includes several reports to help your security operations team stay on top of threat management for your organization. In some cases, security analysts can start investigations manually, while viewing a report or an alert. For an example of how this works in Office 365 Advanced Threat Protection, see [A security administrator triggers an investigation from Threat Explorer](https://docs.microsoft.com/office365/securitycompliance/automated-investigation-response-office#example-a-security-administrator-triggers-an-investigation-from-threat-explorer).

## The automated investigation process

Whether through an alert or by a security analyst, once an automated investigation is triggered, the process begins immediately. The investigation typically includes the following steps:
- Gather information about the type of threat
- Determine where the threat came from
- Identify who in your organization is affected by the threat
- Find out whether and where other instances of the threat exist in your work environment
- ... and so on.

### Automated investigation scope can increase

While an investigation is running, any other related alerts that are generated are added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other entities, those entities are added to the investigation.

If an incriminated entity is seen in elsewhere, the automated investigation will expand the investigation to include that entity, and a general security playbook will run on that entity.