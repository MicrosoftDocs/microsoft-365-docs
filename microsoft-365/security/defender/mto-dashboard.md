---
title: Vulnerability management in multi-tenant management
description: Learn about the capabilities of the vulnerability management dashboard in multi-tenant management in Microsoft Defender XDR
search.appverid: met150
ms.service: defender-xdr
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

# Vulnerability management in multi-tenant management

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Microsoft Defender Vulnerability Management dashboard

You can use the Defender Vulnerability Management dashboard in multi-tenant management to view aggregated and summarized information across all tenants, such as:

- Your exposure score and exposure level for devices across all tenants.
- Your most exposed tenants along with details of the number of weaknesses, exposed devices, and available recommendations for each tenant.

   :::image type="content" source="../../media/defender/mto-mdvm-dashboard.png" alt-text="Screenshot of the defender vulnerability management dashboard in multi-tenant management in Microsoft Defender XDR" lightbox="../../media/defender/mto-mdvm-dashboard.png":::

The Defender Vulnerability Management dashboard in multi-tenant management provides the following information across all the tenants you have access to:

|Area|Description|
|---|---|
|**Organization Exposure score**|See the current state of your organization's device exposure to threats and vulnerabilities across all tenants.|
|**Most exposed tenants**|Real time visibility into the tenants with the highest current exposure level.|
|**Tenants with the largest increase in exposure**|Identify tenants with the largest increase in exposure over the last 30 days.|
|**Device exposure distribution**|See how many devices are exposed based on their exposure level, across all tenants. Select a section in the doughnut chart to see the number of exposed devices at each level.|
|**Tenant exposure distribution**|View a summary of exposed tenants aggregated by exposure level.|

## Tenant vulnerability details

The **Tenants page** under **Vulnerability management** includes vulnerability information for all tenants, and at a tenant-specific level, such as exposed devices, security recommendations, weaknesses, and critical CVEs.

   :::image type="content" source="../../media/defender/mto-multi-tenant-view.png" alt-text="Screenshot of multi-tenant vulnerability management in Microsoft Defender XDR" lightbox="../../media/defender/mto-multi-tenant-view.png":::

At the top of the page, you can view the number of tenants and the aggregate number of:

- Exposed devices
- Critical CVEs
- High severity CVEs
- Security recommendations

Select a tenant name to navigate to the Defender Vulnerability Management dashboard for that tenant in the [Microsoft Defender XDR](https://security.microsoft.com/machines) portal.

For more information, see [Microsoft Defender Vulnerability Management dashboard](../defender-vulnerability-management/tvm-dashboard-insights.md).

## Related articles

- [Exposure score](../defender-vulnerability-management/tvm-exposure-score.md)
- [Security recommendations](../defender-vulnerability-management/tvm-security-recommendation.md)
