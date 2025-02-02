---
title: Create conditional sections for a modern template in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: anrasto, shrganguly
ms.date: 01/07/2025
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to create conditional sections for templates in Microsoft Syntex.
---

# Create conditional sections for a modern template in Microsoft Syntex

When you create a modern template, you can specify which parts of a document will be included and under what conditions. This lets you control which sections of the template will be included when you generate a document.

## Create a conditional section

Before you can create a conditional section, you first need to [create form fields in the template](content-assembly-modern-template.md#create-and-reuse-fields). Then, follow these steps to create a conditional section.

1. In the document, select the block of text for which you want to specify the condition.

2. On the **Set up the template** panel, select **Conditional section**. 

   ![Screenshot of the Set up the template panel and template document.](../media/content-understanding/content-assembly-conditional-1.png)

3. On the **New conditional section** panel, in the **Name** box, enter a name that reflects the content you've selected. (For this example, we named it **Compensation Section**.)

   ![Screenshot of the New condition section panel and template document.](../media/content-understanding/content-assembly-conditional-2.png)

4. Select **Next**.

### Set conditions

You can add conditions to specify whether this section of the template will be included in the final generated document.

For this example, we want to show the selected content for two conditions: if the fees are greater than zero and if the nature of employment is full time. 

#### To add the first condition

1. On the **Set condition** panel, from the **Choose a field** dropdown list, select the appropriate field. (For this example, we selected **Fees**.)

   ![Screenshot of the Set condition panel and template document for the first condition.](../media/content-understanding/content-assembly-conditional-3.png)

2. From the **Choose a condition** dropdown list, select the appropriate condition. (For this example, we selected **greater than**.)

3. In the **Enter a value** box, enter the appropriate value. (For this example, we entered **0**.)

#### To add additional conditions

1. On the **Set condition** panel, select **+ And** or **Or**, depending how you want the additional condition to be linked to the first condition. (For this example, we chose **And**.)

2. On the **Set condition** panel, from the **Choose a field** dropdown list, the appropriate field. (For this example, we selected **Nature of Employment**.)

   ![Screenshot of the Set condition panel and template document for the second condition.](../media/content-understanding/content-assembly-conditional-4.png)

3. From the **Choose a condition** dropdown list, select the appropriate condition. (For this example, we selected **exact match**.)

4. In the **Enter a value** box, enter the appropriate value. (For this example, we entered **Full Time**.)

5. When you're done entering conditions, select **Save**. The new field is displayed in the **Set up the template** panel and shows the conditions based on which this section will be included in the final document.

   ![Screenshot of the Set up the template panel and template document showing the conditions.](../media/content-understanding/content-assembly-conditional-5.png)

## Edit a conditional section

To edit the conditions in a conditional section, you can use either of these two methods:
 
- Select the **+1 more condition** hyperlink, which takes you to the **Set conditions** page.
- Select the three dots, and then select **Edit**.

   ![Screenshot of a conditional section with the edit options highlighted.](../media/content-understanding/content-assembly-conditional-edit.png)

> [!NOTE]
> - You can create conditional sections around text and complete paragraphs. Conditional aren't yet supported.<br>
>- You can't add nested conditions. To achieve nested conditions, you need to create conditional sections around every section and specify all the required conditions.
 
## See also

[Create a document from a modern template](content-assembly-create-document.md)