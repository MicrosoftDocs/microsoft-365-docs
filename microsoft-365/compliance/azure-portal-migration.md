---
title: "Information protection configuration tasks that you used to do in the Azure portal"
f1.keywords:
ms.author: libarson
author: libarson
manager: aashishr
ms.date: 02/27/2023
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: normal
ms.collection: 
- purview-compliance
- tier3
description: Now you can no longer configure Azure Information Protection from the Azure portal, review the functionality that's deprecated or moved to the Microsoft Purview compliance portal.
---

# Configuration that you used to do in the Azure portal for Azure Information Protection

As communicated in the Message Center post MC447310, you can no longer configure Azure Information Protection (AIP) from the Azure portal:

:::image type="content" source="../media/aip-portal.png" alt-text="Before Azure Information Protection was deprecated from the Azure portal.":::

Functionality from these Azure Information Protection pages has either been deprecated or moved to the [Microsoft Purview compliance portal](microsoft-365-compliance-center.md).

## Functionality that's deprecated or moved

Use the following table to help you identify which functionality is deprecated, or how to locate the alternative configuration in the Microsoft Purview compliance portal.

|Azure portal \> Azure Information protection | Deprecated or replacement|
---|---|
**General**	| 
|Quick Start | [Overview of Azure Information Protection](/azure/information-protection/what-is-information-protection)|
|Diagnose and solve problems | Support cases can be opened from the Microsoft Purview compliance portal. <br /><br>You might also find it helpful to browse the available [troubleshooting articles](/microsoft-365/troubleshoot/microsoft-365-compliance-welcome).
**Analytics** |
|Usage report | The analytics feature is deprecated. Instead, use [data classification](data-classification-overview.md) from the Microsoft Purview compliance portal. |
|Activity Logs | The analytics feature is deprecated. Instead, use [data classification](data-classification-overview.md) from the Microsoft Purview compliance portal.|
|Data Discovery | The analytics feature is deprecated. Instead, use [data classification](data-classification-overview.md) from the Microsoft Purview compliance portal.|
|Recommendations | The analytics feature is deprecated. Instead, use [data classification](data-classification-overview.md) from the Microsoft Purview compliance portal.|
|**Classifications** |
|Labels | [Create and configure sensitivity labels in the Microsoft Purview compliance portal](create-sensitivity-labels.md#create-and-configure-sensitivity-labels)|
|Policies | [Create and publish label policies in the Microsoft Purview compliance portal](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy)|
|**Scanner** |
|Clusters | [Create a scanner cluster in the Microsoft Purview compliance portal](deploy-scanner-configure-install.md#create-a-scanner-cluster) |
|Nodes | [Create nodes using PowerShell](deploy-scanner-configure-install.md#install-the-scanner) |
|Network scan jobs | The network scan jobs feature is deprecated.|
|Content scan jobs | [Create a content scan job in the Microsoft Purview compliance portal](deploy-scanner-configure-install.md#create-a-content-scan-job) |
|Repositories | [Configure repositories within content scan jobs](deploy-scanner-configure-install.md#create-a-content-scan-job) |
|**Manage** |
|Configure analytics | The analytics feature is deprecated.|
|Languages | [Configure a sensitivity label for different languages using PowerShell](create-sensitivity-labels.md#additional-label-settings-with-security--compliance-powershell) 
|Protection activation | [Activate protection using Enable-AipService PowerShell cmdlet](/powershell/module/aipservice/enable-aipservice)|
|Unified labeling | The ability to migrate the older labels used by the AIP classic client (deprecated) remains available only to select customers by agreement, so they can finish their migration to unified labeling.|

## Next steps

If you're still using the AIP add-on for Office apps, see [Migrate the Azure Information Protection (AIP) add-in to built-in labeling for Office apps](sensitivity-labels-aip.md).
