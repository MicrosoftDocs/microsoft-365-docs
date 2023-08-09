---
title: Publish custom models with PowerShell
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
description: Learn how to publish Microsoft Syntex custom models by using PowerShell.
---

# Publish custom models with PowerShell

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

> [!IMPORTANT]
> The Microsoft Syntex PowerShell cmdlets and all other PnP components are open-source tools backed by an active community providing support for them. There is no SLA for open-source tool support from official Microsoft support channels.

Syntex models typically are deployed to document libraries across your tenant. This can be done by using the content center site, but this can also be done using [PnP PowerShell](https://pnp.github.io/powershell/) as explained in this article.

## Listing the available models in a content center

To get an overview of the models added to the current Syntex content center site, use the [Get-PnPSyntexModel](https://pnp.github.io/powershell/cmdlets/Get-PnPSyntexModel.html) cmdlet:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"
Get-PnPSyntexModel
```

## Apply a model to a library

To apply a model to a library, use the [Publish-PnPSyntexModel](https://pnp.github.io/powershell/cmdlets/Publish-PnPSyntexModel.html) cmdlet:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"
Publish-PnPSyntexModel -Model "Contract Notice" -ListWebUrl "https://contoso.sharepoint.com/sites/finance" -List "Documents"
```

## Understanding where a model is used

Once you've deployed a model to many libraries, you might want to review the list of libraries using your model. This can be done using the [Get-PnPSyntexModelPublication](https://pnp.github.io/powershell/cmdlets/Get-PnPSyntexModelPublication.html) cmdlet:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"
Get-PnPSyntexModelPublication -Identity "Contract Notice"
```

## Removing a model from a library

Removing a model from a library follows the same pattern as applying and can be done using the [Unpublish-PnPSyntexModel](https://pnp.github.io/powershell/cmdlets/Unpublish-PnPSyntexModel.html) cmdlet either interactively or as batch of multiple actions.

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourSite"
Unpublish-PnPSyntexModel -Model "Invoice model" -ListWebUrl "https://contoso.sharepoint.com/sites/finance" -List "Documents"
```

## Apply models in bulk

If you want to publish multiple models to multiple libraries, create an input CSV file listing the models and the target locations:

```CSV
ModelName,TargetSiteUrl,TargetWebServerRelativeUrl,TargetLibraryServerRelativeUrl
Contract Notice,https://contoso.sharepoint.com/sites/Site1,/sites/Site1,/sites/site1/shared%20documents
Contract Notice,https://contoso.sharepoint.com/sites/Site1,/sites/Site1,/sites/site1/other
Trade Confirmation,https://contoso.sharepoint.com/sites/Site2,/sites/Site2,/sites/site2/shared%20documents
```

This CSV file can then be used as an input into a script that will publish the listed models to the appropriate libraries. In the following example, batching is used to increase the efficiency of the requests.

```PowerShell
$contentCenterURL = "https://contoso.sharepoint.com/sites/yourSite"
$targetsCSV = "./Publish-SyntexModelBulk.csv"

Connect-PnPOnline -url $contentCenterURL

$targetLibraries = Import-Csv -Path $targetsCSV

$batch = New-PnPBatch

foreach ($target in $targetLibraries) {
    Publish-PnPSyntexModel -Model $target.ModelName -TargetSiteUrl $target.TargetSiteUrl -TargetWebServerRelativeUrl $target.TargetWebServerRelativeUrl -TargetLibraryServerRelativeUrl $target.TargetLibraryServerRelativeUrl -Batch $batch
}

Invoke-PnPBatch -Batch $batch
```
