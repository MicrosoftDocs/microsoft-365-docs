---
title: Plan attack surface reduction (ASR) rules deployment
description: Provides guidance to plan your attack surface reduction (ASR) rules deployment.
keywords: Attack surface reduction rules deployment, Microsoft Defender for Endpoint (MDE) ASR deployment, Defender ASR rules, enable asr rules, configure ASR, host intrusion prevention system, protection rules, anti-exploit rules, anti-exploit, exploit rules, infection prevention rules, Microsoft Defender for Endpoint, configure ASR rules
search.product: eADQiWindows 10XVcnh
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
audience: ITPro
author: Dansimp
ms.author: dansimp
ms.reviewer: oogunrinde, sugamar
manager: dansimp
ms.custom: asr
ms.topic: conceptual
ms.collection: 
 - m365-security
 - m365solution-asr-rules
 - highpri
 - tier1
ms.date: 12/18/2022
search.appverid: met150
---

# Plan attack surface reduction (ASR) rules deployment

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Before you test or enable Microsoft Defender for Endpoint (MDE) attack surface reduction (ASR) rules, you should plan how you will roll out your deployment. Careful planning will not only help testing and enabling your ASR rules deployment, but will also be of benefit when you configure ASR rules exceptions. When planning to test or enable attack surface reduction (ASR) rules it is important to start with the right business unit. You'll want to start with a small group of people in a specific business unit. You can identify some ASR champions within a particular business unit who can provide real-world impact about the ASR rules, and help you tune your implementation.

> :::image type="content" source="images/asr-rules-planning-steps.png" alt-text="The ASR rules planning steps. Preparation before you test Microsoft Defender for Endpoint (MDE) ASR rules, or enable MDE ASR rules. " lightbox="images/asr-rules-planning-steps.png":::

> [!IMPORTANT]
>
> While you're going through the process of planning, auditing, and enable ASR rules, it's recommended that you enable the following three _standard protection rules_. See [Attack surface reduction rules by type](attack-surface-reduction-rules-reference.md#attack-surface-reduction-rules-by-type) for important details about the two types of ASR rules.
>
> - [Block credential stealing from the Windows local security authority subsystem (lsass.exe)](attack-surface-reduction-rules-reference.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem)
> - [Block abuse of exploited vulnerable signed drivers](attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers)
> - [Block persistence through Windows Management Instrumentation (WMI) event subscription](attack-surface-reduction-rules-reference.md#block-persistence-through-wmi-event-subscription)
>
> You can typically enable the standard protection rules with minimal noticeable impact to the end user. For an easy method to enable the standard protection rules, see: [Simplified standard protection option](attack-surface-reduction-rules-report.md#simplified-standard-protection-option).

## Start your ASR rules deployment with the right business unit

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

## Identify ASR rules champions

ASR  rules champions are members in your organization that will help with your initial ASR  rules rollout during the preliminary testing and implementation phases. Your champions are typically employees who are more technically adept, and who are not derailed by intermittent work-flow outages. The champions' involvement will continue throughout the broader expansion of ASR rules deployment to your organization. Your ASR rules champions will be first to experience each level of the ASR  rules rollout.

It is important to provide a feedback and response channel for your ASR rules champions to alert you to ASR rules-related work disruptions and receive ASR  rules-rollout related communications.

## Get inventory of line-of-business apps and understand the business unit processes

Having a full understanding of the applications and per-business-unit processes that are used across your organization is critical to a successful ASR rules deployment. Additionally, it is imperative that you understand how those apps are used within the various business units in your organization.
To start, you should get an inventory of the apps that are approved for use across the breadth of the organization. You can use tools such as the Microsoft 365 Apps admin center to help you inventory software applications. See: [Overview of inventory in the Microsoft 365 Apps admin center](/deployoffice/admincenter/inventory).

## Define reporting and response ASR rules team roles and responsibilities

Clearly articulating roles and responsibilities of persons responsible for monitoring and communicating ASR rules status and activity is a core activity of ASR  maintenance. Therefore, it is important to determine:

- The person or team responsible for gathering reports
- How and with whom reports are shared
- How escalation is addressed for newly identified threats or unwanted blockages caused by ASR rules

Typical roles and responsibilities include:

- IT admins: Implement ASR rules, manage exclusions. Work with different business units on apps and processes. Assembling and sharing reports to stakeholders
- Certified security operations center (CSOC) analyst: Responsible for investigating high-priority, blocked processes, to determine whether the threat is valid or not
- Chief information security officer (CISO): Responsible for the overall security posture and health of the organization

## ASR rules ring deployment

For large enterprises, Microsoft recommends deploying ASR rules in "rings." Rings are groups of devices that are visually represented as concentric circles that radiate outward like non-overlapping tree rings. When the innermost ring is successfully deployed, you can transition to the next ring into the testing phase. Thorough assessment of your business units, ASR  rules champions, apps, and processes is imperative to defining your rings.
In most cases, your organization will have designed deployment rings for phased rollouts of Windows updates. You can use your existing ring design to implement ASR  rules.
See: [Create a deployment plan for Windows](/windows/deployment/update/create-deployment-plan)

## Additional topics in this deployment collection

[Attack surface reduction (ASR) rules deployment overview](attack-surface-reduction-rules-deployment.md)

[Test attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-test.md)

[Enable attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-implement.md)

[Operationalize attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-operationalize.md)

[Attack surface reduction (ASR) rules reference](attack-surface-reduction-rules-reference.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
