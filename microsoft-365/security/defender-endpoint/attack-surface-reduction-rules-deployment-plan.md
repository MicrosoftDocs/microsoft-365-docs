---
title: Plan attack surface reduction (ASR) rules deployment
description: Provides guidance to plan your attack surface reduction (ASR) rules deployment.
keywords: Attack surface reduction rules deployment, ASR deployment, enable asr rules, configure ASR, host intrusion prevention system, protection rules, anti-exploit rules, anti-exploit, exploit rules, infection prevention rules, Microsoft Defender for Endpoint, configure ASR rules
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jweston-1
ms.author: v-jweston
ms.reviewer: oogunrinde, sugamar
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.topic: article
ms.collection: 
- m365solution-scenario
- M365-security-compliance
ms.date: 1/18/2022
---

# Plan attack surface reduction (ASR) rules deployment

When testing attack surface reduction (ASR) rules it is important to start with the right business unit. You'll want to start with a small group of people in a specific business unit. You can identify some ASR champions within a particular business unit who can provide real-world impact about the ASR rules, and help you tune your implementation.

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/asr-rules-planning-steps.png" alt-text="The ASR rules planning steps" lightbox="images/asr-rules-planning-steps.png":::

## Start with the right business unit

How you select the business unit to roll out your ASR rules  deployment will depend on factors such as:

- Size of business unit
- Availability of ASR rules champions  
- Distribution and usage of:
  - Software
  - Shared folders
  - Use of scripts
  - Office macros
  - Other entities affected by ASR rules

Depending on your business needs, you might decide to include multiple business units to get a broad sampling of software, shared folders, scripts, macros, etc. Conversely, you might decide to limit the scope of your first ASR rules rollout to a single business unit, then repeat the entire ASR rules rollout process to your other business units, one-at-a-time.

## Identify ASR  rules champions

ASR  rules champions are members in your organization that will help with your initial ASR  rules rollout during the preliminary testing and implementation phases. Your champions are typically employees who are more technically adept, and who are not derailed by intermittent work-flow outages. The champions' involvement will continue throughout the broader expansion of ASR rules deployment to your organization. Your ASR rules champions will be first to experience each level of the ASR  rules rollout.

It is important to provide a feedback and response channel for your ASR rules champions to alert you to ASR rules-related work disruptions and receive ASR  rules-rollout related communications.

## Get inventory of line-of-business apps and understand the business unit processes

Having a full understanding of the applications and per-business-unit processes that are used across your organization is critical to a successful ASR rules deployment. Additionally, it is imperative that you understand how those apps are used within the various business units in your organization.
To start, you should get an inventory of the apps that are approved for use across the breadth of the organization. You can use tools such as the Microsoft 365 Apps admin center to help you inventory software applications. See: [Overview of inventory in the Microsoft 365 Apps admin center](/deployoffice/admincenter/inventory).

## Define reporting and response team roles and responsibilities

Clearly articulating roles and responsibilities of persons responsible for monitoring and communicating ASR  rules status and activity is a core activity of ASR  maintenance. Therefore, it is important to determine:

- The person or team responsible for gathering reports
- How and with whom reports are shared
- How escalation is addressed for newly identified threats or unwanted blockages caused by ASR rules

Typical roles and responsibilities include:

- IT admins: Implement ASR rules, manage exclusions. Work with different business units on apps and processes. Assembling and sharing reports to stakeholders
- Certified security operations center (CSOC) analyst: Responsible for investing high-priority, blocked processes, to determine wither the threat is valid or not
- Chief information security officer (CISO): Responsible for the overall security posture and health of the organization

## Ring deployment

For large enterprises, Microsoft recommends deploying ASR  rules in "rings." Rings are groups of devices that are visually represented as concentric circles that radiate outward like non-overlapping tree rings. When the innermost ring is successfully deployed, you can transition the next ring into the testing phase. Thorough assessment of your business units, ASR  rules champions, apps, and processes is imperative to defining your rings.
In most cases, your organization will have designed deployment rings for phased rollouts of Windows updates. You can use your existing ring design to implement ASR  rules.
See: [Create a deployment plan for Windows](/windows/deployment/update/create-deployment-plan)

## Additional topics in this deployment collection

[Attack surface reduction (ASR) rules deployment overview](attack-surface-reduction-rules-deployment.md)

[Test attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-test.md)

[Enable attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-implement.md)

[Operationalize attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-operationalize.md)

[Attack surface reduction (ASR) rules reference](attack-surface-reduction-rules-reference.md)
