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

## Use the exact data match schema and sensitive information type pattern wizard

1. In the Microsoft 365 Compliance center for your tenant go to **Data classification** > **Exact data matches**.

2. Choose **Create EDM schema** to open the schema wizard configuration flyout.

![EDM schema creation wizard configuration flyout](../media/edm-schema-wizard-1.png)

3. Fill in an appropriate **Name** and **Description**.

4. Choose **Ignore delimiters and punctuations for all schema fields** if you want that behavior. To learn more about configuring EDM to ignore case or delimitere, see [Creating a custom sensitive information type with Exact Data Match (EDM) based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).

5. Fill in your desired values for your **Schema field #1** and add more fields as needed. 

> [!IMPORTANT]
> At least one, but no more than five of your schema fields must be designated as searchable.

6. Choose save. Your schema will now be listed.

7. Choose **EDM sensitive info types** and **Create EDM sensitive info type** to open the sensitive info type configuration wizard.

8. Choose **Choose an existing EDM schema** and choose the schema you created in steps 2-6 from the list.

9. Choose **Next** and choose **Create pattern**.

10. Choose the **Confidence level** and **Primary element**.  To learn more about configuring a pattern, see [Create a custom sensitive information type in the Compliance Center](create-a-custom-sensitive-information-type.md)

11.  Choose the **Primary element's sensitive info type** to associate it with. See [Sensitive Information Type Entity Definitions](sensitive-information-type-entity-definitions.md) to learn more about the available sensitive information types.

12. Choose **Done**.

13. Choose your desired **Confidence level and character proximity**.  This will be the default value for the whole EDM sensitive info type

13. Choose **Create pattern** if you want to creaet additional patterns for your EDM sensitive info type.

14. Choose **Next** and fill in a **Name** and **Description for admins**.

15. Review and choose **Submit**.

You can delete or edit the sensitive information type pattern by selecting it which surfaces the edit and delete controls.

> [!IMPORTANT]
> If you want to remove a schema, and it is already associated with an EDM sensitive info type, you must first delete the EDM sensitive info type, then you can delete the schema.

## Post creation steps

After you have used this wizard to create your EDM schema and pattern (rule package) files, you still have to perform the steps in [Part 2: Hash and upload the sensitive data](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md#part-2-hash-and-upload-the-sensitive-data) before you can use the EDM custom sensitive information type.

After verifying that your sensitive information table has correctly been uploaded, you can test that it's working properly from the Sensitive Information Types list in the Data classification section in the Compliance center:
1. Select your EDM sensitive information type from the list and then selecting the **Test** option on the pane that appears on the right. 
2. Uplolad a document that contains data you want to try to detect, for which you can use some of the data in your sensitive information table. If you used the configurable match feature in your schema to define ignored delimiters, make sure your document includes variations with and without those delimiters for more comprehensive validation.
3. After the file has been uploaded and scanned, check if matches to any of the patterns defined in your EDM type were found. 

If you don't find any matches, try the following:
- Confirm that your sensitive data was uploaded correctly using the commands explained in [the guidance for uploading your sensitive data using the EDM tool](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).
- Check that the information you entered in the document is present in your sensitive information table, and that any differences are accounted for in your ignored delimiters.
- Use the same **Test** option but on the sensitive information type you selected when configuring the primary element in each of your patterns to confirm is able to match the content you entered in the document. 
  -  If the sensitive information type you selected for a primary element in the EDM type doesn't find any content in the document or finds fewer matches than you expected, check that it supports separators and delimiters that exist in the content, including those you configured as ignored delimiters in your schema since that feature doesn't apply until a potential match has been detected by the Classification sensitive informaiton type. 
  -  If the Test function in the classification sensitive information type detects content, check that it is not trimming it or extracting it incorrectly, for example by extracting only a substring of the content it is supposed to detect, picking up only the first word in a multi-word string, or including extra symbols or characters in the extraction. See [Regular Expression Language - Quick Reference](/dotnet/standard/base-types/regular-expression-language-quick-reference) for the regular expression language reference. You can use public tools available online to validate any regular expression used in the sensitive information type you selected and to verify it will detect the content you entered in the document or to troubleshoot issues with a regular expression. 
  -  If the Test function does not detect any content at all, check if the classification type you selected includes requirements for additional keywords or other validations since these will also apply when using it as part of an EDM sensitive information type. For the built-in sensitive information types, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md) to verify what the minimum requirements are for matching each type.
