---
title: "Identify the available PowerShell cmdlets for retention"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date:
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: normal
ms.collection:
- M365-security-compliance
- SPO_Content
- m365initiative-compliance
description: Identify the PowerShell cmdlets for retention that support configuration at-scale, automation, or might be needed for advanced configuration scenarios.
---

# PowerShell cmdlets for retention policies and retention labels

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*


[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Use the following sections to identify the available PowerShell cmdlets for retention policies and retention labels that you might need for configuration at-scale, automated scripts, or advanced configuration scenarios.

In the descriptions that follow, a policy for retention can refer to a retention policy (no labels), or a retention label policy.

Before you use these cmdlets, you must first [connect to Office 365 Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).


## Retention cmdlets for most locations

Use the cmdlets identified in the following table when the locations are Exchange email, SharePoint sites, OneDrive accounts, Microsoft 365 Groups, Skype for Business, Exchange public folders, Teams chat messages. or Teams channel messages.

Don't use these cmdlets when the locations are for Teams private channel messages, Yammer user messages, or Yammer community messages. These locations have alternative cmdlets that are identified in the [next section](#retention-cmdlets-specific-to-teams-and-yammer).

|Cmdlet|Description|Applicable locations|
|:-----|:-----|:-----|:-----|
|[Enable-ComplianceTagStorage](/powershell/module/exchange/enable-compliancetagstorage) |A one-time operation to create storage for retention labels |Exchange email <br /><br />SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Get-ComplianceTag](/powershell/module/exchange/get-compliancetag) |View retention labels |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts<br /><br /> Microsoft 365 Groups|
|[Get-ComplianceTagStorage](/powershell/module/exchange/enable-compliancetagstorage) |View the created storage for retention labels |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Get-RecordReviewNotificationTemplateConfig](/powershell/module/exchange/get-recordreviewnotificationtemplateconfig) |View the configuration for disposition review notification and reminder settings |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Get-RetentionCompliancePolicy](/powershell/module/exchange/get-retentioncompliancepolicy) |View policies for retention |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts<br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages |
|[Get-RetentionComplianceRule](/powershell/module/exchange/get-retentioncompliancepolicy) | View settings for polices for retention or retention labels |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages |
|[New-ComplianceTag](/powershell/module/exchange/new-compliancetag) |Create a retention label |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[New-RetentionCompliancePolicy](/powershell/module/exchange/new-retentioncompliancepolicy) |Create a policy for retention |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages|
|[New-RetentionComplianceRule](/powershell/module/exchange/get-retentioncompliancepolicy) | Create settings for policies for retention or a retention label |Exchange email <br /><br /> SharePoint sites<br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages|
|[Remove-ComplianceTag](/powershell/module/exchange/remove-compliancetag) |Delete a retention label |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts<br /><br /> Microsoft 365 Groups|
|[Remove-RetentionCompliancePolicy](/powershell/module/exchange/remove-retentioncompliancepolicy) |Delete policies for retention |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages |
|[Set-ComplianceTag](/powershell/module/exchange/set-compliancetag) |Configure the settings for a retention label |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Set-RecordReviewNotificationTemplateConfig](/powershell/module/exchange/remove-retentioncompliancepolicy) |Configure the settings for disposition review notification and reminder settings |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Set-RetentionCompliancePolicy](/powershell/module/exchange/set-retentioncompliancepolicy)| Configure a policy for retention | Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders<br /><br /> Teams chat messages <br /><br /> Teams channel messages |
|[Set-RetentionComplianceRule](/powershell/module/exchange/set-retentioncompliancerule) | Configure settings for retention policies or retention labels |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts<br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages |


## Retention cmdlets specific to Teams and Yammer

Use the following cmdlets when the locations are for Teams private channel messages, Yammer user messages, or Yammer community messages.

|Cmdlet|Description|Applicable locations|
|:-----|:-----|:-----|:-----|
|[Get-AppRetentionCompliancePolicy](/powershell/module/exchange/get-appretentioncompliancepolicy) | View retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[Get-AppRetentionCompliancePolicyRule](/powershell/module/exchange/get-appretentioncompliancepolicyrule) | View retention settings for retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[New-AppRetentionCompliancePolicy](/powershell/module/exchange/new-appretentioncompliancepolicy) | Create a retention policy |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[New-AppRetentionCompliancePolicyRule](/powershell/module/exchange/new-appretentioncompliancepolicyrule) | Create retention settings for retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[Remove-AppRetentionCompliancePolicy](/powershell/module/exchange/remove-appretentioncompliancepolicy) | Delete a retention policy and corresponding settings |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[Remove-AppRetentionCompliancePolicyRule](/powershell/module/exchange/remove-appretentioncompliancepolicyrule) | Delete settings for retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[Set-AppRetentionCompliancePolicy](/powershell/module/exchange/remove-appretentioncompliancepolicy) | Configure retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[Set-AppRetentionCompliancePolicyRule](/powershell/module/exchange/remove-appretentioncompliancepolicyrule) | Configure settings for retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|

## Configuration guidance

Use the help pages associated with each cmdlet for detailed information and examples.

For guided help to create and then publish retention labels, see [Create and publish retention labels by using PowerShell](bulk-create-publish-labels-using-powershell.md).