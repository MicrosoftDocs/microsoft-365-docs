---
title: "Explanation types overview"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 10/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn more about explanation types."
---

# Explanation types overview


Explanations are used to help to define the information you want to label and extract in your document understanding models.  When creating an explanation, you need to select an explanation type. This article provides you an overview to help you better understand the explanation types.

   ![Explanation types](../media/content-understanding/explanation-types.png) 




## Explanation types


- Phrase list: A list of words, phrases, numbers, or other characters that can be used to the document or information you are trying to extract. For example, the text string **Referring Doctor** is in all Medical Referral documents you are trying to identify.</br>

- Pattern list: List patterns of numbers, letters, or other characters that can be used to identify the information you are trying to extract.  For example, you might want to extract the **Phone number** of the referring doctor from all Medical Referral document that the model identifies.</br>

- Proximity:?  
 
 
## Phrase lists

A phrase list explanation type is more commonly used to identify and classify a document through your model, as described in the *Referring Doctor* label example. 

While not a requirement, you will have better success with your explanation if the phrase your are trying to capture is located in a consistent location in your document.  For example, the *Referring Doctor* label might be consistently in the first paragraph of the document.

If case sensitivity is a requirement in identifying your label, using the phrase list type allows you to specify it in your explanation by selecting the **Only exact capitalization** checkbox.

   ![Explanation types](../media/content-understanding/case-sensitivity.png) 


## Pattern lists

A pattern list type is especially useful when you are creating an explanation that is trying to identify and extract information from a document that is commonly presented in different formats, such as dates, phone numbers, or credit card numbers. For example, a date can be a displayed in a number of different formats (1/1/2020, 1-1-2020, 01/01/20, 01/01/2020, Jan 1,2020, etc.). Defining a pattern list makes your explanation more efficient in being able to capture any possible variations in the data you are trying to identify and extract. 

For the **Phone number** example, we are trying to extract the phone number for each referring doctor from all Medical Referral document that the model identifies. When we create the explanation, selecting the Pattern list type allows us to type in the different formats that we might expect if there is variation.


For this example, we want to select the **Any digit from 0-9** checkbox. Selecting this will recognize each "0" value we used in our pattern list to be any digit from 0 through 9.

   ![Any digit from 0-9](../media/content-understanding/pattern-list.png)

Similarly, if we are creating a pattern list that might include text characters, you will want to select **Any letter from a-z** checkbox. Selecting this will recognize each "a" character we used in our patter list to be any character from "a" to "z".

For example, if we are creating a **Date** pattern list, and want to make sure that a date format such as *Jan 1, 2020* is recognized, you need to:
- Add *aaa 1, 1111* and *aaa 11, 1111* to your pattern list.
- Make sure that **Any letter from a-z** is also selected.

   ![Any letter from a-z](../media/content-understanding/any-letter.png)

Additionally, if you have capitalization requirements in your pattern list, you have the option to select the **Only exact capitalization** checkbox. For the Date example, if you require the first letter of the month to be capitalized, you need to:

- Add *Aaa 1, 1111* and *Aaa 11, 1111* to your pattern list.
- Make sure that **Only exact capitalization** is also selected.

   ![Only exact capitalization](../media/content-understanding/exact-caps.png)

## Use the explanation library

While you can manually add various pattern list values for your explanation, it can be much easier to use the pre-made ones that are defined through templates provided to you in the explanation library.

For example, instead of manually adding all the variations for *Date*, you can use the Pattern List template for *Date*, that already includes a number of pattern lists values:</br>

   ![Explanation library template for date](../media/content-understanding/explanation-template.png)</br>
 
The explanation library includes a number of commonly used explanations, including:</br>

- Date</br>
- Date (numeric)</br>
- Time</br>
- Number</br>
- Phone number</br>
- Zip code</br>
- First word of sentence</br>
- Credit card</br>
- Social security number</br>

Note that the explanation library also includes templates for phrase list explanations as well, including:
- End of sentence
- Currency

### To use a template from the explanation library

1. On the **Explanations** section of your model's **Train** page, select **New**, and then select **From a template**.</br>
   ![Create from template](../media/content-understanding/from-template.png)</br>
2.  On the **Explanation templates** page, select the explanation you want to use, and then select **Add**.</br>
   ![Select a template](../media/content-understanding/phone-template.png)</br>
3. The information for the template you selected will display on the **Create an explanation** page. If needed, you can edit the explanation name, and add or remove items from the pattern list. </br> 
   ![Edit template](../media/content-understanding/phone-template-live.png)</br>
4. When finished, select **Save**.





