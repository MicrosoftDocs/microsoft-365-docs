---
title: "Microsoft 365 denial-of-service defense strategy"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, you can find an overview of Microsoft defense strategy for denial-of-service (DoS) attacks.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 denial-of-service defense strategy

Microsoft's strategy to defend against network-based denial-of-service (DoS) attacks is unique due to our scale and global footprint. This scale allows Microsoft to utilize strategies and techniques few organizations, providers, or customer organizations can match. The cornerstone of the DoS strategy is our global presence. Microsoft engages with Internet providers, peering providers (public and private), and private corporations all over the world. This gives Microsoft a significant Internet presence and enables Microsoft to absorb attacks across a large surface area.

Given this unique nature, Microsoft uses detection and mitigation processes that differ from ones used by large enterprises. The strategy is based on a separation of detection and global distributed mitigation through many network edges. Many enterprises use third-party solutions to detect and mitigate attacks at the edge. As the edge capacity for Microsoft grew, it became clear the significance of any attack against individual or particular edges was low. Because of this unique configuration, Microsoft separated the detection and mitigation components. Microsoft deploys multi-tiered detection systems to detect attacks closer to their saturation points while maintaining global mitigation at the edge. This strategy ensures we can handle multiple simultaneous attacks.

One of the most effective and low-cost defenses employed by Microsoft against DoS attacks is reducing service attack surfaces. Unwanted traffic is dropped at the network edge instead of analyzing, processing, and scrubbing the data inline.

At the interface with the public network, Microsoft uses special-purpose security devices for firewall, network address translation, and IP filtering functions. Microsoft also uses global equal-cost multi-path (ECMP) routing. Global ECMP routing is a network framework to ensure that there are multiple global paths to reach a service. With these multiple paths, attacks against services are limited to the region from which the attack originates. Other regions should be unaffected by this attack, as end users would use other paths to reach the service in those regions. Microsoft has also developed internal DoS correlation and detection systems that use flow data, performance metrics, and other information. This is a hyperscale cloud service in Microsoft Azure, which analyzes data collected from various points on Microsoft networks and services. A cross-workload DoS incident response team identifies the roles and responsibilities across teams, the criteria for escalations, and the protocols for engaging various teams and for incident handling. These solutions provide network-based protection against DoS attacks.

Finally, cloud-based workloads are configured with optimized thresholds based on their protocol and bandwidth usage needs to uniquely protect that workload.
