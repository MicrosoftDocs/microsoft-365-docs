---
title: Operationalize attack surface reduction rules
description: Provides guidance to operationalize your attack surface reduction rules deployment.
ms.service: defender-endpoint
ms.subservice: asr
ms.localizationpriority: medium
audience: ITPro
author: Dansimp
ms.author: dansimp
ms.reviewer: oogunrinde, sugamar
manager: dansimp
ms.custom: asr
ms.topic: conceptual
ms.collection: 
 - m365-security
 - m365solution-asr-rules
 - highpri
 - tier1
 - mde-asr
ms.date: 08/29/2023
search.appverid: met150
---

# Operationalize attack surface reduction rules

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

After you've fully deployed attack surface reduction rules, it's vital that you have processes in place to monitor and respond to ASR-related activities. Activities include: 

## Managing ASR rules false positives

False positives/negatives can occur with any threat protection solution. False positives are cases in which an entity (such as a file or process) is detected and identified as malicious, although the entity isn't actually a threat. In contrast, a false negative is an entity that wasn't detected as a threat but is malicious. For more information about false positives and false negatives, see: [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)

## Keeping up with ASR rules reports

Consistent, regular review of reports is an essential aspect of maintaining your attack surface reduction rules deployment and keeping abreast of newly emerging threats. Your organization should have scheduled reviews of attack surface reduction rules events on a cadence that keeps current with attack surface reduction rules-reported events. Depending on the size of your organization, reviews might be daily, hourly, or continuous monitoring.

## ASR rules Advanced Hunting

One of the most powerful features of [Microsoft Defender XDR](https://security.microsoft.com) is advanced hunting. If you're not familiar with advanced hunting, see: [Proactively hunt for threats with advanced hunting](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview).

> :::image type="content" source="images/asr-defender365-advanced-hunting2.png" alt-text="The Advanced Hunting page in the Microsoft Defender portal. Microsoft Defender for Endpoint attack surface reduction rules used in advanced hunting" lightbox="images/asr-defender365-advanced-hunting2.png":::

Advanced hunting is a query-based (Kusto Query Language) threat-hunting tool that lets you explore up to 30 days of the captured data. Through advanced hunting, you can proactively inspect events in order to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

Through advanced hunting, it's possible to extract attack surface reduction rules information, create reports, and get in-depth information on the context of a given attack surface reduction rule audit or block event.

 You can query attack surface reduction rule events from the DeviceEvents table in the advanced hunting section of the Microsoft Defender portal. For example, the following query shows how to report all the events that have attack surface reduction rules as data source, for the last 30 days. The query then summarizes by the ActionType count with the name of the attack surface reduction rule.

Attack surface reduction events shown in the advancing hunting portal are throttled to unique processes seen every hour. The time of the attack surface reduction event is the first time the event is seen within that hour.

```kusto
DeviceEvents
| where Timestamp > ago(30d)
| where ActionType startswith "Asr"
| summarize EventCount=count() by ActionType
```

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/asr-defender365-advanced-hunting4.png" alt-text="The Advanced hunting query results in the Microsoft Defender portal" lightbox="images/asr-defender365-advanced-hunting4.png":::

The above shows that 187 events were registered for AsrLsassCredentialTheft:

- 102 for Blocked
- 85 for Audited
- Two events for AsrOfficeChildProcess (1 for Audited and 1 for Block)
- Eight events for AsrPsexecWmiChildProcessAudited

If you want to focus on the AsrOfficeChildProcess rule and get details on the actual files and processes involved, change the filter for ActionType and replace the summarize line with a projection of the wanted fields (in this case they're DeviceName, FileName, FolderPath, etc.).

```kusto
DeviceEvents
| where (Actiontype startswith "AsrOfficechild")
| extend RuleId=extractjson("$Ruleid", AdditionalFields, typeof(string))
| project DeviceName, FileName, FolderPath, ProcessCommandLine, InitiatingProcessFileName, InitiatingProcessCommandLine
```

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/asr-defender365-advanced-hunting5b.png" alt-text="The Advanced hunting query focused results in the Microsoft Defender portal" lightbox="images/asr-defender365-advanced-hunting5b.png":::

The true benefit of advanced hunting is that you can shape the queries to your liking. By shaping your query you can see the exact story of what was happening, regardless of whether you want to pinpoint something on an individual machine, or you want to extract insights from your entire environment.

For more information about hunting options, see: [Demystifying attack surface reduction rules - Part 3](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-3/ba-p/1360968).

## Articles in this deployment collection

[Attack surface reduction rules deployment overview](attack-surface-reduction-rules-deployment.md)

[Plan attack surface reduction rules deployment](attack-surface-reduction-rules-deployment-plan.md)

[Test attack surface reduction rules](attack-surface-reduction-rules-deployment-test.md)

[Enable attack surface reduction rules](attack-surface-reduction-rules-deployment-implement.md)

[Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
