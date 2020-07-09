---
title: "Form Processing Overview (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 3/15/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: PJO150
localization_priority: Normal
description: "Learn about Form Processing in Project Cortex."
---

# Form Processing overview (Preview)
> [!Note] The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex]().

Project Cortex uses Microsoft PowerApps [AI Builder](https://docs.microsoft.com/ai-builder/overview) form processing to create models within SharePoint document libraries.

You can use AI Builder form processing to create AI models that use machine learning technology to identify and extract key-value pairs and table data from form documents.

Train your model and define the information to be extracted from your forms. You only need five form documents to get started. Quickly get accurate results tailored to your specific content. With AI Builder, you don't need a lot of manual intervention or data science expertise.

After you train and publish your model, to use it you create a [Power Automate Flow](https://docs.microsoft.com/power-automate/getting-started#create-your-first-flow) that will run when a file is uploaded to the SharePoint document library and will extract data that has been identified in the model. The extracted data will display in columns in your model's document library view.

An Office 365 admin needs to [enable Form processing]() for the SharePoint document library for users to be able to [create a form processing model](create-a-form-processing-model.md) in it.



## See Also
  
[Power Automate documentation](https://docs.microsoft.com/power-automate/)</br>
[Project for web get started guide for admins](project-for-the-web-get-started-guide-for-admins.md)



