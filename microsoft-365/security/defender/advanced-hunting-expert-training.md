---
title: Get expert training on advanced hunting
description: Free training and guidance from advanced hunting experts
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, language, training, scenarios, basic to advanced, videos, step-by-step
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# Get expert training on advanced hunting

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

Boost your knowledge of advanced hunting quickly with _Tracking the adversary_, a webcast series for new security analysts and seasoned threat hunters. The series guides you through the basics all the way to creating your own sophisticated queries. Start with the first video on fundamentals or jump to more advanced videos that suit your level of experience.

| Title | Description | Watch | Queries | 
|--|--|--|--|
| Episode 1: KQL fundamentals | This episode covers the basics of advanced hunting in Microsoft 365 Defender. Learn about available advanced hunting data and basic KQL syntax and operators. | [YouTube](https://youtu.be/0D9TkGjeJwM?t=351) (54:14) | [CSL file](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%201%20-%20KQL%20Fundamentals.csl) |
| Episode 2: Joins | Continue learning about data in advanced hunting and how to join tables together. Learn about `inner`, `outer`, `unique`, and `semi` joins, and understand the nuances of the default Kusto `innerunique` join. | [YouTube](https://youtu.be/LMrO6K5TWOU?t=297) (53:33) | [CSL file](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%202%20-%20Joins.csl) |
| Episode 3: Summarizing, pivoting, and visualizing data | Now that you've learned to filter, manipulate, and join data, it’s time to summarize, quantify, pivot, and visualize. This episode discusses the `summarize` operator and various calculations, while introducing additional tables in the schema. You'll also learn to turn datasets into charts that can help you extract insight. | [YouTube](https://youtu.be/UKnk9U1NH6Y?t=296) (48:52) | [CSL file](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%203%20-%20Summarizing%2C%20Pivoting%2C%20and%20Joining.csl) |
| Episode 4: Let’s hunt! Applying KQL to incident tracking | In this episode, you learn to track some attacker activity. We use our improved understanding of Kusto and advanced hunting to track an attack. Learn actual tricks used in the field, including the ABCs of cybersecurity and how to apply them to incident response. | [YouTube](https://youtu.be/2EUxOc_LNd8?t=291) (59:36) | [CSL file](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%204%20-%20Lets%20Hunt.csl) 


Get more expert training with *L33TSP3AK: Advanced hunting in Microsoft 365 Defender*, a webcast series for analysts looking to expand their technical knowledge and practical skills in conducting security investigations using advanced hunting in Microsoft 365 Defender. 

| Title | Description | Watch | Queries | 
|--|--|--|--|
| Episode 1  | In this episode, you will learn different best practices in running advanced hunting queries. Among the topics covered are: how to optimize your queries, use advanced hunting for ransomware, handle JSON as a dynamic type, and work with external data operators. | [YouTube](https://www.youtube.com/watch?v=nMGbK-ALaVg&feature=youtu.be) (56:34) | [CSL file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/l33tSpeak/Performance%2C%20Json%20and%20dynamics%20operator%2C%20external%20data.csl)


## How to use the CSL file
Before starting an episode, access the corresponding [Kusto CSL file on GitHub](https://github.com/microsoft/Microsoft-threat-protection-Hunting-Queries/tree/master/Webcasts/TrackingTheAdversary) and copy its contents to the advanced hunting query editor. As you watch an episode, you can use the copied contents to follow the speaker and run queries. 

The following excerpt from a CSL file shows a comprehensive set of guidance marked as comments with `//`.

```kusto
// DeviceLogonEvents
// A table containing a row for each logon a device enrolled in Microsoft Defender for Endpoint
// Contains
// - Account information associated with the logon
// - The device which the account logged onto
// - The process which performed the logon
// - Network information (for network logons)
// - Timestamp
```

The same CSL file includes queries before and after the comments as shown below. To run a specific query with [multiple queries in the editor](advanced-hunting-query-language.md#work-with-multiple-queries-in-the-editor), move the cursor to that query and select **Run query**.   

```kusto
DeviceLogonEvents
| count

// DeviceLogonEvents
// A table containing a row for each logon a device enrolled in Microsoft Defender for Endpoint
// Contains
// - Account information associated with the logon
// - The device which the account logged onto
// - The process which performed the logon
// - Network information (for network logons)
// - Timestamp

AppFileEvents
| take 100
| sort by Timestamp desc
```
     
## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the advanced hunting query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
