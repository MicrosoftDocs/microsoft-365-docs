---
title: "Create the schema for exact data match based sensitive information types"
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
description: Create the schema for exact data match based sensitive information types
ms.custom: seo-marvel-apr2020
---

# Create the schema for exact data match based sensitive information types

You can create the schema and EDM SIT by using the [Use the exact data match schema and sensitive information type pattern wizard](#use-the-exact-data-match-schema-and-sensitive-information-type-pattern-wizard) or [manually](#create-exact-data-match-schema-and-rule-package-manually). You can also combine both by using one method to create the schema and later edit it using the other method.

If you are not familiar with EDM based SITS or there implementation, you should familiarize yourself with:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)

A single EDM schema can be used in multiple sensitive information types that use the same sensitive data table. You can create up to ten different EDM schemas in a Microsoft 365 tenant. 

## Use the Exact Data Match Schema and Sensitive Information Type Wizard

You can use this wizard to help simplify the schema file creation process.

## Pre-requisites

- Perform the steps in [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type).

## Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft 365 Compliance center for your tenant go to **Data classification** > **Exact data matches** > **EDM schemas**.

2. Choose **Create EDM schema** to open the schema wizard configuration flyout.

![EDM schema creation wizard configuration flyout.](../media/edm-schema-wizard-1.png)

3. Fill in an appropriate **Name** and **Description**.

4. Choose **Ignore delimiters and punctuation for all schema fields** if you want that behavior for the entire schema. To learn more about configuring EDM to ignore case or delimiters, see [Using the caseInsensitive and ignoredDelimiters fields](#using-the-caseinsensitive-and-ignoreddelimiters-fields) for more details on this feature. 

5. Fill in your desired values for your **Schema field #1** and add more fields as needed. Each schema field must be identical to the column headers in your sensitive information source file.

6. If you want, set the per field values for:
    1. **Field is searchable**
    1. **Field is case-insensitive**
    1. **Choose delimiters and punctuation to ignore for this field**
    1. **Enter custom delimiters and punctuation for this field**

> [!IMPORTANT]
> At least one, but no more than five of your schema fields must be designated as searchable.

6. Choose **Save**. Your schema will now be listed and available for use.

> [!IMPORTANT]
> If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema.

## Export of the EDM schema file in XML format

If you created the EDM schema in the EDM schema wizard, you must export the EDM schema file in XML format. You'll need it in the [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types) phase.

1. Connect to the Security & Compliance Center PowerShell using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. To export the EDM schema file use this cmdlet:

```powershell
$Schema = Get-DlpEdmSchema -Identity "[your EDM Schema name]"
Set-Content -Path ".\Schemafile.xml" -Value $Schema.EdmSchemaXML
```

<!--3. If you used the Exact Data Match schema wizard to create your schema and didn’t export the schema as a file in XML format, use the EDM Upload Agent to download the schema use this cmdlet:

```powershell
EdmUploadAgent.exe /SaveSchema /DataStoreName <schema name> /OutputDir <path to output folder>
``` -->

3. Save this file for later use.

## Create exact data match schema manually and upload

In the schema file, configure an entry for each column in the sensitive information source table, using the syntax: 

```xml
<Field name="FieldName" searchable="true/false" caseInsensitive="true/false" ignoredDelimiters="delimiter characters" />
```
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

Once you have created the EDM schema file in XML formate, you have to upload it to the cloud service. 

2. Connect to the Security & Compliance Center PowerShell using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

3. To upload the database schema, run the following cmdlets, one at a time:

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

## Next step

- [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)