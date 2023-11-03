---
title: Manage the deception feature in Microsoft 365 Defender
description: Detect human-operated attacks with lateral movement in the early stages using high confidence signals from the deception feature in Microsoft 365 Defender.
keywords:  deception, defender for endpoint, Microsoft 365 Defender, Microsoft defender for endpoint, lures, fake hosts, fake users, fake network, honeypot, honeytoken, decoy, fake host, fake user, deception technology
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 11/15/2023
---

# Manage the deception feature in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Microsoft Defender for Endpoint

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before commercially release. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Various attacks put data security at risk today. [Business email compromise (BEC)](https://www.microsoft.com/en-us/security/business/security-101/what-is-business-email-compromise-bec), [ransomware](/security/ransomware/), organizational breaches, and nation-state attacks often use lateral movement and can be hard to detect with high confidence in the early stages. Microsoft 365 Defender, through built-in deception capability, delivers high confidence signals on the early stages of these attacks, preventing attacks from reaching an organization's critical assets.

The Microsoft 365 Defender built-in deception feature gives important information and alerts security teams. The feature is designed to provide high-confidence detections and disruption of human-operated lateral movement. With deception built in, you can automatically deploy decoys and lures to attract attackers without having the need for other appliances or deployments. Microsoft 365 Defender alerts security teams when an attacker interacts with a fake account or device that the deception feature set up. The defenders can then use the information to investigate the activity and observe the attacker's methods and strategies.  

This article gives an overview of the deception feature, requirements to enable the feature, and other resources.

## Prerequisites

The following table lists the requirements to enable the deception feature in Microsoft 365 Defender.

> [!div class="mmx-tdCol2BreakAll"]
> |Requirement|Details|
> |-------------|----------|
> |Subscription requirements|One of these subscriptions:</br> - E5 plan</br> - Microsoft Defender for Endpoint Plan 3|
> |Deployment requirements|Microsoft Defender for Endpoint’s device discovery is set to **standard discovery**|
> |Permissions|You must have one of the following roles assigned in the [Microsoft Entra admin center](https://entra.microsoft.com) or in the [Microsoft 365 admin center](https://admin.microsoft.com) to configure deception capabilities:</br> - Global administrator</br> - Security administrator|

## What is deception technology?

Deception technology is a security measure that provides immediate alerts of a potential attack to security teams, allowing them to respond in real-time. Deception technology creates fake assets like devices, users, and hosts that appear to belong to your network. Usually, deception technology is added and deployed to your network as an extra appliance.

Attackers interacting with the fake network assets set up by the deception feature can help security teams prevent potential attacks from compromising an organization and monitor the attackers’ actions so defenders can improve their environment's security further.

### How does the deception feature work?

The deception feature built in the Microsoft 365 Defender portal uses rules to make decoys and lures that match your environment. The feature applies machine learning to suggest decoys and lures that are tailored to your network. You can also use the deception feature to manually create the decoys and lures. These decoys and lures are then deployed to your network automatically.

**Decoys** are fake devices and accounts that appear to belong to your network. **Lures** are fake content planted on specific devices or accounts and are used to attract an attacker. The content can be a document, a configuration file, cached credentials, or any content that an attacker can likely read, steal, or interact with. Lures imitate important company information, settings, or credentials.

There are two types of lures available in the deception feature:

- Basic lures – planted documents, link files, and the like that have no or minimal interaction with the customer environment.  
- Advanced lures – planted content like cached credentials and interceptions that respond or interact with the customer environment. For example, attackers might interact with decoy credentials that were injected responses to Active Directory queries, which can be used to sign in.

> [!NOTE]
> Lures are only planted on Windows clients defined in the scope of a deception rule. However, attempts to use any decoy device or account on any Defender for Endpoint-onboarded client will raise a deception alert. Learn how to onboard clients in [Onboard to Microsoft Defender for Endpoint](/defender-for-endpoint/onboarding/).

You can specify decoys, lures, and the scope in a deception rule. See [Configure the deception feature](configure-deception.md) to learn more about how to create and modify deception rules.  

When an attacker uses a decoy or a lure, the deception feature triggers an alert that indicates possible attacker activity.

## Identify when deception is detected in your environment

Alerts based on deception detection contain “deceptive” in the title. Some examples of alert titles are:

- Sign-in attempt with a deceptive user account
- Connection attempt to a deceptive host

The alert details contain:

- The *Deception* tag
- The decoy device or user account where the alert originated
- The type of attack like logon attempts or lateral movement attempts

## Next step

- [Configure the deception feature](configure-deception.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]