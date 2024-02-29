---
title: How Microsoft names threat actors
ms.reviewer: 
description: Learn how Microsoft names threat actors and how to use the naming convention to identify associated intelligence.
keywords: security, threat actor, security intelligence, naming convention, taxonomy, weather, threat actor naming, motivation, attribution, nation-state, financially motivated, private sector offensive actor, influence operations, groups in development, DEV-, nation state
ms.service: defender-xdr
ms.mktglfcycl: secure
ms.sitesec: library
ms.localizationpriority: medium
ms.author: vpattnaik
author: diannegali
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
ms.date: 02/29/2024
---

# How Microsoft names threat actors

Microsoft shifted to a new naming taxonomy for threat actors aligned with the theme of weather. We intend to bring better clarity to customers and other security researchers with the nex taxonomy. We offer a more organized, articulate, and easy way to reference threat actors so that organizations can better prioritize and protect themselves and aid security researchers already confronted with an overwhelming amount of threat intelligence data.

:::image type="content" source="../../media/threat-actor-naming/threat-actor-categories.png" alt-text="Nation-state actors based on Microsoft naming" lightbox="../../media/threat-actor-naming/threat-actor-categories-lg.png":::

Microsoft categorizes threat actors into five key groups:

**Nation-state actors:** cyber operators acting on behalf of or directed by a nation/state-aligned program, irrespective of whether for espionage, financial gain, or retribution. Microsoft observed that most nation state actors continue to focus operations and attacks on government agencies, intergovernmental organizations, nongovernmental organizations, and think tanks for traditional espionage or surveillance objectives.

**Financially motivated actors:** cyber campaigns/groups directed by a criminal organization/person with motivations of financial gain and are not associated with high confidence to a known non-nation state or commercial entity. This category includes ransomware operators, business email compromise, phishing, and other groups with purely financial or extortion motivations.

**Private sector offensive actors (PSOAs):** cyber activity led by commercial actors that are known/legitimate legal entities, that create and sell cyberweapons to customers who then select targets and operate the cyberweapons. These tools were observed targeting and surveilling dissidents, human rights defenders, journalists, civil society advocates, and other private citizens, threatening many global human rights efforts.

**Influence operations:** information campaigns communicated online or offline in a manipulative fashion to shift perceptions, behaviors, or decisions by target audiences to further a group or a nation's interests and objectives.

**Groups in development:** a temporary designation given to an unknown, emerging, or developing threat activity. This designation allows Microsoft to track a group as a discrete set of information until we can reach high confidence about the origin or identity of the actor behind the operation. Once criteria are met, a group in development is converted to a named actor or merged into existing names.

In our new taxonomy, a weather event or *family name* represents one of the above categories. For nation-state actors, we have assigned a family name to a country/region of origin tied to attribution, like Typhoon indicates origin or attribution to China. For other actors, the family name represents a motivation. For example, Tempest indicates financially motivated actors.

Threat actors within the same weather family are given an adjective to distinguish actor groups with distinct tactics, techniques, and procedures (TTPs), infrastructure, objectives, or other identified patterns. For groups in development, we use a temporary designation of Storm and a four-digit number where there is a newly discovered, unknown, emerging, or developing cluster of threat activity.

The table shows how the new family names map to the threat actors that we track.

|Actor category|Type|Family name|
|---|:---:|:---:|
|Nation-state|China<br>Iran<br>Lebanon<br>North Korea<br>Russia<br>South Korea<br>Turkey<br>Vietnam|Typhoon<br>Sandstorm<br>Rain<br>Sleet<br>Blizzard<br>Hail<br>Dust<br>Cyclone|
|Financially motivated|Financially motivated|Tempest|
|Private sector offensive actors|PSOAs|Tsunami|
|Influence operations|Influence operations|Flood|
|Groups in development|Groups in development|Storm|

Use the following reference table to understand how our previously publicly disclosed old threat actor names translate to our new taxonomy.

|Threat actor name|Previous name|Origin/Threat|Other names|
|---|:---:|:---:|:---:|
|Aqua Blizzard|ACTINIUM|Russia|UNC530, Primitive Bear, Gamaredon|
|Blue Tsunami||Private sector offensive actor|Black Cube|
|Brass Typhoon|BARIUM|China|APT41|
|Cadet Blizzard|DEV-0586|Russia||
|Camouflage Tempest|TAAL|Financially motivated|FIN6, Skeleton Spider|
|Canvas Cyclone|BISMUTH|Vietnam|APT32, OceanLotus|
|Caramel Tsunami|SOURGUM|Private sector offensive actor|Candiru|
|Carmine Tsunami|DEV-0196|Private sector offensive actor|QuaDream|
|Charcoal Typhoon|CHROMIUM|China|ControlX|
|Cinnamon Tempest|DEV-0401|Financially motivated|Emperor Dragonfly, Bronze Starlight|
|Circle Typhoon|DEV-0322|China||
|Citrine Sleet|DEV-0139, DEV-1222|North Korea|AppleJeus, Labyrinth Chollima, UNC4736|
|Cotton Sandstorm|DEV-0198 (NEPTUNIUM)|Iran|Vice Leaker|
|Crimson Sandstorm|CURIUM|Iran|TA456, Tortoise Shell|
|Cuboid Sandstorm|DEV-0228|Iran||
|Denim Tsunami|KNOTWEED|Private sector offensive actor|DSIRF|
|Diamond Sleet|ZINC|North Korea|Labyrinth Chollima, Lazarus|
|Emerald Sleet|THALLIUM|North Korea|Kimsuky, Velvet Chollima|
|Flax Typhoon|Storm-0919|China|Ethereal Panda|
|Forest Blizzard|STRONTIUM|Russia|APT28, Fancy Bear|
|Ghost Blizzard|BROMINE|Russia|Energetic Bear, Crouching Yeti|
|Gingham Typhoon|GADOLINIUM|China|APT40, Leviathan, TEMP.Periscope, Kryptonite Panda|
|Granite Typhoon|GALLIUM|China||
|Gray Sandstorm|DEV-0343|Iran||
|Hazel Sandstorm|EUROPIUM|Iran|Cobalt Gypsy, APT34, OilRig|
|Jade Sleet|Storm-0954|North Korea|TraderTraitor, UNC4899|
|Lace Tempest|DEV-0950|Financially motivated|FIN11, TA505|
|Lemon Sandstorm|RUBIDIUM|Iran|Fox Kitten, UNC757, PioneerKitten|
|Lilac Typhoon|DEV-0234|China||
|Manatee Tempest|DEV-0243|Financially motivated|EvilCorp, UNC2165, Indrik Spider|
|Mango Sandstorm|MERCURY|Iran|MuddyWater, SeedWorm, Static Kitten, TEMP.Zagros|
|Marbled Dust|SILICON|Türkiye|Sea Turtle|
|Marigold Sandstorm|DEV-0500|Iran|Moses Staff|
|Midnight Blizzard|NOBELIUM|Russia|APT29, Cozy Bear|
|Mint Sandstorm|PHOSPHORUS|Iran|APT35, Charming Kitten|
|Mulberry Typhoon|MANGANESE|China|APT5, Keyhole Panda, TABCTENG|
|Mustard Tempest|DEV-0206|Financially motivated|Purple Vallhund|
|Night Tsunami|DEV-0336|Private sector offensive actor|NSO Group|
|Nylon Typhoon|NICKEL|China|ke3chang, APT15, Vixen Panda|
|Octo Tempest|Storm-0875|Financially motivated|0ktapus, Scattered Spider, UNC3944|
|Onyx Sleet|PLUTONIUM|North Korea|Silent Chollima, Andariel, DarkSeoul|
|Opal Sleet|OSMIUM|North Korea|Konni|
|Peach Sandstorm|HOLMIUM|Iran|APT33, Refined Kitten|
|Pearl Sleet|DEV-0215 (LAWRENCIUM)|North Korea||
|Periwinkle Tempest|DEV-0193|Financially motivated|Wizard Spider, UNC2053|
|Phlox Tempest|DEV-0796|Financially motivated|ClickPirate, Chrome Loader, Choziosi loader|
|Pink Sandstorm|AMERICIUM|Iran|Agrius, Deadwood, BlackShadow, SharpBoys|
|Pistachio Tempest|DEV-0237|Financially motivated|FIN12|
|Plaid Rain|POLONIUM|Lebanon||
|Pumpkin Sandstorm|DEV-0146|Iran|ZeroCleare|
|Raspberry Typhoon|RADIUM|China|APT30, LotusBlossom|
|Ruby Sleet|CERIUM|North Korea||
|Salmon Typhoon|SODIUM|China|APT4, Maverick Panda|
|Sangria Tempest|ELBRUS|Financially motivated|Carbon Spider, FIN7|
|Sapphire Sleet|COPERNICIUM|North Korea|Genie Spider, BlueNoroff|
|Seashell Blizzard|IRIDIUM|Russia|Sandworm|
|Secret Blizzard|KRYPTON|Russia|Venomous Bear, Turla, Snake|
|Silk Typhoon|HAFNIUM|China||
|Smoke Sandstorm|BOHRIUM|Iran||
|Spandex Tempest|CHIMBORAZO|Financially motivated|TA505|
|Star Blizzard|SEABORGIUM|Russia|Callisto, Reuse Team|
|Storm-0062|China|DarkShadow, Oro0lxy||
|Storm-0133|Iran|LYCEUM, HEXANE||
|Storm-0216|Financially motivated|Twisted Spider, UNC2198||
|Storm-0257|Group in development|UNC1151||
|Storm-0324|Financially motivated|TA543, Sagrid||
|Storm-0381||Financially motivated||
|Storm-0530|North Korea|H0lyGh0st||
|Storm-0539||Financially motivated||
|Storm-0558||China||
|Storm-0569||Financially motivated||
|Storm-0587|Russia|SaintBot, Saint Bear, TA471||
|Storm-0744||Financially motivated||
|Storm-0784||Iran||
|Storm-0829|DEV-0829|Group in development|Nwgen Team|
|Storm-0835||Group in development|EvilProxy|
|Storm-0842||Iran||
|Storm-0861||Iran||
|Storm-0867|Egypt|Caffeine||
|Storm-0971|Financially motivated|(Merged into Octo Tempest)||
|Storm-0978|Group in development|RomCom, Underground Team||
|Storm-1044|Financially motivated|Danabot||
|Storm-1084|Iran|DarkBit||
|Storm-1099||Russia||
|Storm-1101||Group in development|NakedPages||
|Storm-1113||Financially motivated||
|Storm-1133||Palestinian Authority||
|Storm-1152||Financially motivated||
|Storm-1167||Indonesia||
|Storm-1283||Group in development||
|Storm-1286||Group in development||
|Storm-1295||Group in development|Greatness|
|Storm-1364||Iran||
|Storm-1567||Financially motivated|Akira|
|Storm-1575||Group in development|Dadsec|
|Storm-1674||Financially motivated||
|Strawberry Tempest|Financially motivated|LAPSUS$||
|Sunglow Blizzard||Russia||
|Tomato Tempest|SPURR|Financially motivated|Vatet|
|Vanilla Tempest||Financially motivated||
|Velvet Tempest||Financially motivated||
|Violet Typhoon|ZIRCONIUM|China|APT31|
|[Volt Typhoon](https://www.microsoft.com/security/blog/2023/05/24/volt-typhoon-targets-us-critical-infrastructure-with-living-off-the-land-techniques)||China|BRONZE SILHOUETTE, VANGUARD PANDA|
|Wine Tempest|PARINACOTA|Financially motivated|Wadhrama|
|Wisteria Tsunami|Private sector offensive actor|CyberRoot||
|Zigzag Hail|DUBNIUM|South Korea|Dark Hotel, Tapaoux|

Read our announcement about the new taxonomy for more information: [https://aka.ms/threatactorsblog](https://aka.ms/threatactorsblog)

## Putting intelligence into the hands of security professionals

[Intel profiles in Microsoft Defender Threat Intelligence](../defender/defender-threat-intelligence.md) bring crucial insights about threat actors. These insights enable security teams to get the context they need as they prepare for and respond to threats.

Additionally, the Microsoft Defender Threat Intelligence Intel Profiles API provides the most up-to-date threat actor infrastructure visibility in the industry today. Updated information is crucial in enabling threat intelligence and security operations (SecOps) teams to streamline their advanced threat hunting and analysis workflows. Learn more about this API in the documentation: [Use the threat intelligence APIs in Microsoft Graph (preview)](/graph/api/resources/security-threatintelligence-overview).

## Resources

Use the following query on Microsoft Defender XDR and other Microsoft security products supporting the Kusto query language (KQL) to get information about a threat actor using the old name, new name, or industry name:

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
