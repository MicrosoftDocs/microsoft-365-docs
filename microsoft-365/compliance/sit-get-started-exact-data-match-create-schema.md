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
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Create the schema for exact data match based sensitive information types
ms.custom: seo-marvel-apr2020
---

# Create the schema for exact data match based sensitive information types

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Applies to

- Classic experience

You can create the schema and EDM SIT by using the [Use the exact data match schema and sensitive information type pattern wizard](#use-the-exact-data-match-schema-and-sensitive-information-type-pattern-wizard) or [manually](#create-exact-data-match-schema-manually-and-upload). You can also combine both by using one method to create the schema and later edit it using the other method.

If you are not familiar with EDM-based SITS or their implementation, you should familiarize yourself with:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)

A single EDM schema can be used in multiple sensitive information types that use the same sensitive data table. You can create up to 10 different EDM schemas in a Microsoft 365 tenant.


## Use the Exact Data Match Schema and Sensitive Information Type Wizard

You can use this wizard to help simplify the schema file creation process.

## Pre-requisites

- Perform the steps in [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type).

## Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft Purview compliance portal for your tenant go to **Data classification** > **Exact data matches** > **EDM schemas**.

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
   > At least one, but no more than ten of your schema fields must be designated as searchable.

7. Choose **Save**. Your schema will now be listed and available for use.

   > [!IMPORTANT]
   > If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema. Deleting a schema that has a data store associated with it also deletes the data store within 24 hours.

## Export of the EDM schema file in XML format

If you created the EDM schema in the EDM schema wizard, you must export the EDM schema file in XML format. You'll need it in the [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types) phase.

1. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. To export the EDM schema file, use this syntax:

   ```powershell
   $Schema = Get-DlpEdmSchema -Identity "[your EDM Schema name]"
   Set-Content -Path ".\Schemafile.xml" -Value $Schema.EdmSchemaXML
   ```

3. Save this file for later use.

## Create exact data match schema manually and upload

In the schema file, configure an entry for each column in the sensitive information source table, using the syntax:

```xml
<Field name="FieldName" searchable="true/false" caseInsensitive="true/false" ignoredDelimiters="delimiter characters" />
```

### Using the caseInsensitive and ignoredDelimiters fields

The following schema XML sample makes use of the *caseInsensitive* and the *ignoredDelimiters* fields.

When you include the *caseInsensitive* field set to the value of `true` in your schema definition, EDM will not exclude an item based on case differences. For example, EDM will see the values **FOO-1234** and **fOo-1234** as being identical for the `PatientID` field.

When you include the *ignoredDelimiters* field with supported characters, EDM will ignore those characters. So EDM will see the values **FOO-1234** and **FOO#1234** as being identical for the `PatienID` field.

In this example, where both `caseInsensitive` and `ignoredDelimiters` are used, EDM would see **FOO-1234** and **fOo#1234** as identical and classify the item as a patient record sensitive information type.

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
>
> The number of columns in your sensitive information source table and the number of fields in your schema must match, order doesn't matter.

The characters that are used as *token separators* behave differently than the other delimiters. Here are some examples:
- \ (space)
- \\t
- \,
- \.
- \;
- \?
- \!
- \\r
- \\n  

When you include a *token separator*, EDM will break the token where the separator is. For example, EDM will see the value **Middle-Last Name** into **Middle-Last** and **Name** for the `LastName` field. If the *ignoredDelimiters* is included for the `LastName` field with the character '-', that action only happens after the value is broken. In the end, EDM would see the following values **MiddleLast** and **Name**.

To use the following characters as *ignoredDelimiters* and not *token separators*, a SIT that matches the corresponding format needs to be associated with the field. For example, a SIT that detects a multi-word string with dashes in it needs to be associated with the `LastName` field.
- \.
- \;
- \!
- \?
- \\

It is possible to associate SITs to secondary elements using PowerShell.

1. Define the schema in XML format (similar to our example below). Name this schema file **edm.xml**, and configure it such that for each column in the sensitive information source table, there is a line that uses the syntax:

      `\<Field name="" searchable=""/\>`.

      - Use column names for *Field name* values.
      - Use *searchable="true"* for the fields that you want to be searchable and primary fields up to a maximum of 5 fields. At least one field must be searchable.

      As an example, the following XML file defines the schema for a patient records database, with five fields specified as searchable: *PatientID*, *MRN*, *SSN*, *Phone*, and *DOB*.

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

   Once you have created the EDM schema file in XML format, you have to upload it to the cloud service.

2. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

3. To upload the database schema, run the following command:

      ```powershell
      New-DlpEdmSchema -FileData ([System.IO.File]::ReadAllBytes('.\\edm.xml')) -Confirm:$true
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
   > If you want your changes to occur without confirmation, don't use `-Confirm:$true` in Step 3.

> [!NOTE]
> It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

## Next step

- [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md#hash-and-upload-the-sensitive-information-source-table-for-exact-data-match-sensitive-information-types)
