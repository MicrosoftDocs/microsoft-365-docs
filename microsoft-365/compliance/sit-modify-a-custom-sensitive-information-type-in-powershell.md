---
title: "Modify a custom sensitive information type using PowerShell"
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
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: "Learn how to modify a custom sensitive information using PowerShell."
---

# Modify a custom sensitive information type using PowerShell

In Security & Compliance PowerShell, modifying a custom sensitive information type requires you to:

1. Export the existing rule package that contains the custom sensitive information type to an XML file (or use the existing XML file if you have it).

2. Modify the custom sensitive information type in the exported XML file.

3. Import the updated XML file back into the existing rule package.

To connect to Security & Compliance PowerShell, see [Security & Compliance PowerShell](/powershell/exchange/exchange-online-powershell).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Step 1: Export the existing rule package to an XML file

> [!NOTE]
> If you have a copy of the XML file (for example, you just created and imported it), you can skip to the next step to modify the XML file.

1. If you don't already know it, run the [Get-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/get-dlpsensitiveinformationtype) cmdlet to find the name of the custom rule package:

   ```powershell
   Get-DlpSensitiveInformationTypeRulePackage
   ```

   > [!NOTE]
   > The built-in rule package that contains the built-in sensitive information types is named Microsoft Rule Package. The rule package that contains the custom sensitive information types that you created in the Compliance center UI is named Microsoft.SCCManaged.CustomRulePack.

2. Use the [Get-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/get-dlpsensitiveinformationtyperulepackage) cmdlet to store the custom rule package to a variable:

   ```powershell
   $rulepak = Get-DlpSensitiveInformationTypeRulePackage -Identity "RulePackageName"
   ```

   For example, if the name of the rule package is "Employee ID Custom Rule Pack", run the following cmdlet:

   ```powershell
   $rulepak = Get-DlpSensitiveInformationTypeRulePackage -Identity "Employee ID Custom Rule Pack"
   ```

3. Use the following syntax to export the custom rule package to an XML file:

   ```powershell
   [System.IO.File]::WriteAllBytes('XMLFileAndPath', $rulepak.SerializedClassificationRuleCollection)
   ```

   This example exports the rule package to the file named ExportedRulePackage.xml in the C:\My Documents folder.

   ```powershell
   [System.IO.File]::WriteAllBytes('C:\My Documents\ExportedRulePackage.xml', $rulepak.SerializedClassificationRuleCollection)
   ```

## Step 2: Modify the sensitive information type in the exported XML file

Sensitive information types in the XML file and other elements in the file are described earlier in this topic.

## Step 3: Import the updated XML file back into the existing rule package

To import the updated XML back into the existing rule package, use the [Set-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/set-dlpsensitiveinformationtyperulepackage) cmdlet:

```powershell
Set-DlpSensitiveInformationTypeRulePackage -FileData ([System.IO.File]::ReadAllBytes('C:\My Documents\External Sensitive Info Type Rule Collection.xml'))
```

For detailed syntax and parameter information, see [Set-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/set-dlpsensitiveinformationtyperulepackage).

## More information

- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Sensitive information type functions](sit-functions.md)
