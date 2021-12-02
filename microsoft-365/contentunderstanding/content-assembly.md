---
title: Create content using content assembly in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: anrasto
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to automatically create documents and other content using content assembly in Microsoft SharePoint Syntex.
---

# Create content using content assembly in Microsoft SharePoint Syntex

You can now use SharePoint Syntex to help you automatically generate standard repetitive business documents, such as contracts, statements of work, letters of consent, nondisclosure agreements, and correspondence. You can do all this quicker, more consistent, and less prone to errors by using content assembly in SharePoint Syntex.

With content assembly, you can use an existing document to create a "modern template," and then use that template to automatically generate new content using SharePoint lists as a data source.

> [!NOTE]
> You must be a SharePoint Syntex licensed user to access and use content assembly capabilities.

## Create a modern template

Follow these steps to create a modern template.

1. From a Sharepoint document library, select **New** > **Create modern template**. 
 

2. Upload the existing Word document that you want to use as a basis for creating a modern template. 

> [!NOTE]
> Currently, you can upload only Word documents (“.docx” extension) to create templates. You can upload Word documents from your local storage or desktop.
  

3. After you upload the document, the document is displayed in the template studio where you can convert this document to a template.

> [!NOTE]
> Currently, the document is displayed without formatting. This is a technical limitation that will be resolved in a future release.


4. At the top-right corner of the page, select the name of the document to rename the template.

5. Create placeholders for all dynamic text in the document that users might want to change from one document to another. For example, you might want to create a placeholder for company name, individual's name, address, date, and so on.

    To create a placeholder, select the text (such as the address), and then select the **+** button above the selected text.
 

6. For each placeholder you create:
   - Give the placeholder a relevant name
   - Specify the type of input you want to associate with the placeholder. Currently, there are two types of input:
        - Manual input
        - SharePoint list

### Associate the placeholder with manual input 

To associate a placeholder with manual input:

1)	Give the placeholder a relevant name
2)	Select the checkbox “Manual Input Only”
3)	Choose the data type you want to associate with the placeholder. We support six data types today – Single Line of Text, Multi line of text, Date & time, email, hyperlink and number
4)	Once done you have completed steps 1, 2and 3, you the “Add” button will be enabled for you and you can click this to add the placeholder

 

### Associate a placeholder with SharePoint list input 

To associate a placeholder with a SharePoint list:

1)	Give the placeholder a relevant name
2)	Select the checkbox “Choose from a column of a list”
3)	Click on Select to open the List Picker
4)	Notice you will be shown all lists that you have access to.
5)	Navigate to the list of choice and click on Next. Now select the field you want to associate with the placeholder. Click on Save. 
a.	If you want to see the original list you can click on “Go to the list for reference”
6)	Once done you will see that the list field has been associated with the placeholder
7)	You will also see another checkbox for “Allow manual input as well”. Select this if you want users to be able to add manual input as well as select from a list. In this case the manual input data type is defaulted to “Single Line of Text”
 
 

 
 
You can create as many placeholders as you deem necessary. 

Once done you can – 
1)	Save as Draft – to save the template as draft and then access them at a later point of time
2)	Publish – to publish the template to be used by other employees in the organization for creating documents by providing values for place holder fields

Editing an existing template

You may need to edit an existing template or delete or unpublish it.
To take these actions you will need to click on the “New” menu and then click on the “Edit New Menu”. You will see the Modern templates listed at the bottom in the right overflow panel
 
 
Clicking on Edit will open the template studio where you can go ahead and edit the template.

Creating a document from Modern Templates
Any Syntex Licensed user can use these templates to create documents w/o having to start from scratch
To create a document using modern templates, you will find the published modern templates in the “New” Menu in the document library
 

Select the template you need. Clicking on it will take you to the Template viewer. Creating a new document is as simple as filling in the placeholder values and hitting create once you are done.
 
To help reduce time and effort involved in filling values for placeholders, we help you with
-	Type ahead suggestions to help you easily pick values when selecting values from a list
-	Autofill placeholder values if we are able to uniquely identify a record for placeholders associated with the same list
Notes
1)	Only Word documents – “.docx” extension, are supported for templatization 
2)	The template and the document are associated with one document library. To use the template in another document library you will need to create the template again in that document library
3)	You can create placeholders for Text. Images, smart art, tables, bullet list is not supported
4)	Once a document is created from a template, it is not associated with the template


 