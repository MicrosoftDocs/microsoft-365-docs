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
- purview-compliance
- tier1
- SPO_Content
description: Identify the PowerShell cmdlets for Microsoft 365 retention that support configuration at-scale, automation, or might be needed for advanced configuration scenarios.
---

# PowerShell cmdlets for retention policies and retention labels

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Use the following sections to identify the main PowerShell cmdlets that are available for retention policies and retention labels that you might need for configuration at-scale, automated scripts, or advanced configuration scenarios. For the full list of  cmdlets, see the [policy-and-compliance-retention list](/powershell/module/exchange#policy-and-compliance-retention) from the PowerShell documentation.

Before you use these cmdlets, you must first [connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

In the descriptions that follow, a policy for retention can refer to a retention policy (no labels), or a retention label policy. Each policy defines whether it's static or adaptive and the locations for the policy to be applied. The policy then requires one rule to complete the configuration.

For example:
- A retention policy needs a rule that defines the retention settings, such as retain for five years and then delete.

When you use retention labels, these contain the retention settings and their policies need different rules:
- A retention label policy that you publish needs a rule that defines which labels should be displayed in apps.
- An auto-apply retention label policy needs a rule that defines the label to apply and the conditions for applying the label.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Retention cmdlets for most locations

Use the cmdlets in the following table when the locations are **Exchange email**, **SharePoint sites**, **OneDrive accounts**, **Microsoft 365 Groups**, **Skype for Business**, **Exchange public folders**, **Teams chat messages**, or **Teams channel messages**.

Don't use these cmdlets when the locations are for Teams private channel messages, Yammer user messages, or Yammer community messages. These locations have alternative cmdlets that are identified in the [next section](#retention-cmdlets-specific-to-teams-private-channels-and-yammer).

|Cmdlet|Description|Applicable locations|
|:-----|:-----|:-----|:-----|
|[Enable-ComplianceTagStorage](/powershell/module/exchange/enable-compliancetagstorage) <br /><br /> [Get-ComplianceTagStorage](/powershell/module/exchange/enable-compliancetagstorage) |A one-time operation to create storage, or view that storage for retention labels |Exchange email <br /><br />SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Get-ComplianceTag](/powershell/module/exchange/get-compliancetag)<br /><br> [New-ComplianceTag](/powershell/module/exchange/new-compliancetag) <br /><br> [Remove-ComplianceTag](/powershell/module/exchange/remove-compliancetag) <br /><br> [Set-ComplianceTag](/powershell/module/exchange/set-compliancetag) |View, create, delete, configure retention labels |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts<br /><br /> Microsoft 365 Groups|
|[Get-RecordReviewNotificationTemplateConfig](/powershell/module/exchange/get-recordreviewnotificationtemplateconfig) <br /><br /> [Set-RecordReviewNotificationTemplateConfig](/powershell/module/exchange/remove-retentioncompliancepolicy)  |View or configure the configuration for disposition review notification and reminder settings |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups|
|[Get-RetentionCompliancePolicy](/powershell/module/exchange/get-retentioncompliancepolicy) <br /><br /> [New-RetentionCompliancePolicy](/powershell/module/exchange/new-retentioncompliancepolicy) <br /><br /> [Remove-RetentionCompliancePolicy](/powershell/module/exchange/remove-retentioncompliancepolicy) <br /><br /> [Set-RetentionCompliancePolicy](/powershell/module/exchange/set-retentioncompliancepolicy) |View, create, delete, configure policies for retention |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts<br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages |
|[Get-RetentionComplianceRule](/powershell/module/exchange/get-retentioncompliancepolicy) <br /><br /> [New-RetentionComplianceRule](/powershell/module/exchange/get-retentioncompliancepolicy) <br /><br /> [Set-RetentionComplianceRule](/powershell/module/exchange/set-retentioncompliancerule) <br /><br /> [Remove-RetentionComplianceRule](/powershell/module/exchange/remove-retentioncompliancerule)  | View, create, configure, delete settings for polices for retention or retention labels |Exchange email <br /><br /> SharePoint sites <br /><br /> OneDrive accounts <br /><br /> Microsoft 365 Groups <br /><br /> Skype for Business <br /><br /> Exchange public folders <br /><br /> Teams chat messages <br /><br /> Teams channel messages |

## Retention cmdlets specific to Teams private channels and Yammer

Use the following cmdlets when the locations are for **Teams private channel messages**, **Yammer user messages**, or **Yammer community messages**.

When the locations are for Teams chat messages, Teams channel messages, Exchange email, SharePoint sites, OneDrive accounts, Microsoft 365 Groups, Skype for Business, or Exchange public folders, use the cmdlets listed in the [previous section](#retention-cmdlets-for-most-locations).

|Cmdlet|Description|Applicable locations|
|:-----|:-----|:-----|:-----|
|[Get-AppRetentionCompliancePolicy](/powershell/module/exchange/get-appretentioncompliancepolicy) <br /><br> [New-AppRetentionCompliancePolicy](/powershell/module/exchange/new-appretentioncompliancepolicy) <br /><br> [Remove-AppRetentionCompliancePolicy](/powershell/module/exchange/remove-appretentioncompliancepolicy) <br /><br> [Set-AppRetentionCompliancePolicy](/powershell/module/exchange/remove-appretentioncompliancepolicy) | View, create, delete, configure retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|
|[Get-AppRetentionComplianceRule](/powershell/module/exchange/get-appretentioncompliancerule) <br /><br /> [New-AppRetentionComplianceRule](/powershell/module/exchange/new-appretentioncompliancerule) <br /><br /> [Remove-AppRetentionComplianceRule](/powershell/module/exchange/remove-appretentioncompliancerule) <br /><br /> [Set-AppRetentionComplianceRule](/powershell/module/exchange/remove-appretentioncompliancerule) | View, create, delete, configure retention settings for retention policies |Teams private channel messages <br /><br /> Yammer user messages <br /><br /> Yammer community messages|

## Configuration guidance

Use the help pages associated with each cmdlet for detailed information and examples.

For guided help to create and then publish retention labels, see [Create and publish retention labels by using PowerShell](bulk-create-publish-labels-using-powershell.md).
