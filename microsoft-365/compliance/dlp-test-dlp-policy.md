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
 
Testing and tuning the behavior and impact of your Microsoft Purview Data Loss Prevention (DLP) policies is a necessary element of your DLP policy deployment. This article

## Test mode

When you deploy a new policy, [you should run it in test mode](dlp-overview-plan-for-dlp.md#policy-deployment) and then use the [DLP reports](view-the-dlp-reports) and any [alerts](dlp-alerts-dashboard-learn) to assess the impact. Test mode allows you to see the impact of an individual policy on all the items that are in the policies scope. You use it to find out what items match a policy.

## Test-DlpPolicies

**Test-DlpPolicies** is a cmdlet that allows you to see what policies match an individual item in SharePoint Online or OneDrive for Business. 

Figuring out what policies a given item in SharePoint Online or OneDrive for Business match

What policies match this item?
Are the policies I intended to match this item actually matches?
What policies match this item and what actions are being taken by DLP?

## Before you begin

ACCOUNT PRE-REQS
CONNECTIVITY PRE-REQS
DLP POLICY PRE-REQS
ITEMS IN SPO OR ODB OR SPO AND ODB WITH A URL



## Upload your rule package

To upload your rule package, do the following steps:

1. Save it as an .xml file with Unicode encoding.

2. [Connect to Security & Compliance PowerShell](/powershell/exchange/exchange-online-powershell)

3. Use the following syntax:

   ```powershell
   New-DlpSensitiveInformationTypeRulePackage -FileData ([System.IO.File]::ReadAllBytes('PathToUnicodeXMLFile'))
   ```

   This example uploads the Unicode XML file named MyNewRulePack.xml from C:\My Documents.

   ```powershell
   New-DlpSensitiveInformationTypeRulePackage -FileData ([System.IO.File]::ReadAllBytes('C:\My Documents\MyNewRulePack.xml'))
   ```

   For detailed syntax and parameter information, see [New-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/new-dlpsensitiveinformationtyperulepackage).

   > [!NOTE]
   > The maximum number of rule packages supported is 10, but each package can contain the definition of multiple sensitive information types.

4. To verify that you've successfully created a new sensitive information type, do any of the following steps:

   - Run the [Get-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/get-dlpsensitiveinformationtyperulepackage) cmdlet to verify the new rule package is listed:

     ```powershell
     Get-DlpSensitiveInformationTypeRulePackage
     ```

   - Run the [Get-DlpSensitiveInformationType](/powershell/module/exchange/get-dlpsensitiveinformationtype) cmdlet to verify the sensitive information type is listed:

     ```powershell
     Get-DlpSensitiveInformationType
     ```

     For custom sensitive information types, the Publisher property value will be something other than Microsoft Corporation.

   - Replace \<Name\> with the Name value of the sensitive information type (example: Employee ID) and run the [Get-DlpSensitiveInformationType](/powershell/module/exchange/get-dlpsensitiveinformationtype) cmdlet:

     ```powershell
     Get-DlpSensitiveInformationType -Identity "<Name>"
     ```

## Interpret the report

