---
title: "Create a content center (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 8/1/2020
audience: admin
ms.topic: article
ms.service: o365-administration
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to create a content center."
---

# Create a content center (Preview)

> [!Note] 
> The content in this article is for the Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).</br>

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CPSF]

</br>

To create and manage document understanding models, you first need a content center. The content center is the model creation interface and also contains information about which document libraries published models have been applied to.</br>

   ![Select a doc library](../media/content-understanding/content-center-page.png)</br>

You create an initial content center during [setup](set-up-content-understanding.md). But a SharePoint admin can also choose to create additional centers as needed. While a single content center may be fine for environments for which you want a roll-up of all model activity, you may want to have additional centers for multiple departments within your organization, which may have different needs and requirements for their models.

> [!NOTE]
> A SharePoint admin can create a content center site like they would [create any other SharePoint site](https://docs.microsoft.com/sharepoint/create-site-collection) by using a site template.

To create a new content center:

1. From the Microsoft 365 admin center, go to the SharePoint admin center.
2. In the SharePoint admin center, under **Sites**, select **Active Sites**.
3. On the **Active Sites** page, click **Create**, and then select **Other options**.
4. On the **Choose a template** menu, select **Content Center**.
5. For the new site, provide a **Site Name**, **Primary administrator**, and a **Language**.</br>

> [!NOTE] 
> You can optionally select a content center site to render in any of the available languages. Only current models can be created for English files.</br>

6. Select **Finished**.

### Give access to additional users
 
After you create the site, you can give additional users access to the site through the standard [SharePoint site permissions model](https://docs.microsoft.com/sharepoint/modern-experience-sharing-permissions).

## See Also
[Create a classifier](create-a-classifier.md)</br>
[Create an extractor](create-an-extractor.md)</br>
[Create a content center](create-a-content-center.md)
[Document understanding overview](document-understanding-overview.md)</br>
[Create a form processing model](create-a-form-processing-model.md)</br>
[Apply a model](apply-a-model.md)    
