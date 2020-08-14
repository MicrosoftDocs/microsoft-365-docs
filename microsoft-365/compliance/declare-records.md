---
title: "Declare records by using retention labels"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Declare records by using retention labels."
---

# Declare records by using retention labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

To declare items as a record, you use [retention labels](retention.md#retention-labels) that mark the content as a record. You can either publish those labels so that users and administrators can manually apply them to content, or auto-apply those labels to content that you want to mark as a record.

## Configuring retention labels to declare records

When you create or configure a retention label, select the option to mark the content as a record.

>[!NOTE] 
> The option to mark the content as a record is not available when you create or configure retention labels from **Information Governance** in the Microsoft 365 compliance center. Instead, you must use **Records Management**.

To create a new retention label that marks the content as a record:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Records Management** \> **File Plan**. On the **File plan** page, select **Create a label**.

2. On the **Label settings** page in the wizard, choose the option to classify content as a record.
    
   ![Click Use label to classify content as a Record checkbox](../media/recordversioning6.png)

3. Apply the retention label to SharePoint or OneDrive documents and Exchange emails, as needed. For instructions:
    
    - [Create retention labels and apply them in apps](create-apply-retention-labels.md)
    
    - [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

## Applying the configured retention label to content

When retention labels that mark content as a record are made available for users to apply them in apps:

- For Exchange, any user with write-access to the mailbox can apply these labels. 
- For SharePoint and OneDrive, any user in the default Members group (the Contribute permission level) can apply these labels.

Example of a document marked as record by using a retention label:

![Details pane for document tagged as a record](../media/recordversioning7.png)

## Next steps

For a list of scenarios supported by records management, see [Common scenarios for records management](get-started-with-records-management.md#common-scenarios-for-records-management).
