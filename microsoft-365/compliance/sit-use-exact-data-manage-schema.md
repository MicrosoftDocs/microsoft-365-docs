---
title: "Manage your exact data match schema"
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
description: Learn how to edit or remove your exact data match schema.
ms.custom: seo-marvel-apr2020
---
# Manage your exact data match schema

<!--CHRIS MOVE THIS TO USE After verifying that your sensitive information table has correctly been uploaded, you can test that it's working properly.

1. Open **Compliance center** > **Data classification** > **Sensitive Information Types**.
2. Select your EDM SIT from the list and then select **Test** in the flyout pane. 
3. Upload an item that contains data you want to detect, for example create an item that contains some of the data in your sensitive information table. If you used the configurable match feature in your schema to define ignored delimiters, make sure the item includes examples with and without those delimiters.
4. After the file has been uploaded and scanned, check for matches to your EDM SIT.
5. If the **Test** function in the SIT detects a match, check that it is not trimming it or extracting it incorrectly. For example by extracting only a substring of the full string it is supposed to detect, or picking up only the first word in a multi-word string, or including extra symbols or characters in the extraction. See [Regular Expression Language - Quick Reference](/dotnet/standard/base-types/regular-expression-language-quick-reference) for the regular expression language reference.  -->



===
Editing the schema for EDM-based classification
If you want to make changes to your EDM schema, such as changing which fields are used for EDM-based classification, follow these steps:
1.	Edit your edm.xml file (this is the file discussed in the Define the schema section of this article).
2.	Connect to the Security & Compliance center using the procedures in Connect to Security & Compliance Center PowerShell.
3.	To update your database schema, run the following cmdlets, one at a time:
$edmSchemaXml=Get-Content .\\edm.xml -Encoding Byte -ReadCount 0
Set-DlpEdmSchema -FileData $edmSchemaXml -Confirm:$true
You will be prompted to confirm, as follows:
Confirm
Are you sure you want to perform this action?
EDM Schema for the data store 'patientrecords' will be updated.
[Y] Yes [A] Yes to All [N] No [L] No to All [?] Help (default is "Y"):
Note
It can take between 10-60 minutes to update the EDMSchema with additions or modifications. The update must complete before you execute steps that use the additions.
Removing a schema for EDM-based classification
If you want to remove a schema you configured for EDM-based classification, follow these steps:
1.	Connect to the Security & Compliance center using the procedures in Connect to Security & Compliance Center PowerShell.
2.	Run the following PowerShell cmdlets, substituting the data store name of "patient records" with the one you want to remove:
Remove-DlpEdmSchema -Identity patientrecords
You will be prompted to confirm:
Confirm
Are you sure you want to perform this action?
EDM Schema for the data store 'patientrecords' will be removed.
[Y] Yes [A] Yes to All [N] No [L] No to All [?] Help (default is "Y"):
Related articles
•	Create a custom sensitive information type with Exact Data Match based classification
•	Sensitive information type-entity definitions
•	Custom sensitive information types
•	Learn about data loss prevention
•	Microsoft Cloud App Security
•	New-DlpEdmSchema



<!-- FOR CHRIS MOVE THIS TO USE #### Editing the schema for EDM-based classification

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
      > It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.-->

<!-- FOR CHRIS move this to USE
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

 FOR CHRIS MOVE THIS TO USE END-->

<!-- CHRIS MOVE THIS TO USE MANAGE EDM FILES

> [!TIP]
> You can change your EDM schema and data file to take advantage of **configurable match**. When configured, EDM will ignore case differences and some delimiters when it evaluates an item. This makes defining your xml schema and your sensitive data files easier. To learn more see, [Modify Exact Data Match schema to use configurable match](sit-modify-edm-schema-configurable-match.md). -->
========

Editing the schema for EDM-based classification
If you want to make changes to your edm.xml file, such as changing which fields are used for EDM-based classification, follow these steps:

 Tip

You can change your EDM schema and data file to take advantage of configurable match. When configured, EDM will ignore case differences and some delimiters when it evaluates an item. This makes defining your xml schema and your sensitive data files easier. To learn more see, Modify Exact Data Match schema to use configurable match.

Edit your edm.xml file (this is the file discussed in the Define the schema section of this article).

Connect to the Security & Compliance center using the procedures in Connect to Security & Compliance Center PowerShell.

To update your database schema, run the following cmdlets, one at a time:

PowerShell

Copy
$edmSchemaXml=Get-Content .\\edm.xml -Encoding Byte -ReadCount 0
Set-DlpEdmSchema -FileData $edmSchemaXml -Confirm:$true
You will be prompted to confirm, as follows:

Confirm

Are you sure you want to perform this action?

EDM Schema for the data store 'patientrecords' will be updated.

[Y] Yes [A] Yes to All [N] No [L] No to All [?] Help (default is "Y"):

 Tip

If you want your changes to occur without confirmation, in Step 3, use this cmdlet instead: Set-DlpEdmSchema -FileData $edmSchemaXml

 Note

It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

Removing the schema for EDM-based classification
(As needed) If you want to remove the schema you're using for EDM-based classification, follow these steps:

Connect to the Security & Compliance center using the procedures in Connect to Security & Compliance Center PowerShell.

Run the following PowerShell cmdlets, substituting the data store name of "patient records" with the one you want to remove:

PowerShell

Copy
Remove-DlpEdmSchema -Identity patientrecords
You will be prompted to confirm:

Confirm

Are you sure you want to perform this action?

EDM Schema for the data store 'patientrecords' will be removed.

[Y] Yes [A] Yes to All [N] No [L] No to All [?] Help (default is "Y"):

 Tip

If you want your changes to occur without confirmation, in Step 2, use this cmdlet instead: Remove-DlpEdmSchema -Identity patientrecords -Confirm:$false



==========

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

