---
title: Review and remove unnecessary allow list entries with Advanced Hunting in Microsoft Defender for Office 365
description: Steps and sample queries for advanced hunting to start reviewing your security configuration and removing unnecessary allow list entries.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTBen
ms.localizationpriority: medium
manager: jarogers
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 01/04/2023
---

# Introduction

Historically, allow lists have told Exchange Online Protection to ignore the signals indicating an email is malicious. It's commonplace for vendors to request IPs, domains, and sender addresses be overridden unnecessarily. Attackers have been known to take advantage of this mistake and it's a pressing security loophole to have unnecessary allow list entries. This step-by-step guide walks you through using advanced hunting to identify these misconfigured overrides and remove them, so you can increase your organization's security posture.

## What you will need

- Microsoft Defender for Office 365 Plan 2 (Included in E5 plans, or trial available at aka.ms/trymdo)
- Sufficient permissions (Security reader role)
- 5-10 minutes to do the steps below.

## Common steps for all the below queries

1. [Login to the security portal and navigate to advanced hunting](https://security.microsoft.com/advanced-hunting)
2. Enter the KQL query into the query box, and press **Run Query**.
3. Pressing the **NetworkMessageId** hyperlink for individual emails when shown in the results loads a flyout, allowing easy access to the email entity page, where the **analysis** tab provides further details, such as the transport rule(s) that email matched.
4. The results can also be exported by pressing **Export** for manipulation / analysis offline.

> [!TIP]
> Changing **OrgLevelAction** to **UserLevelAction** will allow you to search for emails getting overridden by users rather than administrators, and can also be a useful insight.

## Queries

### Top override source

Use this query to find where the most unnecessary overrides are located. This query looks for emails that have been overridden without any detection that needed an override.

```kusto
EmailEvents
| where OrgLevelAction == "Allow"
| summarize count() by OrgLevelPolicy, ThreatTypes
```

### Top overridden threat type

Use this query to find the most overridden types of threat detected. This query looks for emails that had the detected threat overridden, DMARC, or Spoof indicates email authentication issues that can be fixed to remove the *need* for the override.

```kusto
EmailEvents
| where OrgLevelAction == "Allow" and ThreatTypes != ""
|summarize count() by DetectionMethods
```

### Top overridden IPs

This query looks for emails that have been overridden by IP, without any detection that called for an override.

```kusto
EmailEvents
| where OrgLevelAction == "Allow" and ThreatTypes != ""
|summarize count() by SenderIPv4
| top 10 by count_
```

### Top overridden domains

This query looks for emails that have been overridden by sending domain without any detection that called for an override. **(Change to SenderMailFromDomain to check the 5321.MailFrom)**

```kusto
EmailEvents
| where OrgLevelAction == "Allow" and ThreatTypes != ""
|summarize count() by SenderFromDomain
| top 10 by count_
```

### Top overridden senders

This query looks for emails that have been overridden by sending address without any detection that requires an override. **(Change to SenderMailFromAddress to check the 5321.MailFrom)**

```kusto
EmailEvents
| where OrgLevelAction == "Allow" and ThreatTypes != ""
|summarize count() by SenderFromAddress
| top 10 by count_
```

## Learn More

Hopefully you found this useful, with some basic queries to get you started with advanced hunting, to learn more check out the below articles

Learn more about advanced hunting: [Overview - Advanced hunting](../../defender/advanced-hunting-overview.md)

Learn more about authentication: [Email Authentication in Exchange Online Protection](../email-authentication-about.md)
