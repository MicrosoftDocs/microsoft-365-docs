---
title: "SQL Server connection string entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier2
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "SQL Server connection string sensitive information type entity definition."
---

# SQL Server connection string

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

The string `User Id`, `User ID`, `uid`, or `UserId` followed by the characters and strings outlined in the pattern below.

## Pattern

- the string `User Id`, `User ID`, `uid`, or `UserId`
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string `Password` or `pwd` where `pwd` isn't preceded by a lowercase letter
- an equal sign (=)
- any character that isn't a dollar sign ($), percent symbol (%), greater than symbol (>), at symbol (@), quotation mark ("), semicolon (;), left brace([), or left bracket ({)
- any combination of 7-128 characters that aren't a semicolon (;), forward slash (/), or quotation mark (")
- a semicolon (;) or quotation mark (")

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_SQLServerConnectionString` finds content that matches the pattern.
- A keyword from `CEP_GlobalFilter` isn't found.
- The regular expression `CEP_PasswordPlaceHolder` doesn't find content that matches the pattern.
- The regular expression `CEP_CommonExampleKeywords` doesn't find content that matches the pattern.

```sql
<!---SQL Server Connection String>
<Entity id="e76b6205-d3cb-46f2-bd63-c90153f2f97d" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_SQLServerConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_GlobalFilter" />
            <Match idRef="CEP_PasswordPlaceHolder" />
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
    </Pattern>
</Entity>
```

## Keywords

### CEP_GlobalFilter

- some-password
- somepassword
- secretPassword
- sample

### CEP_PasswordPlaceHolder

This sensitive information type identifies these keywords by using a regular expression, not a keyword list.

- `Password` or `pwd` followed by 0-2 spaces, an equal sign (=), 0-2 spaces, and an asterisk (*)
-OR-
- `Password` or `pwd` followed by:
    - Equal sign (=)
    - Less than symbol (<)
    - Any combination of 1-200 characters that are upper- or lowercase letters, digits, an asterisk (*), hyphen (-), underline (_), or whitespace character
    - Greater than symbol (>)

### CEP_CommonExampleKeywords

This sensitive information type identifies these keywords by using a regular expression, not a keyword list.

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net
