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
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Learn how to edit or remove your exact data match schema.
ms.custom: seo-marvel-apr2020
---
# Manage your exact data match schema

## Editing the schema for EDM-based classification manually

If you want to make changes to your EDM schema, for example the **edm.xml** file, such as changing which fields are used for EDM-based classification, follow these steps:

> [!TIP]
> You can change your EDM schema and sensitive information table source file to take advantage of **configurable match**. When configured, EDM will ignore case differences and some delimiters when it evaluates an item. This makes defining your xml schema and your sensitive data files easier. To learn more see, [Using the caseInsensitive and ignoredDelimiters fields](sit-get-started-exact-data-match-create-schema.md#using-the-caseinsensitive-and-ignoreddelimiters-fields).

1. Edit your **edm.xml** file (this is the file discussed in the [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md#create-the-schema-for-exact-data-match-based-sensitive-information-types).

2. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

3. To update your database schema, run the following command:

      ```powershell
      Set-DlpEdmSchema -FileData ([System.IO.File]::ReadAllBytes('.\\edm.xml')) -Confirm:$true
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
      > If you want your changes to occur without confirmation, don't use `-Confirm:$true` in Step 3.

      > [!NOTE]
      > It can take between 10-60 minutes to update the EDMSchema with additions. The update must complete before you execute steps that use the additions.

## Removing the schema for EDM-based classification manually

If you want to remove the schema you're using for EDM-based classification, follow these steps:

1. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. Run the following command, substituting the data store name of "patient records" with the one you want to remove (using the patientrecords store as an example):

      ```powershell
      Remove-DlpEdmSchema -Identity 'patientrecords'
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
      > If you want your changes to occur without confirmation, don't use `-Confirm:$true` in Step 2.

### Edit or delete the EDM schema with the wizard

1. Open **Compliance center** \> **Data classification** \> **Exact data matches**.

2. Choose **EDM schemas**.

3. Choose the EDM SIT you want to edit.

4. Choose **Edit EDM schema** or **Delete EDM schema** from the flyout.

> [!IMPORTANT]
> If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema.
