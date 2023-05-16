---
title: Create conditional sections for templates in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: anrasto, shrganguly
ms.date: 05/22/2023
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to create conditional sections for templates in Microsoft Syntex.
---

# Create conditional sections for templates in Microsoft Syntex

When you create a modern template, you can specify which parts of a document will be included and under what conditions. This lets you control which sections of the text will be in the generated document.

## Create a conditional section

To create a conditional section in a template, follow these steps.

1. In the document, select the content for which you want to specify the condition.

2. On the **Set up the template** panel, select **Conditional section**. 

3. On the **New conditional section** panel, in the **Name** box, enter a name that reflects the content you've selected. For this example, we name it **Compensation Section**.

4. Select **Next**.

### Set conditions

Follow these steps to add conditions to specify whether this section of the template will be included in the final generated document.

For this example, we want to show the selected content for two conditions: if the fees are greater than zero and if the nature of employment is full time. 

#### To set the first condition

1. On the **Set condition** panel, select the **Choose fields** drop-down menu, and then select **Fees**.

2. In the second box drop-down menu, select **greater than**.

3. In the third box, enter **0**.

#### To set the second condition

1. On the **Set condition** panel, select **+ And** to add another condition.

2. On the **Set condition** panel, select the **Choose fields** drop-down menu, and then select **Nature of Employment**.

3. In the second box drop-down menu, select **exact match**.

4. In the third box, enter **Full Time**.

Now you can add the second condition in a similar manner by choosing how it should be linked with the first condition – using an AND or an OR operator. In this case we will select “AND” 
 
After you hit “Save” you will see a new “Compensation Section” field created in the right hand panel which tells you the conditions based on which this section will be included in the final section
 
Editing a conditional section
If you want to edit the conditions in a conditional section you can 
•	You can click on the “+1 more condition” hyperlink which will take you to the conditions
•	You can click on the three dots and select “Edit”
Notes:
1.	We only support creating conditional sections around Text and complete paragraphs right now. Conditional sections around images and tables is not supported yet
2.	We do not support adding nested conditions. In order to achieve nested conditions you will need to create conditional sections around every section and specify all the required conditions.
 
