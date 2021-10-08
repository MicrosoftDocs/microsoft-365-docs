---
title: Use Power Automate
description: Learn about power automate in Microsoft 365 Defender and how to use them.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, secops
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# Use Power Automate in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](m365d-evaluation.md?ocid=cx-docs-MTPtriallab) or [run your pilot project in production](m365d-pilot.md?ocid=cx-evalpilot).
>

Modern security operations (SecOps) teams need automation to work effectively. To focus on hunting and investigating real threats, SecOps teams use Power Automate to triage through the list of alerts and eliminate the ones that aren't threats.  

## Criteria for resolving alerts

- User has Out-of-office message turned on

- User isn't tagged as high risk

If both are true, SecOps marks the alert as legitimate travel and resolves it. A notification is posted in Microsoft Teams after the alert is resolved. 

## Connect Power Automate to Microsoft Cloud App Security

To create the automation, you'll need an API token before you can connect Power Automate to Microsoft Cloud App Security (MCAS). 

1. Click **Settings**, select **Security extensions**, and then click **Add token** in the **API tokens** tab. 

2. Provide a name for your token, and then click **Generate**. Save the token as you'll need it later.

## Create an automated flow

For the detailed step-by-step process, see the video [here](https://www.microsoft.com/en-us/videoplayer/embed/RWFIRn). 

This video also describes how to connect power automate to MCAS. 

## Related information

- [Integrate Power Automate with Microsoft Cloud App Security](/cloud-app-security/flow-integration)

- [Microsoft Power Automate documentation](/power-automate)
