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

If for business or technical reasons, you prefer not to use PowerShell or command line to create your schema and EDM sensitive info type pattern (rule package), you can use the [Exact Data Match Schema and Sensitive Information Type Wizard](sit-edm-wizard.md) to create them. When you are done creating the schema and EDM sensitive info type pattern, return to complete all the steps necessary to make your EDM based sensitive information type available for use.

> [!NOTE]
> The Exact Data Match Schema and Sensitive Information Type Wizard is only available for the World Wide and GCC clouds only.

1. Define the schema for the database of sensitive information in XML format (similar to our example below). Name this schema file **edm.xml**, and configure it such that for each column in the database, there is a line that uses the syntax:

      `\<Field name="" searchable=""/\>`.

      - Use column names for *Field name* values.
      - Use *searchable="true"* for the fields that you want to be searchable up to a maximum of 5 fields. At least one field must be searchable.

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

##### Configurable match using the caseInsensitive and ignoredDelimiters fields

The above XML sample makes use of the `caseInsensitive` and the `ignoredDelimiters` fields.

When you include the ***caseInsensitive*** field set to the value of `true` in your schema definition, EDM will not exclude an item based on case differences for `PatientID` field. So EDM will see, `PatientID` **FOO-1234** and **fOo-1234** as being identical.

When you include the ***ignoredDelimiters*** field with supported characters,  EDM will ignore those characters in the `PatientID`. So EDM will see, `PatientID` **FOO-1234** and `PatientID` **FOO#1234** as being identical. The `ignoredDelimiters` flag supports any non-alphanumeric character, here are some examples:

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

In this example, where both `caseInsensitive` and `ignoredDelimiters` are used, EDM would see **FOO-1234** and **fOo#1234** as  identical and classify the item as a patient record sensitive information type.

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
> If you want your changes to occur without confirmation, in Step 5, use this cmdlet instead: New-DlpEdmSchema -FileData $edmSchemaXml

> [!NOTE]
> It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

#### Set up a rule package

1. Create a rule package in XML format (with Unicode encoding), similar to the following example. (You can copy, modify, and use our example.)

      When you set up your rule package, make sure to correctly reference your .csv or .tsv file and **edm.xml** file. You can copy, modify, and use our example. In this sample xml the following fields needs to be customized to create your EDM sensitive type:

      - **RulePack id & ExactMatch id**: Use [New-GUID](/powershell/module/microsoft.powershell.utility/new-guid) to generate a GUID.

      - **Datastore**: This field specifies EDM lookup data store to be used. You provide a data source name of a configured EDM Schema.

      - **idMatch**: This field points to the primary element for EDM.
        - Matches: Specifies the field to be used in exact lookup. You provide a searchable field name in EDM Schema for the DataStore.
        - Classification: This field specifies the sensitive type match that triggers EDM lookup. You can provide the Name or GUID of an existing built-in or custom sensitive information type. Be aware that any string that matches the sensitive information type provided will be hashed and compared to every entry in the sensitive information table. In order to avoid causing performance issues, if you use a custom sensitive information type as the Classification element in EDM, avoid using one that will match a large percentage of content (such as "any number" or "any five-letter word") by adding supporting keywords or including formatting in the definition of the custom classification sensitive information type.

      - **Match:** This field points to additional evidence found in proximity of idMatch.
        - Matches: You provide any field name in EDM Schema for DataStore.
      - **Resource:** This section specifies the name and description for sensitive type in multiple locales.
        - idRef: You provide GUID for ExactMatch ID.
        - Name & descriptions: customize as required.

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

At this point, you have set up EDM-based classification. The next step is to hash the sensitive data, and then upload the hashes for indexing.

Recall from the previous procedure that our PatientRecords schema defines five fields as searchable: *PatientID*, *MRN*, *SSN*, *Phone*, and *DOB*. Our example rule package includes those fields and references the database schema file (**edm.xml**), with one *ExactMatch* item per searchable field. Consider the following ExactMatch item:

```xml
<ExactMatch id = "E1CC861E-3FE9-4A58-82DF-4BD259EAB371" patternsProximity = "300" dataStore ="PatientRecords" recommendedConfidence = "65" >
      <Pattern confidenceLevel="65">
        <idMatch matches = "SSN" classification = "U.S. Social Security Number (SSN)" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <idMatch matches = "SSN" classification = "U.S. Social Security Number (SSN)" />
        <Any minMatches ="3" maxMatches ="100">
          <match matches="PatientID" />
          <match matches="MRN"/>
          <match matches="FirstName"/>
          <match matches="LastName"/>
          <match matches="Phone"/>
          <match matches="DOB"/>
        </Any>
      </Pattern>
    </ExactMatch>
```

In this example, note that:

- The dataStore name references the .csv file we created earlier: **dataStore = "PatientRecords"**.

- The idMatch value references a searchable field that is listed in the database schema file: **idMatch matches = "SSN"**.

- The classification value references an existing or custom sensitive information type: **classification = "U.S. Social Security Number (SSN)"**. (In this case, we use the existing sensitive information type of U.S. Social Security Number.)

> [!NOTE]
> It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

After you have imported your rule package with your EDM sensitive info type and have imported your sensitive data table, you can test your newly created type by using the **Test** function in the EDM wizard in the compliance center. See [Use the Exact Data Match Schema and Sensitive Information Type Wizard](sit-edm-wizard.md) for instructions on using this functionality.

#### Editing the schema for EDM-based classification

If you want to make changes to your **edm.xml** file, such as changing which fields are used for EDM-based classification, follow these steps:

> [!TIP]
> You can change your EDM schema and data file to take advantage of **configurable match**. When configured, EDM will ignore case differences and some delimiters when it evaluates an item. This makes defining your xml schema and your sensitive data files easier. To learn more see, [Modify Exact Data Match schema to use configurable match](sit-modify-edm-schema-configurable-match.md).

1. Edit your **edm.xml** file (this is the file discussed in the [Define the schema](#define-the-schema-for-your-database-of-sensitive-information) section of this article).

2. Connect to the Security & Compliance center using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

3. To update your database schema, run the following cmdlets, one at a time:

      ```powershell
      $edmSchemaXml=Get-Content .\\edm.xml -Encoding Byte -ReadCount 0
      Set-DlpEdmSchema -FileData $edmSchemaXml -Confirm:$true
      ```

      You will be prompted to confirm, as follows:

      > Confirm
      >
      > Are you sure you want to perform this action?
      >
      > EDM Schema for the data store 'patientrecords' will be updated.
      >
      > \[Y\] Yes \[A\] Yes to All \[N\] No \[L\] No to All \[?\] Help (default is "Y"):

      > [!TIP]
      > If you want your changes to occur without confirmation, in Step 3, use this cmdlet instead: Set-DlpEdmSchema -FileData $edmSchemaXml

      > [!NOTE]
      > It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

#### Removing the schema for EDM-based classification

(As needed) If you want to remove the schema you're using for EDM-based classification, follow these steps:

1. Connect to the Security & Compliance center using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. Run the following PowerShell cmdlets, substituting the data store name of "patient records" with the one you want to remove:

      ```powershell
      Remove-DlpEdmSchema -Identity patientrecords
      ```

      You will be prompted to confirm:

      > Confirm
      >
      > Are you sure you want to perform this action?
      >
      > EDM Schema for the data store 'patientrecords' will be removed.
      >
      > \[Y\] Yes \[A\] Yes to All \[N\] No \[L\] No to All \[?\] Help (default is "Y"):

      > [!TIP]
      >  If you want your changes to occur without confirmation, in Step 2, use this cmdlet instead: Remove-DlpEdmSchema -Identity patientrecords -Confirm:$false

 upload it.

The hashing and uploading can be done using one computer or you can separate the hashing step from the upload step for greater security.

If you want to hash and upload from one computer, you need to do it from a computer that can directly connect to your Microsoft 365 tenant. This requires that your clear text sensitive data files are on that computer for hashing.

If you do not want to expose your clear text sensitive data file, you can hash it on a computer in a secure location and then copy the hash file and the salt file to a computer that can directly connect to your Microsoft 365 tenant for upload. In this scenario, you will need the EDMUploadAgent on both computers.

> [!IMPORTANT]
> If you used the Exact Data Match schema and sensitive information type wizard to create your schema and pattern files, you ***must*** download the schema for this procedure.

> [!NOTE]
> If your organization has set up [Customer Key for Microsoft 365 at the tenant level](customer-key-overview.md), Exact data match will make use of its encryption functionality automatically. This is available only to E5 licensed tenants in the Commercial cloud.
