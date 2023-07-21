---
title: How Microsoft names threat actors
ms.reviewer: 
description: Learn how Microsoft names threat actors and how to use the naming convention to identify associated intelligence.
keywords: security, threat actor, security intelligence, naming convention, taxonomy, weather, threat actor naming, motivation, attribution, nation-state, financially motivated, private sector offensive actor, influence operations, groups in development, DEV-, nation state
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

> [!IMPORTANT]
> Learn about how [Volt Typhoon targets US critical infrastructure with living-off-the-land techniques](https://www.microsoft.com/en-us/security/blog/2023/05/24/volt-typhoon-targets-us-critical-infrastructure-with-living-off-the-land-techniques/#:~:text=Volt%20Typhoon%20has%20been%20active%20since%20mid-2021%20and,construction%2C%20maritime%2C%20government%2C%20information%20technology%2C%20and%20education%20sectors)

Microsoft has shifted to a new naming taxonomy for threat actors aligned with the theme of weather. With the new taxonomy, we intend to bring better clarity to customers and other security researchers already confronted with an overwhelming amount of threat intelligence data and offer a more organized, articulate, and easy way to reference threat actors so that organizations can better prioritize and protect themselves.

:::image type="content" source="../../media/threat-actor-naming/threat-actor-naming-categories.png" alt-text="Nation-state actors based on Microsoft naming" lightbox="../../media/threat-actor-naming/threat-actor-naming-categories2.png":::

Microsoft categorizes threat actors into five key groups:

**Nation-state actors:** cyber operators acting on behalf of or directed by a nation/state-aligned program, irrespective of whether for espionage, financial gain, or retribution. Microsoft has observed that most nation state actors continue to focus operations and attacks on government agencies, intergovernmental organizations, non-governmental organizations, and think tanks for traditional espionage or surveillance objectives.

**Financially motivated actors:** cyber campaigns/groups directed by a criminal organization/person with motivations of financial gain and haven't been associated with high confidence to a known non-nation state or commercial entity. This category includes ransomware operators, business email compromise, phishing, and other groups with purely financial or extortion motivations.

**Private sector offensive actors (PSOAs):** cyber activity led by commercial actors that are known/legitimate legal entities, that create and sell cyberweapons to customers who then select targets and operate the cyberweapons. These tools threaten many global human rights efforts, as they have been observed targeting and surveilling dissidents, human rights defenders, journalists, civil society advocates, and other private citizens.

**Influence operations:** information campaigns communicated online or offline in a manipulative fashion to shift perceptions, behaviors, or decisions by target audiences to further a group or a nation's interests and objectives.

**Groups in development:** a temporary designation given to an unknown, emerging, or developing threat activity that allows Microsoft to track it as a discrete set of information until we can reach high confidence about the origin or identity of the actor behind the operation. Once criteria are met, a group in development is converted to a named actor or merged into existing names.

In our new taxonomy, a weather event or *family name* represents one of the above categories. In the case of nation-state actors, we have assigned a family name to a country/region of origin tied to attribution, like Typhoon indicates origin or attribution to China. For other actors, the family name represents a motivation. For example, Tempest indicates financially motivated actors. Threat actors within the same weather family are given an adjective to distinguish actor groups with distinct tactics, techniques, and procedures (TTPs), infrastructure, objectives, or other identified patterns. For groups in development, where there is a newly discovered, unknown, emerging, or developing cluster of threat activity, we use a temporary designation of Storm and a four-digit number, allowing us to track it as a unique set of information until we can reach high confidence about the origin or identity of the actor behind the operation.

The table below shows how the new family names map to a sampling of the threat actors that we track.

|Actor category|Type|Family name|
|---|:---:|:---:|
|Nation-state|China<br>Iran<br>Lebanon<br>North Korea<br>Russia<br>South Korea<br>Turkey<br>Vietnam|Typhoon<br>Sandstorm<br>Rain<br>Sleet<br>Blizzard<br>Hail<br>Dust<br>Cyclone|
|Financially motivated|Financially motivated|Tempest|
|Private sector offensive actors|PSOAs|Tsunami|
|Influence operations|Influence operations|Flood|
|Groups in development|Groups in development|Storm|

Use the following reference table below to understand how our previously publicly disclosed old threat actor names translate to our new taxonomy.

|Previous name|New name|Origin/Threat|Other names|
|---|:---:|:---:|:---:|
|ACTINIUM|Aqua Blizzard|Russia|UNC530, Primitive Bear, Gamaredon|
|AMERICIUM|Pink Sandstorm|Iran|Agrius, Deadwood, BlackShadow, SharpBoys|
|BARIUM|Brass Typhoon|China|APT41|
|BISMUTH|Canvas Cyclone|Vietnam|APT32, OceanLotus|
|BOHRIUM|Smoke Sandstorm|Iran||
|BROMINE|Ghost Blizzard|Russia|Energetic Bear, Crouching Yeti|
|CERIUM|Ruby Sleet|North Korea||
|CHIMBORAZO|Spandex Tempest|Financially motivated|TA505|
|CHROMIUM|Charcoal Typhoon|China|ControlX|
|COPERNICIUM|Sapphire Sleet|North Korea|Genie Spider, BlueNoroff|
|CURIUM|Crimson Sandstorm|Iran|TA456, Tortoise Shell|
|DUBNIUM|Zigzag Hail|South Korea|Dark Hotel, Tapaoux|
|ELBRUS|Sangria Tempest|Financially motivated|Carbon Spider, FIN7|
|EUROPIUM|Hazel Sandstorm|Iran|Cobalt Gypsy, APT34, OilRig|
|GADOLINIUM|Gingham Typhoon|China|APT40, Leviathan, TEMP.Periscope, Kryptonite Panda|
|GALLIUM|Granite Typhoon|China||
|HAFNIUM|Silk Typhoon|China||
|HOLMIUM|Peach Sandstorm|Iran|APT33, Refined Kitten|
|IRIDIUM|Seashell Blizzard|Russia|Sandworm|
|KNOTWEED|Denim Tsunami|Private sector offensive actor|DSIRF|
|KRYPTON|Secret Blizzard|Russia|Venomous Bear, Turla, Snake|
|LAWRENCIUM|Pearl Sleet|North Korea||
|MANGANESE|Mulberry Typhoon|China|APT5, Keyhole Panda, TABCTENG|
|MERCURY|Mango Sandstorm|Iran|MuddyWater, SeedWorm, Static Kitten, TEMP.Zagros|
|NEPTUNIUM|Cotton Sandstorm|Iran|Vice Leaker|
|NICKEL|Nylon Typhoon|China|ke3chang, APT15, Vixen Panda|
|NOBELIUM|Midnight Blizzard|Russia|APT29, Cozy Bear|
|OSMIUM|Opal Sleet|North Korea|Konni|
|PARINACOTA|Wine Tempest|Financially motivated|Wadhrama|
|PHOSPHORUS|Mint Sandstorm|Iran|APT35, Charming Kitten|
|PLUTONIUM|Onyx Sleet|North Korea|Silent Chollima, Andariel, DarkSeoul|
|POLONIUM|Plaid Rain|Lebanon||
|RADIUM|Raspberry Typhoon|China|APT30, LotusBlossom|
|RUBIDIUM|Lemon Sandstorm|Iran|Fox Kitten, UNC757, PioneerKitten|
|SEABORGIUM|Star Blizzard|Russia|Callisto, Reuse Team|
|SILICON|Marbled Dust|Turkey|Sea Turtle|
|SOURGUM|Caramel Tsunami|Private sector offensive actor|Candiru|
|SPURR|Tomato Tempest|Financially motivated|Vatet|
|STRONTIUM|Forest Blizzard|Russia|APT28, Fancy Bear|
|TAAL|Camouflage Tempest|Financially motivated|FIN6, Skeleton Spider|
|THALLIUM|Emerald Sleet|North Korea|Kimsuky, Velvet Chollima|
|ZINC|Diamond Sleet|North Korea|Labyrinth Chollima, Lazarus|
|ZIRCONIUM|Violet Typhoon|China|APT31|

|Previous name|New name|Origin/Threat|Other names|
|---|:---:|:---:|:---:|
|DEV-0146|Pumpkin Sandstorm|Iran|ZeroCleare|
|DEV-0193|Periwinkle Tempest|Financially motivated|Wizard Spider, UNC2053|
|DEV-0196|Carmine Tsunami|Private sector offensive actor|QuaDream|
|DEV-0198 (NEPTUNIUM)|Cotton Sandstorm|Iran|Vice Leaker|
|DEV-0206|Mustard Tempest|Financially motivated|Purple Vallhund|
|DEV-0215 (LAWRENCIUM)|Pearl Sleet|North Korea||
|DEV-0227 (AMERICIUM)|Pink Sandstorm|Iran|Agrius, Deadwood, BlackShadow, SharpBoys|
|DEV-0228|Cuboid Sandstorm|Iran||
|DEV-0234|Lilac Typhoon|China||
|DEV-0237|Pistachio Tempest|Financially motivated|FIN12|
|DEV-0243|Manatee Tempest|Financially motivated|EvilCorp, UNC2165, Indrik Spider|
|DEV-0257|Storm-0257|Group in development|UNC1151|
|DEV-0322|Circle Typhoon|China||
|DEV-0336|Night Tsunami|Private sector offensive actor|NSO Group|
|DEV-0343|Gray Sandstorm|Iran||
|DEV-0401|Cinnamon Tempest|Financially motivated|Emperor Dragonfly, Bronze Starlight|
|DEV-0500|Marigold Sandstorm|Iran|Moses Staff|
|DEV-0504|Velvet Tempest|Financially motivated||
|DEV-0530|Storm-0530|North Korea|H0lyGh0st|
|DEV-0537|Strawberry Tempest|Financially motivated|LAPSUS$|
|DEV-0586|Cadet Blizzard|Russia||
|DEV-0605|Wisteria Tsunami|Private sector offensive actor|CyberRoot|
|DEV-0665|Sunglow Blizzard|Russia||
|DEV-0796|Phlox Tempest|Financially motivated|ClickPirate, Chrome Loader, Choziosi loader|
|DEV-0832|Vanilla Tempest|Financially motivated||
|DEV-0950|Lace Tempest|Financially motivated|FIN11, TA505|
|DEV-XXXX|[Volt Typhoon](https://www.microsoft.com/security/blog/2023/05/24/volt-typhoon-targets-us-critical-infrastructure-with-living-off-the-land-techniques) |China|BRONZE SILHOUETTE|

Read our announcement about the new taxonomy for more information: [https://aka.ms/threatactorsblog](https://aka.ms/threatactorsblog)

## Putting intelligence into the hands of security professionals

[Intel profiles in Microsoft Defender Threat Intelligence](../defender/defender-threat-intelligence.md) bring crucial threat actor insights directly into defenders' hands so that they can get the context they need as they prepare for and respond to threats.

Additionally, to further operationalize the threat intelligence you get from Microsoft, the Microsoft Defender Threat Intelligence Intel Profiles API provides the most up-to-date threat actor infrastructure visibility in the industry today, enabling threat intelligence and security operations (SecOps) teams to streamline their advanced threat hunting and analysis workflows. Learn more about this API in the documentation: [Use the threat intelligence APIs in Microsoft Graph (preview)](/graph/api/resources/security-threatintelligence-overview).

## Resources

Use the following query on Microsoft 365 Defender and other Microsoft security products supporting the Kusto query language (KQL) to get information about a threat actor using the old name, new name, or industry name:

```kusto
let TANames = externaldata(PreviousName: string, NewName: string, Origin: string, OtherNames: dynamic)[@"https://raw.githubusercontent.com/microsoft/mstic/master/PublicFeeds/ThreatActorNaming/MicrosoftMapping.json"] with(format="multijson", ingestionMapping='[{"Column":"PreviousName","Properties":{"Path":"$.Previous name"}},{"Column":"NewName","Properties":{"Path":"$.New name"}},{"Column":"Origin","Properties":{"Path":"$.Origin/Threat"}},{"Column":"OtherNames","Properties":{"Path":"$.Other names"}}]'); 
let GetThreatActorAlias = (Name: string) { 
TANames 
| where Name =~ NewName or Name =~ PreviousName or OtherNames has Name 
}; 
GetThreatActorAlias("ZINC")
```
The following files containing the comprehensive mapping of old threat actor names with their new names are also available:

- [JSON format](https://github.com/microsoft/mstic/blob/master/PublicFeeds/ThreatActorNaming/MicrosoftMapping.json)
- [downloadable Excel](https://download.microsoft.com/download/4/5/2/45208247-c1e9-432d-a9a2-1554d81074d9/microsoft-threat-actor-list.xlsx)