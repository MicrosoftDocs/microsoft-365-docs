---
title: "Test your DLP policies"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: "Learn how to use the Test-DlpPolicies cmdlet on items in SharePoint Online and OneDrive for Business to see which DLP policies are matched"
---

# Test your Data Loss Prevention policies
 
Testing and tuning the behavior and impact of your Microsoft Purview Data Loss Prevention (DLP) policies is a necessary element of your DLP policy deployment. This article introduces you to some of the basic methods you can use to test policies in your DLP environment.

## Test mode

When you deploy a new policy, [you should run it in test mode](dlp-overview-plan-for-dlp.md#policy-deployment) and then use the [view the reports for](view-the-dlp-reports.md) and any [alerts](dlp-alerts-dashboard-learn.md) to assess the impact. Test mode allows you to see the impact of an individual policy on all the items that are in the policies scope. You use it to find out what items match a policy.

## Test-DlpPolicies (preview)

**Test-DlpPolicies** is a cmdlet that allows you to see what Sharpoint Online and OneDrive for Business scoped DLP policies match/don't match an individual item in SharePoint Online or OneDrive for Business. 

### Before you begin

- You must be able to connect to [Connect to Security & Compliance PowerShell](/powershell/exchange/exchange-online-powershell)
- You must have a valid smtp address to send the report to. For example: **dlp_admin<!--no address-->@contoso.com**.
- You must get the site ID where the item is located.
- You must have the direct link path to the item.

> [!IMPORTANT]
>
> - Test-DlpPolicies only works for items that are in SharePoint Online (SPO) or OneDrive for Business (ODB).
>- It will only report results for policies that include SharePoint Online in their scope.
> - Test-DlpPolices works only with simple conditions. It doesn't work with complex, grouped, or nested conditions.

### Use Test-DlpPolices

To see which DLP policies an item will match, follow these steps:

#### Get the direct link path to the item

1. Open the SharePoint or OneDrive folder in a browser

1. Select the files ellipsis and select **details**

1. In the details pane, scroll down and select **Path** (Copy direct link). Save it.

For example:

**http<!--nourl-->s://contoso.sharepoint.com/personal/user_contoso_com/Documents/test.docx**

#### Get the site ID

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

1. Use the following syntax to get the site id and save it.

```powershell
$e = $r.EmailAddresses | Where-Object {$_ -like '*SPO*'} 
$siteID = e.Substring(8,36)
```
For example:

`36ca70ab-6f38-7f3c-515f-a71e59ca6276`

#### Run Test-DlpPolicies

1. Run this syntax in the PowerShell window
 

```powershell
Test-DlpPolicies -workload <workload> -Fileurl <path/direct link> -SendReportTo <smtpaddress>
```

For example:

`Test-DlpPolicies -workload <ODB> -Fileurl <https://contoso.sharepoint.com/personal/user_contoso_com/Documents/test.docx> -SendReportTo <dlp_admin@contoso.com>`

For detailed syntax and parameter information, see [Test-DlpPolicies](/powershell/module/exchange/test-dlppolicies).


### Interpret the report

The report is sent to the smtp address you passed the the Test-DlpPolicies PowerShell command. There are multiple fields, here are explanations of the most important ones.


|Field name  |Means  |
|---------|---------|
|Classification ID     |The sensitive information type (SIT) the item is categorized as.         |
|Confidence     |The [confidence level](/sensitive-information-type-learn-about.md#more-on-confidence-levels) of the SIT.         |
|Count     |The total number of times the SIT value was found in the item, this includes duplicates.          |
|Unique Count     |The number SIT values found in the item with duplicates eliminated.         |
|Policy Details     |The name and GUID of the policy that was evaluated.         |
|Rules - Rule Details     |The DLP rule name and GUID.        |
|Rules - Predicates - Name     |The condition defined in the DLP rule.         |
|Rules - Predicates - IsMatch     | Whether the item matched the conditions.        |
|Predicates - Past Actions    |Any actions, like notify user, block, block with override that have been taken on the item.         |
|Predicates - Rule's Actions     |The action defined in the DLP rule.         |
|Predicates - IsMatched     | Whether the item matched the rule.        |
|IsMatched     |Whether the item matched the overall policy.         |