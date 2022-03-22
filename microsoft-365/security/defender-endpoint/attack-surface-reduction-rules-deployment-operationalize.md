---
title: Operationalize attack surface reduction (ASR) rules deployment
description: Provides guidance to operationalize your attack surface reduction rules deployment.
keywords: Attack surface reduction rules deployment, ASR deployment, enable asr rules, configure ASR, host intrusion prevention system, protection rules, anti-exploit rules, anti-exploit, exploit rules, infection prevention rules, Microsoft Defender for Endpoint, configure ASR rules
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jweston-1
ms.author: v-jweston
ms.reviewer: oogunrinde, sugamar
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.topic: article
ms.collection: 
 - m365solution-scenario
 - M365-security-compliance
ms.date: 1/18/2022
---

# Step 4: Operationalize ASR rules

After you've fully deployed attack surface reduction (ASR) rules, it's vital that you have processes in place to monitor and respond to ASR-related activities.

## Managing false positives

False positives/negatives can occur with any threat protection solution. False positives are cases in which an entity (such as a file or process) is detected and identified as malicious, although the entity isn't actually a threat. In contrast, a false negative is an entity that wasn't detected as a threat but is malicious. For more information about false positives and false negatives, see: [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)

## Keeping up with reports

Consistent, regular review of reports is an essential aspect of maintaining your ASR rules deployment and keeping abreast of newly emerging threats. Your organization should have scheduled reviews of ASR  rules events on a cadence that will keep current with ASR  rules-reported events. Depending on the size of your organization, reviews might be daily, hourly, or continuous monitoring.

## Hunting

One of the most powerful features of [Microsoft 365 Defender](https://security.microsoft.com) is advanced hunting. If you're not familiar with advanced hunting, see: [Proactively hunt for threats with advanced hunting](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview).

> [!div class="mx-imgBorder"]
> ![Microsoft 365 Defender Advanced hunting](images/asr-defender365-advanced-hunting2.png)

Advanced hunting is a query-based (Kusto Query Language) threat-hunting tool that lets you explore up to 30 days of the captured (raw) data that Microsoft Defender ATP Endpoint Detection and Response (EDR) collects from all your machines. Through advanced hunting, you can proactively inspect events in order to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

Through advanced hunting, it is possible to extract ASR rules information, create reports, and get in-depth information on the context of a given ASR rule audit or block event.

 You can query ASR rules events from the DeviceEvents table in the advanced hunting section of the Microsoft 365 Defender portal. For example, a simple query such as the one below can report all the events that have ASR rules as data source, for the last 30 days, and will summarize them by the ActionType count, that in this case it will be the actual codename of the ASR rule.

ASR events shown in the advancing hunting portal are throttled to unique processes seen every hour. The time of the ASR event is the first time the event is seen within that hour.

> [!div class="mx-imgBorder"]
> ![Microsoft 365 Defender Advanced hunting query command line](images/asr-defender365-advanced-hunting3.png)

> [!div class="mx-imgBorder"]
> ![Microsoft 365 Defender Advanced hunting query results](images/asr-defender365-advanced-hunting4.png)

The above shows that 187 events were registered for AsrLsassCredentialTheft:

- 102 for Blocked
- 85 for Audited
- 2 events for AsrOfficeChildProcess (1 for Audited and 1 for Block)
- 8 events for AsrPsexecWmiChildProcessAudited

If you want to focus on the AsrOfficeChildProcess rule and get details on the actual files and processes involved, change the filter for ActionType and replace the summarize line with a projection of the wanted fields (in this case they are DeviceName, FileName, FolderPath, etc.).

> [!div class="mx-imgBorder"]
> ![Microsoft 365 Defender Advanced hunting query focused](images/asr-defender365-advanced-hunting4b.png)

> [!div class="mx-imgBorder"]
> ![Microsoft 365 Defender Advanced hunting query focused results](images/asr-defender365-advanced-hunting5b.png)

The true benefit of advanced hunting is that you can shape the queries to your liking. By shaping your query you can see the exact story of what was happening, regardless of whether you want to pinpoint something on an individual machine, or you want to extract insights from your entire environment.

For more information about hunting options, see: [Demystifying attack surface reduction rules - Part 3](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-3/ba-p/1360968).

## Topics in this deployment collection

[ASR rules deployment prerequisites](attack-surface-reduction-rules-deployment.md)

[Step 1: Plan ASR rules deployment](attack-surface-reduction-rules-deployment-plan.md)

[Step 2: Test ASR rules](attack-surface-reduction-rules-deployment-test.md)

[Step 3: Implement ASR rules](attack-surface-reduction-rules-deployment-implement.md)
