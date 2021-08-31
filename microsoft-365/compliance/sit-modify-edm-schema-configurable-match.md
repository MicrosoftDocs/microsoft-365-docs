---
title: "Modify Exact Data Match schema to use configurable match"
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
description: Learn how to modify an edm schema to use configurable match.
ms.custom: seo-marvel-apr2020
---
# Modify Exact Data Match schema to use configurable match

Exact Data Match (EDM) based classification enables you to create custom sensitive information types that refer to exact values in a database of sensitive information. When you need to allow for variants of a exact string, you can use *configurable match* to tell Microsoft 365 to ignore case and some delimiters. 

> [!IMPORTANT]
> Use this procedure to modify an existing EDM schema and data file.

1. Uninstall the **EdmUploadAgent.exe** from the computer that you use to connect to Microsoft 365 for EDM schema and data file upload purposes.

2. Download the appropriate **EdmUploadAgent.exe** file for your subscription using the links below:
    - [Commercial + GCC](https://go.microsoft.com/fwlink/?linkid=2088639) - most commercial customers should use this
    - [GCC-High](https://go.microsoft.com/fwlink/?linkid=2137521) - This is specifically for high security government cloud subscribers
    - [DoD](https://go.microsoft.com/fwlink/?linkid=2137807) - this is specifically for United States Department of Defense cloud customers

3. Authorize the EDM Upload Agent, open Command Prompt window (as an administrator) and run the following command:

   `EdmUploadAgent.exe /Authorize`

4. If you don't have a current copy of the existing schema, you'll need to download a copy of the existing schema, run this command:

    `EdmUploadAgent.exe /SaveSchema /DataStoreName <dataStoreName> [/OutputDir [Output dir location]]`

5. Customize the schema so each column utilizes “caseInsensitive” and / or “ignoredDelimiters”.  The default value for “caseInsensitive” is “false” and for “ignoredDelimiters”, it is an empty string. 

> [!NOTE]
> The underlying custom sensitive information type or built in sensitive information type used to detect the general regex pattern must support detection of the variations inputs listed with ignoredDelimiters. For example, the built in U.S. social security number (SSN) sensitive information type can detect variations in the data that include dashes, spaces, or lack of spaces between the grouped numbers that make up the SSN. As a result, the only delimiters that are relevant to include in EDM’s ignoredDelimiters for SSN data are: dash and space.

Here is a sample schema that simulates case insensitive match by creating the extra columns needed to recognize case variations in the sensitive data.

```xml
<EdmSchema xmlns="http://schemas.microsoft.com/office/2018/edm">
  <DataStore name="PatientRecords" description="Schema for patient records policy" version="1">
           <Field name="PolicyNumber" searchable="true" />
           <Field name="PolicyNumberLowerCase" searchable="true" />
           <Field name="PolicyNumberUpperCase" searchable="true" />
           <Field name="PolicyNumberCapitalLetters" searchable="true" />
  </DataStore>
</EdmSchema>
```

In the above example, the variations of the original `PolicyNumber` column will no longer be needed if both `caseInsensitive` and `ignoredDelimiters` are added.

To update this schema so that EDM uses configurable match use the `caseInsensitive` and `ignoredDelimiters` flags.  Here's how that looks:

```xml
<EdmSchema xmlns="http://schemas.microsoft.com/office/2018/edm">
  <DataStore name="PatientRecords" description="Schema for patient records policy" version="1">
         <Field name="PolicyNumber" searchable="true" caseInsensitive="true" ignoredDelimiters="-,/,*,#,^" />
  </DataStore>
</EdmSchema>
```

The `ignoredDelimiters` flag supports any non-alphanumeric character, here are some examples:
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

6. Connect to the Security & Compliance center using the procedures in [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

> [!NOTE]
> If your organization has set up [Customer Key for Microsoft 365 at the tenant level (public preview)](customer-key-tenant-level.md#overview-of-customer-key-for-microsoft-365-at-the-tenant-level-public-preview), Exact data match will make use of its encryption functionality automatically. This is available only to E5 licensed tenants in the Commercial cloud.

7. Update your schema by running these cmdlets one at a time:

`$edmSchemaXml=Get-Content .\\edm.xml -Encoding Byte -ReadCount 0`

`Set-DlpEdmSchema -FileData $edmSchemaXml -Confirm:$true`

8. If necessary, update the data file to match the new schema version

> [!TIP]
> Optionally, you can run a validation against your csv file before uploading by running:
>
>`EdmUploadAgent.exe /ValidateData /DataFile [data file] [schema file]`
>
>For more information on all the EdmUploadAgent.exe >supported parameters run
>
> `EdmUploadAgent.exe /?`

9. Open Command Prompt window (as an administrator) and run the following command to hash and upload your sensitive data:

    `EdmUploadAgent.exe /UploadData /DataStoreName [DS Name] /DataFile [data file] /HashLocation [hash file location] /Salt [custom salt] /Schema [Schema file]`


## Related articles

- [Create a custom sensitive information type with Exact Data Match based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)
- [Sensitive information type-entity definitions](sensitive-information-type-entity-definitions.md)
- [Custom sensitive information types](./sensitive-information-type-learn-about.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Microsoft Cloud App Security](/cloud-app-security)
- [New-DlpEdmSchema](/powershell/module/exchange/new-dlpedmschema)