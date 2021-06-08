---
title: "Create a keyword dictionary"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date: 
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Learn the basic steps to creating a keyword dictionary in the Office 365 Security & Compliance Center."
---

# Create a keyword dictionary

Data loss prevention (DLP) can identify, monitor, and protect your sensitive items. Identifying sensitive items sometimes requires looking for keywords, particularly when identifying generic content (such as healthcare-related communication), or inappropriate or explicit language. Although you can create keyword lists in sensitive information types, keyword lists are limited in size and require modifying XML to create or edit them. Keyword dictionaries provide simpler management of keywords and at a much larger scale, supporting up to 1 MB of terms (post compression) in the dictionary and support any language. The tenant limit is also 1 MB after compression. 1 MB of post compression limit means that all dictionaries combined across a tenant can have close to 1 million characters.

## Keyword dictionary limits

There is a limit of 50 keyword dictionary based sensitive information types that can be created per tenant. To find out how many keyword dictionaries you have in your tenant, connect using the procedures in [Connect to the Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell) to connect to your tenant and run this PowerShell script.

```powershell
$rawFile = $env:TEMP + "\rule.xml"

$kd = Get-DlpKeywordDictionary
$ruleCollections = Get-DlpSensitiveInformationTypeRulePackage
Set-Content -path $rawFile -Encoding Byte -Value $ruleCollections.SerializedClassificationRuleCollection
$UnicodeEncoding = New-Object System.Text.UnicodeEncoding
$FileContent = [System.IO.File]::ReadAllText((Resolve-Path $rawFile), $unicodeEncoding)

if($kd.Count -gt 0)
{
$count = 0
$entities = $FileContent -split "Entity id"
for($j=1;$j -lt $entities.Count;$j++)
{
for($i=0;$i -lt $kd.Count;$i++)
{
$Matches = Select-String -InputObject $entities[$j] -Pattern $kd[$i].Identity -AllMatches
$count = $Matches.Matches.Count + $count
if($Matches.Matches.Count -gt 0) {break}
}
}

Write-Output "Total Keyword Dictionary SIT:"
$count
}
else
{
$Matches = Select-String -InputObject $FileContent -Pattern $kd.Identity -AllMatches
Write-Output "Total Keyword Dictionary SIT:"
$Matches.Matches.Count
}

Remove-Item $rawFile
```

## Basic steps to creating a keyword dictionary

The keywords for your dictionary could come from various sources, most commonly from a file (such as a .csv or .txt list) imported in the service or by PowerShell cmdlet, from a list you enter directly in the PowerShell cmdlet, or from an existing dictionary. When you create a keyword dictionary, you follow the same core steps:
  
1. Use the **Security & Compliance Center** ([https://protection.office.com](https://protection.office.com)) or connect to  **Security &amp; Compliance Center PowerShell**.
    
2. **Define or load your keywords from your intended source**. The wizard and the cmdlet both accept a comma-separated list of keywords to create a custom keyword dictionary, so this step will vary slightly depending on where your keywords come from. Once loaded, they're encoded and converted to a byte array before they're imported.
    
3. **Create your dictionary**. Choose a name and description and create your dictionary.

## Create a keyword dictionary using the Security & Compliance Center

Use the following steps to create and import keywords for a custom dictionary:

1. Connect to the Security & Compliance Center ([https://protection.office.com](https://protection.office.com)).

2. Navigate to **Classifications > Sensitive info types**.

3. Select **Create** and enter a **Name** and **Description** for your sensitive info type, then select **Next**

4. Select **Add an element**, then select **Dictionary (Large keywords)** in the **Detect content containing** drop-down list.

5. Select **Add a dictionary**

6. Under the Search control, select **You can create new keyword dictionaries here**.

7. Enter a **Name** for your custom dictionary.

8. Select **Import**, and select either **From text** or **From csv** depending on your keyword file type.

9. In the file dialog, select the keyword file from your local PC or network file share, then select **Open**.

10. Select **Save**, then select your custom dictionary from the **Keyword dictionaries** list.

11. Select **Add**, then select **Next**.

12. Review and finalize your sensitive info type selections, then select **Finish**.
    
## Create a keyword dictionary from a file using PowerShell

Often when you need to create a large dictionary, it's to use keywords from a file or a list exported from some other source. In this case, you'll create a keyword dictionary containing a list of inappropriate language to screen in external email. You must first [Connect to Security &amp; Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).
  
1. Copy the keywords into a text file and make sure that each keyword is on a separate line.
    
2. Save the text file with Unicode encoding. In Notepad \> **Save As** \> **Encoding** \> **Unicode**.
    
3. Read the file into a variable by running this cmdlet:
    
    ```powershell
    $fileData = Get-Content <filename> -Encoding Byte -ReadCount 0
    ```

4. Create the dictionary by running this cmdlet:
    
    ```powershell
    New-DlpKeywordDictionary -Name <name> -Description <description> -FileData $fileData
    ```
  
## Using keyword dictionaries in custom sensitive information types and DLP policies

Keyword dictionaries can be used as part of the match requirements for a custom sensitive information type, or as a sensitive information type themselves. Both require you to create a [custom sensitive information type](create-a-custom-sensitive-information-type-in-scc-powershell.md). Follow the instructions in the linked article to create a sensitive information type. Once you have the XML, you'll need the GUID identifier for the dictionary to use it.
  
```xml
<Entity id="9e5382d0-1b6a-42fd-820e-44e0d3b15b6e" patternsProximity="300" recommendedConfidence="75">
    <Pattern confidenceLevel="75">
        <IdMatch idRef=". . ."/>
    </Pattern>
</Entity>
```

To get the identity of your dictionary, run this command and copy the **Identity** property value: 
  
```powershell
Get-DlpKeywordDictionary -Name "Diseases"
```

The output of the command looks like this:
  
`RunspaceId        : 138e55e7-ea1e-4f7a-b824-79f2c4252255`
`Identity          : 8d2d44b0-91f4-41f2-94e0-21c1c5b5fc9f`
`Name              : Diseases`
`Description       : Names of diseases and injuries from ICD-10-CM lexicon`
`KeywordDictionary : aarskog's syndrome, abandonment, abasia, abderhalden-kaufmann-lignac, abdominalgia, abduction contracture, abetalipo`
                    `proteinemia, abiotrophy, ablatio, ablation, ablepharia, abocclusion, abolition, aborter, abortion, abortus, aboulomania,`
                    `abrami's disease, abramo`
`IsValid           : True`
`ObjectState       : Unchanged`


Paste the identity into your custom sensitive information type's XML and upload it. Now your dictionary will appear in your list of sensitive information types and you can use it right in your policy, specifying how many keywords are required to match.
  
```xml
<Entity id="d333c6c2-5f4c-4131-9433-db3ef72a89e8" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="8d2d44b0-91f4-41f2-94e0-21c1c5b5fc9f" />
      </Pattern>
    </Entity>
    <LocalizedStrings>
      <Resource idRef="d333c6c2-5f4c-4131-9433-db3ef72a89e8">
        <Name default="true" langcode="en-us">Diseases</Name>
        <Description default="true" langcode="en-us">Detects various diseases</Description>
      </Resource>
    </LocalizedStrings>
```

> [!NOTE]
> Microsoft 365 Information Protection supports in preview double byte character set languages for:
> - Chinese (simplified)
> - Chinese (traditional)
> - Korean
> - Japanese
>
>This support is available for sensitive information types. See, [Information protection support for double byte character sets release notes (preview)](mip-dbcs-relnotes.md) for more information.
