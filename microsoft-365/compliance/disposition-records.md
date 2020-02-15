---
title: "Disposition of records"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Monitor the disposal of records, whether you configure a retention label for disposition review or not."
---

# Disposition of records

After declaring content as a [record by applying a retention label](records.md#using-retention-labels-to-declare-records), you can respond to disposition reviews and view all record deletions by using the **Disposition** tab from **Records Management** in the Microsoft 365 compliance center.

> [!NOTE]
> Rolling out to tenants during February and March 2020, you can now view all records that are deleted, and not just the records that were deleted as a result of a disposition review.

## Prerequisites for viewing record dispositions

To review documents that are marked for a disposition review and see which records are disposed, you must have sufficient permissions.

### Permissions for disposition

To successfully access the **Disposition** tab in the Microsoft 365 compliance center, you must be members of the **Disposition Management** role and the **View-Only Audit Logs** role. We recommend creating a new role group called **Disposition Reviewers**, and add these two roles to that role group. 

Specific to the **View-Only Audit Logs** role:

- Because the underlying cmdlet used to search the audit log is an Exchange Online cmdlet, you must assign users this role by using the [Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/exchange-admin-center), rather than by using the **Permissions** page in the Security & Compliance Center. For instructions, see [Manage role groups in Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/role-groups).

- Office 365 Groups aren't supported for this role. Instead, assign user mailboxes, mail users, or mail-enabled security groups.

For instructions to grant users the **Disposition Management** role and create your new **Disposition Reviewers** role, see [Give users access to the Office 365 Security &amp; Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md).

## Disposition reviews

When content reaches the end of its retention period, there are several reasons why you might want to review that content to decide whether it can be safely deleted ("disposed"). For example, you might need to:
  
- Suspend the deletion ("disposition") of relevant content in the event of litigation or an audit.
    
- Remove content from the disposition list to store in an archive, if that content has research or historical value.
    
- Assign a different retention period to the content, if the original policy was a temporary or provisional solution.
    
- Return the content to clients or transfer it to another organization.

You choose to trigger a disposition review as part of a retention label's configuration. In a disposition review:
  
- The people you choose receive an email notification that they have content to review. These reviewers can be individual users, distribution or security groups, or Office 365 groups. Note that notifications are sent on a weekly basis.
    
- The reviewers go to the **Disposition** tab in the Microsoft 365 compliance center to review the content. The reviewers can see how many items for each retention label are awaiting disposition, and then select a retention label to see all content with that label.
    
- For each document or email, the reviewer can:
    
  - Apply a different retention label.
    
  - Extend its retention period.
    
  - Permanently delete it.
    
- Reviewers can view either pending or completed dispositions, and export that list as a .csv file.

> [!NOTE]
> Each person that participates in a disposition review requires an Office 365 Enterprise E5 subscription.
  
A disposition review can include content in Exchange mailboxes, SharePoint sites, OneDrive accounts, and Office 365 groups. Content awaiting a disposition review in those locations is deleted only after a reviewer chooses to permanently delete the content.
  
![Dispositions page in Security and Compliance Center](../media/Retention-Dispositions-v2-page.png)


## Setting up the disposition review by creating a retention label

This is the basic workflow for setting up a disposition review. Note that this flow shows a retention label being published and then manually applied by a user; alternatively, a retention label that triggers a disposition review can be auto-applied to content.
  
![Chart showing flow of how disposition works](../media/5fb3f33a-cb53-468c-becc-6dda0ec52778.png)
  
A disposition review is an option when you create a retention label. This option is not available in a retention policy but only in a retention label that's configured to retain content.
  
For more information about retention labels, see [Overview of retention labels](labels.md).
  
![Retention settings for a label](../media/a16dd202-8862-40ac-80ff-6fee974de5da.png)
 
> [!NOTE]
> When you specify the option **Notify these people when there are items ready to review**, specify a user or mail-enabled security group. Office 365 groups are not supported for this option.

## Disposing of content

When a reviewer is notified by email that content is ready to review, they go to the **Disposition** tab from **Records Management** in the Microsoft 365 compliance center. The reviewers can see how many items for each retention label are awaiting disposition, and then select a retention label to see all content with that label.

After you select a retention label, you then see all pending dispositions for that label.

![Disposition options](../media/Retention-Disposition-options-v2.png)

You can then: 
  
- Apply a different retention label.
    
- Extend the retention period.
    
- Permanently delete the item.

Note that you can select multiple items and dispose them at the same time.
    
You can also use the link to view the document in its original location, if you have permissions for that location. During a disposition review, the content never moves from its original location, and it's never deleted until the reviewer chooses to do so.
  
Note that the email notifications are sent automatically to reviewers on a weekly basis. Therefore, when content reaches the end of its retention period, it may take up to seven days for reviewers to receive the email notification that content is awaiting disposition.
  
All disposition actions can be audited. Turn on auditing at least one day before the first disposition action. For more information, see [Search the audit log in the Office 365 Security &amp; Compliance Center](search-the-audit-log-in-security-and-compliance.md). 
  
## How long until disposed content is permanently deleted

Content awaiting a disposition review is deleted only after a reviewer chooses to permanently delete the content. When the reviewer chooses this option, the content in the SharePoint site or OneDrive account becomes eligible for the standard cleanup process described in [How a retention policy works with content in place](retention-policies.md#how-a-retention-policy-works-with-content-in-place).
  
This means that:
  
- Content in a document library will be moved to the first-stage Recycle Bin **within 7 days** of disposition, and then permanently deleted **93 days** after that. The Recycle Bin is not indexed by search and therefore its contents are not available to an eDiscovery hold.

- Content in the Preservation Hold library will be permanently deleted **within 7 days** of disposition.

- Items in an Exchange mailbox will be permanently deleted **within 14 days** of disposition. (Note that 14 days is the default setting but it can be configured up to 30 days.)
    
## View pending dispositions and disposed items

From the **Pending disposition** page, you can view both pending and completed dispositions for a specific retention label: 
  
- The **Pending disposition** shows items that have reached the end of their retention period and require a disposition review. After reviewing each item, decide if you want to apply a different retention label to it, extend its retention period, or permanently delete it. You can select multiple items.

- The **Disposed items** tab shows permanently-deleted items that have already been through a disposition review, or deleted records that didn't go through a disposition review. They show here because the permanent deletion process can take several days. Items that had a different retention label applied, or had their retention period extended as part of a review, won't appear here.

### Disposed of records that didn't go through disposition review

Records that were disposed of without a disposition review are identified by the type **Records Disposed**. For example:

![Records that were disposed of without a disposition review](../media/records-disposed.png)

Because this feature is gradually rolling out to tenants during February and March 2020, you might not see these records immediately. When you do, this disposition information is kept for up to 7 years after the item was disposed, with a limit of one million items per record for that period.

If you see the **Count** number nearing this limit of one million, and you need proof of disposition for the record, contact [Microsoft Support](https://docs.microsoft.com/office365/admin/contact-support-for-business-products).

![Disposition tabs](../media/Retention-Disposition-tabs.png)
    
## Filter the disposition views

You can filter these views by retention label or time range. For pending dispositions, the time range is based on the expiration date. For disposed items, the time range is based on the deletion date.
  
![Disposition filter options](../media/Retention-filter-options.png)

### Export the disposition items

In addition, you can export the items in either view as a .csv file that you can open in Excel.
  
![Exported disposition data in Excel](../media/08e3bc09-b132-47b4-a051-a590b697e725.png)

## Auditing record disposal
 
When records are disposed, an audit entry with the operation name of **RecordDelete** is added to the audit log.

For more information about auditing, see [Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance).



  

