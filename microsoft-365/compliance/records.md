---
title: "Learn about records"
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
description: "Learn about records to help you implement a records management solution in Microsoft 365."
---

# Learn about records

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Managing records in Microsoft 365 helps your organization comply with corporate policies and legal or regulatory obligations, while also reducing risk and legal liability.

When items are marked as a record:

- Restrictions are placed on the items in terms of what [actions are allowed or blocked](#compare-restrictions-for-what-actions-are-allowed-or-blocked).

- Additional activities about the item are logged.

- You have proof of disposition when the items are deleted at the end of their retention period.

You use [retention labels](retention.md#retention-labels) to mark items as a record. You can either publish those labels so that users and administrators can manually apply them to content, or auto-apply those labels to content that you want to mark as a record.

By using retention labels to mark content as records, you can implement a single and consistent strategy for managing records across your Microsoft 365 environment.

## Compare restrictions for what actions are allowed or blocked

Use the following table to identify what restrictions are placed on content as a result of applying a standard retention label, and retention labels that mark content as a record. 

A standard retention label has the configuration to retain data without marking content as a record.

>[!NOTE] 
> For completeness, the table includes columns for a locked and unlocked record, which is applicable to SharePoint and OneDrive, but not Exchange. The ability to lock and unlock a record uses [record versioning](#record-versioning) that isn't supported for Exchange items. So for all Exchange items that are marked as a record, the behavior maps to the **Record - locked** column, and the **Record - unlocked column** is not relevant.


|Action| Retention label |Record - locked| Record - unlocked|
|:-----|:-----|:-----|:-----|:-----|
|Edit contents|Allowed | **Blocked** | Allowed|
|Edit properties, including rename|Allowed |Allowed | Allowed|
|Delete|Allowed <sup>1</sup> |**Blocked** | **Blocked**|
|Copy|Allowed |Allowed | Allowed|
|Move within container <sup>2</sup>|Allowed |Allowed | Allowed|
|Move across containers <sup>2</sup>|Allowed |Allowed if never unlocked | Allowed|
|Open/Read|Allowed |Allowed | Allowed|
|Change label|Allowed |Allowed - container admin only | Allowed - container admin only|
|Remove label|Allowed |Allowed - container admin only | Allowed - container admin only|

Footnotes:

<sup>1</sup>
Supported by OneDrive and Exchange by retaining a copy in a secured location, but blocked by SharePoint.

Message a user sees if they try to delete a labeled document in SharePoint:

![Message that item wasn't deleted from SharePoint](../media/d0020726-1593-4a96-b07c-89b275e75c49.png)


<sup>2</sup>
Containers include SharePoint document libraries and Exchange mailboxes.


## Using retention labels to declare records

When you create a retention label, you have the option to use the retention label to mark items as a record:

1. In the Microsoft 365 compliance center, go to **Records Management** \> **File Plan**. On the **File plan** page, select **Create a label**.

2. On the **Label settings** page in the wizard, select the option to mark items as a record.
    
   ![Retention label option to mark items as a record](../media/recordversioning6.png)

3. Apply the retention label to SharePoint or OneDrive documents and Exchange emails, as needed. For instructions:
    
    - [Create retention labels and apply them in apps](create-apply-retention-labels.md)
    
    - [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

### Applying the configured retention label to content

When retention labels that mark items as a record are made available for users to apply them in apps:

- For Exchange, any user with write-access to the mailbox can apply these labels. 
- For SharePoint and OneDrive, any user in the default Members group (the Contribute permission level) can apply these labels.

Example of a document marked as record by using a retention label:

![Details pane for document tagged as a record](../media/recordversioning7.png)

## Record versioning

The ability to mark a document as a record and restrict actions that can be performed on the record is an essential goal for any records management solution. However, collaboration might also be needed for people to create subsequent versions.

For example, you might mark a sales contract as a record, but then need to update the contract with new terms and mark the latest version as a new record while still retaining the previous record version. For these types of scenarios, SharePoint and OneDrive support *record versioning*. OneNote notebook folders don't support record versioning.

To use record versioning, first label the document and mark it as a record. At this point, a document property, called *Record status* is displayed next to the retention label, and the initial record status is **Locked**. 

You can now do the following things:

  - **Continually edit and retain individual versions of the document as records, by unlocking and locking the Record status property.** Only when the **Record status** property is set to **Locked** is a new version of the record retained. This toggle of locked and unlocked reduces the risk of retaining unnecessary versions and copies of the document.

  - **Have the records automatically stored in an in-place records repository located within the site collection.** Each site collection in SharePoint and OneDrive preserves content in its Preservation Hold library. Record versions are stored in the Records folder in this library.

  - **Maintain an evergreen document that contains all versions.** By default, each SharePoint and OneDrive document has a version history available on the item menu. In this version history, you can easily see which versions are records and view those documents.

Record versioning is automatically available for any document that has a retention label that marks the item as a record. When a user views the document properties by using the details pane, they can toggle the **Record status** from **Locked** to **Unlocked**. This action creates a record in the Records folder in the Preservation Hold library, where it resides for the remainder of its retention period. 

While the document is unlocked, any user with standard edit permissions can edit the file. However, users can't delete the file, because it's still a record. When editing is complete, a  user can then toggle the **Record status** from **Unlocked** to **Locked**, which prevents further edits while in this status.
<br/><br/>

![Record status property on document tagged as a record](../media/recordversioning8.png)

### Locking and unlocking a record

After a retention label that marks content as a record is applied to a document, any user with Contribute permissions or a narrower permission level can unlock a record or lock an unlocked record.
<br/><br/>

![Record status shows record document is unlocked](../media/recordversioning9.png)

When a user unlocks a record, the following actions occur:

1. If the current site collection doesn't have a Preservation Hold library, one is created.

2. If the Preservation Hold library doesn't have a Records folder, one is created.

3. A **Copy to** action copies the latest version of the document to the Records folder. The **Copy to** action includes only the latest version and no prior versions. This copied document is now considered a record version of the document, and its file name has the format: \[Title GUID Version\#\]

4. The copy created in the Records folder is added to the version history of the original document, and this version shows the word **Record** in the comments field.

5. The original document is a new version that can be edited, but not deleted. The document library column **Item is a Record** still shows the **Yes** value because the document is still a record, even if it can now be edited.

When a user locks a record, the original document again can't be edited. But it is the action of unlocking a record that copies a version to the Records folder in the Preservation Hold library.

### Record versions

Each time a user unlocks a record, the latest version is copied to the Records folder in the Preservation Hold library, and that version contains the value of **Record** in the **Comments** field of the version history.
<br/><br/>

![Record shown in the Preservation Hold library](../media/recordversioning10.png)

To view the version history, select a document in the document library and then click **Version history** in the item menu.

### Where records are stored

Records are stored in the Records folder in the Preservation Hold library in the top-level site in the site collection. In the left navigation on the top-level site, choose **Site contents** \> **Preservation Hold Library**.
<br/><br/>

![Preservation Hold library](../media/recordversioning11.png)

<br/><br/>

![The Records folder in the Preservation Hold library](../media/recordversioning12.png)

The Preservation Hold library is visible only to site collection admins. Also, the Preservation Hold library doesn't exist by default. It's created only when content subject to a retention label or retention policy is deleted for the first time in the site collection.

### Searching the audit log for record versioning events

The actions of locking and unlocking records are logged in the audit log. You can search for the specific activities **Changed record status to locked** and **Changed record status to unlocked**, which are located in the **File and page activities** section in the **Activities** dropdown list on the **Audit log search** page in the security and compliance center.
<br/><br/>

![Search the audit log for record versioning events](../media/recordversioning13.png)

For more information about searching for these events, see the "File and page activities" section in [Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md#file-and-page-activities).

## Next steps

If you don't yet have retention labels to use for records management, see [Get started with retention policies and retention labels](get-started-with-retention.md).

To learn about disposition of records, see [Disposing of content](disposition.md).
