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
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Create exact data match sensitive information type/rule package
ms.custom: seo-marvel-apr2020
---

# Create exact data match sensitive information type/rule package

You can create the exact data match (EDM) sensitive information type (SIT) by using the [the EDM schema and SIT wizard](#use-the-edm-schema-and-sit-wizard) in the Compliance center or create the rule package XML file [manually](#create-a-rule-package-manually). You can also combine both by using one method to create the schema and later edit it using the other method.

If you are not familiar with EDM based SITS or there implementation, you should familiarize yourself with:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)

## Use the EDM schema and SIT wizard

You can use this wizard to create your sensitive information type (SIT) files to help simplify the process.

An EDM Sensitive Information type is composed of one or more patterns. Each pattern describes a combination of evidence (fields from the schema) that will be used to identify sensitive content in a document or email. 

## Pre-requisites

Perform the steps in:

1. [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
2. [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types)
3. [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)

- Whether you will be creating an EDM sensitive information type using the Wizard or the rule package XML file via PowerShell, you must have Global admin or Compliance admin permissions to create, test, and deploy a custom sensitive information type through the UI. See [About admin roles in Office 365](/office365/admin/add-users/about-admin-roles).
- Identify one of the built in SITs to use as the Primary elements sensitive information type.
    - If none of the built-in sensitive info types will match the data in the column you selected you will have to create a custom sensitive info type that does.
    - If you selected the Ignored Delimiters option for the primary element column in your schema, make sure the custom SIT you create will match data with and without the selected delimiters. 
    - If you use a built in SIT, make sure it will detect exactly the strings you want to select, and not include any surrounding characters or exclude any valid part of the string as stored in your sensitive information table. 
See [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md#sensitive-information-type-entity-definitions) and [Get started with custom sensitive information types](create-a-custom-sensitive-information-type.md#get-started-with-custom-sensitive-information-types). 
     


### Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft 365 Compliance center for your tenant go to **Data classification** > **Exact data matches**.

2. Choose **EDM sensitive info types** and **Create EDM sensitive info type** to open the sensitive info type configuration wizard.

3. Choose **Choose an existing EDM schema** and choose the schema you created in [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types).

4. Choose **Next** and choose **Create pattern**.

5. Choose the **Confidence level** and **Primary element**.  To learn more about confidence levels, see [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types).

6.  Choose the **Primary element's sensitive info type** to associate it with to define what text in the document will be compared with all the values in the primary element field. See [Sensitive Information Type Entity Definitions](sensitive-information-type-entity-definitions.md) to learn more about the available sensitive information types.

> [!IMPORTANT]
> Select a sensitive information type that closely matches the format of the content you want to find. Selecting a sensitive information type that matches unnecessary content, like one that matches all text strings, or all numbers can cause excessive load in the system which could result in sensitive information being missed. See the Best Practices section in the Introduction to Exact Data Matching article in this documentation for recommendations in selecting a sensitive information type to use here. 

7. Choose your **Supporting elements** and match options.

7. Choose **Done** and **Next**.

8. Choose your desired **Confidence level and character proximity**.  This will be the default value for the whole EDM sensitive info type.

9. Choose **Create pattern** if you want to create additional patterns for your EDM sensitive info type.

10. Choose **Next** and fill in a **Name** and **Description for admins**.

11. Review and choose **Submit**.

### Edit or delete the sensitive information type pattern

1. Open **Compliance center** > **Data classification** > **Exact data matches**.

2. Choose **EDM sensitive info types**.

3. Choose the EDM SIT you want to edit.

4. Choose **Edit EDM sensitive info type** or **Delete EDM sensitive info type** from the flyout.

## Create a rule package manually

This procedure shows you how to create a file in XML format called a rule package (with Unicode encoding), and then upload it into Microsoft 365 using Compliance center PowerShell cmdlets.

> [!NOTE]
> There’s a limit of 10 rule packages in a Microsoft 365 tenant. Since a rule package can contain an arbitrary number of sensitive information types, you can avoid creating a new rule package each time you want to define a new sensitive information type using this method, instead export an existing rule package and add your sensitive information types to the XML before re- uploading it. 


1. Create a rule package in XML format (with Unicode encoding), similar to the following example. (You can copy, modify, and use our example.)

When you set up your rule package, make sure to correctly reference your .csv, .tsv, or pipe (|) delimited sensitive information source table file and **edm.xml** schema file. You can copy, modify, and use our example. In this sample xml the following fields need to be customized to create your EDM sensitive type:

- **RulePack id & ExactMatch id**: Use [New-GUID](/powershell/module/microsoft.powershell.utility/new-guid) to generate a GUID.

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

2. Upload the rule package by running the following PowerShell cmdlets, one at a time:

      ```powershell
      $rulepack=Get-Content .\\rulepack.xml -Encoding Byte -ReadCount 0
      New-DlpSensitiveInformationTypeRulePackage -FileData $rulepack
      ```

> [!NOTE]
> The syntax of the rule package file is the same as for other sensitive information types. For complete details on the syntax of the rule package file and for additional configuration options, and for instructions on modifying and deleting sensitive information types using PowerShell, [Create a custom sensitive information type using PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md#create-a-custom-sensitive-information-type-using-powershell).

## Next step

-  [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)