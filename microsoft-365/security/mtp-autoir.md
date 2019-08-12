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






