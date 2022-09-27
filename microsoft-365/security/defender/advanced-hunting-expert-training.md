---
title: Get expert training on advanced hunting
description: Free training and guidance from advanced hunting experts
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, language, training, scenarios, basic to advanced, videos, step-by-step
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance
- tier3
ms.topic: article
---

# Get expert training on advanced hunting

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Microsoft Defender for Endpoint

Boost your knowledge of advanced hunting quickly with _Tracking the adversary_, a webcast series for new security analysts and seasoned threat hunters. The series guides you through the basics all the way to creating your own sophisticated queries. Start with the first video on fundamentals or jump to more advanced videos that suit your level of experience.

| Title | Description | Watch | Queries |
|---|---|---|---|
| Episode 1: KQL fundamentals | This episode covers the basics of advanced hunting in Microsoft 365 Defender. Learn about available advanced hunting data and basic KQL syntax and operators. | [YouTube](https://youtu.be/0D9TkGjeJwM?t=351) (54:14) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%201%20-%20KQL%20Fundamentals.txt) |
| Episode 2: Joins | Continue learning about data in advanced hunting and how to join tables together. Learn about `inner`, `outer`, `unique`, and `semi` joins, and understand the nuances of the default Kusto `innerunique` join. | [YouTube](https://youtu.be/LMrO6K5TWOU?t=297) (53:33) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%202%20-%20Joins.txt) |
| Episode 3: Summarizing, pivoting, and visualizing data | Now that you've learned to filter, manipulate, and join data, it's time to summarize, quantify, pivot, and visualize. This episode discusses the `summarize` operator and various calculations, while introducing additional tables in the schema. You'll also learn to turn datasets into charts that can help you extract insight. | [YouTube](https://youtu.be/UKnk9U1NH6Y?t=296) (48:52) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%203%20-%20Summarizing%2C%20Pivoting%2C%20and%20Joining.txt) |
| Episode 4: Let's hunt! Applying KQL to incident tracking | In this episode, you learn to track some attacker activity. We use our improved understanding of Kusto and advanced hunting to track an attack. Learn actual tricks used in the field, including the ABCs of cybersecurity and how to apply them to incident response. | [YouTube](https://youtu.be/2EUxOc_LNd8?t=291) (59:36) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/TrackingTheAdversary/Episode%204%20-%20Lets%20Hunt.txt)

Get more expert training with *L33TSP3AK: Advanced hunting in Microsoft 365 Defender*, a webcast series for analysts looking to expand their technical knowledge and practical skills in conducting security investigations using advanced hunting in Microsoft 365 Defender.

| Title | Description | Watch | Queries |
|---|---|---|---|
| Episode 1  | In this episode, you will learn different best practices in running advanced hunting queries. Among the topics covered are: how to optimize your queries, use advanced hunting for ransomware, handle JSON as a dynamic type, and work with external data operators. | [YouTube](https://www.youtube.com/watch?v=nMGbK-ALaVg&feature=youtu.be) (56:34) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/l33tSpeak/Performance%2C%20Json%20and%20dynamics%20operator%2C%20external%20data.txt) |
| Episode 2 | In this episode, you will learn how to investigate and respond to suspicious or unusual logon locations and data exfiltration via inbox forwarding rules. Sebastien Molendijk, Senior Program Manager for Cloud Security CxE, shares how to use advanced hunting to investigate multi-stage incidents with Microsoft Defender for Cloud Apps data. | [YouTube](https://www.youtube.com/watch?v=QaUxdtNfbd8) (57:07) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/l33tSpeak/MCAS%20-%20The%20Hunt.txt)
| Episode 3 | In this episode we will cover the latest improvements to advanced hunting, how to import an external data source into your query, and how to use partitioning to segment large query results into smaller result sets to avoid hitting API limits. | [YouTube](https://www.youtube.com/watch?v=vd5lgIJKmYs) (40:59) | [Text file](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/blob/master/Webcasts/l33tSpeak/l33tspeak%2011%20Oct%202021%20-%20externaldata%20and%20query%20partitioning.csl)

## How to use the CSL file

Before starting an episode, access the corresponding [text file on GitHub](https://github.com/microsoft/Microsoft-365-Defender-Hunting-Queries/tree/master/Webcasts) and copy its contents to the advanced hunting query editor. As you watch an episode, you can use the copied contents to follow the speaker and run queries.

The following excerpt from a text file containing the queries shows a comprehensive set of guidance marked as comments with `//`.

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

The same text file includes queries before and after the comments as shown below. To run a specific query with [multiple queries in the editor](advanced-hunting-query-language.md#work-with-multiple-queries-in-the-editor), move the cursor to that query and select **Run query**.

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

CloudAppEvents
| take 100
| sort by Timestamp desc
```


## Other resources

| Title | Description | Watch |
|---|---|---|
|Joining tables in KQL | Learn the power of joining tables in creating meaningful results. | [YouTube](https://www.youtube.com/watch?v=8qZx7Pp5XgM) (4:17) |
| Optimizing tables in KQL | Learn how to avoid timeouts when running complex queries by optimizing your queries. | [YouTube](https://www.youtube.com/watch?v=ceYvRuPp5D8) (5:38)  | 

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the advanced hunting query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
