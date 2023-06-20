---
title: "Test your DLP policies"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
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

# Test your Data Loss Prevention policies (preview)
 
You should test and tune the behavior of your Microsoft Purview Data Loss Prevention (DLP) policies as part of your DLP policy deployment. This article introduces you to some of the basic methods you can use to test policies in your DLP environment.

## Test mode

When you deploy a new policy, [you should run it in test mode,](dlp-overview-plan-for-dlp.md#policy-deployment) and then use the [alerts](dlp-alerts-dashboard-learn.md) to assess the impact. Test mode allows you to see the impact of an individual policy on all the items that are in the policies scope. You use it to find out what items match a policy.

## Test-DlpPolicies (preview)

**Test-DlpPolicies** is a cmdlet that allows you to see what DLP policies scoped to SharePoint and OneDrive match/don't match an individual item in SharePoint or OneDrive.

### Before you begin

- You must be able to connect to [Connect to Security & Compliance PowerShell](/powershell/exchange/exchange-online-powershell).
- You must have a valid smtp address to send the report to. For example: `dlp_admin@contoso.com`
- You must get the site ID where the item is located.
- You must have the direct link path to the item.

> [!IMPORTANT]
>
> - Test-DlpPolicies only works for items that are in SharePoint or OneDrive.
> - It will only report results for policies that include SharePoint alone, OneDrive alone, or SharePoint and OneDrive in their scope.
> - Test-DlpPolices works only with simple conditions. It doesn't work with complex, grouped, or nested conditions.

### Use Test-DlpPolices

To see which DLP policies an item will match, follow these steps:

#### Get the direct link path to the item

1. Open the SharePoint or OneDrive folder in a browser.

1. Select the file's ellipsis and select **details**.

1. In the details pane, scroll down and select **Path**. Copy the direct link and save it.

For example:

`https://contoso.sharepoint.com/personal/user_contoso_com/Documents/test.docx`

#### Get the site ID

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

1. For SharePoint, use the following syntax to get the site ID and save it:

```PowerShell

$reportAddress = "email@contoso.com" 

$siteName = "SITENAME@TENANT.onmicrosoft.com" 

$filePath = "https://Contoso.sharepoint.com/sites/SOMESITENAME/Shared%20Documents/TESTFILE.pptx"  

$r = Get-Mailbox -Identity $siteName -GroupMailbox 

$e = $r.EmailAddresses | Where-Object {$_ -like '*SPO*'} 

Test-DlpPolicies -SiteId $e.Substring(8,36) -FileUrl $filePath -Workload SPO -SendReportTo $reportAddress

```

3. For OneDrive use the following syntax to get the site id and save it.
```PowerShell

$reportAddress = "email@contoso.com" 

$odbUser = "USER@TENANT.onmicrosoft.com" 

$filePath = "https://contoso-my.sharepoint.com/personal/userid_contoso_onmicrosoft_com/Documents/TESTFILE.docx" 

$r = Get-Mailbox -Identity $odbUser 

$e = $r.EmailAddresses | Where-Object {$_ -like '*SPO*'} 

Test-DlpPolicies -SiteId $e.Substring(8,36) -FileUrl $filePath -Workload ODB -SendReportTo $reportAddress

```

Here's an example of a returned value:

`36ca70ab-6f38-7f3c-515f-a71e59ca6276`

#### Run Test-DlpPolicies

1. Run the following syntax in the PowerShell window:

```powershell
Test-DlpPolicies -workload <workload> -Fileurl <path/direct link> -SendReportTo <smtpaddress>
```

For example:

`Test-DlpPolicies -workload <ODB> -Fileurl <https://contoso.sharepoint.com/personal/user_contoso_com/Documents/test.docx> -SendReportTo <dlp_admin@contoso.com>`

For detailed syntax and parameter information, see [Test-DlpPolicies](/powershell/module/exchange/test-dlppolicies).


### Interpret the report

The report is sent to the SMTP address that you passed the Test-DlpPolicies PowerShell command to. There are multiple fields. Here are explanations of the most important ones.


|Field name  |Means  |
|---------|---------|
|Classification ID     |The sensitive information type (SIT) the item is categorized as         |
|Confidence     |The [confidence level](./sensitive-information-type-learn-about.md#more-on-confidence-levels) of the SIT         |
|Count     |The total number of times the SIT value was found in the item, this includes duplicates          |
|Unique Count     |The number SIT values found in the item with duplicates eliminated         |
|Policy Details     |The name and GUID of the policy that was evaluated         |
|Rules - Rule Details     |The DLP rule name and GUID        |
|Rules - Predicates - Name     |The condition defined in the DLP rule         |
|Rules - Predicates - IsMatch     | Whether the item matched the conditions        |
|Predicates - Past Actions    |Any actions, like notify user, block, block with override that 's been taken on the item         |
|Predicates - Rule's Actions     |The action defined in the DLP rule         |
|Predicates - IsMatched     | Whether the item matched the rule        |
|IsMatched     |Whether the item matched the overall policy         |

## See Also

- [Test-DataClassification](/powershell/module/exchange/test-dataclassification) explains how to use the PowerShell cmdlet `Test-DataClassification `.
- [Test-Message](powershell/module/exchange/test-message) explains how to use the PowerShell cmdlet `Test-Message`.