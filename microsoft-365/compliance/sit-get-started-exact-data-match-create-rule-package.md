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



You can create the schema and EDM SIT by using the [Exact Data Match Schema and Sensitive Information Type Wizard](#use-the-exact-data-match-schema-and-sensitive-information-type-wizard) or the [Create the schema and rule package manually](#create-exact-data-match-schema-and-rule-package-manually). You can also combine both by using one method to create the schema and later edit it using the other method.

If you are not familiar with EDM based SITS or there implementation, you should familiarize yourself with:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)

<!--When you are done creating the schema and EDM sensitive info type pattern, return to complete all the steps necessary to make your EDM based sensitive information type available for use.-->

A single EDM schema can be used in multiple sensitive information types that use the same sensitive data table. You can create up to ten different EDM schemas in a Microsoft 365 tenant. 

## Use the Exact Data Match Schema and Sensitive Information Type Wizard

You can use this wizard to create your schema and sensitive information type (SIT) pattern (rule package) files to help simplify the process.

<!--This wizard can be used instead of the:-->
<!--- [Define the schema for your database of sensitive information](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#define-the-schema-for-your-database-of-sensitive-information)
- [Set up a pattern (rule package)](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#set-up-a-rule-package)-->

## Pre-requisites

<!--1. Familiarize yourself with the steps to create a custom sensitive information type with EDM [work flow at a glance](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#the-work-flow-at-a-glance).-->

- Perform the steps in [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type).

## Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft 365 Compliance center for your tenant go to **Data classification** > **Exact data matches**.

2. Choose **Create EDM schema** to open the schema wizard configuration flyout.

![EDM schema creation wizard configuration flyout.](../media/edm-schema-wizard-1.png)

3. Fill in an appropriate **Name** and **Description**.

4. Choose **Ignore delimiters and punctuation for all schema fields** if you want that behavior. To learn more about configuring EDM to ignore case or delimiters, see [Using the caseInsensitive and ignoredDelimiters fields](#using-the-caseinsensitive-and-ignoreddelimiters-fields). 

5. Fill in your desired values for your **Schema field #1** and add more fields as needed. 

> [!IMPORTANT]
> At least one, but no more than five of your schema fields must be designated as searchable.

6. Choose **Save**. Your schema will now be listed.

7. Choose **EDM sensitive info types** and **Create EDM sensitive info type** to open the sensitive info type configuration wizard.

8. Choose **Choose an existing EDM schema** and choose the schema you created in steps 2-6 from the list.

9. Choose **Next** and choose **Create pattern**.

10. Choose the **Confidence level** and **Primary element**.  To learn more about confidence levels, see [Fundamental parts of a sensitive information type](sensitive-information-type-learn-about.md#fundamental-parts-of-a-sensitive-information-type).

11.  Choose the **Primary element's sensitive info type** to associate it with. See [Sensitive Information Type Entity Definitions](sensitive-information-type-entity-definitions.md) to learn more about the available sensitive information types.

12. Choose **Done**.

13. Choose your desired **Confidence level and character proximity**.  This will be the default value for the whole EDM sensitive info type

13. Choose **Create pattern** if you want to create additional patterns for your EDM sensitive info type.

14. Choose **Next** and fill in a **Name** and **Description for admins**.

15. Review and choose **Submit**.

You can delete or edit the sensitive information type pattern by selecting it which surfaces the edit and delete controls.

> [!IMPORTANT]
> If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema.

## Export of the EDM schema file in XML format

If you created the EDM Schema in the EDM Schema wizard, you must export the EDM Schema file in XML format.  

1. Connect to the Security & Compliance Center PowerShell using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. To export the EDM schema file use this cmdlet:

```powershell
$Schema = Get-DlpEdmSchema -Identity "[your EDM Schema name]"
Set-Content -Path ".\Schemafile.xml" -Value $Schema.EdmSchemaXML
```
3. If you used the Exact Data Match schema wizard to create your schema and didn’t export the schema as a file in XML format, use the EDM Upload Agent to download the schema use this cmdlet:

```powershell
EdmUploadAgent.exe /SaveSchema /DataStoreName <schema name> /OutputDir <path to output folder>
``` 

## Create exact data match schema and rule package manually

### Using the caseInsensitive and ignoredDelimiters fields

The following schema XML sample makes use of the *caseInsensitive* and the *ignoredDelimiters* fields.

When you include the *caseInsensitive* field set to the value of `true` in your schema definition, EDM will not exclude an item based on case differences. For example EDM will see the values **FOO-1234** and **fOo-1234** as being identical for the `PatientID` field .

When you include the *ignoredDelimiters* field with supported characters,  EDM will ignore those characters. So EDM will see the values **FOO-1234** and **FOO#1234** as being identical for the `PatienID` field. 

In this example, where both `caseInsensitive` and `ignoredDelimiters` are used, EDM would see **FOO-1234** and **fOo#1234** as  identical and classify the item as a patient record sensitive information type. 

Both these parameters are used on a per field basis.

> [!IMPORTANT]
> If you configure *spaces* to be ignored, this will only be effective for primary field columns and for which a sensitive information type that can detect multi-word strings is defined. Otherwise the comparison will be made against each individual word in the content being analyzed.

The *ignoredDelimiters* flag supports any non-alphanumeric character, here are some examples:

- \.
- \-
- \/
- \_
- \*
- \^
- \#
- \!
- \?
- \[
- \]
- \{
- \}
- \\
- \~
- \;

The `ignoredDelimiters` flag doesn't support:

- characters 0-9
- A-Z
- a-z
- \"
- \,

> [!IMPORTANT]
> When defining your EDM sensitive information type, *ignoreDelimiters* will not affect how the Classification sensitive information type associated with the primary element in an EDM pattern identifies content in an item. So if you configure *ignoreDelimiters* for a searchable field you need to make sure the sensitive information type used for a primary element based on that field will pick strings both with and without those characters present.

> [!IMPORTANT]
> The number of columns in your sensitive information source table and the number of fields in your schema must match, order doesn't matter.

1. Define the schema in XML format (similar to our example below). Name this schema file **edm.xml**, and configure it such that for each column in the sensitive information source table, there is a line that uses the syntax:

      `\<Field name="" searchable=""/\>`.

      - Use column names for *Field name* values.
      - Use *searchable="true"* for the fields that you want to be searchable and primary fields up to a maximum of 5 fields. At least one field must be searchable.

      As an example, the following XML file defines the schema for a patient records database, with five fields specified as searchable: *PatientID*, *MRN*, *SSN*, *Phone*, and *DOB*.

      (You can copy, modify, and use our example.)

      ```xml
      <EdmSchema xmlns="http://schemas.microsoft.com/office/2018/edm">
            <DataStore name="PatientRecords" description="Schema for patient records" version="1">
                  <Field name="PatientID" searchable="true" caseInsensitive="true" ignoredDelimiters="-,/,*,#,^" />
                  <Field name="MRN" searchable="true" />
                  <Field name="FirstName" />
                  <Field name="LastName" />
                  <Field name="SSN" searchable="true" />
                  <Field name="Phone" searchable="true" />
                  <Field name="DOB" searchable="true" />
                  <Field name="Gender" />
                  <Field name="Address" />
            </DataStore>
      </EdmSchema>
      ```

1. Connect to the Security & Compliance Center PowerShell using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. To upload the database schema, run the following cmdlets, one at a time:

      ```powershell
      $edmSchemaXml=Get-Content .\\edm.xml -Encoding Byte -ReadCount 0
      New-DlpEdmSchema -FileData $edmSchemaXml -Confirm:$true
      ```

      You will be prompted to confirm, as follows:

      > Confirm
      >
      > Are you sure you want to perform this action?
      >
      > New EDM Schema for the data store 'patientrecords' will be imported.
      >
      > \[Y\] Yes \[A\] Yes to All \[N\] No \[L\] No to All \[?\] Help (default is "Y"):

> [!TIP]
> If you want your changes to occur without confirmation, in Step 2, use this cmdlet instead: New-DlpEdmSchema -FileData $edmSchemaXml

> [!NOTE]
> It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

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


<!--TODD START HERE THIS BELONGS IN THE SCHEMA ARTICLE-->
Working with specific types of data
Since each value in a column in your sensitive information table that’s used as a primary element in EDM will have to be compared against any string matching the patterns used in the sensitive information type used as the base for the EDM type, it is critical that you use patterns that will minimize the number of unnecessary matches. For example one could be tempted to use a sensitive information type based on the regular expression \b\w*\b (which would match every individual word or number in any document or email) would easily cause the service to be overloaded with matches and be unable to detect true matches. Using more precise patterns that match specifically the types of data that need to be detected is necessary so such situation is avoided. 
Below are recommendations for identifying the right configuration for some common types of data. 
Email addresses can be easy to identify, but they are so common in content (e.g. in emails) that they may cause significant load in the system if used as a primary field, so it is recommended that they are only used as secondary evidence. If they must be used as primary evidence, it is recommended defining a custom sensitive information type which uses logic to exclude their use as From or To fields in emails, and to exclude those with your company’s email address if appropriate to reduce the number of unnecessary strings that need to be matched against the EDM table. 
Phone numbers: phone numbers can often be expressed in many different formats, including or excluding country prefixes, area codes and separators. To reduce the false negatives while keeping load to a minimum it is recommended that you use them only as secondary elements, exclude all likely separators (e.g. parenthesis and dashes) and that you only include in your sensitive data table the part that will be always present when expressing the phone number. For example, if your phone numbers are formed of a country and area code and a local number, only include the local number in the sensitive information table. Even though this could cause incorrect matches if the number is detected on its own, it is generally very unlikely this would occur in the presence of a match to the primary field for the same person plus matches for that person to other secondary fields you defined for your EDM type. The same considerations apply to street addresses, including only the most common part of the address (e.g. street name and number) should be sufficient for positive identification and should reduce false negatives. 
Persons names: in general, persons names should be separated into first, last and middle names if possible, since they will often be expressed in varying order in content. Don’t use person’s names as primary elements if using a sensitive information type based on a regular expression as the classification element for this EDM type, since they are very difficult to distinguish from common words, which could lead to excess processing load. The ability to use Named Entity Recognition as a classification element for an Exact Data Match sensitive information type is currently in preview and can be used as an alternative if persons’ names must be used as primary elements in the sensitive information type.
If you must use a column as a primary element that is very hard to identify via a specific pattern (e.g. project codenames) or could generate lots of matches to be processed (e.g. six digit numbers), you can do so if you also include keywords in the sensitive information type you use as the classification element for your EDM type. E.g. if using project codenames that may be regular words, you can use the word “project” and variations of it as additional evidence required in close proximity to the project name regular expression-based pattern in the sensitive type used as the classification element for your EDM type. Alternative, consider using a sensitive type based on a regular dictionary as the classification element for your EDM sensitive information type. 
When trying to match numeric strings, specify the allowed ranges of numbers (e.g. number of digits or starting digits, if known). If you need to match a relatively flexible range of numbers (e.g. any seven to eleven digit number) you can use keywords in the base SIT to reduce the number of matches (e.g. if trying to match account numbers consisting of 7-11 digits, add the words “account”, “customer”, “acct.”, etc. to the SIT as required additional evidence to reduce the likelihood of unnecessary matches that could cause exceeding the limits of matches to be processed by EDM). 
If a field you need to use as a primary element follows a very simple pattern that might cause large numbers of matches (e.g. account numbers consisting of five digit numbers) and you can’t add the presence of keywords as additional evidence in the sensitive information type, you can alternative require a minimum number of presences of that pattern as part of the base sensitive information type. For example, you could use a custom sensitive information type defined in the following way to detect at least 29 other five-digit numbers surrounding a potential five-digit number to match against EDM:
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
In some cases you might have to identify certain account or record identification numbers that for historical reasons don’t follow a standardized pattern. For example “Medical Record Numbers” can often be composed of many different permutations of letters and numbers even within the same organization. Even though it might be hard at first to identify a pattern in such cases, closer inspection often allows narrowing down a pattern that describes all the valid values without causing an excessive number of invalid matches. For example, it might be detected that “all MRNs are at least seven characters in length, have at least two numerical digits in them, and if they have any letters in them they start with one”. Creating a regular expression based on such criteria should allow you to minimize unnecessary matches while capturing all the desired values, and further analysis might allow increased precision by defining separate patterns that describe different formats.

<!--TODD STOP HERE, THIS BELONGS IN THE SCHEMA ARTICLE-->

======
Configuring services to use your EDM Sensitive information type
The following services support EDM sensitive information types:
•	DLP for Exchange Online (email)
•	DLP for OneDrive for Business (files)
•	DLP for SharePoint (files)
•	DLP for Microsoft Teams (conversations)
•	Microsoft Cloud App Security policies
•	Service-side auto-labeling policies
To create a DLP policy with EDM
1.	Go to the Security & Compliance Center using the appropriate link for your subscription.
2.	Choose Data loss prevention > Policy.
3.	Choose Create a policy > Custom > Next.
4.	On the Name your policy tab, specify a name and description, and then choose Next.
5.	On the Choose locations tab, select Let me choose specific locations, and then choose Next.
6.	In the Status column, select Exchange email, OneDrive accounts, Teams chat and channel message, and then choose Next.
7.	On the Policy settings tab, choose Use advanced settings, and then choose Next.
8.	Choose + New rule.
9.	In the Name section, specify a name and description for the rule.
10.	In the Conditions section, in the + Add a condition list, choose Content contains sensitive type.
11.	Search for the sensitive information type you created when you set up your rule package, and then choose + Add.
Then choose Done.
12.	Finish selecting options for your rule, such as User notifications, User overrides, Incident reports, and so on, and then choose Save.
13.	On the Policy settings tab, review your rules, and then choose Next.
14.	Specify whether to turn on the policy right away, test it out, or keep it turned off. Then choose Next.
15.	On the Review your settings tab, review your policy. Make any needed changes. When you’re ready, choose Create.
[!NOTE] Allow approximately one hour for your new DLP policy to work its way through the service.
[!TIP] A common practice is to combine the use of EDM Sensitive information types and the regular sensitive information types on which they are based in DLP rules, with different thresholds. For example, you could use an EDM sensitive information type that looks for social security numbers and other data, with strict requirements and low tolerance (e.g. one or more matches will cause a DLP alert), while using the regular sensitive information type on which you based your EDM type (e.g. the U.S. Social Security Number built-in sensitive information type) for higher counts (e.g. more than 100 matches), in case sensitive information not recorded in your databases or that’s being used in a way that doesn’t align with your EDM definition for additional evidence is being exfiltrated in large volumes.  

