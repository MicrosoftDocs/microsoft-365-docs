---
title: "SharePoint Syntex accessibility mode "
ms.author: efrene
author: efrene
manager: pamgreen
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to use accessibility mode when training a model in SharePoint Syntex."
---

# SharePoint Syntex accessibility mode

In SharePoint Syntex, users can turn on accessibility mode when they are training a document understanding model to extract data from sample documents. This helps the user to use their keyboard to navigate through text in the document viewer and to hear a narration of not only the selected text, but also of actions (such as labeling selected text). 

image

## Requirements

To hear the audio of the narration, make sure to turn on the Narrator App on your Windows system.

image

## Labeling for keyboard users

For keyboard users using accessibility mode, if you are labeling text in a sample document in the viewer, you can use the following keys:

- Tab: Moves you forward and selects the next word.
- Tab + Shift: Moves you backwards and selects the previous word.
- Enter: Label or removes a label from the selected word.

Note: If you need to label more than one word, you need to label each word.

Question: Does this recognize consecutively labeled words as one label? What is you want to label two words that are next to each other, but recognize them as separate entities?

## Narration

For Narrator users using accessibility mode, use the same keyboard navigation described for keyboard users to go through the sample document in the viewer.

- If the selected word is label, Narrator audio will state "<word> labeled".
- If the word is labeled and after the model is trained, in the next sample document the word is predicted. Narrator audio will state "<word> labeled and predicted".
- If the word is only predicted, Narrator audio will announce "<work> predicted".

Tab + Control lets you label or unlabel.

After labeling, Narrator audio will state "<word> is labeled, remember to save before exit.”

After removing a label, Narrator audio will state “XXX is removed, remember to save before exit.”









 


  
  



