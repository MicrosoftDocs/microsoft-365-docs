# Export and import document understanding models with PowerShell

> [!IMPORTANT]
> The SharePoint Syntex PowerShell cmdlets and all other PnP components are open-source tools backed by an active community providing support for them. There is no SLA for open-source tool support from official Microsoft support channels.

SharePoint Syntex models can be exported as PnP templates, enabling reuse across Content Centers or tenants.

## Export all models in a Content Center

To export all models in a Content Center into a single PnP template, use the following [PnP PowerShell](https://pnp.github.io/powershell/) cmdlets:

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Get-PnPSiteTemplate -Out MyModels.pnp -Handlers SyntexModels
```

## Export Specific Models

To export specific models from a Content Center into a PnP template, use the following [PnP PowerShell](https://pnp.github.io/powershell/) cmdlets:

```powershell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Get-PnPSiteTemplate -Out MyModels.pnp -Configuration .\extract.json
```

The extract.json defines which models you want to export, allowing to specify model by name or id and optionally configuring to not extract training data

### Example- Specify model by name

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

### Example- Specify model by id

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

If you do not include the property "includeTrainingData", the default behavior is to include.

> NOTE: training data is required for a model to be editable when imported to a destination Content Center

## Import models to a content center
Document understanding models that have been exported to PnP templates can be imported to a content center on any tenant. If the export included training data, then the model will be editable once imported.

To import a model, use the following commands:

```PowerShell
Connect-PnPOnline -Url "https://contoso.sharepoint.com/sites/yourContentCenter"

Invoke-PnPSiteTemplate -Path .\sampleModel.pnp
```