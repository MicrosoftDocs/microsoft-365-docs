---
title: "SharePoint Syntex accessibility mode "
ms.author: efrene
author: efrene
manager: pamgreen
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to use accessibility mode when training a model in SharePoint Syntex."
---

# SharePoint Syntex accessibility mode

In SharePoint Syntex, users can turn on accessibility mode when they are training a document understanding model to extract data from sample documents. Using accessibility mode can help low-sight users to have easier keyboarding accessibility as they navigate and label items in the document viewer.

This helps the user to use their keyboard to navigate through text in the document viewer and to hear a narration of not only the selected string values, but also of actions (such as labeling or removing labeling from selected text), or predicted label values as you train the model with additional sample documents. 


![Accessibility mode](../media/content-understanding/accessibility-mode.png)

## Requirements

To hear the audio of the narration, make sure to turn on the [Narrator App](https://support.microsoft.com/windows/complete-guide-to-narrator-e4397a0d-ef4f-b386-d8ae-c172f109bdb1) in your Narrator settings on your Windows 10 system.

![Turn on Narrator](../media/content-understanding/narrator-settings.png)

## Labeling for keyboard users

For keyboard users using accessibility mode, if you are labeling text in a sample document in the viewer, you can use the following keys:

- Tab: Moves you forward and selects the next word.
- Tab + Shift: Moves you backwards and selects the previous word.
- Enter: Label or removes a label from the selected word.
- Forward arrow: Moves you forward through individual characters in a selected word.
- Backward arrow: Moves you backward through individual characters in a selected word.

Note: If you need to label more than one word, you need to label each word.


## Narration

For Narrator users using accessibility mode, use the same keyboard navigation described for keyboard users to go through the sample document in the viewer.

As you navigate through the sample documents and label string values, Narrator will give user the following audio prompts:

- When you use the keyboard to navigate through the document viewer, Narrator audio will state the selected string.
- Within a selected string, Narrator audio will state each character in the string as you select them using the forward or backward arrow.
- If you select a string that has been labeled, Narrator will state the value and then "labelled".  For example, if the label value is "Contoso", it will state "Costoso labelled". 
- If the model is trained and predicts the label value in a new sample document that displays in the viewer, Narrator audio will state the value, and then "labelled and predicted". For example, if the trained model predicts that the next sample document will have a value of <b>982174</b> for the <b>PO Number</b> label, Narrator audio will state "982174 labeled and predicted".
- If the word is only predicted, Narrator audio will announce "Word predicted". Question: not sure what this means. Can you provide an example?

After a string is labeled or a label is reviewed, Narrator audio will warn you to save your changes before you exit.











 


  
  



