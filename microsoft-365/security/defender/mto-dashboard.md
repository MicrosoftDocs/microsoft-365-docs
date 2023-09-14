---
title: Defender Vulnerability Management dashboard in multi-tenant management
description: Learn about the capabilities of the vulnerability management dashboard in multi-tenant management in Microsoft 365 Defender
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 09/01/2023
---

# Defender Vulnerability Management dashboard in multi-tenant management

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

You can use the vulnerability management dashboard in multi-tenant management to view aggregated and summarized information across all tenants, such as:

- Your exposure score and exposure level for devices across all tenants.
- Your most exposed tenants along with details of the number of weaknesses, exposed devices, and available recommendations for each tenant.

   :::image type="content" source="../../media/defender/mto-mdvm-dashboard.png" alt-text="Screenshot of the defender vulnerability management dashboard in multi-tenant management in Microsoft 365 Defender" lightbox="../../media/defender/mto-mdvm-dashboard.png":::

The Defender Vulnerability Management dashboard in multi-tenant management provides the following information across all the tenants you have access to:

|Area|Description|
|---|---|
|**Organization Exposure score**|See the current state of your organization's device exposure to threats and vulnerabilities across all tenants.|
|**Most exposed tenants**|Real time visibility into the tenants with the highest current exposure level.|
|**Tenants with the largest increase in exposure**|Identify tenants with the largest increase in exposure over the last 30 days.|
|**Device exposure distribution**|See how many devices are exposed based on their exposure level, across all tenants. Select a section in the doughnut chart to see the number of exposed devices at each level.|
|**Tenant exposure distribution**|View a summary of exposed tenants aggregated by exposure level.|

## Related articles

- [Exposure score](../defender-vulnerability-management/tvm-exposure-score.md)
- [Security recommendations](../defender-vulnerability-management/tvm-security-recommendation.md)
