---
title: "Remove a custom sensitive information type using PowerShell"
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
description: "Learn how to remove a custom sensitive information type using PowerShell"
---

# Remove a custom sensitive information type using PowerShell

In Security & Compliance PowerShell, there are two methods to remove custom sensitive information types:

- **Remove individual custom sensitive information types**: Use the method documented in [Modify a custom sensitive information type using PowerShell](sit-modify-a-custom-sensitive-information-type-in-powershell.md#modify-a-custom-sensitive-information-type-using-powershell). You export the custom rule package that contains the custom sensitive information type, remove the sensitive information type from the XML file, and import the updated XML file back into the existing custom rule package.

- **Remove a custom rule package and all custom sensitive information types that it contains**: This method is documented in this section.

> [!NOTE]
> Before your remove a custom sensitive information type, verify that no DLP policies or Exchange mail flow rules (also known as transport rules) still reference the sensitive information type.

1. [Security & Compliance PowerShell](/powershell/exchange/exchange-online-powershell)

2. To remove a custom rule package, use the [Remove-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/remove-dlpsensitiveinformationtyperulepackage) cmdlet:

   ```powershell
   Remove-DlpSensitiveInformationTypeRulePackage -Identity "RulePackageIdentity"
   ```

   You can use the Name value (for any language) or the `RulePack id` (GUID) value to identify the rule package.

   This example removes the rule package named "Employee ID Custom Rule Pack".

   ```powershell
   Remove-DlpSensitiveInformationTypeRulePackage -Identity "Employee ID Custom Rule Pack"
   ```

   For detailed syntax and parameter information, see [Remove-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/remove-dlpsensitiveinformationtyperulepackage).

3. To verify that you've successfully removed a custom sensitive information type, do any of the following steps:

   - Run the [Get-DlpSensitiveInformationTypeRulePackage](/powershell/module/exchange/get-dlpsensitiveinformationtyperulepackage) cmdlet and verify the rule package is no longer listed:

     ```powershell
     Get-DlpSensitiveInformationTypeRulePackage
     ```

   - Run the [Get-DlpSensitiveInformationType](/powershell/module/exchange/get-dlpsensitiveinformationtype) cmdlet to verify the sensitive information types in the removed rule package are no longer listed:

     ```powershell
     Get-DlpSensitiveInformationType
     ```

     For custom sensitive information types, the Publisher property value will be something other than Microsoft Corporation.

   - Replace \<Name\> with the Name value of the sensitive information type (for example, Employee ID) and run the [Get-DlpSensitiveInformationType](/powershell/module/exchange/get-dlpsensitiveinformationtype) cmdlet to verify the sensitive information type is no longer listed:

     ```powershell
     Get-DlpSensitiveInformationType -Identity "<Name>"
     ```

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## More information

- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)

- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

- [Sensitive information type functions](sit-functions.md)
