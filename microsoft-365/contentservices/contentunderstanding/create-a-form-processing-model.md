---
title: "Create a Form Processing model (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 7/20/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Create a Form Processing model in Project Cortex."
---

# Create a Form Processing model (Preview)
> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex]().

Using AI Builder - a feature in Microsoft PowerApps - Project Cortex users can create a [form processing model]() directly from a SharePoint document library. 


To create a Form Processing model:

1. In your document library, select the **Automate** menu, select **AI Builder**, and then select **Create a Form Processing model**.
2. In the **New form processing model** pane, in the  **Name** field, type a name for your model (for example, *Purchase Orders*).
3. Select **Create**.
4. Your browser will open a new PowerApps AI Builder forms processing model page.  
5. Click **Add documents** to begin adding example documents that are analyzed to determine what named value pairs can be extracted. You can choose either **Upload from local storage**, **SharePoint**, or **Azure Blob storage**. You will need to use at least five files for training.
6. After adding your files, they will analyzed for any information that is common is all files.  After they have been analyzed, in the **Select the form fields you want to save** page, click the file to see the fields that were detected.
7. The next page will display one of your sample files and will highlight all common fields that were automatically detected by the system. Select the fields you want to save, and select the checkbox to confirm your selection. For example, in the Purchase Order model, you can choose to select the *Date*, *PO*, and *Total* fields.  Note that you can also choose to rename a field if needed. Click **Done** after you have selected the fields you want to save.

> [!Note]
> Efren - Need to add information about adding undetected fields.</br>

8. On the **Model Summary** page, the saved fields will show in the **Selected fields** section. Select **Train** to begin training on your example files. When you see the notification that training has completed, select **Go to details page**. If you are satisfied with the results of your model, select **Publish** to make it available for use.


## See Also
  




