---
title: How Microsoft names threat actors
ms.reviewer: 
description: Learn how Microsoft names threat actors and how to use the naming convention to identify associated intelligence.
keywords: security, threat actor, security intelligence, naming convention, taxonomy, weather, threat actor naming, motivation, attribution, nation state, financially motivated, private sector offensive actor, influence operations, groups in development
ms.service: microsoft-365-security
ms.subservice: intelligence
ms.mktglfcycl: secure
ms.sitesec: library
ms.localizationpriority: medium
ms.author: diannegali
author: diannegali
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
ms.date: 04/18/2023
---

# How Microsoft names threat actors

Microsoft has shifted to a new naming taxonomy for threat actors aligned with the theme of weather. With the new taxonomy, we intend to bring better clarity to customers and other security researchers that are already confronted with an overwhelming amount of threat intelligence data, and offer a more organized, articulate, and easy way to reference threat actors so that organizations can better prioritize and protect themselves.

Microsoft categorizes threat actors into five key groups:

**Nation state actors:** cyber operators acting on behalf of or directed by a nation/state-aligned program, irrespective of whether for espionage, financial gain, or retribution. Microsoft has observed that most nation state actors continue to focus operations and attacks on government agencies, intergovernmental organizations, non-governmental organizations, and think tanks for traditional espionage or surveillance objectives.

**Financially motivated actors:** cyber campaigns/groups that are directed by a criminal organization/person with motivations of financial gain and haven't been associated with high confidence to a known non-nation state or commercial entity. This category includes ransomware operators, business email compromise, phishing, and other groups with purely financial or extortion motivations.

**Private sector offensive actors (PSOAs):** cyber activity led by commercial actors that are known/legitimate legal entities, that create and sell cyberweapons to customers who then select targets and operate the cyberweapons. These tools threaten many global human rights efforts, as they have been observed targeting and surveilling dissidents, human rights defenders, journalists, civil society advocates, and other private citizens.

**Influence operations:** information campaigns communicated online or offline in a manipulative fashion to shift perceptions, behaviors, or decisions by target audiences to further a group or a nation’s interests and objectives.

**Groups in development:** a temporary designation given to an unknown, emerging, or developing threat activity that allows Microsoft to track it as a discreet set of information until we can reach high confidence about the origin or identity of the actor behind the operation. Once criteria are met, a group in development is converted to a named actor or merged into existing names.

In our new taxonomy, a weather event or *family name* represents one of the above categories. In the case of nation state actors, we've assigned a family name to a country of origin tied to attribution. For example, *Typhoon* indicates origin or attribution to China. For other actors, the family name represents a motivation. In our list, *Tempest* indicates financially motivated actors. Each weather event family name is paired with an adjective to create an identifier for each unique actor group identified within the same "family" based on analysis of their unique tactics, techniques, and procedures (TTPs), infrastructure, objectives, or other identified patterns. For groups in development, where there's a newly discovered, unknown, emerging, or developing cluster of threat activity, we use a temporary designation of *Storm* and a four-digit number, allowing us to track it as a unique set of information until we can reach high confidence about the origin or identity of the actor behind the operation.

The table below shows how the new family names map to a sampling of the threat actors that we track.

|**Actor category**|**Type**|**Family name**|
|---|:---:|:---:|
|Nation state|China<br>Iran<br>Lebanon<br>North Korea<br>Russia<br>Singapore<br>South Korea<br>Turkey<br>Vietnam|Typhoon<br>Sandstorm<br>Rain<br>Sleet<br>Blizzard<br>Squall<br>Hail<br>Dust<br>Cyclone|
|Financially motivated|Financially motivated|Tempest|
|Private sector offensive actors|PSOAs|Tsunami|
|Influence operations|Influence operations|Flood|
|Groups in development|Groups in development|Storm|

We have created a list containing our previously publicly disclosed old actor names and how it translates to our new taxonomy. The list maps the threat actors' previous and new names, the origin or intent, and, where applicable, how other security organizations name these actors. [Download the threat actor mapping]().

Read our announcement about the new taxonomy for more information: [https://aka.ms/threatactorsblog](https://aka.ms/threatactorsblog)
