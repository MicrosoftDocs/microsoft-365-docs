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

From a document library, you can use Microsoft Syntex to create rules to automate tasks such as sending someone a notification when metadata changes in a file or when a new file is created in the library. In this article, you'll learn how to create a rule to move a copy a file from one document library to another.

You'll choose a condition that triggers the rule and the action that the rule will take. 
For example, you can create a rule to move files tagged with a specific customer to a specific library or folder. This helps you structure your content architecture with the power of AI-driven processing.

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

    1. Select **choose action**, and then:

        - To move a file, select **Move file to**.
        - To copy a file, select **Copy file to**.

       ![Screenshot of the rule statement page showing the choose action option highlighted.](../media/content-understanding/content-rule-move-file-to.png)

    2. Select **choose a site**, and then select the site that contains the document library you want the file moved or copied to.

       ![Screenshot of the rule statement page showing the choose a site option highlighted.](../media/content-understanding/content-rule-choose-a-site.png)

    3. Select **choose a library**, and then select the document library you want the file moved or copied to.

       ![Screenshot of the rule statement page showing the choose a libary option highlighted.](../media/content-understanding/content-rule-choose-a-library.png)

       You can't set up a rule to move or copy a file to a library that already has a move  or copy rule applied. If you try, you'll receive a message saying that you need to disable all move or copy rules on the destination library. To disable a rule, see [Manage a rule](#manage-a-rule).

       ![Screenshot of the rule statement page showing the choose a libary option highlighted.](../media/content-understanding/content-rule-disable-rules.png)

4. Select **Create**.

## Manage a rule

1. In the document library, select **Automate** > **Rules** > **Manage rules**.

   ![Screenshot of the document library showing the Automate > Rules > Manage rules option.](../media/content-understanding/content-processing-manage-rule.png)

2. On the **Manage rules** page, turn on or off a rule or create a new rule to automate actions on the document library.

   ![Screenshot of the Manage rules page showing the rule and actions.](../media/content-understanding/content-processing-manage-rules-page.png)


## View the activity feed of a document library

In a document library, in the upper-right corner of the page, select the **Details** pane to view the history, activity, and rules applied to the library.

   ![Screenshot of a document library showing the details pane highlighted.](../media/content-understanding/content-processing-details-pane.png)


<!---
1. In the document library, select **Automate** > **Rules** > **Create a rule**.

   ![Screenshot of the document library showing the Automate > Rules > Create a rule option.](../media/content-understanding/content-processing-create-rule.png)

2. On the **Create a rule** page, select a condition that triggers the rule and the action that the rule will take.

   ![Screenshot of the Create a rule page showing the rule and actions.](../media/content-understanding/content-processing-create-a-rule-page.png)

3. 


## To manage rules

1. In the document library, select **Automate** > **Rules** > **Manage rules**.

   ![Screenshot of the document library showing the Automate > Rules > Manage rules option.](../media/content-understanding/content-processing-manage-rule.png)

2. On the **Manage rules** page, turn on or off a rule or create a new rule to automate actions on the document library.

   ![Screenshot of the Manage rules page showing the rule and actions.](../media/content-understanding/content-processing-manage-rules-page.png)

--->