---
title: "Use the Exact Data Match Schema and Sensitive Information Type Wizard"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date: 
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: Learn how to use the exact data match schema and sensitive information type wizard.
ms.custom: seo-marvel-apr2020
---

# Use the Exact Data Match Schema and Sensitive Information Type Wizard

[Creating a custom sensitive information type with Exact Data Match (EDM) based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)  involves many steps.  You can use this wizard to create your schema and sensitive information type pattern (rule package) files to help simplify the process.

> [!NOTE]
> The Exact Data Match Schema and Sensitive Information Type Wizard is only available for the World Wide and GCC clouds only.

This wizard can be used instead of the:

- [Define the schema for your database of sensitive information](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#define-the-schema-for-your-database-of-sensitive-information)
- [Set up a pattern (rule package)](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#set-up-a-rule-package)

steps in [Part 1: Set up EDM-based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#part-1-set-up-edm-based-classification).

## Pre-requisites

1. Familiarize yourself with the steps to create a custom sensitive information type with EDM [work flow at a glance](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#the-work-flow-at-a-glance).

2. Perform the steps in the [Save sensitive data in .csv format](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#save-sensitive-data-in-csv-format) section.

## Use the exact data match schema definition wizard

1. In the Microsoft 365 Compliance center for your tenant go to **Data classification** > **Exact data matches**.

2. Choose **Create EDM schema** to open the schema wizard configuration flyout.

![EDM schema creation wizard configuration flyout](../media/edm-schema-wizard-1.png)

3. Fill in an appropriate **Name** and **Description**.

4. Choose **Ignore delimiters and punctuations for all schema fields** if you want to match content that may or may not have certain characters in it. To learn more about configuring EDM to ignore case or delimitere, see [Creating a custom sensitive information type with Exact Data Match (EDM) based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).

5. Fill in your desired values for your **Schema field #1** and add more fields as needed. 

> [!IMPORTANT]
> At least one, but no more than five of your schema fields must be designated as searchable. Searchable fields are fields that will be used as primary elements for a pattern in your EDM sensitive info types, meaning that EDM will look for them in all locations in your content. Fields not designated as primary elements can be used as additioal evidence in the pattern, so when a match to a value in the searchable field is found, the other values in that same row will be compared with the text surrounding matched string to corroborate it is an actual match to the infromation you are looking for. Searchable fields can be used as primary elements in their own pattern and also as additional evidence in patterns tha tuse a different searchable field as primary element. 

6. Choose **save**. Your schema will now be available for defining an EDM Sensitive info type.


## Use the exact data match sensitive information type pattern wizard

1. Under Exact Data Matches choose **EDM sensitive info types** and **Create EDM sensitive info type** to open the sensitive info type creation wizard.

2. Choose **Choose an existing EDM schema** and choose the schema you created in steps 2-6 from the list.

3. Choose **Next** and choose **Create pattern**.

4. Choose the **Confidence level** for this pattern. The confidence level you select is the one that will be assigned to the match when the content in the document meets the criteria you define next. To learn more about configuring a pattern, see [Create a custom sensitive information type in the Compliance Center](create-a-custom-sensitive-information-type.md).

5. Choose the **Primary element** from the list of columns in your schema. The primary element will be the column in the table that this pattern will be comparing content against anywhere in a document or email. 

6.  Choose the **Primary element's sensitive info type** to define what text in the document will be compared with all the values in the column you selected before. For example, if the column you selected contains your customers' social security numbers you can select the built-in U.S. Social Security Number sensitive info type from the list, which will cause EDM to look iinto content for any strings that look like social security numbers, and perform a comparison against all values in the relevant column in your sensitive information table until an exact match is found (minus the ignored delimiters you configured). 

7.  If none of the built-in sensitive info types will match the data in the column you selected you will have to create a custom SIT that does. If you selected the Ignored Delimiters option for this column when defining your schema, make sure the custom SIT you create will match data with and without the selected delimiters. Also, avoid creating a custom SIT that would match too much unrelated text (e.g. one that uses a regular expression that matches any random words or string) since this can cause the system to temporariluy stop matching data. See [Sensitive Information Type Entity Definitions](sensitive-information-type-entity-definitions.md) to learn more about the available sensitive information types and [Get started with custom sensitive information types](create-a-custom-sensitive-information-type.md) to learn about creating a custom sensitive infromation type. 

8.  Choose one or more columns in your schema to be used as "Supporting elements" and whether all or some of the elements must be present to generate a match. When you select supporting elements, values for the selected columns in the same row as the primary element that was found must be found close to each other in the content. You can also select a minimum and maximum number of additional elements to require.

9. Choose **Done**.

10. Choose **Create pattern** if you want to creaet additional patterns for your EDM sensitive info type, otherwise choose **Next**.

11. Choose your desired **Confidence level and character proximity**. This will be the default value for the whole EDM sensitive info type.

12. Choose **Next** and fill in a **Name** and **Description for admins**. Choose **Next**.

13. Review and choose **Submit** to confirm the creation of your EDM Sensitive Info Type.

You can delete or edit the sensitive information type pattern by selecting it which surfaces the edit and delete controls.

After creating an EDM sensitive information type and verifying that your sensitive information table has correctly been uploaded, you can test that it's working properly by selecting the EDM sensitive info type and selecting the Test option on the pane that appears on the right. You will be asked to submit a document that contains data you want to try to detect, and after the file has been uploaded and scanned you will see if there were matches to any of the patterns defined in your EDM type. If you don't find any matches, try the following:
- Confirm that your sensitive data was uploaded correctly using the commands explained in [the guidance for uploading your sensitive data using the EDM tool](links-to-edm-upload-agent-by-subscription-type.md).
- Check that the information you entered in the document is present in your sensitive information table. 
- Verify that the sensitive informaiton you entered in the document matches the format, including any delimiters not selected to be ignored when you defined your schema, that you entered in your table. 
- Check that the sensitive info type you selected when configuring your primary element is able to match the content you entered in the document, including any delimiters present, regardless of the Ignored delimiters option selected for the EDM typoe. You can confirm this by separately using the Test feature on the sensitive info type you selected for your primary element in the EDM type. 

> [!IMPORTANT]
> If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema.

## Post steps

After you have used this wizard to create your EDM schema and pattern (rule package) files, you still have to perform the steps in [Part 2: Hash and upload the sensitive data](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#part-2-hash-and-upload-the-sensitive-data) before you can use the EDM custom sensitive information type.
