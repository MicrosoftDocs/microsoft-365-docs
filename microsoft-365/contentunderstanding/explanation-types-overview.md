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


Explanations are used to help to define the information you want to label and extract in your document understanding models.  When creating an explanation, you need to select an explanation type. This article will help you learn more to better understand the different explanation types and how they are used.

   ![Explanation types](../media/content-understanding/explanation-types.png) 




## Explanation types

The three explanation types that are available to you when creating an explanation are:

- **Phrase list**: A list of words, phrases, numbers, or other characters that can be used to the document or information you are trying to extract. For example, the text string **Referring Doctor** is in all Medical Referral documents you are trying to identify.</br>

- **Pattern list**: List patterns of numbers, letters, or other characters that can be used to identify the information you are trying to extract.  For example, you might want to extract the **Phone number** of the referring doctor from all Medical Referral document that the model identifies.</br>

- **Proximity**: Describe how close explanations are to each other. For example, a street number pattern goes right before the street name phrase list, with no tokens in between. 
 
 
## Phrase list

A phrase list explanation type is more commonly used to identify and classify a document through your model. As described in the *Referring Doctor* label example, it is a string of words, phrases, numbers, or characters that is consistently in the documents you are trying to identify.

While not a requirement, you will have better success with your explanation if the phrase your are trying to capture is located in a consistent location in your document.  For example, the *Referring Doctor* label might be consistently in the first paragraph of the document.

If case sensitivity is a requirement in identifying your label, using the phrase list type allows you to specify it in your explanation by selecting the **Only exact capitalization** checkbox.

   ![Explanation types](../media/content-understanding/case-sensitivity.png) 


## Pattern lists

A pattern list type is especially useful when you are creating an explanation that is trying to identify and extract information from a document, and is commonly presented in different formats, such as dates, phone numbers, or credit card numbers. For example, a date can be  displayed in a number of different formats (1/1/2020, 1-1-2020, 01/01/20, 01/01/2020, Jan 1,2020, etc.). Defining a pattern list makes your explanation more efficient in being able to capture any possible variations in the data you are trying to identify and extract. 

For the **Phone number** example, we are trying to extract the phone number for each referring doctor from all Medical Referral document that the model identifies. When we create the explanation, selecting the Pattern list type allows us to type in the different formats that we might expect if there is variation.

   ![Phone number pattern list](../media/content-understanding/pattern-list.png)

For this example, we want to select the **Any digit from 0-9** checkbox. Selecting this will recognize each "0" value we used in our pattern list to be any digit from 0 through 9.

   ![Any digit from 0-9](../media/content-understanding/digit-identity.png)

Similarly, if we are creating a pattern list that might include text characters, you will want to select the **Any letter from a-z** checkbox. Selecting this will recognize each "a" character we used in our patter list to be any character from "a" to "z".

For example, if we are creating a **Date** pattern list, and want to make sure that a date format such as *Jan 1, 2020* is recognized, you need to:
- Add *aaa 0, 0000* and *aaa 00, 0000* to your pattern list.
- Make sure that **Any letter from a-z** is also selected.

   ![Any letter from a-z](../media/content-understanding/any-letter.png)

Additionally, if you have capitalization requirements in your pattern list, you have the option to select the **Only exact capitalization** checkbox. For the Date example, if you require the first letter of the month to be capitalized, you need to:

- Add *Aaa 0, 0000* and *Aaa 00, 0000* to your pattern list.
- Make sure that **Only exact capitalization** is also selected.

   ![Only exact capitalization](../media/content-understanding/exact-caps.png)

## Proximity 

The proximity explanation type helps your model to identify data through defining how close another piece of data is to it. For example, in your model, you have defined two explanations that label both the customer *Street address number* and *Phone number*. 

You also notice that customer phone numbers always appear before the street address number. 

Alex Wilburn<br>
555-555-5555<br>
One Microsoft Way<br>
Redmond, WA 98034<br>

You can use the proximity explanation to define how far away the phone number explanation is to better identify the street address number in your documents.

   ![Proximity](../media/content-understanding/proximity.png)</br>


#### What are tokens?

In order to use the proximity explanation type, you need to know what a token is, as the number of tokens is how the proximity explanation measures distance from one explanation to another.  

 A token is a continuous span (no spaces or punctuation) of letters and numbers. A space is NOT a token. Each punctuation character is a token. The following table shows some examples of how to determine the number of tokens in a phrase.

|Phrase|Number of tokens|Explanation|
|--|--|--|
|`Dog`|1|A single word with no punctuation or spaces.|
|`RMT33W`|1|A record locator number. It may have numbers and letters, but does not have any punctuation.|
|`425-555-5555`|5|A phone number. Each punctuation mark is a single token so  `425-555-5555` would be 5 tokens:<br>`425`<br>`-`<br>`555`<br>`-`<br>`5555` |
|`https://luis.ai`|7|`https`<br>`:`<br>`/`<br>`/`<br>`luis`<br>`.`<br>`ai`<br>|

#### Configure the proximity explanation type

For our example, we want to configure the proximity setting so that we can define the range of the number of tokens the *Phone number* explanation is from the *Street address number* explanation.

We can already see that the minimum range is "0" since there are no tokens between the phone number and street address number.

However, we see that some phone numbers in your sample documents are appended with *(mobile)*.

Nestor Wilke<br>
111-111-1111 (mobile)<br>
One Microsoft Way<br>
Redmond, WA 98034<br>

There are three tokens in *(mobile)*:

|Phrase|Token count|
|--|--|
|(|1|
|mobile|2|
|)|3|

We would then configure the proximity setting to have a range of 0 through 3.

   ![Proximity](../media/content-understanding/proximity-example.png)</br>


## Use the explanation library

While you can manually add various pattern list values for your explanation, it can be much easier to use the pre-created templates provided to you in the explanation library.

For example, instead of manually adding all the variations for *Date*, you can use the Pattern List template for *Date*, that already includes a number of pattern lists values:</br>

   ![Explanation library template for date](../media/content-understanding/explanation-template.png)</br>
 
The explanation library includes a number of commonly used pattern list explanations, including:</br>

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

#### To use a template from the explanation library

1. On the **Explanations** section of your model's **Train** page, select **New**, and then select **From a template**.</br>

   ![Create from template](../media/content-understanding/from-template.png)</br>

2.  On the **Explanation templates** page, select the explanation you want to use, and then select **Add**.</br>

       ![Select a template](../media/content-understanding/phone-template.png)</br>

3. The information for the template you selected will display on the **Create an explanation** page. If needed, you can edit the explanation name, and add or remove items from the pattern list. </br> 

   ![Edit template](../media/content-understanding/phone-template-live.png)</br>

4. When finished, select **Save**.




