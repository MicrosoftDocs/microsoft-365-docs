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
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Hash and upload the sensitive information source table for exact data match sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Hash and upload the sensitive information source table for exact data match sensitive information types

This article shows you how to hash and upload your sensitive information source table.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Applies to

- [Create exact data match sensitive information type new experience](sit-create-edm-sit-unified-ux-workflow.md)
- [Create exact data match sensitive information type classic experience](sit-create-edm-sit-classic-ux-workflow.md)

## Hash and upload the sensitive information source table

In this phase you:

1. Set up a custom security group and user account.
2. Set up the EDM Upload Agent tool.
3. Use the EDM Upload Agent tool to hash, with a salt value, the sensitive information source table, and upload it.

The hashing and uploading can be done using one computer or you can separate the hashing step from the upload step for greater security.

If you want to hash and upload from one computer, you need to do it from a computer that can directly connect to your Microsoft 365 tenant. This requires that your clear text sensitive information source table file is on that computer for hashing.

If you do not want to expose your clear text sensitive information source table file on the direct access computer, you can hash it on a computer that's in a secure location and then copy the hash file and the salt file to a computer that can directly connect to your Microsoft 365 tenant for upload. In the separated hash and upload scenario, you'll need the EDMUploadAgent on both computers.

> [!IMPORTANT]
> If you used the Exact Data Match schema and sensitive information type wizard to create your schema file, you ***must*** download the schema for this procedure if you haven't already done so. See, [Export of the EDM schema file in XML format](sit-get-started-exact-data-match-create-schema.md#export-of-the-edm-schema-file-in-xml-format).

> [!NOTE]
> If your organization has set up [Customer Key for Microsoft 365 at the tenant level](customer-key-overview.md), Exact data match will make use of its encryption functionality automatically. This is available only to E5 licensed tenants in the Commercial cloud.

### Best practices

Separate the processes of hashing and uploading the sensitive data so you can more easily isolate any issues in the process.

Once in production, keep the two steps separate in most cases. Performing the hashing process on an isolated computer and then transferring the file for upload to an internet-facing computer ensures the actual data is never available in clear text form in a computer that could have been compromised due to its connection to the Internet.

### Ensure your sensitive data table doesn't have formatting issues

Before you hash and upload your sensitive data, do a search to validate the presence of special characters that may cause problems in parsing the content.
You can validate that the table is in a format suitable to use with EDM by using the EDM upload agent with the following syntax:

```powershell
EdmUploadAgent.exe /ValidateData /DataFile [data file] /Schema [schema file]
```

If the tool indicates a mismatch in number of columns it might be due to the presence of commas or quote characters within values in the table which are being confused with column delimiters. Unless they are surrounding a whole value, single and double quotes can cause the tool to misidentify where an individual column starts or ends.

**If you find single or double quote characters surrounding full values**: you can leave them as they are.

**If you find single quote characters or commas inside a value**: for example the person's name Tom O'Neil or the city 's-Gravenhage which starts with an apostrophe character, you will need to modify the data export process used to generate the sensitive information table to surround such columns with double quotes.

**If double quote characters are found inside values**, it might be preferable to use the Tab-delimited format for the table which is less susceptible to such issues.

### Prerequisites

- a work or school account for Microsoft 365  that will be added to the **EDM\_DataUploaders** security group
- a Windows 10 or Windows Server 2016 machine with .NET version 4.6.2 <!--4.7.2 un comment this around 9/29-->for running the EDMUploadAgent
- a directory on your upload machine for the:
  - [EDM Upload Agent](#links-to-edm-upload-agent-by-subscription-type)
  - your sensitive item file in .csv, .tsv or pipe (|) format, **PatientRecords.csv** in our examples
  - the output hash and salt files created in this procedure
  - the datastore name from the **edm.xml** file, for this example its `PatientRecords`

> [!IMPORTANT]
Install the [EDM Upload Agent](#links-to-edm-upload-agent-by-subscription-type) in a custom folder so you don't need administrator permissions. If you install it into the default (*Program Files*), administrator permissions are required.

#### Set up the security group and user account

1. As a global administrator, go to the admin center using the appropriate [link for your subscription](sit-get-started-exact-data-match-based-sits-overview.md#portal-links-for-your-subscription) and [create a security group](/office365/admin/email/create-edit-or-delete-a-security-group) called **EDM\_DataUploaders**.

2. Add one or more users to the **EDM\_DataUploaders** security group. (These users will manage the database of sensitive information.)

### Hash and upload from one computer

This computer must have direct access to your Microsoft 365 tenant.

> [!NOTE]
> Before you begin this procedure, make sure that you are a member of the **EDM\_DataUploaders** security group.

> [!TIP]
>Optionally, you can run a validation against your sensitive information source table file to check it for errors before uploading by running:
>
> `EdmUploadAgent.exe /ValidateData /DataFile [data file] /Schema [schema file]`
>
> For more information on all the EdmUploadAgent.exe supported parameters run
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

3. Authorize the EDM Upload Agent, open Command Prompt window as an administrator, switch to the **C:\EDM\Data** directory and then run the following command:

   `EdmUploadAgent.exe /Authorize`

   > [!IMPORTANT]
   > You must run the **EdmUploadAgent** from the folder where it's installed, and indicate the full path to your data files.

4. Sign in with your work or school account for Microsoft 365 that was added to the EDM_DataUploaders security group. Your tenant information is extracted from the user account to make the connection.

   OPTIONAL: If you used the Exact Data Match schema and sensitive information type wizard to create your schema, you ***must*** download it for use in this procedures if you haven't already. Run this command in a Command Prompt window:

   ```dos
   EdmUploadAgent.exe /SaveSchema /DataStoreName <schema name> /OutputDir <path to output folder>
   ```

5. To hash and upload the sensitive data, run the following command in Command Prompt window:

   ```dos
   EdmUploadAgent.exe /UploadData /DataStoreName [DS Name] /DataFile [data file] /HashLocation [hash file location] /Schema [Schema file] /ColumnSeparator ["{Tab}"|"|"] /AllowedBadLinesPercentage [value]
   ```

   > [!NOTE]
   > The default format for the sensitive data file is comma-separated values. You can specify a tab-separated file by indicating the "{Tab}" option with the /ColumnSeparator parameter, or you can specify a pipe-separated file by indicating the "|" option.
   >
   > Example: `EdmUploadAgent.exe /UploadData /DataStoreName PatientRecords /DataFile C:\Edm\Hash\PatientRecords.csv /HashLocation C:\Edm\Hash /Schema edm.xml /AllowedBadLinesPercentage 5`

   If your sensitive information table has some incorrectly formatted values, but you want to import the remaining data while ignoring invalid rows anyway, you can use the */AllowedBadLinesPercentage* parameter in the command. The example above specifies a five percent threshold. This means that the tool will hash and upload the sensitive information table even if up to five percent of the rows are invalid.

   This command will automatically add a randomly generated salt value to the hash for greater security. Optionally, if you want to use your own salt value, add the **/Salt \<saltvalue\>** to the command. This value must be 64 characters in length and can only contain the a-z characters and 0-9 characters.

6. Check the upload status by running this command:

   ```dos
   EdmUploadAgent.exe /GetSession /DataStoreName \<DataStoreName\>
   ```

   Example: `EdmUploadAgent.exe /GetSession /DataStoreName PatientRecords`

   Look for the status to be in **ProcessingInProgress**. Check again every few minutes until the status changes to **Completed**. Once the status is completed, your EDM data is ready for use. Depending on the size of your sensitive information source table file, this can take from a few minutes to several hours.

> [!TIP]
> If you want to be notified once the uploaded sensitive data is ready to use, follow the procedures in [Create notifications for exact data match activities](sit-edm-notifications-activities.md#create-notifications-for-exact-data-match-activities).

### Separate Hash and upload

Perform the hash on a computer in a secure environment. You must have the **EDMUploadAgent** installed on both computers.

OPTIONAL: If you used the Exact Data Match schema and sensitive information type wizard to create your schema and you haven't already downloaded it, run the following command in a Command Prompt window to download the file in XML format:

```dos
EdmUploadAgent.exe /SaveSchema /DataStoreName <schema name> /OutputDir <path to output folder>
````

1. On the computer in the secure environment, run the following command in Command Prompt windows:

   ```dos
   EdmUploadAgent.exe /CreateHash /DataFile [data file] /HashLocation [hash file location] /Schema [Schema file] /AllowedBadLinesPercentage [value]
   ```

   For example:

   ```dos
   EdmUploadAgent.exe /CreateHash /DataFile C:\Edm\Data\PatientRecords.csv /HashLocation C:\Edm\Hash /Schema edm.xml /AllowedBadLinesPercentage 5
   ```

   > [!NOTE]
   > The default format for the sensitive data file is comma-separated values. You can specify a tab-separated file by indicating the "{Tab}" option with the /ColumnSeparator parameter, or you can specify a pipe-separated file by indicating the "|" option.

   This will output a hashed file and a salt file with these extensions if you didn't specify the **/Salt \<saltvalue\>** option:

   - .EdmHash
   - .EdmSalt

2. Copy these files in a secure fashion to the computer you will use to upload your sensitive information source table file (PatientRecords) to your tenant.

3. Authorize the EDM Upload Agent, open Command Prompt window as an administrator, switch to the **C:\EDM\Data** directory and then run the following command:

   ```dos
   EdmUploadAgent.exe /Authorize
   ```

   > [!IMPORTANT]
   > You must run the **EdmUploadAgent** from the folder where it's installed, and indicate the full path to your data files.

4. Sign in with your work or school account for Microsoft 365 that was added to the EDM_DataUploaders security group. Your tenant information is extracted from the user account to make the connection.

5. To upload the hashed data, run the following command in Windows Command Prompt:

   ```dos
   EdmUploadAgent.exe /UploadHash /DataStoreName \<DataStoreName\> /HashFile \<HashedSourceFilePath\ /ColumnSeparator ["{Tab}"|"|"]
   ```

   For example:

   ```dos
   EdmUploadAgent.exe /UploadHash /DataStoreName PatientRecords /HashFile C:\\Edm\\Hash\\**PatientRecords.EdmHash**
   ```

6. To verify that your sensitive data has been uploaded, run the following command in Command Prompt window:

   ```dos
   EdmUploadAgent.exe /GetDataStore
   ```

   You'll see a list of data stores and when they were last updated.

7. If you want to see all the data uploads to a particular store, run the following command in a Windows command prompt to see a list of all the data stores and when they were updated:

   ```dos
   EdmUploadAgent.exe /GetSession /DataStoreName <DataStoreName>
   ```

> [!NOTE]
> To automate the hash and upload process after you have created it the first time, see [Refresh your exact data match sensitive information source table file](sit-use-exact-data-refresh-data.md).

## Next steps

- **For new experience**: [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)

or

- **For classic experience**: [Create exact data match sensitive information type/rule package](sit-get-started-exact-data-match-create-rule-package.md)
