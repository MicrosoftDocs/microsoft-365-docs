---
title: Start retention when an event occurs
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
ms.custom: 
 - seo-marvel-apr2020
 - seo-marvel-may2020
 - seo-marvel-jun2020
description: Typically part of a records management solution, you can configure a retention label to start the retention period based on an event that you identify.
---

# Start retention when an event occurs

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

When you retain content, the retention period is often based on the age of the content. For example, you might retain documents for seven years after they're created and then delete them. But when you configure [retention labels](labels.md), you can also base a retention period on when a specific type of event occurs. The event triggers the start of the retention period, and all content with a retention label applied for that type of event get the label's retention actions enforced on them.
  
Examples for using event-driven retention:
  
- **Employees leaving the organization** Suppose that employee records must be retained for 10 years from the time an employee leaves the organization. After 10 years elapse, all documents related to the hiring, performance, and termination of that employee must be disposed. The event that triggers the 10-year retention period is the employee leaving the organization. 
    
- **Contract expiration** Suppose that all records related to contracts must be retained for five years from the time the contract expires. The event that triggers the five-year retention period is the expiration of the contract. 
    
- **Product lifetime** Your organization might have retention requirements related to the last manufacturing date of products for content such as technical specifications. In this case, the last manufacturing date is the event that triggers the retention period. 
    
Event-driven retention is typically used as part of a records-management process. This means that:
  
- Labels based on events also usually classify content as a record. For more information, see [Learn about records](records.md).

- A document that's been classified as a record but whose event trigger has not yet happened is retained indefinitely (records can't be permanently deleted), until an event triggers that document's retention period.
    
- Retention labels based on events usually trigger a disposition review at the end of the retention period, so that a records manager can manually review and dispose of the content. For more information, see [Disposition of content](disposition.md).
    

A label based on an event has the same capabilities as any retention label in Microsoft  365. For more information, see [Learn about retention policies and retention labels](retention.md).

## Understanding the relationship between event types, labels, events, and asset IDs

To successfully use event-driven retention, it's important to understand the relationship between event types, retention labels, events, and asset IDs as illustrated in the diagrams and the explanation that follows: 
  
![Diagram of event type, labels, events, and asset IDs](../media/a5141a6b-61ca-4a60-9ab0-24e6bb45bbdb.png)
  
![Diagram of event type, labels, events, and asset IDs](../media/ce89a91f-49aa-4b5a-933c-ac3a13dccd5d.png)
  
1. You create retention labels for different types of content and then associate them with a type of event. For example, retention labels for different types of product files and records are associated with an event type named Product Lifetime because those records must be retained for 10 years from the time the product reaches its end of life.
    
2. Users (typically records managers) apply those retention labels to content and (for SharePoint and OneDrive documents) enter an asset ID for each item. In this example, the asset ID is a product name or code used by the organization. Thus, each product's records are assigned a retention label, and each record has a property that contains an asset ID. The diagram represents **all of the content** for all product records in an organization, and each item bears the asset ID of the product whose record it is. 
    
3. Product Lifetime is the event type; a specific product reaching end of life is an event. When an event of that event type occurs - in this case, when a product reaches its end of life - you create an event that specifies:
    
  - An asset ID (for SharePoint and OneDrive documents)
    
  - Keywords (for Exchange items). In this example, the organization uses a product code in messages containing product records, so the keyword for Exchange items is the same as the asset ID for SharePoint and OneDrive documents.
    
  - The date when the event occurred. This date is used as the start of the retention period. This date can be the current, a past, or a future date.
    
4. After you create an event, that event date is synchronized to all the content that has a retention label of that event type and that contains the specified asset ID or keyword. Like any retention label, this synchronization can take up to 7 days. In the previous diagram, all the items circled in red have their retention period triggered by this event. In other words, when this product reaches its end of life, that event triggers the retention period for that product's records.
    
It's important to understand that if you don't specify an asset ID or keywords for an event, **all content** with a label of that event type will have its retention period triggered by the event. This means that in the previous diagram, all content would start being retained. This might not be what you intend. 
  
Finally, remember that each retention label has its own retention settings. In this example, they all specify 10 years, but it's possible for an event to trigger retention labels where each label has a different retention period.
  
## How to set up event-driven retention

High-level workflow for event-driven retention:
  
![Diagram of workflow for setting up event-driven retention](../media/event-based-retention-process.png)
  
> [!TIP]
> See [Manage the lifecycle of SharePoint documents with retention labels](auto-apply-retention-labels-scenario.md) for a detailed scenario about using managed properties in SharePoint to auto-apply retention labels and implement event-driven retention.

### Step 1: Create a label whose retention period is based on an event

To create and configure your retention label, use the instructions from [Create and configure retention labels](create-retention-labels.md#create-and-configure-retention-labels) and when you turn on retention, choose the option to retain or delete the content based on an event. This setting means that the retention settings won't go into effect until Step 5, when you create an event on the **Events** page. 
  
Event-driven retention is typically used for content that's classified as a record, so this is a good time to check whether you also need to select the option that marks content as a record.
  
Event-driven retention requires retention settings that:
  
- Retain the content.
    
- Delete the content automatically or trigger a disposition review at the end of the retention period.
    
![Option to base a label on an event](../media/a4902281-5196-4194-9737-f30231d95861.png)

### Step 2: Choose an event type for that label

In the label settings, after you choose the option to base the label on an **event**, you'll see the option to **Choose an event type**. An event type is simply a general description of an event that you want to associate a label with.
  
For example, if you create an event type named Product Lifetime, you'll create event-based retention labels with names that describe what types of content you want the labels to be applied to, such as "Product development files" or "Product business decision records".

Select one of the built-in event types, or create your own and then select it.

After you choose an event type and save the retention label, the event type cannot be changed.
  
![Options to create or choose an event type](../media/8b7afe79-72cb-462e-81d4-b5ddbe899dbc.png)
  
### Step 3: Publish or auto-apply the event-based retention labels

Just like any retention label, you need to publish or auto-apply an event-based label, for it to be manually or automatically applied to content:
- [Create retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)


> [!NOTE]
> If you select an event-based retention label from **Records Management** > **File plan** tab or **Data governance** > **Labels** tab, the **Auto-apply a label** button is not available.
> 
> Instead of this button, use the **Auto-apply a label** option above the list of labels or policies from one of the following locations:
> - **Records management** > **Label policies** tab
> - **Data governance** > **Labels** tab or **Label policies** tab


![Options to publish or auto-apply retention label](..\media\compliance-information-governance-publish-labels.png)

### Step 4: Enter an asset ID

After an event-based label is applied to content, you can enter an asset ID for each item. For example, your organization might use:
  
- Product codes that you can use to retain content for only a specific product.
    
- Project codes that you can use to retain content for only a specific project.
    
- Employee IDs that you can use to retain content for only a specific person.
    
Asset ID is simply another document property that's available in SharePoint and OneDrive. Your organization might already use other document properties and IDs to classify content. If so, you can also use those properties and values when you create an event - see step 6 that follows. The important point is that you must use some *property:value* combination in the document properties to associate that item with an event type.
  
![Text box to enter an Asset ID](../media/6d31628e-7162-4370-a8d7-de704aafa350.png)
  
### Step 5: Create an event

When a particular instance of that event type occurs, such as a product reaches its end of life, go to the **Records management** > **Events** page in the Microsoft 365 compliance center and create an event. You trigger an event by creating it.
  
### Step 6: Choose the same event type used by the label in step 2

When you create the event, choose the same event type used by the retention label in step 2 - for example, Product Lifetime. Only content with retention labels applied to it of that event type will have its retention period triggered.
  
![Option in Event settings to choose an event type](../media/11663591-5628-419e-9537-61eb8f5c741f.png)
  
### Step 7: Enter keywords or an asset ID

Now you narrow the scope of the content by specifying asset IDs for SharePoint and OneDrive content, or keywords for Exchange content. For asset IDs, retention will be enforced only on content with the specified *property:value* pair. If an asset ID is not entered, all content with labels of that event type get the same retention date applied to them.

For example: If you're using the Asset ID property, enter `ComplianceAssetID:<value>` in the box for asset IDs shown below.
  
Your organization might have applied other properties and IDs to the documents related to this event type. For example, if you need to detect a specific product's records, the ID might be a combination of your custom property ProductID and the value "XYZ". In this case, you'd enter `ProductID:XYZ` in the box for asset IDs shown in the following picture.
  
For Exchange items, use keywords. You can use a query by using search operators such as AND, OR, and NOT. For more information, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
  
Finally, choose the date when the event occurred; this date is used as the start of the retention period. After you create an event, that event date is synchronized to all the content with a retention label of that event type, asset ID, and keywords. As with any retention label, this synchronization can take up to seven days.
  
![Event settings page](../media/40d3c9db-f624-49a5-b38a-d16bcce20231.png)

After creating an event, the retention settings take effect for the content that's already labeled and indexed. If the retention label is added to new content after the event is created, you must create a new event with the same details.

Deleting an event doesn't cancel the retention settings that are now in effect for the content that's already labeled. To do that, create a new event with the same details, but leave the date blank. 

## Use Content Search to find all content with a specific label or asset ID

After retention labels are assigned to content, you can use content search to find all content that's classified with a specific retention label or that contains a specific asset ID:
  
- To find all content with a specific retention label, choose the **Retention label** condition, and then enter the complete label name or part of the label name and use a wildcard. 
    
- To find all content with a specific asset ID, enter the **ComplianceAssetID** property and a value, using the format `ComplianceAssetID:<value>`. 
    
For more information, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
  
## Permissions

To get access to the **Events** page, reviewers must be members of a role group with the **Disposition Management** role and the **View-Only Audit Logs** role. We recommend creating a new role group called Disposition Reviewers, adding these two roles to that role group, and then adding members to the role group. 
  
For more information, see [Give users access to the Office 365 Security &amp; Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md).
  
## Automate events by using PowerShell

The Microsoft 365 compliance center lets you create events manually and doesn't support automatically triggering an event when it occurs. However, you can use a Rest API to trigger events automatically. For more information, see [Automate event-based retention](automate-event-driven-retention.md).

You can also use a PowerShell script to automate event-based retention from your business applications. The PowerShell cmdlets available for event-based retention:
  
- [Get-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873002)
    
- [New-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873004)
    
- [Remove-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873005)
    
- [Set-ComplianceRetentionEventType](https://go.microsoft.com/fwlink/?linkid=873006)
    
- [Get-ComplianceRetentionEvent](https://go.microsoft.com/fwlink/?linkid=873001)
    
- [New-ComplianceRetentionEvent](https://go.microsoft.com/fwlink/?linkid=873003)
    

