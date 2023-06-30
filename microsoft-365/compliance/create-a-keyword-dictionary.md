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
ms.date: 06/02/2023
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
description: "Learn the basic steps to creating a keyword dictionary in the Microsoft Purview compliance portal."
---

# Create a keyword dictionary

Microsoft Purview Data Loss Prevention (DLP) can identify, monitor, and protect your sensitive items. Identifying sensitive items sometimes requires looking for keywords, particularly when identifying generic content (such as healthcare-related communication), or inappropriate or explicit language. Although you can create keyword lists in sensitive information types, keyword lists are limited in size and require modifying XML to create or edit them. In contrast, keyword dictionaries provide simpler management of keywords and at a much larger scale, supporting up to 1 MB of terms (post-compression) in the dictionary. Additionally, keyword dictionaries can support any language. The tenant limit is also 1 MB after compression. A post-compression limit of 1 MB means that all dictionaries combined across a tenant can have close to one million characters.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Keyword dictionary limits

You can create up to 50 sensitive information types per tenant that are based on keyword dictionaries. To find out how many keyword dictionaries you have in your tenant, follow the procedures in [Connect to the Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) to connect to your tenant and then run this PowerShell script:

```powershell
$rawFile = $env:TEMP + "\rule.xml"

$kd = Get-DlpKeywordDictionary
$ruleCollections = Get-DlpSensitiveInformationTypeRulePackage
[System.IO.File]::WriteAllBytes((Resolve-Path $rawFile), $ruleCollections.SerializedClassificationRuleCollection)
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

The keywords for your dictionary can come from various sources, most commonly from a file (such as a .csv or .txt list) imported in the service or via a PowerShell cmdlet, from a list you enter directly in the PowerShell cmdlet, or from an existing dictionary. When you create a keyword dictionary, you follow the same core steps:

1. Use the *<a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> or connect to  **Microsoft Purview compliance portal PowerShell**.

2. **Define or load your keywords from your intended source**. The wizard and the cmdlet both accept a comma-separated list of keywords to create a custom keyword dictionary, so this step will vary slightly depending on where your keywords come from. Once loaded, they're encoded and converted to a byte array before they're imported.

3. **Create your dictionary**. Choose a name and description and create your dictionary.

## Create a keyword dictionary using the Microsoft Purview compliance portal

Use the following steps to create and import keywords for a custom dictionary:

1. Connect to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

2. Navigate to **Data Classifications > Classifiers > Sensitive info types**.

3. Select **Create** and then enter a **Name** and **Description** for your sensitive info type. Choose **Next**.
 
4. On the **Define patterns for this sensitive info type** page, choose **Create pattern**.

5. In the **New pattern** window, select a **Confidence level**.

6. Choose **Add a Primary element** and select **Keyword dictionary** list of options.

7. Still in the **New Pattern** window, for **Character proximity**, specify how far away (in number of characters) that any supporting elements must be to be detected. The closer the primary and supporting elements are to each other, the more likely the detected content is going to be what you're looking for.

8. Add the **Supporting elements** you wish to use to increase the accuracy of detecting what you're looking for.

9. Add any **Additional checks** and then choose **Create**.
 
10. Choose **Next** to continue creating your sensitive information type. When you are finished, choose **Done**.

## Create a keyword dictionary from a file using PowerShell

Often when you need to create a large dictionary, it's so you can use keywords from a file or a list exported from some other source. In the example that follows, you'll create a keyword dictionary containing a list of diseases to screen in external email. To begin, you'll need to [connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

1. Copy your keywords into a text file and make sure that each keyword is on a separate line.

2. Save the text file with Unicode encoding. In Notepad, navigate to \> **Save As** \> **Encoding** \> **Unicode**.

3. Read the file into a variable by running this cmdlet:

    ```powershell
    $fileData = [System.IO.File]::ReadAllBytes('<filename>')
    ```

4. Create the dictionary by running this cmdlet:

    ```powershell
    New-DlpKeywordDictionary -Name <name> -Description <description> -FileData $fileData
    ```

## Using keyword dictionaries in custom sensitive information types and DLP policies

Keyword dictionaries can be used as part of the match requirements for a custom sensitive information type, or as a sensitive information type themselves. Both require you to create a [custom sensitive information type](create-a-custom-sensitive-information-type-in-scc-powershell.md). Follow the instructions in the linked article to create a sensitive information type. Once you have the XML, you'll need the GUID identifier from the XML in order to use the dictionary.

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

`RunspaceId        : 138e55e7-ea1e-4f7a-b824-79f2c4252255` <br>
`Identity          : 8d2d44b0-91f4-41f2-94e0-21c1c5b5fc9f` <br>
`Name              : Diseases` <br>
`Description       : Names of diseases and injuries from ICD-10-CM lexicon`<br>
`KeywordDictionary : aarskog's syndrome, abandonment, abasia, abderhalden-kaufmann-lignac, abdominalgia, abduction contracture, abetalipo`
                    `proteinemia, abiotrophy, ablatio, ablation, ablepharia,abocclusion, abolition, aborter, abortion, abortus, aboulomania,`
                    `abrami's disease, abramo` <br>
`IsValid           : True` <br>
`ObjectState       : Unchanged` <br>

Paste the **identity** value into the XML for your custom sensitive information type as the **idRef**. Next, upload the XML file. Your dictionary now appears in your list of sensitive information types and you can use it right in your policy, specifying how many keywords are required to match.

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
> Microsoft 365 Information Protection supports double-byte character set languages for:
>
> - Chinese (simplified)
> - Chinese (traditional)
> - Korean
> - Japanese
>
> This support is available for sensitive information types. See, [Information protection support for double byte character sets release notes (preview)](mip-dbcs-relnotes.md) for more information.

> [!TIP]
> To detect patterns containing Chinese/Japanese characters and single byte characters or to detect patterns containing Chinese/Japanese and English, define two variants of the keyword or regex.
>
> - For example, to detect a keyword like "机密的document", use two variants of the keyword; one with a space between the Japanese and English text and another without a space between the Japanese and English text. So, the keywords to be added in the SIT should be "机密的 document" and "机密的document". Similarly, to detect a phrase "東京オリンピック2020", two variants should be used; "東京オリンピック 2020" and "東京オリンピック2020".
>
> Along with Chinese/Japanese/double byte characters, if the list of keywords/phrases also contains non-Chinese/Japanese words also (for instance, stand-alone English words), you should create two dictionaries/keyword lists. One for keywords containing Chinese/Japanese/double byte characters and another one for English words.
>
> - For example, if you want to create a keyword dictionary/list with three phrases "Highly confidential", "機密性が高い" and "机密的document", the it you should create two keyword lists.
>   1. Highly confidential
>   2. 機密性が高い, 机密的document and 机密的 document
>
> While creating a regex using a double byte hyphen or a double byte period, make sure to escape both the characters like one would escape a hyphen or period in a regex. Here is a sample regex for reference:
>
> - `(?<!\d)([4][0-9]{3}[\-?\-\t]*[0-9]{4}`
>
> We recommend using a string match instead of a word match in a keyword list.
