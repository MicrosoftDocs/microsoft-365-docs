---
title: "Use the Exact Data Match Schema and Sensitive Information Type Wizard"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date: 
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: Learn how to use the exact data match schema and sensitive information type wizard.
ms.custom: seo-marvel-apr2020
---

# Use the Exact Data Match Schema and Sensitive Information Type Wizard

[Creating a custom sensitive information type with Exact Data Match (EDM) based classification](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)  involves many steps.  You can use this wizard to create your schema and sensitive information type (SIT) pattern (rule package) files to help simplify the process.

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

After verifying that your sensitive information table has correctly been uploaded, you can test that it's working properly.

1. Open **Compliance center** > **Data classification** > **Sensitive Information Types**.
2. Select your EDM SIT from the list and then select **Test** in the flyout pane. 
3. Upload an item that contains data you want to detect, for example create an item that contains some of the data in your sensitive information table. If you used the configurable match feature in your schema to define ignored delimiters, make sure the item includes examples with and without those delimiters.
4. After the file has been uploaded and scanned, check for matches to your EDM SIT.
5. If the **Test** function in the SIT detects a match, check that it is not trimming it or extracting it incorrectly. For example by extracting only a substring of the full string it is supposed to detect, or picking up only the first word in a multi-word string, or including extra symbols or characters in the extraction. See [Regular Expression Language - Quick Reference](https://docs.microsoft.com/dotnet/standard/base-types/regular-expression-language-quick-reference) for the regular expression language reference. 

### Troubleshooting

If you don't find any matches, try the following:
- Confirm that your sensitive data was uploaded correctly using the commands explained in [the guidance for uploading your sensitive data using the EDM tool](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).
- Check that the examples you entered in the item are present in your sensitive information table and that the ignored delimiters are correct.
- **Test** the SIT you used when you configured the primary element in each of your patterns. This will confirm that the SIT is able to match the examples in the item. 
  -  If the SIT you selected for a primary element in the EDM type doesn't find a match in the item or finds fewer matches than you expected, check that it supports separators and delimiters that exist in the content. Be sure to include the ignored delimiters defined in your schema. 
  -  If the **Test** function does not detect any content at all, check if the SIT you selected includes requirements for additional keywords or other validations. For the built-in SITs, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md) to verify what the minimum requirements are for matching each type.
