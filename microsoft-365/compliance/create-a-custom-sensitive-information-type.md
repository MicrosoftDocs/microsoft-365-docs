---
title: "Create custom sensitive information types"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: "Learn how to create, modify, remove, and test custom sensitive information types in the Compliance Center."
ms.custom: seo-marvel-apr2020
---
# Create custom sensitive information types in the Compliance center

If the pre-configured sensitive information types don't meet your needs, you can create your own custom sensitive information types that you fully define or you can copy one of the pre-configured ones and modify it.

The custom sensitive information types that you create by using this method are added to the rule package named `Microsoft.SCCManaged.CustomRulePack`.

There are two ways to create a new sensitive information type:

- [from scratch where you fully define all elements](#create-a-custom-sensitive-information-type)
- [copy and modify an existing sensitive information type](#copy-and-modify-a-sensitive-information-type)


## Before you begin

- You should be familiar with sensitive information types and what they are composed of. See, [Learn about sensitive information types](sensitive-information-type-learn-about.md). It is critical to understand the roles of:
  - [regular expressions](https://www.boost.org/doc/libs/1_68_0/libs/regex/doc/html/) - Microsoft 365 sensitive information types uses the Boost.RegEx 5.1.3 engine
  - keyword lists - you can create your own as you define your sensitive information type or choose from existing keyword lists
  - [keyword dictionary](create-a-keyword-dictionary.md)
  - [Sensitive information type functions](sit-functions.md)
  - [confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels)

- Familiarize yourself with [Sensitive information type limits](sit-limits.md).

- Your organization must have a subscription, such as Office 365 Enterprise, that includes Microsoft Purview Data Loss Prevention (DLP). See [Messaging Policy and Compliance ServiceDescription](/office365/servicedescriptions/exchange-online-protection-service-description/messaging-policy-and-compliance-servicedesc). 

- Your organization must have a subscription, such as Office 365 Enterprise, that includes data loss prevention (DLP). See [Messaging Policy and Compliance ServiceDescription](/office365/servicedescriptions/exchange-online-protection-service-description/messaging-policy-and-compliance-servicedesc).

> [!IMPORTANT]
> Microsoft Customer Service & Support can't assist with creating custom classifications or regular expression patterns. Support engineers can provide limited support for the feature, such as, providing sample regular expression patterns for testing purposes, or assisting with troubleshooting an existing regular expression pattern that's not triggering as expected, but can't provide assurances that any custom content-matching development will fulfill your requirements or obligations.

## Create a custom sensitive information type

Use this procedure to create a new sensitive information type that you fully define.

1. In the Compliance Center, go to **Data classification** \> **Sensitive info types** and choose **Create sensitive info type**.

2. Fill in values for **Name** and **Description** and choose **Next**.

3. Choose **Create pattern**. You can create multiple patterns, each with different elements and confidence levels, as you define your new sensitive information type.

4. Choose the default confidence level for the pattern. The values are **Low confidence**, **Medium confidence**, and **High confidence**.

5. Choose and define **Primary element**. The primary element can be a **Regular expression** with an optional validator, a **Keyword list**, a **Keyword dictionary**, or one of the pre-configured **Functions**. For more information on DLP functions, see [Sensitive information type functions](sit-functions.md). For more information on the date and the checksum validators, see [Sensitive Information Type regular expression validators](sit-regex-validators-additional-checks.md#sensitive-information-type-regular-expression-validators).

6. Fill in a value for **Character proximity**.

7. (Optional) Add supporting elements if you have any. Supporting elements can be a regular expression with an optional validator, a keyword list, a keyword dictionary or one of the pre-defined functions. Supporting elements can have their own **Character proximity** configuration.

8. (Optional) Add any [**additional checks**](sit-regex-validators-additional-checks.md#sensitive-information-type-additional-checks) from the list of available checks.

9. Choose **Create**.

10. Choose **Next**.

11. Choose the **recommended confidence level** for this sensitive information type.

12. Check your setting and choose **Submit**.

    > [!IMPORTANT]
    > Microsoft 365 uses the search crawler to identify and classify sensitive information in SharePoint Online and OneDrive for Business sites. To identify your new custom sensitive information type in existing content, the content must be re-crawled. Content is crawled based on a schedule, but you can manually re-crawl content for a site collection, list, or library. For more information, see [Manually request crawling and re-indexing of a site, a library or a list](/sharepoint/crawl-site-content).

13. On the **Data classification** page, you'll see all the sensitive information types listed. Choose **Refresh** and then browse for or use the search tool to find the sensitive information type you created.

### Copy and modify a sensitive information type

Use this procedure to create a new sensitive information type that is based on an existing sensitive information type.

> [!NOTE]
> These SITs can't be copied:
>
> - Canada driver's license number
> - EU driver's license number
> - EU national identification number
> - EU passport number
> - EU social security number or equivalent identification
> - EU tax identification number
> - International classification of diseases (ICD-10-CM)
> - International classification of diseases (ICD-9-CM)
> - U.S. driver's license number

You can also create custom sensitive information types by using PowerShell and Exact Data Match capabilities. To learn more about those methods, see:

- [Create a custom sensitive information type in Microsoft Purview PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)

1. In the Compliance Center, go to **Data classification** \> **Sensitive info types** and choose the sensitive information type that you want to copy.

2. In the flyout, choose **Copy**.

3. Choose **Refresh** in the list of sensitive information types and either browse or search for the copy you just made. Partial sting searches work, so you could just search for `copy` and search would return all the sensitive information types with the word `copy` in the name.

4. Fill in values for **Name** and **Description** and choose **Next**.

5. Choose your sensitive information type copy and choose **Edit**.

6. Give your new sensitive information type a new **Name** and **Description**.

7. You can choose to edit or remove the existing patterns and add new ones. Choose the default confidence level for the new pattern. The values are **Low confidence**, **Medium confidence**, and **High confidence**.

8. Choose and define **Primary element**. The primary element can be a **Regular expression**, a **Keyword list**, a **Keyword dictionary**, or one of the pre-configured **Functions**. See, [Sensitive information type functions](sit-functions.md).

9. Fill in a value for **Character proximity**.

10. (Optional) If you have **Supporting elements** or any [**additional checks**](sit-regex-validators-additional-checks.md#sensitive-information-type-additional-checks) add them. If needed you can group your **Supporting elements**.

11. Choose **Create**.

12. Choose **Next**.

13. Choose the **recommended confidence level** for this sensitive information type.

14. Check your setting and choose **Submit**.

## Test a sensitive information type

You can test any sensitive information type in the list. We suggest that you test every sensitive information type that you create before using it in a policy.

1. Prepare two files, like a Word document. One with content that matches the elements you specified in your sensitive information type and one that doesn't match.

2. In the Compliance Center, go to **Data classification** \> **Sensitive info types** and choose the sensitive information type from the list to open the details pane and choose **Test**.

3. Upload a file and choose **Test**.

4. On the **Matches results** page, review the results and choose **Finish**.

> [!NOTE]
> Microsoft Purview information protection supports double byte character set languages for:
>
> - Chinese (simplified)
> - Chinese (traditional)
> - Korean
> - Japanese
>
> This support is available for sensitive information types. See, [Information protection support for double byte character sets release notes (preview)](mip-dbcs-relnotes.md) for more information.

> [!TIP]
> To detect patterns containing Chinese/Japanese characters and single byte characters or to detect patterns containing Chinese/Japanese and English, define two variants of the keyword or regex.
>
> - For example, to detect a keyword like "机密的document", use two variants of the keyword; one with a space between the Japanese and English text and another without a space between the Japanese and English text. So, the keywords to be added in the SIT should be "机密的 document" and "机密的document". Similarly, to detect a phrase "東京オリンピック2020", two variants should be used; "東京オリンピック 2020" and "東京オリンピック2020".
>
> Along with Chinese/Japanese/double byte characters, if the list of keywords/phrases also contain non Chinese/Japanese words also (like English only), it is recommended to create two dictionaries/keyword lists. One for keywords containing Chinese/Japanese/double byte characters and another one for English only.
>
> - For example, if you want to create a keyword dictionary/list with three phrases "Highly confidential", "機密性が高い" and "机密的document", the it you should create two keyword lists.
>   1. Highly confidential
>   2. 機密性が高い, 机密的document and 机密的 document
>
> While creating a regex using a double byte hyphen or a double byte period, make sure to escape both the characters like one would escape a hyphen or period in a regex. Here is a sample regex for reference:
>
> `(?<!\d)([4][0-9]{3}[\-?\-\t]*[0-9]{4})`
>
> Double-byte special characters should not be used in the keyword.
>
> We recommend using a string match instead of a word match in a keyword list.
