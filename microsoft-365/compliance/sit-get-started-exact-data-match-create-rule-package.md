---
title: "Create exact data match sensitive information type/rule package"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Create exact data match sensitive information type/rule package
ms.custom: seo-marvel-apr2020
---

# Create exact data match sensitive information type/rule package

## Applies to

- [Classic experience](sit-create-edm-sit-classic-ux-workflow.md)

You can create an exact data match (EDM) sensitive information type (SIT) by using the [the EDM schema and SIT wizard](#use-the-edm-schema-and-sit-wizard) in the Compliance center or create the rule package XML file [manually](#create-a-rule-package-manually). You can also combine both by using one method to create the schema and later edit it using the other method.

If you are not familiar with EDM based SITS or their implementation, you should familiarize yourself with:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)

## Use the EDM schema and SIT wizard

You can use this wizard to create your sensitive information type (SIT) files to help simplify the process.

An EDM Sensitive Information type is composed of one or more patterns. Each pattern describes a combination of evidence (fields from the schema) that will be used to identify sensitive content in a document or email.

## Pre-requisites

Perform the steps in these articles:

1. [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
2. [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types)
3. [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)

- Whether you will be creating an EDM sensitive information type using the wizard or the rule package XML file via PowerShell, you must have Global admin or Compliance admin permissions to create, test, and deploy a custom sensitive information type through the UI. See [About admin roles in Office 365](/office365/admin/add-users/about-admin-roles).
- Identify one of the built in SITs to use as the Primary elements sensitive information type.
  - If none of the built-in sensitive info types will match the data in the column you selected you will have to create a custom sensitive info type that does.
  - If you selected the Ignored Delimiters option for the primary element column in your schema, make sure the custom SIT you create will match data with and without the selected delimiters.
  - If you use a built in SIT, make sure it will detect exactly the strings you want to select, and not include any surrounding characters or exclude any valid part of the string as stored in your sensitive information table.

See [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md#sensitive-information-type-entity-definitions) and [Create custom sensitive information types in Compliance center](create-a-custom-sensitive-information-type.md).

### Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft Purview compliance portal for your tenant go to **Data classification** > **Exact data matches**.

2. Choose **EDM sensitive info types** and **Create EDM sensitive info type** to open the sensitive info type configuration wizard.

3. Choose **Choose an existing EDM schema** and choose the schema you created in [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types).

4. Choose **Next** and choose **Create pattern**.

5. Choose the **Confidence level** and **Primary element**. To learn more about confidence levels, see [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types).

6. Choose the **Primary element's sensitive info type** to associate it with to define what text in the document will be compared with all the values in the primary element field. See [Sensitive Information Type Entity Definitions](sensitive-information-type-entity-definitions.md) to learn more about the available sensitive information types.

   > [!IMPORTANT]
   > Select a sensitive information type that closely matches the format of the content you want to find. Selecting a sensitive information type that matches unnecessary content, like one that matches all text strings, or all numbers can cause excessive load in the system which could result in sensitive information being missed.

7. Choose your **Supporting elements** and match options.

8. Choose **Done** and **Next**.

9. Choose your desired **Confidence level and character proximity**. This will be the default value for the whole EDM sensitive info type.

10. Choose **Create pattern** if you want to create additional patterns for your EDM sensitive info type.

11. Choose **Next** and fill in a **Name** and **Description for admins**.

12. Review and choose **Submit**.

### Edit or delete the sensitive information type pattern

1. Open **Compliance center** > **Data classification** > **Exact data matches**.

2. Choose **EDM sensitive info types**.

3. Choose the EDM SIT you want to edit.

4. Choose **Edit EDM sensitive info type** or **Delete EDM sensitive info type** from the flyout.

## Working with specific types of data

For performance reasons, it is critical that you use patterns that will minimize the number of unnecessary matches. For example, you might use a sensitive information type based on the regular expression.

`\b\w*\b`

This would match every individual word or number in any document or email. This would cause the service to be overloaded with matches and miss detecting true matches. Using more precise patterns can avoid this situation. Here are some recommendations for identifying the right configuration for some common types of data.

**Email addresses**: Email addresses can be easy to identify, but because they are so common in content they may cause significant load in the system if used as a primary field. Use them only as secondary evidence. If they must be used as primary evidence, try to define a custom sensitive information type that uses logic to exclude their use as `From` or `To` fields in emails, and to exclude those with your company’s email address to reduce the number of unnecessary strings that need to be matched.

**Phone numbers**: Phone numbers can come in many different formats, including or excluding country prefixes, area codes, and separators. To reduce the false negatives while keeping load to a minimum, use them only as secondary elements, exclude all likely separators, like parenthesis and dashes and only include in your sensitive data table the part that will be always present in the phone number.

**Person's names**: Don’t use person’s names as primary elements if using a sensitive information type based on a regular expression as the classification element for this EDM type, because they are difficult to distinguish from common words.

If you must use a primary element that is hard to identify with a specific pattern, like a project code name that could generate lots of matches to be processed, make sure you include keywords in the sensitive information type you use as the classification element for your EDM type. For example, if using project code names that may be regular words, you can use the word `project` as required additional evidence in close proximity to the project name regular expression-based pattern in the sensitive type used as the classification element for your EDM type. Or you might consider using a sensitive type based on a regular dictionary as the classification element for your EDM SIT.

When trying to match numeric strings, specify the allowed ranges of numbers such as the number of digits or the starting digits, if known. If you need to match a relatively flexible range of numbers, you can use keywords in the base SIT to reduce the number of matches. For example, if trying to match account numbers consisting of 7-11 digits, add the words `account`, `customer`, `acct.` to the SIT as required additional evidence. This reduces the likelihood of unnecessary matches that could cause exceeding the limits of matches to be processed by EDM.

If a field you need to use as a primary element follows a simple pattern that might cause large numbers of matches and you can’t add the presence of keywords as additional evidence in the sensitive information type, you can alternatively require a minimum number of occurrences of that pattern. For example, you could use a custom sensitive information type defined in the following way to detect at least 29 other five-digit numbers surrounding a potential five-digit number to match against EDM:

```xml
 <Entity id="98703510-18b3-43d4-961f-15317594beb7"
                  patternsProximity="300"
                  recommendedConfidence="85"
                  relaxProximity="false">
                  <Pattern confidenceLevel="85"
                              proximity="300">
                              <IdMatch idRef="MRN"/>
                              <Match idRef="30 AccountNrs"
                                    minCount="30"
                                    proximity="3000"
                                    uniqueResults="true"/>
                  </Pattern>
      </Entity>
      <Regex id="30 AccountNrs">\d{5}</Regex>
```

In some cases, you might have to identify certain account or record identification numbers that for historical reasons don’t follow a standardized pattern. For example, `Medical Record Numbers` can be composed of many different permutations of letters and numbers within the same organization. Even though it might be hard at first to identify a pattern, closer inspection often lets you narrow down a pattern that describes all valid values without causing an excessive number of invalid matches. For example, it might be detected that “all MRNs are at least seven characters in length, have at least two numerical digits in them, and if they have any letters in them, they start with one”. Creating a regular expression based on such criteria should allow you to minimize unnecessary matches while capturing all the desired values, and further analysis might allow increased precision by defining separate patterns that describe different formats.

## Create a rule package manually

This procedure shows you how to create a file in XML format called a rule package (with Unicode encoding), and then upload it into Microsoft Purview using Security & Compliance PowerShell cmdlets.

> [!NOTE]
> If the SIT that you map to can detect multi-word corroborative evidence, the secondary elements you define in a manually created rule package can be mapped to the SIT. For example, the name `John Smith` would not match as a secondary element because we'd compare `John` and `Smith` found in the content separately to the term `John Smith` uploaded in one of the fields, if that corroborative evidence field wasn't mapped to a SIT that can detect that pattern.
>
> There’s a limit of 10 rule packages in a Microsoft 365 tenant. Since a rule package can contain an arbitrary number of sensitive information types, you can avoid creating a new rule package each time you want to define a new sensitive information type using this method, instead export an existing rule package and add your sensitive information types to the XML before re- uploading it.

1. Create a rule package in XML format (with Unicode encoding), similar to the following example. (You can copy, modify, and use our example.)

   When you set up your rule package, make sure to correctly reference your .csv, .tsv, or pipe (|) delimited sensitive information source table file and **edm.xml** schema file. You can copy, modify, and use our example. In this sample xml the following fields need to be customized to create your EDM sensitive type:

   - **RulePack id & ExactMatch id**: Use [New-GUID](/powershell/module/microsoft.powershell.utility/new-guid) to generate a GUID.

   - **Datastore**: This field specifies EDM lookup data store to be used. You provide the data source name of the configured EDM Schema.

   - **idMatch**: This field points to the primary element for EDM.
   - **Matches**: Specifies the field to be used in exact lookup. You provide a searchable field name in EDM Schema for the DataStore.
   - **Classification**: This field specifies the sensitive information type match that triggers EDM lookup. You can use the name or GUID of an existing built-in or custom sensitive information type.

   > [!NOTE]
   > Be aware that any string that matches the SIT provided will be hashed and compared to every entry in the sensitive information source table. To avoid performance issues if you choose a custom SIT for the classification element, don't use one that will match a large percentage of content. For example one that matches "any number" or "any five-letter word". You can differentiate it by adding supporting keywords or including formatting in the definition of the custom classification SIT.

   - **Match**: This field points to additional evidence found in proximity of idMatch.
   - **Matches**: You provide any field name in EDM Schema for DataStore.
   - **Resource idRef:** This section specifies the name and description for sensitive type in multiple locales
     - You provide GUID for ExactMatch ID.
     - **Name** & **description**: customize as required.

      ```xml
      <RulePackage xmlns="http://schemas.microsoft.com/office/2018/edm">
        <RulePack id="fd098e03-1796-41a5-8ab6-198c93c62b11">
          <Version build="0" major="2" minor="0" revision="0" />
          <Publisher id="eb553734-8306-44b4-9ad5-c388ad970528" />
          <Details defaultLangCode="en-us">
            <LocalizedDetails langcode="en-us">
              <PublisherName>IP DLP</PublisherName>
              <Name>Health Care EDM Rulepack</Name>
              <Description>This rule package contains the EDM sensitive type for health care sensitive types.</Description>
            </LocalizedDetails>
          </Details>
        </RulePack>
        <Rules>
          <ExactMatch id = "E1CC861E-3FE9-4A58-82DF-4BD259EAB371" patternsProximity = "300" dataStore ="PatientRecords" recommendedConfidence = "65" >
            <Pattern confidenceLevel="65">
              <idMatch matches = "SSN" classification = "U.S. Social Security Number (SSN)" />
            </Pattern>
            <Pattern confidenceLevel="75">
              <idMatch matches = "SSN" classification = "U.S. Social Security Number (SSN)" />
              <Any minMatches ="3" maxMatches ="6">
                <match matches="PatientID" />
                <match matches="MRN"/>
                <match matches="FirstName"/>
                <match matches="LastName"/>
                <match matches="Phone"/>
                <match matches="DOB"/>
              </Any>
            </Pattern>
          </ExactMatch>
          <LocalizedStrings>
            <Resource idRef="E1CC861E-3FE9-4A58-82DF-4BD259EAB371">
              <Name default="true" langcode="en-us">Patient SSN Exact Match.</Name>
              <Description default="true" langcode="en-us">EDM Sensitive type for detecting Patient SSN.</Description>
            </Resource>
          </LocalizedStrings>
        </Rules>
      </RulePackage>
      ```

2. Upload the rule package by running the following PowerShell command:

   ```powershell
   New-DlpSensitiveInformationTypeRulePackage -FileData ([System.IO.File]::ReadAllBytes('.\\rulepack.xml'))
   ```

> [!NOTE]
> The syntax of the rule package file is the same as for other sensitive information types. For complete details on the syntax of the rule package file and for additional configuration options, and for instructions on modifying and deleting sensitive information types using PowerShell, [Create a custom sensitive information type using PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md#create-a-custom-sensitive-information-type-using-powershell).

## Next step

- **For classic experience**: [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)
