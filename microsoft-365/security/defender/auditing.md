---
title: How to search the audit logs for actions performed by Defender Experts
ms.reviewer:
description: As a tenant administrator, you can use Microsoft Purview to search the audit logs for the actions Microsoft Defender Experts did in your tenant to perform their investigations
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, real-time visibility with XDR experts, threat hunting and analysis
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 05/29/2023
---

# Auditing

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

As a tenant administrator, you can use Microsoft Purview to search the audit logs for the times Microsoft Defender Experts signed into your tenant and the actions they did there to perform their investigations. You can also search the audit logs for the changes done by your tenant administrators to the Defender Experts settings.

[Audit (Standard)](/microsoft-365/compliance/audit-solutions-overview) is turned on by default for all Microsoft Defender Experts for XDR customers when paid licenses are assigned to the tenant. If you have a trial license, work with your service delivery manager to turn on Audit if it isn't yet.

> [!NOTE]
> Make sure you have the right [permissions](/microsoft-365/compliance/audit-log-search#before-you-search-the-audit-log) to search for audit logs.

## Search the audit logs for actions performed by Defender Experts

1. Sign into the [Microsoft Purview compliance portal](https://compliance.microsoft.com/) to use [Audit New Search](/microsoft-365/compliance/audit-new-search).
2. Provide a **Date and time range (UTC)**.
3. Select the **Workload** and **Record type** from the list shown in the following table to further narrow your search.
4. Select **Search** to list the audit logs related to actions taken by our experts in your tenant.

:::image type="content" source="../../media/xdr/audit.png" alt-text="Partial screenshot of Microsoft Purview compliance portal Defender New search page." lightbox="../../media/xdr/audit.png":::

| Action performed by Defender Experts | Workload | Record type |
|--------------|-----|-----------|
| Sign into customer tenant |  AzureActiveDirectory | AzureActiveDirectoryStsLogon |
| Make changes to incidents in Microsoft 365 Defender portal      |  Microsoft365Defender |  MS365Dincident |
|Make changes to alert suppression rules in Microsoft 365 Defender portal|Microsoft365Defender|MS365DSuppressionRule|
|Make changes to indicators in Microsoft Defender for Endpoint|MicrosoftDefenderForEndpoint|MSDEIndicatorsSettings|
|Perform device remediation actions in Microsoft Defender for Endpoint|MicrosoftDefenderForEndpoint|MSDEResponseActions|

:::image type="content" source="../../media/xdr/audit-2.png" alt-text="Partial screenshot of a sample audit log related to Defender Experts." lightbox="../../media/xdr/audit-2.png":::

## Search the audit logs for actions performed by your administrators in the Defender Experts settings

1. Sign into the [Microsoft Purview compliance portal](https://compliance.microsoft.com/) to use [Audit New Search](/microsoft-365/compliance/audit-new-search).
2. Provide a **Date and time range (UTC)**.
3. Under **Workload**, choose _MicrosoftDefenderExperts_.
4. Select **Search** to list the audit logs related to actions taken by your tenant administrators to the Defender Experts settings.

:::image type="content" source="../../media/xdr/audit-3.png" alt-text="Partial screenshot of Microsoft Purview compliance portal Defender New search page showing the Workload field selected to MicrosoftDefenderExperts." lightbox="../../media/xdr/audit-3.png":::

## Search the audit logs using a PowerShell script

In addition to using Audit New Search in the Microsoft Purview compliance portal, you can use PowerShell cmdlets to search for audit logs. [Learn more](/microsoft-365/compliance/audit-log-search-script).

### See also

[Additional information](additional-information-xdr.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
