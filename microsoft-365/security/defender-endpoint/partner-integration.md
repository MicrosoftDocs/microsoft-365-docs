---
title: Microsoft Defender for Endpoint partner opportunities and scenarios
ms.reviewer: 
description: Learn how you can extend existing security offerings on top of the open framework and a rich set of APIs to build extensions and integrations with Microsoft Defender for Endpoint
keywords: API, partner, extend, open framework, apis, extensions, integrations, detection, management, response, vulnerabilities, intelligence
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Microsoft Defender for Endpoint partner opportunities and scenarios

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)


Partners can easily extend their existing security offerings on top of the open framework and a rich and complete set of APIs to build extensions and integrations with Defender for Endpoint. 

The APIs span functional areas including detection, management, response, vulnerabilities, and intelligence-wide range of use cases. Based on the use case and need, partners can either stream or query data from Defender for Endpoint. 


## Scenario 1: External alert correlation and Automated investigation and remediation
Defender for Endpoint offers unique automated investigation and remediation capabilities to drive incident response at scale. 

Integrating the automated investigation and response capability with other solutions such as network security products or other endpoint security products will help to address alerts. The integration also minimizes the complexities surrounding network and device signal correlation, effectively streamlining the investigation and threat remediation actions on devices.

Defender for Endpoint adds support for this scenario in the following forms:

- External alerts can be pushed into Defender for Endpoint and presented side by side with additional device-based alerts from Defender for Endpoint. This view provides the full context of the alert - with the real process and the full story of attack.

- Once an alert is generated, the signal is shared across all Defender for Endpoint protected endpoints in the enterprise. Defender for Endpoint takes immediate automated or operator-assisted response to address the alert.

## Scenario 2: Security orchestration and automation response (SOAR) integration
Orchestration solutions can help build playbooks and integrate the rich data model and actions that Defender for Endpoint APIs expose to orchestrate responses, such as query for device data, trigger device isolation, block/allow, resolve alert and others.

## Scenario 3: Indicators matching 
Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability is available in Defender for Endpoint and gives the ability to set a list of indicators for prevention, detection, and exclusion of entities. One can define the action to be taken as well as the duration for when to apply the action.

The above scenarios serve as examples of the extensibility of the platform. You are not limited to the examples and we certainly encourage you to leverage the open framework to discover and explore other scenarios.

Follow the steps in [Become a Microsoft Defender for Endpoint partner](get-started-partner-integration.md) to integrate your solution in Defender for Endpoint.

## Related topic
- [Overview of management and APIs](management-apis.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
