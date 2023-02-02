---
title: Create a rule to move or copy a file from one document library to another in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to create a rule to move or copy a file to another SharePoint document library in Microsoft Syntex.
---

# Create a rule to move or copy a file from one document library to another in Microsoft Syntex

Microsoft Syntex lets you build simple rules-driven actions in document libraries based on metadata. From a document library, you can create rules to automate tasks such as sending a notification when metadata changes in a file, when a new file is created in the library, or when files are moved or copied based on metadata extracted by Syntex models. 

   ![Diagram of the create rules workflow.](../media/content-understanding/create-rule.png)

You'll choose a condition that triggers the rule and the action that the rule will take. 
For example, you can create a rule to move files tagged with a specific customer to a specific library or folder. These rules help you structure your content architecture with the power of AI-driven processing.

Document libraries can have multiple move and copy rules to support moving and copying files to different destination libraries based on metadata criteria. 

> [!NOTE]
> This feature is available only for users who are licensed for Syntex.

## Move or copy a file

To move or copy a file from one document library to another, follow these steps.

1. In the document library, select **Automate** > **Rules** > **Create a rule**.

   ![Screenshot of the document library showing the Automate > Rules > Create a rule option.](../media/content-understanding/content-processing-create-rule.png)

2. On the **Create a rule** page, select a condition that triggers the rule and the action that the rule will take. In this case, select **A new file is added**.

   ![Screenshot of the Create a rule page showing the A new file is added option highlighted.](../media/content-understanding/content-processing-create-a-rule-page.png)

    Your selection here creates a rule statement that you'll complete in the next step.

3. To complete the rule statement, under **When a new file is added**:

    1. Select **Choose action**, and then:

        - To copy a file, select **copy file to**.
        - To move a file, select **move file to**.

       ![Screenshot of the rule statement page showing the choose action option highlighted.](../media/content-understanding/content-rule-move-file-to.png)

    2. Select **Enter a site name or address**, and then select the site that contains the document library you want the file moved or copied to.

       ![Screenshot of the rule statement page showing the choose a site option highlighted.](../media/content-understanding/content-rule-choose-a-site.png)

          When you select **Enter a site name or address**, you can either select from the list of recent sites or enter the name or URL of another site.

    3. Select **Choose a library**, and then select the document library you want the file moved or copied to.

       ![Screenshot of the rule statement page showing the choose a library option highlighted.](../media/content-understanding/content-rule-choose-a-library.png)

          When you select **Choose a library**, you can either select from the list of suggested libraries or enter the name of another library.

       > [!NOTE]
       > If you try to set up a rule to move or copy a file to a library that already has a move or copy rule applied, you'll receive a message saying that you need to disable all move or copy rules on the destination library. To disable a rule, see [Manage a rule](#manage-a-rule).<br>      
       >![Screenshot of the rule statement page with the message stating that the library already has a rule applied.](../media/content-understanding/content-rule-disable-rules.png)

4. When your rule statement is complete, select **Create**. You'll see the new rule on the **Manage rules** page.

## Manage a rule

1. In the document library, select **Automate** > **Rules** > **Manage rules**.

   ![Screenshot of the document library showing the Automate > Rules > Manage rules option.](../media/content-understanding/content-processing-manage-rule.png)

2. On the **Manage rules** page, you can see the rules that have been applied. You can turn on or off a rule or [create a new rule](#move-or-copy-a-file) to automate actions on a specific document library.

   ![Screenshot of the Manage rules page showing the rule and actions.](../media/content-understanding/content-processing-manage-rules-page.png)

## View the activity feed of a document library

When a file is moved or copied, you'll see an update in the source library activity feed. The updates occur in both the source library and the target library.

In the document library, in the upper-right corner of the page, select the details pane icon (![Screenshot of the details pane icon.](../media/content-understanding/details-pane-icon.png)) to view the recent history, activity, and rules that have been applied to the library.

   ![Screenshot of a document library showing the details pane highlighted.](../media/content-understanding/content-processing-details-pane.png)

> [!NOTE]
> Currently, the activity feed shows only move activity. Copy activity will be available in a future release.