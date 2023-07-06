---
title: Use PowerShell to request processing by a custom model
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
description: Learn how to use PowerShell to request processing by a Microsoft Syntex custom model.
---

# Use PowerShell to request processing by a custom model

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

> [!IMPORTANT]
> The Microsoft Syntex PowerShell cmdlets and all other PnP components are open-source tools backed by an active community providing support for them. There is no SLA for open-source tool support from official Microsoft support channels.

Custom models will process newly uploaded files to a library. It's also possible to manually request processing in the UI. However there might be scenarios where it's more efficient to trigger processing through PowerShell.

## Request processing of all items that haven't been previously classified

You can request processing for all items in the library that haven't previously been classified by using this command:

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

Request-PnPSyntexClassifyAndExtract -List "Documents"
```

For lower priority processing, you might also consider using the -OffPeak parameter, which will queue files for processing outside of business hours where your tenant is located. For more information, see [Request-PnPSyntexClassifyAndExtract](https://pnp.github.io/powershell/cmdlets/Request-PnPSyntexClassifyAndExtract.html).

## Request processing of all items in a library

You can request processing of all files in the library, even if they have previously been classified. This step might be useful if you've updated a model or added another model to the library.

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

Request-PnPSyntexClassifyAndExtract -List "Documents" -Force
```

> [!NOTE]
> Using the -Force option with more than 5000 items will automatically enable off peak processing.

## Request processing of all items based on a property

If you want to limit processing to a specific subset of items in a library, you can use a script to select a specific group of files. In the following example, the script allows a field to be selected, and a field value to filter by. More complex queries can be completed using [Get-PnPListItem](https://pnp.github.io/powershell/cmdlets/Get-PnPListItem.html).

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"
$list = Get-PnPList -Identity "Documents"
# Set the field name to filter items by
$fieldName = "Vendor"
# Set the field value to filter by
$fieldFilter = "Fabrikam"

$listItems = (Get-PnPListItem -List $list -fields $fieldName).fieldValues
$targetItems = $listItems | Where-Object -Property Provider -EQ -Value $fieldFilter

# Create a new batch
$batch = New-PnPBatch

# Add files to classify to the batch
foreach ($listItem in $targetItems) {
    Request-PnPSyntexClassifyAndExtract -FileUrl $listItem.FileRef -Batch $classifyBatch
}

# Execute batch
Invoke-PnPBatch -Batch $batch
```

## Request processing of specific files

Processing can also be requested for specific files.

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

Request-PnPSyntexClassifyAndExtract -FileUrl "/sites/finance/documents/contoso contract.docx"
```

The file by file model also supports batching:

```PowerShell
#Note: you're connecting here to the site that holds the document library you want to process
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/finance"

# Create a new batch
$batch = New-PnPBatch

# Add files to classify to the batch
Request-PnPSyntexClassifyAndExtract -FileUrl "/sites/finance/documents/contoso contract.docx" -Batch $batch
Request-PnPSyntexClassifyAndExtract -FileUrl "/sites/finance/documents/relecloud contract.docx" -Batch $batch

# Execute batch
Invoke-PnPBatch -Batch $batch
```
