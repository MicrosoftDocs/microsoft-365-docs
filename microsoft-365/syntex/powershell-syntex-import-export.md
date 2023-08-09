---
title: Export and import unstructured document processing models with PowerShell
ms.author: jaeccles
author: jameseccles
ms.reviewer: ssquires
ms.date: 07/06/2023
manager: ssquires
audience: admin
ms.topic: reference
ms.service: microsoft-syntex
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about how to export and import models with PowerShell in Microsoft Syntex.
---

# Export and import unstructured document processing models with PowerShell

<sup>**Applies to:**  &ensp; &#10003; Unstructured document processing </sup>

> [!IMPORTANT]
> The Microsoft Syntex PowerShell cmdlets and all other PnP components are open-source tools backed by an active community providing support for them. There is no SLA for open-source tool support from official Microsoft support channels.

Syntex models can be exported as PnP templates, enabling reuse across content centers or tenants.

## Export all models in a content center

To export all unstructured document processing models in a content center into a single PnP template, use the following [PnP PowerShell](https://pnp.github.io/powershell/) cmdlets:

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Get-PnPSiteTemplate -Out MyModels.pnp -Handlers SyntexModels
```

## Export specific models

To export specific unstructured document processing models from a content center into a PnP template, use the following [PnP PowerShell](https://pnp.github.io/powershell/) cmdlets:

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Get-PnPSiteTemplate -Out MyModels.pnp -Configuration .\extract.json
```

The extract.json defines which models you want to export, allowing to specify model by name or ID and optionally configuring to not extract training data.

### Example - Specify model by name

```json
{
    "$schema": "https://developer.microsoft.com/en-us/json-schemas/pnp/provisioning/202102/extract-configuration.schema.json",
    "persistAssetFiles": true,
    "handlers": [        
        "SyntexModels"
    ],
    "syntexModels": {
        "models": [
            {
                "name": "Sample - benefits change notice.classifier"
            }
        ]
    }
}
```

### Example - Specify model by ID

```json
{
    "$schema": "https://developer.microsoft.com/en-us/json-schemas/pnp/provisioning/202102/extract-configuration.schema.json",
    "persistAssetFiles": true,
    "handlers": [        
        "SyntexModels"
    ],
    "syntexModels": {
        "models": [
            {
                "id": 3,
                "excludeTrainingData": true
            }
        ]
    }
}
```

If you don't include the property "includeTrainingData", the default behavior is to include.

> [!NOTE]
> Training data is required for a model to be editable when imported to a destination content center.

## Import models to a content center

Unstructured document processing models that have been exported to PnP templates can be imported to a content center on any tenant. If the export included training data, then the model will be editable once imported.

To import a model, use the following commands:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\sampleModel.pnp
```
