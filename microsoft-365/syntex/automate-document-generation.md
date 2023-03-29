---
title: Automate document generation with Microsoft Syntex and Power Automate (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: anrasto, shrganguly
ms.date: 08/08/2022
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to automatically create documents and other content using Microsoft Syntex and Power Automate.
---

# Automate document generation with Microsoft Syntex and Power Automate (Preview)

Using content assembly in Microsoft Syntex together with Power Automate, you can automate the generation of documents using modern templates. 

This preview version is a Power Automate action in a SharePoint connector. The action is named “Generate document using Syntex (Preview)” and has limited capabilities for preview. 

## Scope of the preview 

The current scope of the preview lets you:  

- Choose a SharePoint list as a starting point for document generation. That is, you want a document to be generated using the values in the SharePoint list once an item in the list has been added, modified, or deleted. 

- Choose a modern template and associate its fields with columns from the chosen SharePoint list. 

The preview is created and tested to work for the following three triggers in SharePoint Connector:

- When an item is created
- When an item is created or modified
- When an item is deleted

## Automate document generation 

Follow these steps to automatically generate documents using a modern template and Power Automate. 

1. Sign in to Power Automate.

2. In the left panel, select **Connectors**. In the search box, search for *SharePoint*, and then select the **SharePoint** connector.

3. On the SharePoint connector page, select the trigger that you want to use to start the automated document generation process. 

    We recommend starting with any one of the following three triggers:

    - When an item is created
    - When an item is created or modified
    - When an item is deleted

4. Next, set up the trigger by entering the SharePoint site address and the name of the SharePoint list. Select **New step**. 

   ![Screenshot of the When a document is created or modified trigger showing a sample site address and site name.](../media/content-understanding/document-generation-trigger.png)

5. Select the SharePoint connector again. In the search box, search for and select the action **Generate document using Syntex (preview)**.

   ![Screenshot of the SharePoint connector Actions tab showing Generate document using Syntex (preview) action.](../media/content-understanding/document-generation-action.png) 

6. Enter the site information and select the document library that contains the modern template. 

7. Once the template is selected, you'll start seeing the template fields. Associate the fields with the columns in the list. 

    > [!NOTE]
    >Data mapping in the template is not supported in this preview. For example, if you have associated a field in your template with a managed metadata column, during automated generation you will be able to associate this field with a column in a list. 

8. When done, select **Save** to save the flow. 

    > [!NOTE]
    > We recommend using templates that don't need users to manually add values for document generation. If the template needs manual input for a field, you can specify that value against the field rather than mapping it to a SharePoint list column.<br><br> 
    > Currently, only Word documents (.Docx) are supported using this action.  

8. To generate a pdf file using this action provide **.pdf** as the extension in the file name.

9. The action does not support images and tables and templates containing these fields are hidden while selecting the templates in the action 

## See also

 [Overview of content assembly in Microsoft Syntex](content-assembly.md)
