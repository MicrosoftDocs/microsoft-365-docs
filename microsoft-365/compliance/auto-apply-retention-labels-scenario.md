---
title: "Manage the lifecycle of product documents stored in SharePoint Online by using retention labels"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "This article shows how to manage the lifecycle of product-related documents stored in SharePoint Online by using retention labels. This process uses document metadata to classify content by auto-applying retention labels and configuring event-based retention."
---

# Manage the lifecycle of SharePoint documents by using retention labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

This article describes how to manage the lifecycle of product-related documents that are stored in SharePoint Online by using automatically applied retention labels and configuring event-based retention.

The auto-apply functionality uses SharePoint metadata for document classification. The scenario in this article is for product-related documents, but the same concepts can be used for other scenarios. For example, in the oil and gas industry, you could use it to manage the lifecycle of documents about physical assets such as oil platforms, well logs, or production licenses. In the financial services industry, you could manage bank account, mortgage, or insurance contract documents. In the public sector, you could manage documents related to construction permits or tax forms.

In this article, we'll look at the information architecture and definition of the retention labels. Then we'll classify documents by auto-applying the labels. And finally we'll generate the events that initiate the retention period.

## Information architecture

Our scenario is a manufacturing company that uses SharePoint Online to store all the documents about the products that the company develops. These documents include product specifications, agreements with suppliers, and user manuals. When these documents are stored in SharePoint as part of Enterprise Content Management policies, document metadata is defined and used to classify them. Each document has the following metadata properties:

- **Doc Type** (such as product specification, agreement, and user manual)

- **Product Name**

- **Status** (draft or final)

This metadata forms a base content type called *Production Document* for all documents.

![Metadata for product documentation](../media/SPRetention1.png)

> [!NOTE]
> The *Doc Type* and *Status* properties are used by retention policies later in this scenario to classify and auto-apply retention labels.

We might have several content types that represent different types of documents, but let's focus on the Product Documentation.

In this scenario, we use the Managed Metadata service and the Term Store to create a term set for *Doc Type* and another one for *Product Name*. For each term set, we create a term for each value. It would look like something like this in Term Store for your SharePoint organization:

![Term set for product documentation in Term store](../media/SPRetention2.png)

*Content Type* can be created and published by using the [Content Type Hub](https://support.office.com/article/manage-content-type-publishing-06f39ac0-5576-4b68-abbc-82b68334889b). You can also create and publish a content type by using site provisioning tools, such as the [PnP provisioning framework](https://docs.microsoft.com/sharepoint/dev/solution-guidance/pnp-provisioning-framework) or [site design JSON schema](https://docs.microsoft.com/sharepoint/dev/declarative-customization/site-design-json-schema#define-a-new-content-type).

Each product has a dedicated SharePoint Online site that contains one document library that has the right content types enabled. All documents are stored in this document library.

![Document library for product documentation](../media/SPRetention3.png)

> [!NOTE]
> Instead of having a SharePoint Online site per product, the manufacturing company in this scenario could use a Microsoft Team per product to support collaboration among members of the team, such as through persistent chat and use the **Files** tab in Teams for document management. In this article we only focus on documents, so, we'll only use a site.

Here's a view of the document library for the Spinning Widget product:

![Spinning Widget document library](../media/SPRetention4.png)

Now that we have the basic information architecture in place for document management, let's look at the retention and disposal strategy for the documents that use the metadata and the classification of those documents.

## Retention and disposition

The manufacturing company's compliance and data governance policies dictate the way that data is preserved and discarded. Product-related documents must be kept for as long as the product is manufactured, and for a certain period after that. This period differs for product specifications, agreements, and user manuals. The following table indicates the retention and disposition requirements:

| **Document type**          | **Retention**                          | **Disposition**                              |
| -------------------------- | -------------------------------------- | -------------------------------------------- |
| Product specifications      | 5 years after production stops  | Delete                                       |
| Product agreements          | 10 years after production stops | Review                                       |
| User manuals                | 5 years after production stops  | Delete                                       |
| All other types of documents | Don't actively retain  | Delete when document is older than 3 years<sup>\*</sup>  |
|||

   <sup>\*</sup>A document is considered older than 3 years if it hasn't been modified within the last 3 years.

We use the security and compliance center to create the following retention labels:

  - Product Specification

  - Product Agreement

  - User Manual

In this article, we only show how to create and auto-apply the Product Specification retention label. To implement the complete scenario, you would also create and auto-apply retention labels for the other two document types.

### Settings for the Product Specification retention label

Here's the [file plan](file-plan-manager.md) for the Product Specification retention label:

- **Name:** Product Specification

- **Description for admins:** Retain for 5 years after production stops, auto delete, event-based retention, event type is *Product Cessation*.

- **Description for users:** Retain for 5 years after production stops.

- **Retention action:** Keep and delete.

- **Retention duration:** 5 years (1,825 days).

- **Record label**: Configure the retention label to classify content as a [*record*](records.md). (Documents that are classified as a *record* can't be modified or deleted by users.)

- **File plan descriptors:** (for simplifying the scenario, no file descriptors are provided)

The following screenshot shows the settings when you create the Product Specification [retention label](retention.md#retention-labels) in the Microsoft 365 compliance center. You can create the *Product Cessation* event type when you create the retention label. See the following steps.

![Retention settings for the Product Specification label](../media/SPRetention5.png)

> [!NOTE]
> To avoid a 5-year wait for document deletion, set the retention duration to 1 day if you're recreating this scenario in a test environment.

### Create an event type when you create a retention label

1. From the **Retain or delete content based** on menu, select **an event**.

2. Select **Choose an event type**.
    
    ![Create a new event type for the Product Specification label](../media/SPRetention6.png)

3. Select **Choose an event type** and then select **Create new event types** on the **Choose an event type** page.

4. Create an event type named **Product Cessation**, enter a description, and select **Finish** to create it.

5. Back on the **Choose an event type** page, select the **Product Cessation** event type that you created, and then select **Add**.

Here's what the settings look like for the Product Specification retention label. Select **Create this label**.

![Settings for the new Product Specification label](../media/SPRetention7.png)

> [!TIP]
> For more detailed steps, see [Create a label whose retention period is based on an event](event-driven-retention.md#step-1-create-a-label-whose-retention-period-is-based-on-an-event).

Now let's look at auto-applying the retention label to product-specification content.

## Classify content by auto-applying retention labels

We're going to [auto-apply](apply-retention-labels-automatically.md) the retention labels that we created by using Keyword Query Language (KQL). KQL is the language used to build search queries. In KQL, you can search by using keywords or managed properties. For more information, see [Keyword Query Language (KQL) syntax reference](https://docs.microsoft.com/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference).

Basically, we want to tell Microsoft 365 to "apply the *Product Specification* retention label to all documents that have a **Status** of ***Final*** and a **Doc Type** of ***Product Specification***. Recall that **Status** and **Doc Type** are the site columns that we defined for the Product Documentation content type in the [Information architecture](#information-architecture) section. To do this, we need to configure the search schema.

When SharePoint indexes content, it automatically generates crawled properties for each site column. For this scenario, we're interested in the **Doc Type** and **Status** properties. We need documents in the library that are the right content type and have the site columns filled in for search to create the crawled properties.

In the SharePoint admin center, open the Search configuration, and select **Manage Search Schema** to view and configure the crawled properties.

![Crawled properties in search schema](../media/SPRetention8.png)

If we type **status** in the **Crawled properties** box and select the green arrow, we should see a result like this:

![The ows_Status crawled property](../media/SPRetention9.png)

The *ows\_\_Status* property (notice the double underscore) is the one that interests us. It maps to the *Status* property of the Production Document content type.

Now, if we type **ows\_doc** and select the green arrow, we should see something like this:

![The ows_Doc_Type crawled property](../media/SPRetention10.png)

The *ows\_Doc\_x0020\_Type* property is the second property that interests us. It maps to the *Doc Type* property of the Production Document content type.

> [!TIP]
> To identify the name of a crawled property for this scenario, go the document library that contains the production documents and go to the library settings. For **Columns**, select the name of the column (for example, **Status** or **Doc Type**) to open the site column page. The **Field** parameter in the URL for that page contains the name of the field. This field name, prefixed with "ows_", is the name of the crawled property. For example, the URL `https://tenantname.sharepoint.com/sites/SpinningWidget/_layouts/15/FldEdit.aspx?List=%7BC38C2F45-3BD6-4C3B-AA3B-EF5DF6B3D172%7D&Field=_Status` corresponds to the *ows\_\_Status* crawled property.

If the crawled properties you're looking for don't appear in the Manage Search Schema section in SharePoint admin center, it could be for one of the following reasons:

- The documents haven't been indexed. You can force a reindex of the library by going to **Document library settings** > **Advanced Settings**.

- If the document library is in a modern site, make sure that the SharePoint admin is also a site collection admin.

For more information about crawled and managed properties, see [Automatically created managed properties in SharePoint Server](https://docs.microsoft.com/sharepoint/technical-reference/automatically-created-managed-properties-in-sharepoint).

### Map crawled properties to pre-defined managed properties

KQL can't use crawled properties in search queries. It has to use a managed property. In a normal search scenario, we create a managed property and map it to the crawled property that we need. However, for auto-applying retention labels, you can only specify in KQL pre-defined managed properties and not custom managed properties. There's a set of predefined managed properties in the system for string RefinableString00 to RefinableString199 that you use. For a complete list, see [Default unused managed properties](https://docs.microsoft.com/sharepoint/manage-search-schema#default-unused-managed-properties). These defaults managed properties are typically used for defining search refiners.

For the KQL query to automatically apply the correct retention label to product document content, we map the crawled properties **ows\_Doc\_x0020\_Type** and **ows\_\_Status** to two refinable managed properties. In our test environment for this scenario, **RefinableString00** and **RefinableString01** aren't being used. We determined this by looking at **Managed Properties** in the **Manage Search Schema** in the SharePoint admin center.

![Managed properties in search schema](../media/SPRetention12.png)

Notice that the **Mapped Crawled Properties** column in the previous screenshot is empty.

To map the **ows\_Doc\_x0020\_Type** crawled property, follow these steps:

1. In the **Managed property** filter box, type **RefinableString00** and select the green arrow.

2. In the results list, select the **RefinableString00** link, and then scroll down to the **Mappings to crawled properties** section.  

3. Select **Add a Mapping**, and then type **ows\_Doc\_x0020\_Type** in the **Search for a crawled property name** box in the **Crawled property selection** window. Select **Find**.  

4. In the results list, select **ows\_Doc\_x0020\_Type** and then select **OK**.

   In the **Mapped Crawled Properties** section, you should see something similar to this screenshot:

   ![Select Add a mapping in Mapped crawled properties section](../media/SPRetention13.png)

5. Scroll to the bottom of the page and select **OK** to save the mapping.

Repeat this same procedure to map *RefinableString01* and *ows\_\_Status*.

Now you should have two managed properties mapped to the two crawled properties:

![Managed properties now mapped to crawled properties](../media/SPRetention14.png)

Let's verify that our setup is correct by running an enterprise search. In a browser, go to https://yourtenant.sharepoint.com/search. In the search box, type **RefinableString00:"Product Specification"** and press enter. This search should return all documents that have Product Specification as **Doc Type**.

Now in the search box, type **RefinableString00:"Product Specification" AND RefinableString01:Final** and press enter. This should return all documents that have Product Specification of **Doc Type** and a Status of **Final**.

### Create the auto-apply label policies

Now that we verified that the KQL query is working correctly, let's create a label policy that uses a KQL query to auto-apply the Product Specification retention label to the appropriate documents.

1. In the [compliance center](https://compliance.microsoft.com/homepage), go to **Records management** > **Label policies**, and then select **Auto-apply a label**.

   ![Select Auto-apply a label on the Labels page](../media/SPRetention16.png)

2. On the **Choose a label to auto-apply** wizard page, select **Choose a label to auto-apply**.

3. In the list of labels, select **Product Specification**, select **Add**, and then select **Next**.

4. Select **Apply label to content that contains specific words or phrases, or properties**, and then select **Next**.

   ![Select Apply label to content that contains specific words or phrases, or properties](../media/SPRetention17.png)

   In the next step, you'll provide the same KQL search query that we tested in the previous section. This query returns all Product Specification documents that have a status of *Final*. When we use this same query in the label policy, the Product Specification retention label will be automatically applied to all documents that match it.

5. In the **Keyword query editor** box, type **RefinableString00:"Product Specification" AND RefinableString01:Final**, and then select **Next**.

   ![Specify the query in the Keyword query editor box](../media/SPRetention19.png)

6. Type a name (for example, **Auto apply Product Specification label**) and an optional description for the label policy, and then select **Next**. 

7. On the **Choose locations** wizard page, you select the content locations that you want to apply the policy to. For this scenario, we apply the policy only to SharePoint locations, because all production documents are stored only in SharePoint document libraries. Select **Let me choose specific locations** and then toggle the status for Exchange email, OneDrive accounts, and Microsoft 365 Groups to *off*. Make sure the status for SharePoint sites is *toggled *on*. 

    ![Choose specific sites to auto-apply labels to](../media/SPRetentionSPlocations.png)

   > [!TIP]
   > Instead of applying the policy to all SharePoint sites, you can select **Choose sites** and add the URLs for specific SharePoint sites.

8. Select **Next** to display the **Review your settings** page.

    ![Settings for auto-apply the label](../media/SPRetention18.png)

9. Select **Auto-apply** to create the label policy. It takes up to seven days to automatically apply the Product Specification label to all documents that match the KQL search query that you provided.

### Verify that the retention label was automatically applied

After seven days, use the [activity explorer](data-classification-activity-explorer.md) in the compliance center to see that the label policy that we created has automatically applied the retention labels in this scenario to the product documents.

Also look at the properties of the document in the Document Library. In the information panel, you can see that the retention label is applied to a selected document.

![Verify that label was applied by looking at the document properties in the Document Library](../media/SPRetention21.png)

Because the retention labels were auto-applied to documents, the documents are protected from being deleted because the retention label was configured to declare the documents as *records*. As an example of this protection, we receive the error message shown in the following screenshot when we try to delete one of these documents.

![Docs can't be deleted because the label declares documents records](../media/SPRetention22.png)

## Generate the events that trigger the start of the retention period

Now that the retention labels were successfully automatically applied, let's focus on the event that will indicate the end of production for a particular product. This event occurs triggers the beginning of the retention period that's defined in retention labels that are auto-applied to documents. For example, for product specification documents, the five-year retention period begins when the "end of production" event is triggered.

You can manually create the event in the security and compliance center by going to **Records Managements** > **Events**. Choose the event type, set the correct asset IDs, and enter a date for the event. For more information, see [Start retention when an event occurs](event-driven-retention.md).

For this scenario, we'll automatically create the event by generating it from an external production system. The system that generates the event is a simple SharePoint list that indicates whether a product is in production and a [Microsoft Flow](https://docs.microsoft.com/flow/getting-started) that's associated with the list and will trigger the event. In a real-world scenario, it could be any system that generates the event, such as an HR or CRM system. Flow contains many ready-to-use interactions and building block for Microsoft 365 workloads, such as Microsoft Exchange, SharePoint, Teams, and Dynamics 365, plus third-party apps such as Twitter, Box, Salesforce, and Workdays. This makes it easy to integrate Flow with these systems. For more information, see [Automate event-driven retention](automate-event-driven-retention.md).

The following screenshot shows the SharePoint list that will be used the trigger the event:

![List that will be used to trigger retention event](../media/SPRetention23.png)

There are two products currently in production, which is indicated by the value ***Yes*** in the **In Production** column. When the value in this column is set to ***No*** for a product, the flow associated with the list will automatically generate the event. This in turn triggers the start of the retention period for the retention label that was auto-applied to the corresponding product documents.

For this scenario, we use the following flow to trigger the event:

![Configuring the flow that will trigger the event](../media/SPRetention24.png)

To create this flow, start from a SharePoint connector and select the **When an item is created or modified** trigger. Specify the site address and list name. Then add a condition based on when the **In Production** list column value is set to ***No*** (or equal to *false* in the condition card). Then add an action based on the built-in HTTP template. Use the values in the following section to configure the HTTP action. You can copy the values for the *URI* and *Body* properties from the following section and paste them into the template.

- **Method**: POST
- **URI**: `https://ps.compliance.protection.outlook.com/psws/service.svc/ComplianceRetentionEvent`
- **Headers**: Key = Content-Type, Value = application/atom+xml
- **Body**:
    
    ```HTML
    <?xml version='1.0' encoding='utf-8' standalone='yes'>
    <entry xmlns:d='http://schemas.microsoft.com/ado/2007/08/dataservices' xmlns:m='http://schemas.microsoft.com/ado/2007/08/dataservices/metadata' xmlns='https://www.w3.org/2005/Atom'>
    <category scheme='http://schemas.microsoft.com/ado/2007/08/dataservices/scheme' term='Exchange.ComplianceRetentionEvent'>
    <updated>9/9/2017 10:50:00 PM</updated>
    <content type='application/xml'>
    <m:properties>
    <d:Name>Cessation Production @{triggerBody()?['Product_x0020_Name']?['Value']}</d:Name>
    <d:EventType>Product Cessation&lt;</d:EventType>
    <d:SharePointAssetIdQuery>ProductName:&quot;@{triggerBody()?['Product_x0020_Name']?['Value']}<d:SharePointAssetIdQuery>
    <d:EventDateTime>@{formatDateTime(utcNow(),'yyyy-MM-dd')}</d:EventDateTime>
    </m:properties>
    </content&gt>
    </entry>
    ```

The following section describes the parameters in the *Body* property of the action that must be configured specifically for this scenario.

- **Name**: This parameter specifies the name of the event that will be created in the security and compliance center. For this scenario, the name is "Cessation Production *xxx*", where *xxx* is the value of the ProductName managed property that we created earlier.
- **EventType**: The value for this parameter corresponds to the event type that the created event will apply to. This event type was defined when you created the retention label. For this scenario, the event type is "Product Cessation."
- **SharePointAssetIdQuery**: This parameter defines the asset ID for the event. Event-based retention needs a unique identifier for the document. We can use asset IDs to identify the documents that a particular event applies to, or as in this scenario the metadata column, *Product Name*. To do  this, we have to create a new managed property *ProductName* that can be used in the KQL query. (Alternatively, we could use *RefinableString00* instead of creating a new managed property). We also need to map this new managed property to the *ows_Product_x0020_Name* crawled property. Here's a screenshot of this managed property.

    ![Rentention managed property](../media/SPRetention25.png)

- **EventDateTime**: This parameter defines the date the event occurs. Use the current date format: *formatDateTime(utcNow(),'yyyy-MM-dd'*)

### Putting it all together

Now that the retention label is created and auto-applied and the flow is configured and created, here's what happens when the value in the **In Production** column for the Spinning Widget product in the Products list is changed from **Yes** to **No**. The flow is triggered and creates the event. To see this event in the security and compliance center, go to **Records management** > **Events**.

![Event that was triggered by flow displayed on the Events page in the security and compliance center](../media/SPRetention28.png)

Select the event to view the details on the flyout page. Notice that even though the event is created, the details in the event status show that no SharePoint sites or documents have been processed.

![Event details](../media/SPRetention29.png)

But after a delay, the event status section shows that a SharePoint site and a SharePoint document have been processed.  

![Event details show documents were processed](../media/SPRetention31.png)
 
This means the retention period for the label applied to the Spinning Widget product document has been initiated, based on the event date of the Cessation Production Spinning Widget event. Assuming you implemented the scenario in your test environment by configuring a one-day retention period, you can go to the document library for your product documents a few days after the event was created and verify that the document was deleted (after the deletion job in SharePoint has run).

### More about asset IDs

As the [Start retention when an event occurs](event-driven-retention.md) article explains, it's important to understand the relationship between event types, retention labels, events, and asset IDs. The asset ID is simply another document property in SharePoint and OneDrive. It helps you identify the documents whose retention period will be triggered by the event. By default, SharePoint has an *Asset Id* property that you can use for event-driven retention:

![Asset Id property displayed in document properties detail page](../media/SPRetention26.png)

As shown in the following screenshot, the asset ID managed property is called **ComplianceAssetId**.

![ComplianceAssetId managed property](../media/SPRetention27.png)

Instead of using the default Asset Id property, you can also use any other property, as we do in this scenario. But it's important to understand that if you don't specify an asset ID or keywords for an event, all the content with a label of that event type will have its retention period triggered by the event.

### Using advanced search in SharePoint

In the previous screenshot, we can also see that there's another managed property related to retention labels called **ComplianceTag** that's mapped to a crawled property. The **ComplianceAssetId** managed property is also mapped to a crawled property. This means you can use these managed properties in advanced search to retrieve all documents that have been tagged with a retention label.

## Summary

This article illustrated a document management scenario where we automatically applied a retention label based on a site column in SharePoint. Then we used event-based retention and Microsoft Flow to automatically trigger the start of the retention period based on an external event.

## Credits

This scenario was authored by: 

Frederic Lapierre<br/>Principal Consultant, Microsoft Services
