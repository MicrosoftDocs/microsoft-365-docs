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
======
from schema article, this article is rule package only



You can create the EDM SIT by using the [Exact Data Match Schema and Sensitive Information Type Wizard](#use-the-exact-data-match-schema-and-sensitive-information-type-wizard) or create the rule package manually  [Create the schema and rule package manually](#create-exact-data-match-rule-package-manually). You can also combine both by using one method to create the schema and later edit it using the other method.

If you are not familiar with EDM based SITS or there implementation, you should familiarize yourself with:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)

<!--When you are done creating the schema and EDM sensitive info type pattern, return to complete all the steps necessary to make your EDM based sensitive information type available for use.-->

## Use the Exact Data Match Schema and Sensitive Information Type Wizard

You can use this wizard to create your sensitive information type (SIT) files to help simplify the process.

<!--This wizard can be used instead of the:-->
<!--
- [Set up a pattern (rule package)](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#set-up-a-rule-package)-->

## Pre-requisites

<!--1. Familiarize yourself with the steps to create a custom sensitive information type with EDM [work flow at a glance](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#the-work-flow-at-a-glance).-->

- Perform the steps in [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type).

## Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft 365 Compliance center for your tenant go to **Data classification** > **Exact data matches**.

2. Choose **EDM sensitive info types** and **Create EDM sensitive info type** to open the sensitive info type configuration wizard.

3. Choose **Choose an existing EDM schema** and choose the schema you created in steps 2-6 from the list.

4. Choose **Next** and choose **Create pattern**.

5. Choose the **Confidence level** and **Primary element**.  To learn more about confidence levels, see [Fundamental parts of a sensitive information type](sensitive-information-type-learn-about.md#fundamental-parts-of-a-sensitive-information-type).

6.  Choose the **Primary element's sensitive info type** to associate it with. See [Sensitive Information Type Entity Definitions](sensitive-information-type-entity-definitions.md) to learn more about the available sensitive information types.

7. Choose **Done**.

8. Choose your desired **Confidence level and character proximity**.  This will be the default value for the whole EDM sensitive info type

9. Choose **Create pattern** if you want to create additional patterns for your EDM sensitive info type.

10. Choose **Next** and fill in a **Name** and **Description for admins**.

11. Review and choose **Submit**.

You can delete or edit the sensitive information type pattern by selecting it which surfaces the edit and delete controls.

> [!IMPORTANT]
> If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema.

## Create a rule package manually

1. Create a rule package in XML format (with Unicode encoding), similar to the following example. (You can copy, modify, and use our example.)

When you set up your rule package, make sure to correctly reference your .csv or .tsv file and **edm.xml** file. You can copy, modify, and use our example. In this sample xml the following fields need to be customized to create your EDM sensitive type:

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

## Post creation steps

After you have created your EDM schema and pattern (rule package) files, you need to hash and upload the schema and sensitive information source table. See,
 
1. [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types),
2. [CREATE SIT](sit-get-started-exact-data-match-create-sit.md#create-sit)
3. LINK TO USE EDM BASED CLASSIFICATION WITH YOUR MICROSOFT 365 CLOUD SERVICES.

At this point, you have set up EDM-based classification. The next step is to hash the sensitive data, and then upload the hashes for indexing.


## Next step

-  [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)



After you have imported your rule package with your EDM sensitive info type and have imported your sensitive data table, you can test your newly created type by using the **Test** function in the EDM wizard in the compliance center. See [Use the Exact Data Match Schema and Sensitive Information Type Wizard](sit-edm-wizard.md) for instructions on using this functionality.



<!-- FOR CHRIS START WORK THIS IN SOMEHOW-->
Ensure your sensitive data table doesn’t have formatting issues. 
Before you hash and upload your sensitive data, do a search to validate the presence of special characters that may cause problems in parsing the content. 
You can validate that the table is in a format suitable to use with EDM by using the EDM upload agent with the following syntax:
EdmUploadAgent.exe /ValidateData /DataFile [data file] /Schema [schema file] 
If the tool indicates a mismatch in number of columns it might be due to the presence of commas or quote characters within values in the table which are being confused with column delimiters. Unless they are surrounding a whole value, single and double quotes can cause the tools to misidentify where an individual column starts or ends. If you find single or double quote characters surrounding full values, you can leave them as they are. If you find single quote characters or commas inside a value (e.g. the person’s name Tom O’Neil or the city 's‑Gravenhage (which starts with an apostrophe character), you will need to modify the data export process used to generate the sensitive information table to surround such columns with double quotes. If double quote characters are found inside values, it might be preferable to use the Tab-delimited format for the table which is less susceptible to such issues.
<!-- FOR CHRIS END WORK THIS IN SOMEHOW-->


<!-- PUBLISHED SIT EMD WIZARD ARTICLE-->


### Troubleshooting

If you don't find any matches, try the following:
- Confirm that your sensitive data was uploaded correctly using the commands explained in [the guidance for uploading your sensitive data using the EDM tool](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).
- Check that the examples you entered in the item are present in your sensitive information table and that the ignored delimiters are correct.
- **Test** the SIT you used when you configured the primary element in each of your patterns. This will confirm that the SIT is able to match the examples in the item. 
  -  If the SIT you selected for a primary element in the EDM type doesn't find a match in the item or finds fewer matches than you expected, check that it supports separators and delimiters that exist in the content. Be sure to include the ignored delimiters defined in your schema. 
  -  If the **Test** function does not detect any content at all, check if the SIT you selected includes requirements for additional keywords or other validations. For the built-in SITs, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md) to verify what the minimum requirements are for matching each type.
<!-- END PUBLISHED SIT EDM WIZARD ARTICLE-->
