---
title: Understand threat intelligence concepts in Microsoft Defender for Endpoint
description: Create custom threat alerts for your organization and learn the concepts around threat intelligence in Microsoft Defender for Endpoint
keywords: threat intelligence, alert definitions, indicators of compromise, ioc
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Understand threat intelligence concepts

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-threatindicator-abovefoldlink)

Multiple complex malicious events, attributes, and contextual information comprise advanced cybersecurity attacks. Identifying and deciding which of these activities qualify as suspicious can be a challenging task. Your knowledge of known attributes and abnormal activities specific to your industry is fundamental in knowing when to call an observed behavior as suspicious.

With Microsoft 365 Defender, you can create custom threat alerts that can help you keep track of possible attack activities in your organization. You can flag suspicious events to piece together clues and possibly stop an attack chain. These custom threat alerts will only appear in your organization and will flag events that you set it to track.

Before creating custom threat alerts, it's important to know the concepts behind alert definitions and indicators of compromise (IOCs) and the relationship between them.

## Alert definitions
Alert definitions are contextual attributes that can be used collectively to identify early clues on a possible cybersecurity attack. These indicators are typically a combination of activities, characteristics, and actions taken by an attacker to successfully achieve the objective of an attack. Monitoring these combinations of attributes is critical in gaining a vantage point against attacks and possibly interfering with the chain of events before an attacker's objective is reached.

## Indicators of compromise (IOC)
IOCs are individually known malicious events that indicate that a network or device has already been breached. Unlike alert definitions, these indicators are considered as evidence of a breach. They're often seen after an attack has already been carried out and the objective has been reached, such as exfiltration. Keeping track of IOCs is also important during forensic investigations. Although it might not be able to intervene with an attack chain, gathering these indicators can be useful in creating better defenses for possible future attacks.

## Relationship between alert definitions and IOCs
In the context of Microsoft 365 Defender and Microsoft Defender for Endpoint, alert definitions are containers for IOCs and defines the alert, including the metadata that is raised for a specific IOC match. Various metadata is provided as part of the alert definitions. Metadata such as alert definition name of attack, severity, and description is provided along with other options.

Each IOC defines the concrete detection logic based on its type, value, and action, which determines how it's matched. It's bound to a specific alert definition that defines how a detection is displayed as an alert on the Microsoft 365 Defender console.

Here's an example of an IOC:
- Type: Sha1
- Value:  92cfceb39d57d914ed8b14d0e37643de0797ae56
- Action: Equals

IOCs have a many-to-one relationship with alert definitions such that an alert definition can have many IOCs that correspond to it.

## Related topics

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Manage indicators](manage-indicators.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
