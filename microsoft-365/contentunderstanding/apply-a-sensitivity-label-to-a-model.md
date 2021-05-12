---
title: "Apply a sensitivity label to a model in Microsoft SharePoint Syntex"
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
localization_priority: Priority
description: "Learn how to apply a sensitivity label to a model in SharePoint Syntex."
---

# Apply a sensitivity label to a model in Microsoft SharePoint Syntex

You can easily apply a [sensitivity label](../compliance/sensitivity-labels.md) to a model in Microsoft SharePoint Syntex. You can do this for both document understanding and form processing models.

Sensitivity labels let you apply sensitivity settings to the documents that your models identify. For example, you want your model to not only identify any *Contract* documents that are uploaded to your document library, but to also apply a *Sensitive* sensitivity label to them so that these documents cannot be accessed by unauthorized people.

You can apply a pre-existing sensitivity label to your model through your model settings on your model's home page. 

> [!Important]
> For sensitivity labels to be available to apply to your document understanding models, they need to be [created and published in the Microsoft 365 Compliance Center](../business-video/create-sensitivity-labels.md).

## Add a sensitivity label to a document understanding model

1. From the model home page, select **Model settings**.

   ![Screenshot of the Models page with the Model settings option highlighted.](../media/content-understanding/sensitivity-model-settings.png)

2. On **Model settings** pane, in the **Security and compliance** section, select the **Sensitivity label** menu to see a list of sensitivity labels that are available for you to apply to the model.

   ![Screenshot of the Model settings pane showing the ensitivity label menu.](../media/content-understanding/sensitivity-model-settings-pane.png) 

3. Select the sensitivity label you want to apply to the model, and then select **Save**.

After you apply the sensitivity label to your model, you are able to apply it to a:

- New document library
- Document library to which the model is already applied
 
### Apply the sensitivity label to a document library to which the model is already applied

If your document understanding model has already been applied to a document library, you can do the following to sync your sensitivity label update to apply it to the document library:

1. On the model home page, in the **Libraries with this model** section, select the document library to which you want to apply the sensitivity label update.

2. Select **Sync**.

   ![Screenshot showing Libraries with this model section with Sync highlighted.](../media/content-understanding/sensitivity-libraries-sync.png)

After you apply the update and sync it to your model, you can confirm that it has been applied by doing the following:

1. In the content center, in the **Libraries with this model** section, click on the library to which your updated model was applied. 

2. In your document library view, select the information icon to check the model properties.

3. In the **Active models** list, select your updated model.

4. In the **Sensitivity label** section you will see the name of the applied sensitivity label.

On your model's view page in your document library, a new **Sensitivity label** column will display. As your model classifies files it identifies as belonging to its content type and lists them in the library view, the **Sensitivity label** column will also display the name of the sensitivity label that has been applied to it through the model.

For example, all *Contract* documents that your model identifies will also have the *Sensitive* sensitivity label applied to them, preventing them from being accessed by unauthorized people. If an attempt is made to access the file from the document library by an unauthorized person, an error will display saying it is not allowed because of the applied sensitivity label.

## Add a sensitivity label to a form processing model

> [!Important]
> For sensitivity labels to be available to apply to your form processing model, they need to be [created and published in the Microsoft 365 Compliance Center](../business-video/create-sensitivity-labels.md).

You can either apply a sensitivity label to a form processing model when you are creating a model, or apply it to an existing model.

### Add a sensitivity label when you create a form processing model

1. When you [create a new form processing model](create-a-form-processing-model.md), select **Advanced settings**.

2. In **Advanced settings**, in the **Sensitivity label** section, select the menu and then select the sensitivity label you want to apply to the model.

3.  After you've completed your remaining model settings, select **Create** to build your model.

### Add a sensitivity label to an existing form processing model

You can add a sensitivity label to an existing form processing model in different ways:

- Through the **Automate** menu in the document library
- Through the **Active model** settings in the document library 

#### Add a sensitivity label to an existing form processing model through the Automate menu

You can add a sensitivity label to an existing form processing model that you own through the **Automate** menu in the document library in which the model is applied.

1. In your document library to which the form processing model is applied, select the **Automate** menu, select **AI Builder**, and then select **View form processing model details**.

2. On the **Model details** pane, in the **Sensitivity label** section, select the sensitivity label you want to apply. Then select **Save**.

#### Add a sensitivity label to an existing form processing model in the active model settings

You can add a sensitivity label to an existing form processing model that you own through the **Active model** settings in the document library in which the model is applied.

1. In the SharePoint document library in which the model is applied, select the **View active models** icon, and then select **View active models**.

2. In **Active models**, select the form processing model to which you want to apply the sensitivity label.

3. On the **Model details** pane, in the **Sensitivity label** section, select the sensitivity label you want to apply. Then select **Save**.

   > [!NOTE]
   > You must be the model owner for the **Model settings** pane to be editable. 

## See also

[Apply a retention label](apply-a-retention-label-to-a-model.md)

[Create a classifier](create-a-classifier.md)

[Create an extractor](create-an-extractor.md)

[Document Understanding overview](document-understanding-overview.md)