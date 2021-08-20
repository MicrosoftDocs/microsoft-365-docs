---
title: Pull detections to your SIEM tools from Microsoft Defender for Endpoint
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull detections.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Pull detections to your SIEM tools

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configuresiem-abovefoldlink)

## Pull detections using security information and events management (SIEM) tools

>[!NOTE]
>- [Microsoft Defender for Endpoint Alert](alerts.md) is composed from one or more detections.
>- [Microsoft Defender for Endpoint Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Device and its related Alert details.
>-The Microsoft Defender for Endpoint Alert API is the latest API for alert consumption and contain a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Defender for Endpoint supports security information and event management (SIEM) tools to pull detections. Defender for Endpoint exposes alerts through an HTTPS endpoint hosted in Azure. The endpoint can be configured to pull detections from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for an AAD application that represents the specific SIEM connector installed in your environment.

Defender for Endpoint currently supports the following specific SIEM solution tools through a dedicated SIEM integration model:

- IBM QRadar
- Micro Focus ArcSight

Other SIEM solutions (such as Splunk, RSA NetWitness) are supported through a different integration model based on the new Alert API. For more information, view the [Partner application](https://securitycenter.microsoft.com/interoperability/partners) page and select the Security Information and Analytics section for full details.

To use either of these supported SIEM tools, you'll need to:

- [Enable SIEM integration in Defender for Endpoint](enable-siem-integration.md)
- Configure the supported SIEM tool:
     - [Configure Micro Focus ArcSight to pull Defender for Endpoint detections](configure-arcsight.md)
     - Configure IBM QRadar to pull Defender for Endpoint detections For more information, see [IBM Knowledge Center](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/com.ibm.dsm.doc/c_dsm_guide_MS_Win_Defender_ATP_overview.html?cp=SS42VS_7.3.1).

For more information on the list of fields exposed in the Detection API, see [Defender for Endpoint Detection fields](api-portal-mapping.md).
