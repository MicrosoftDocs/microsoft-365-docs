--- 
title: 'Microsoft Defender Threat Intelligence (Defender TI): Infrastructure Chaining'
description: 'In this concept article, learn about infrastructure chaining and how you can apply that process to perform threat infrastructure analysis using Microsoft Defender Threat Intelligence (Defender TI).'
author: alexroland24
ms.author: aroland
manager: dolmont
ms.service: threat-intelligence 
ms.topic: conceptual
ms.date: 08/02/2022
ms.custom: template-concept 
---

# Infrastructure Chaining

Infrastructure chaining leverages the relationships between highly connected datasets to build out an investigation. This process is the core of threat infrastructure analysis and allows organizations to surface new connections, group similar attack activity and substantiate assumptions during incident response.

![Infrastructure chaining](media/infrastructureChaining.png)

## Prerequisites

1. Review [Microsoft Defender Threat Intelligence (Defender TI)’s Data sets overview article](data-sets.md)
2. Review [Microsoft Defender Threat Intelligence (Defender TI)’s Searching and pivoting how-to article](searching-and-pivoting.md)

## All you need is a starting point...

We see attack campaigns employ a wide array of obfuscation techniques such as simple geo filtering to complex tactics like passive OS fingerprinting. This can potentially stop a point in time investigation in its tracks. The screenshot above highlights the concept of infrastructure chaining. With our data enrichment capability, we could start with a piece of malware that attempts to connect to an IP address (possibly a C2). That IP address may have hosted an SSL cert that has a common name such as a domain name. That domain may be connected to a page that contains a unique tracker in the code, such as a NewRelicID or some other analytic ID we may have observed elsewhere. Or, perhaps the domain may have historically been connected to other infrastructure that may shed light on our investigation. The main takeaway is that one data point taken out of context may not be especially useful but when we observe the natural connection to all this other technical data, we can start to stitch together a story.

## An adversary’s outside-In perspective

An adversary’s outside-in perspective enables them to take advantage of your continually expanding web and mobile presence that operates outside of your firewall.

Approaching and interacting with the web and mobile properties as a real user enables Microsoft’s crawling, scanning, and machine-learning technology to disarm adversaries’ evasion techniques by collecting user session data, detecting phishing, malware, rogue apps, unwanted content, and domain infringement at scale. This helps deliver actionable, event-based threat alerts and workflows in the form of [threat intelligence](index.md), [system tags](using-tags.md), [analyst insights](analyst-insights.md), and [reputation scores](reputation-scoring.md) associated with adversaries’ infrastructure.

As more threat data becomes available, more tools, education, and effort are required for analysts to understand the data sets and their corresponding threats. Microsoft Defender Threat Intelligence (Defender TI) unifies these efforts by providing a single view into multiple data sources.

## Next steps
For more information, see [Tutorial: Gathering threat intelligence and infrastructure chaining](gathering-threat-intelligence-and-infrastructure-chaining.md).
