---
title: Threat filtering stack in Microsoft Defender for Office 365 
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 04/05/2021
audience: ITPro
ms.topic: conceptual
localization_priority: Normal
description: Follow the path of an incoming message through the threat filtering stack in Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---
# Threat filtering in Microsoft Defender for Office 365, step-by-step

> [!TIP]
> Stay tuned till the end of this article for the unified graphic.

The Microsoft Defender for Office 365 (MDO) filtering stack can be broken out into 4 phases, as in this article. Generally speaking, incoming mail passes through all of these phases before delivery, but the actual path email takes is subject to an organization's MDO configuration.

## Phase 1 - Edge Protection

Unfortunately, Edge blocks that were once *critical* are now relatively simple for bad actors to overcome. Over time, less traffic is blocked here, but it remains an important part of the stack.  

Edge blocks are designed to be automatic. In the case of false positive, senders will be notified and told how to address their issue. Connectors from trusted partners with limited reputation can ensure deliverability, or temporary overrides can be put in place, when onboarding new endpoints.

:::image type="content" source="../../media/mdo-filtering-stack/mdo-filter-stack-phase1.PNG" alt-text="Phase 1 of filtering in MDO is Edge Protection.":::

1. **Network throttling** protects Office 365 infrastructure and customers from Denial of Service (DOS) attacks by limiting the number of messages that can be submitted by a specific set of infrastructure.

2. **IP reputation and throttling** will block messages being sent from known bad connecting IP addresses. If a specific IP sends many messages in a short period of time they will be throttled.

3. **Domain reputation** will block any messages being sent from a known bad domain.

4. **Directory-based edge filtering** blocks attempts to harvest an organization’s directory information through SMTP.

5. **Backscatter detection** prevents an organization from being attacked through invalid non-delivery reports (NDRs).

6. **Enhanced filtering for connectors** preserves authentication information even when traffic passes through another device before it reaches Office 365. This improves filtering stack accuracy, including heuristic clustering, anti-spoofing, and anti-phishing machine learning models, even when in complex or hybrid routing scenarios.

## Phase 2

## Phase 3

## Phase 4

## The complete diagram

## More information

Special thanks to Jason Rogers and Giulian Garruba.
