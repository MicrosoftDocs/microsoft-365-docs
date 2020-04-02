---
title: "Overview of event-driven retention"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "With retention labels, you can base a retention period on when a specific type of event occurs. The event triggers the start of the retention period, and all content with a retention label applied for that type of event get the label's retention actions enforced on them. Event-driven retention is typically used as part of a records-management process."
---

# Overview of event-driven retention

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

When you retain content, the retention period is often based on the age of the content - for example, you might retain documents for seven years after they're created and then delete them. But with retention labels in Office 365, you can also base a retention period on when a specific type of event occurs. The event triggers the start of the retention period, and all content with a retention label applied for that type of event get the label's retention actions enforced on them.
  
For example, you can use labels with event-driven retention for:
  
- **Employees leaving the organization** Suppose that employee records must be retained for 10 years from the time an employee leaves the organization. After 10 years elapse, all documents related to the hiring, performance, and termination of that employee need to be disposed. The event that triggers the 10-year retention period is the employee leaving the organization. 
    
- **Contract expiration** Suppose that all records related to contracts need to be retained for five years from the time the contract expires. The event that triggers the five-year retention period is the expiration of the contract. 
    
- **Product lifetime** Your organization might have retention requirements related to the last manufacturing date of products for content such as technical specifications. In this case, the last manufacturing date is the event that triggers the retention period. 
    
Event-driven retention is typically used as part of a records-management process. This means that:
  
- Labels based on events also usually classify content as a record. For more information, see [Using Content Search to find all content with a specific retention label applied to it](labels.md#using-content-search-to-find-all-content-with-a-specific-retention-label-applied-to-it).
    
- A document that's been declared as a record but whose event trigger has not yet happened is retained indefinitely (records can't be permanently deleted), until an event triggers that document's retention period.
    
- Labels based on events usually trigger a disposition review at the end of the retention period, so that a records manager can manually review and dispose the content. For more information, see [Overview of disposition reviews](disposition-reviews.md).
    
A label based on an event has the same capabilities as any label in Office 365. To learn more, see [Overview of labels](labels.md).

## Understanding the relationship between event types, labels, events, and asset IDs

To successfully use event-driven retention, it's important to understand the relationship between event types, labels, events, and asset IDs as illustrated here. An explanation follows the diagram.
  
![Diagram of event type, labels, events, and asset IDs](../media/a5141a6b-61ca-4a60-9ab0-24e6bb45bbdb.png)
  
![Diagram of event type, labels, events, and asset IDs](../media/ce89a91f-49aa-4b5a-933c-ac3a13dccd5d.png)
  
1. You create labels for different types of content and then associate them with a type of event. For example, labels for different types of product files and records are associated with an event type named Product Lifetime because those records must be retained for 10 years from the time the product reaches its end of life.
    
2. Users (typically records managers) apply those labels to content and (for SharePoint and OneDrive documents) enter an asset ID for each item. In this example, the asset ID is a product name or code used by the organization. Thus, each product's records are assigned a label, and each record has a property that contains an asset ID. The diagram represents **all of the content** for all product records in an organization, and each item bears the asset ID of the product whose record it is. 
    
3. Product Lifetime is the event type; a specific product reaching end of life is an event. When an event of that event type occurs - in this case, when a product reaches its end of life - you create an event that specifies:
    
  - An asset ID (for SharePoint and OneDrive documents)
    
  - Keywords (for Exchange items). In this example, the organization uses a product code in messages containing product records, so the keyword for Exchange items is the same as the asset ID for SharePoint and OneDrive documents.
    
  - The date when the event occurred. This date is used as the start of the retention period. This date can be the current, a past, or a future date.
    
4. After you create an event, that event date is synced to all of the content that has a label of that event type and that contains the specified asset ID or keyword. Like any label, this syncing can take up to 7 days. In the diagram above, all of the items circled in red have their retention period triggered by this event - in other words, when this product reaches its end of life, that event triggers the retention period for that product's records.
    
It's important to understand that if you don't specify an asset ID or keywords for an event, **all of the content** with a label of that event type will have its retention period triggered by the event. This means that in the diagram above, all of the content would start being retained. This may not be what you intend. 
  
Finally, remember that each label has its own retention settings. In this example, they all specify 10 years, but it's possible for an event to trigger labels where each label has a different retention period.
  
## How to set up event-driven retention

Here's the high-level workflow for event-driven retention. More detailed steps follow below.
  
![Diagram of workflow for setting up event-driven retention](../media/161146d9-e0fc-4248-abc1-a18045eaad5c.png)
  
> [!TIP]
> See [Manage the lifecycle of SharePoint documents with retention labels](auto-apply-retention-labels-scenario.md) for a detailed scenario about using managed properties in SharePont to auto-apply retention labels and implement event-driven retention.

### Step 1: Create a label whose retention period is based on an event

In the Microsoft 365 compliance center, Microsoft 365 security center, or the Security &amp; Compliance Center, in the left navigation, choose **Classification** > **Retention labels** > **Labels** tab > **Create a label**.
  
When you create the label, turn on retention, and then choose the option shown below to retain or delete the content based on an event. This means that the retention settings won't go into effect until Step 5, when you create an event on the **Events** page. 
  
Note that event-driven retention is typically used for content that's classified as a record. For this reason, when you create labels based on an event, you typically choose the option to **Use label to classify content as a "Record"**.
  
Also note that event-driven retention requires retention settings that:
  
- Retain the content.
    
- Delete the content automatically or trigger a disposition review at the end of the retention period.
    
![Option to base a label on an event](../media/a4902281-5196-4194-9737-f30231d95861.png)
  
### Step 2: Choose an event type for that label

In the label settings, after you choose the option to base the label on **an event**, you'll see the option to **Choose an event type**. An event type is simply a general description of an event that you want to associate a label with.
  
For example, if you create an event type named Product Lifetime, you'll create event-based labels with names that describe what types of content you want the labels to be applied to, such as "Product development files" or "Product business decision records".
  
Note that once you choose an event type and create the label, the event type cannot be changed.
  
![Options to create or choose an event type](../media/8b7afe79-72cb-462e-81d4-b5ddbe899dbc.png)
  
### Step 3: Publish or auto-apply the label

Just like any label, you need to publish or auto-apply an event-based label, so that it's manually or automatically applied to content. You can do this under **Classification** > **Retention labels** page.
  
![Options to publish or auto-apply retention label](../media/options-to-publish-auto-apply-retention-label.png)

### Step 4: Enter an asset ID

After an event-driven label is applied to content, you can enter an asset ID for each item. For example, your organization might use:
  
- Product codes that you can use to retain content for only a specific product.
    
- Project codes that you can use to retain content for only a specific project.
    
- Employee IDs that you can use to retain content for only a specific person.
    
Understand that Asset ID is simply another document property in SharePoint and OneDrive for Business. Your organization may already use other document properties and IDs to classify content. If so, you can also use those properties and values when you create an event - see Step 6 below. The important point is that your organization must use some property:value combination in the document properties to associate that item with an event type.
  
![Text box to enter an Asset ID](../media/6d31628e-7162-4370-a8d7-de704aafa350.png)
  
### Step 5: Create an event

When a particular instance of that event type occurs - for example, a product reaches its end of life - go to the **Records management** > **Events** page in the Security &amp; Compliance Center and create an event. You need to manually trigger an event by creating it.
  
### Step 6: Choose the same event type used by the label in step 2

When you create the event, choose the same event type used by the label in step 2 - for example, Product Lifetime. Only content with labels applied to it of that event type will have its retention period triggered.
  
![Option in Event settings to choose an event type](../media/11663591-5628-419e-9537-61eb8f5c741f.png)
  
### Step 7: Enter keywords or an asset ID

Now you narrow the scope of the content by specifying asset IDs for SharePoint and OneDrive content or keywords for Exchange content. For asset IDs, retention will be enforced only on content with the specified property:value pair. If an asset ID is not entered, **all of the content** with labels of that event type get the same retention date applied to them. 
  
Understand that Asset ID is simply another document property in SharePoint and OneDrive for Business. If you're using the Asset ID property, you would enter ComplianceAssetID:\<value\> in the box for asset IDs shown below.
  
Your organization might have applied other properties and IDs to the documents related to this event type. For example, if you need to detect a specific product's records, the ID might be a combination of your custom property ProductID and the value "XYZ". In this case, you'd enter ProductID:XYZ in the box for asset IDs shown below.
  
For Exchange items, you can include keywords. You can refine your query by using search operators like AND, OR, and NOT. For more information on operators, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
  
Finally, choose the date when the event occurred; this date is used as the start of the retention period. After you create an event, that event date is synced to all of the content with a label of that event type, asset ID, and keywords. Like any label, this syncing can take up to 7 days.
  
![Event settings page](../media/40d3c9db-f624-49a5-b38a-d16bcce20231.png)
  
## Use Content Search to find all content with a specific label or asset ID

After labels are assigned to content, you can use content search to find all content that's classified with a specific label or that contains a specific asset ID.
  
When you create a content search:
  
- To find all content with a specific label, choose the **Compliance Tag** condition, and then enter the complete label name or part of the label name and use a wildcard. 
    
- To find all content with a specific asset ID, enter the **ComplianceAssetID** property and a value, like ComplianceAssetID:\<value\>. 
    
For more information, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
  
## Permissions

To get access to the **Events** page, reviewers must be members of a role group with the **Disposition Management** role and the **View-Only Audit Logs** role. We recommend creating a new role group called Disposition Reviewers, adding these two roles to that role group, and then adding members to the role group. 
  
For more information, see [Give users access to the Security &amp; Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md).
  
## Automate events by using PowerShell

In the admin center, you can only create events manually; it's not possible to automatically trigger an event when it occurs. However, you can use a Rest API to trigger events automatically; for more information, see [Automate event-based retention](automate-event-driven-retention.md).

You can also use a PowerShell script to automate event-based retention from your business applications. Here are the PowerShell cmdlets available for event-driven retention:
  
- [Get-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873002)
    
- [New-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873004)
    
- [Remove-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873005)
    
- [Set-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873006)
    
- [Get-ComplianceRetentionEvent](https://go.microsoft.com/fwlink/?linkid=873001)
    
- [New-ComplianceRetentionEvent](https://go.microsoft.com/fwlink/?linkid=873003)
    

