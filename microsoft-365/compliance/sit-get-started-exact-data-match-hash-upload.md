---
title: "Hash and upload the sensitive information source table for exact data match sensitive information types"
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
description: Hash and upload the sensitive information source table for exact data match sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Hash and upload the sensitive information source table for exact data match sensitive information types

At this point, you have set up EDM-based classification. The next step is to hash the sensitive data, and then upload the hashes for indexing.

## Pre-requisites

1. Perform the steps in [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md#export-source-data-for-exact-data-match-based-sensitive-information-type)
2. Perform the steps in [Create the schema and rule package for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-and-rule-package-for-exact-data-match-based-sensitive-information-types) to create the schema and rule package files.

- Export the schema and rule package files in XML format. 

### Hash and upload the sensitive data

In this phase, you set up a custom security group and user account, and set up the EDM Upload Agent tool. Then, you use the tool to hash with salt value the sensitive data, and upload it.

The hashing and uploading can be done using one computer or you can separate the hashing step from the upload step for greater security.

If you want to hash and upload from one computer, you need to do it from a computer that can directly connect to your Microsoft 365 tenant. This requires that your clear text sensitive data files are on that computer for hashing.

If you do not want to expose your clear text sensitive data file, you can hash it on a computer in a secure location and then copy the hash file and the salt file to a computer that can directly connect to your Microsoft 365 tenant for upload. In this scenario, you will need the EDMUploadAgent on both computers.

> [!IMPORTANT]
> If you used the Exact Data Match schema and sensitive information type wizard to create your schema and pattern files, you ***must*** download the schema for this procedure.

> [!NOTE]
> If your organization has set up [Customer Key for Microsoft 365 at the tenant level](customer-key-overview.md), Exact data match will make use of its encryption functionality automatically. This is available only to E5 licensed tenants in the Commercial cloud.

#### Prerequisites

- a work or school account for Microsoft 365  that will be added to the **EDM\_DataUploaders** security group
- a Windows 10 or Windows Server 2016 machine with .NET version 4.6.2 for running the EDMUploadAgent
- a directory on your upload machine for the:
  - EDMUploadAgent
  - your sensitive item file in .csv or .tsv format, **PatientRecords.csv** in our examples
  - the output hash and salt files
  - the datastore name from the **edm.xml** file, for this example its `PatientRecords`
- If you used the [Exact Data Match schema and sensitive information type wizard](sit-edm-wizard.md) you ***must*** download it

#### Set up the security group and user account

1. As a global administrator, go to the admin center using the appropriate [link for your subscription](#portal-links-for-your-subscription) and [create a security group](/office365/admin/email/create-edit-or-delete-a-security-group) called **EDM\_DataUploaders**.

2. Add one or more users to the **EDM\_DataUploaders** security group. (These users will manage the database of sensitive information.)

#### Hash and upload from one computer

This computer must have direct access to your Microsoft 365 tenant.

> [!NOTE]
>
> Before you begin this procedure, make sure that you are a member of the **EDM\_DataUploaders** security group.
>
> Optionally, you can run a validation against your .csv or .tsv file before uploading by running:
>
> `EdmUploadAgent.exe /ValidateData /DataFile [data file] /Schema [schema file]`
>
> For more information on all the EdmUploadAgent.exe >supported parameters run
>
> `EdmUploadAgent.exe /?`

#### Links to EDM upload agent by subscription type

- [Commercial + GCC](https://go.microsoft.com/fwlink/?linkid=2088639) - most commercial customers should use this
- [GCC-High](https://go.microsoft.com/fwlink/?linkid=2137521) - This is specifically for high security government cloud subscribers
- [DoD](https://go.microsoft.com/fwlink/?linkid=2137807) - this is specifically for United States Department of Defense cloud customers

1. Create a working directory for the EDMUploadAgent. For example, **C:\EDM\Data**. Place the **PatientRecords.csv** file there.

2. Download and install the appropriate [EDM Upload Agent](#links-to-edm-upload-agent-by-subscription-type) for your subscription into the directory you created in step 1.

   > [!NOTE]
   > The EDMUploadAgent at the above links has been updated to automatically add a salt value to the hashed data. Alternately, you can provide your own salt value. Once you have used this version, you will not be able to use the previous version of the EDMUploadAgent.
   >
   > You can upload data with the EDMUploadAgent to any given data store only twice per day.

   > [!TIP]
   > To a get a list out of the supported command parameters, run the agent no arguments. For example 'EdmUploadAgent.exe'.

3. Authorize the EDM Upload Agent, open  Command Prompt window (as an administrator), switch to the **C:\EDM\Data** directory and then run the following command:

   `EdmUploadAgent.exe /Authorize`

4. Sign in with your work or school account for Microsoft 365 that was added to the EDM_DataUploaders security group. Your tenant information is extracted from the user account to make the connection.

   OPTIONAL: If you used the Exact Data Match schema and sensitive information type wizard to create your schema and pattern files, run the following command in a Command Prompt window:

   ```dos
   EdmUploadAgent.exe /SaveSchema /DataStoreName <schema name> /OutputDir <path to output folder>
   ```

5. To hash and upload the sensitive data, run the following command in Command Prompt window:

   ```dos
   EdmUploadAgent.exe /UploadData /DataStoreName [DS Name] /DataFile [data file] /HashLocation [hash file location] /Schema [Schema file] /ColumnSeparator ["{Tab}"|"|"] /AllowedBadLinesPercentage [value]
   ```

   Example: **EdmUploadAgent.exe /UploadData /DataStoreName PatientRecords /DataFile C:\Edm\Hash\PatientRecords.csv /HashLocation C:\Edm\Hash /Schema edm.xml /AllowedBadLinesPercentage 5**

   The default format for the sensitive data file is comma-separated values. You can specify a tab-separated file by indicating the "{Tab}" option with the /ColumnSeparator parameter, or you can specify a pipe-separated file by indicating the "|" option.
   If your sensitive information table has some incorrectly formatted values, but you want to import the remaining data while ignoring invalid rows anyway, you can use the /AllowedBadLinesPercentage parameter in the command. The example above specifies a five percent threshold. This means that the tool will hash and upload the sensitive information table even if up to five percent of the rows are invalid. The default value for this setting is one percent. 
   This command will automatically add a randomly generated salt value to the hash for greater security. Optionally, if you want to use your own salt value, add the **/Salt <saltvalue>** to the command. This value must be 64 characters in length and can only contain the a-z characters and 0-9 characters.

6. Check the upload status by running this command:

   ```dos
   EdmUploadAgent.exe /GetSession /DataStoreName \<DataStoreName\>
   ```

   Example: **EdmUploadAgent.exe /GetSession /DataStoreName PatientRecords**

   Look for the status to be in **ProcessingInProgress**. Check again every few minutes until the status changes to **Completed**. Once the status is completed, your EDM data is ready for use.

#### Separate Hash and upload

Perform the hash on a computer in a secure environment.

OPTIONAL: If you used the Exact Data Match schema and sensitive information type wizard to create your schema and pattern files, run the following command in a Command Prompt window:

```dos
EdmUploadAgent.exe /SaveSchema /DataStoreName <schema name> /OutputDir <path to output folder>
````

1. Run the following command in Command Prompt windows:

   ```dos
   EdmUploadAgent.exe /CreateHash /DataFile [data file] /HashLocation [hash file location] /Schema [Schema file] /AllowedBadLinesPercentage [value]
   ```

   For example:

   ```dos
   EdmUploadAgent.exe /CreateHash /DataFile C:\Edm\Data\PatientRecords.csv /HashLocation C:\Edm\Hash /Schema edm.xml /AllowedBadLinesPercentage 5
   ```

   This will output a hashed file and a salt file with these extensions if you didn't specify the **/Salt <saltvalue>** option:

   - .EdmHash
   - .EdmSalt

2. Copy these files in a secure fashion to the computer you will use to upload your sensitive items .csv or .tsv file (PatientRecords) to your tenant.

   To upload the hashed data, run the following command in Windows Command Prompt:

   ```dos
   EdmUploadAgent.exe /UploadHash /DataStoreName \<DataStoreName\> /HashFile \<HashedSourceFilePath\>
   ```

   For example:

   ```dos
   EdmUploadAgent.exe /UploadHash /DataStoreName PatientRecords /HashFile C:\\Edm\\Hash\\PatientRecords.EdmHash**
   ```

   To verify that your sensitive data has been uploaded, run the following command in Command Prompt window:

   ```dos
   EdmUploadAgent.exe /GetDataStore
   ```

   You'll see a list of data stores and when they were last updated.

   If you want to see all the data uploads to a particular store, run the following command in a Windows command prompt:

   ```dos
   EdmUploadAgent.exe /GetSession /DataStoreName <DataStoreName>
   ```

   Proceed to set up your process and schedule for [Refreshing your sensitive information database](#refreshing-your-sensitive-information-database).

At this point, you are ready to use EDM-based classification with your Microsoft cloud services. For example, you can [set up a DLP policy using EDM-based classification](#to-create-a-dlp-policy-with-edm).

After you have imported your rule package with your EDM sensitive info type and have imported your sensitive data table, you can test your newly created type by using the **Test** function in the EDM wizard in the compliance center. See [Use the Exact Data Match Schema and Sensitive Information Type Wizard](sit-edm-wizard.md) for instructions on using this functionality.