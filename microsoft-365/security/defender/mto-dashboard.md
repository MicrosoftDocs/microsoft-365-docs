---
title: Defender Vulnerability Management dashboard in the multi-tenant view
description: Learn about the capabilities of the vulnerability management dashboard in the multi-tenant view in Microsoft 365 Defender
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

# Defender Vulnerability Management dashboard in the multi-tenant view

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

You can use the vulnerability management dashboard in the multi-tenant view in Microsoft 365 Defender to view aggregated and summarized information across all tenants, such as:

- Your exposure score for devices across all tenants and the exposure level.
- Your most exposed tenants along with the details for each tenant of number of weaknesses, exposed devices, and available recommendations.
- The risk level of your exposed devices.

   :::image type="content" source="../../media/defender/mto-mdvm-dashboard.png" alt-text="Screenshot of the defender vulnerability management dashboard in the multi-tenant view in Microsoft 365 Defender" lightbox="../../media/defender/mto-mdvm-dashboard.png":::

The Defender Vulnerability Management dashboard in the multi-tenant view provides the following information across all the tenants you have access to:

|Area|Description|
|---|---|
|**Organization Exposure score**|See the current state of your organization's device exposure to threats and vulnerabilities across all tenants. Several factors affect your organization's exposure score: weaknesses discovered in your devices, likelihood of your devices to be breached, value of the devices to your organization, and relevant alerts discovered with your devices. The goal is to lower the exposure score of your organization to be more secure. To reduce the score, you need to remediate the related security configuration issues listed in the security recommendations.|
|**Most exposed tenants**|Real time visibility into the tenants with the highest current exposure level.|
|**Tenants with the largest increase in exposure**|Identify tenants with the largest increase in exposure over the last 30 days.|
|**Device exposure distribution**|See how many devices are exposed based on their exposure level, across all tenants. Select a section in the doughnut chart to see the number of exposed devices and their corresponding exposure risk.|
|**Tenant exposure distribution**|View a summary of exposed tenants aggregated by exposure level.|

## Related topics

- [Exposure score](../defender-vulnerability-management/tvm-exposure-score.md)
- [Security recommendations](../defender-vulnerability-management/tvm-security-recommendation.md)
