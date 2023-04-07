---
title: How Microsoft names threat actors
ms.reviewer: 
description: Learn how Microsoft names threat actors and how to use the naming convention to  identify threat actors and associated intelligence.
keywords: security, threat actor, security intelligence, naming convention, taxonomy, weather
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
ms.date: 04/15/2023
---

# How Microsoft names threat actors

Microsoft has shifted to a new naming taxonomy for threat actors aligned with the theme of weather. With the new taxonomy, we intend to bring better clarity to customers and other security researchers that are already confronted with an overwhelming amount of threat intelligence data, and offer a more organized, articulate, and easy way to reference threat actors so that organizations can better prioritize and protect themselves.

Microsoft categorizes threat actors into five key groups:

**Nation state actors:** cyber operators acting on behalf of or directed by a nation/state-aligned program, irrespective of whether for espionage, financial gain, or retribution. Microsoft has observed that most nation state actors continue to focus operations and attacks on government agencies, intergovernmental organizations, non-governmental organizations, and think tanks for traditional espionage or surveillance objectives.

**Financially motivated actors:** cyber campaigns/groups that are directed by a criminal organization/person with motivations of financial gain and have not been associated with high confidence to a known non-nation state or commercial entity. This category includes ransomware operators, business email compromise, phishing, and other groups with purely financial or extortion motivations.

**Private sector offensive actors (PSOAs):** cyber activity led by commercial actors that are known/legitimate legal entities, that create and sell cyberweapons to customers who then select targets and operate the cyberweapons. These tools threaten many global human rights efforts, as they have been observed targeting and surveilling dissidents, human rights defenders, journalists, civil society advocates, and other private citizens.

**Influence operations:** information campaigns communicated online or offline in a manipulative fashion to shift perceptions, behaviors, or decisions by target audiences to further a group or a nation’s interests and objectives.

**Groups in development:** a temporary designation given to an unknown, emerging, or developing threat activity that allows Microsoft to track it as a discreet set of information until we can reach high confidence about the origin or identity of the actor behind the operation. Once criteria are met, a group in development is converted to a named actor or merged into existing names.

In our new taxonomy, a weather event or *family name* represents one of the above categories. In the case of nation state actors, we have assigned a family name to a country of origin tied to attribution (e.g., Typhoon indicates origin or attribution to China). For other actors, the family name represents a motivation (e.g., Tempest indicates financially motivated actors). Each weather event family name is paired up with an adjective to create an identifier for each unique actor groups identified within the same “family” based on analysis of their unique TTPs, infrastructure, objectives, or other identified patterns. For groups in development, where there is a newly discovered, unknown, emerging, or developing cluster of threat activity, we use a temporary designation of Storm and a four-digit number, allowing us to track it as a unique set of information until we can reach high confidence about the origin or identity of the actor behind the operation.

The table below shows how the new family names map to a sampling of the threat actors that we track.

|**Actor category**|**Type**|**Family name**|
|---|:---:|:---:|
|Nation state|China<br>Iran<br>Lebanon<br>North Korea<br>Russia<br>Singapore<br>South Korea<br>Turkey<br>Vietnam|Typhoon<br>Sandstorm<br>Rain<br>Sleet<br>Blizzard<br>Squall<br>Hail<br>Dust<br>Cyclone|
|Financially motivated|Financially motivated|Tempest|
|Private sector offensive actors|PSOAs|Tsunami|
|Influence operations|Influence operations|Flood|
|Groups in development|Groups in development|Storm|

Please use the reference table below as a guide to understand how our previously publicly disclosed old actor names translate to our new taxonomy.

|**Previous name**|**New name**|**Origin/Threat**|
|---|:---:|:---:|
|ACTINIUM|Aqua Blizzard|Nation state|
|AMERICIUM|Pink Sandstorm|Nation state|
|BARIUM|Brass Typhoon|Nation state|
|BISMUTH|Canvas Cyclone|Nation state|
|BOHRIUM|Smoke Sandstorm|Nation state|
|BROMINE|Ghost Blizzard|Nation state|
|CERIUM|Ruby Sleet|Nation state|
|CHIMBORAZO|Spandex Tempest|Financially motivated|
|CHROMIUM|Charcoal Typhoon|Nation state|
|COPERNICIUM|Sapphire Sleet|Nation state|
|CURIUM|Crimson Sandstorm|Nation state|
|DUBNIUM|Zigzag Hail|Nation state|
|ELBRUS|Sangria Tempest|Financially motivated|
|EUROPIUM|Hazel Sandstorm|Nation state|
|GADOLINIUM|Gingham Typhoon|Nation state|
|GALLIUM|Granite Typhoon|Nation state|
|HAFNIUM|Silk Typhoon|Nation state|
|HOLMIUM|Peach Sandstorm|Nation state|
|IRIDIUM|Seashell Blizzard|Nation state|
|KNOTWEED|Denim Tsunami|Private sector offensive actor|
|MANGANESE|Mulberry Typhoon|Nation state|
|MERCURY|Mango Sandstorm|Nation state|
|NEPTUNIUM|Cotton Sandstorm|Nation state|
|NICKEL|Nylon Typhoon|Nation state|
|NOBELIUM|Midnight Blizzard|Nation state|
|OSMIUM|Opal Sleet|Nation state|
|PARINACOTA|Wine Tempest|Financially motivated|
|PHOSPHORUS|Mint Sandstorm|Nation state|
|POLONIUM|Plaid Rain|Nation state|
|RADIUM|Raspberry Typhoon|Nation state|
|RUBIDIUM|Lemon Sandstorm|Nation state|
|SEABORGIUM|Star Blizzard|Nation state|
|SILICON|Marbled Dust|Nation state|
|SOURGUM|Caramel Tsunami|Private sector offensive actor|
|STRONTIUM|Forest Blizzard|Nation state|
|THALLIUM|Emerald Sleet|Nation state|
|ZINC|Diamond Sleet|Nation state|
|ZIRCONIUM|Violent Typhoon|Nation state|
|DEV-0146|Pumpkin Sandstorm|Nation state|
|DEV-0193|Periwinkle Tempest|Financially motivated|
|DEV-0198 (NEPTUNIUM)|Cotton Sandstorm|Nation state|
|DEV-0206|Mustard Tempest|Financially motivated|
|DEV-0215 (LAWRENCIUM)|Pearl Sleet|Nation state|
|DEV-0227 (AMERICIUM)|Pink Sandstorm|Nation state|
|DEV-0228|Cuboid Sandstorm|Nation state|

## Additional resources and information

- Keep up with the latest malware news and research. Check out our [Microsoft security blogs](https://www.microsoft.com/security/blog/product/windows/) and follow us on [Twitter](https://twitter.com/wdsecurity) for the latest news, discoveries, and protections.

- Learn more about [Windows security](../../index.yml).

- Learn how to [deploy threat protection capabilities across Microsoft 365 E5](/microsoft-365/solutions/deploy-threat-protection). 

