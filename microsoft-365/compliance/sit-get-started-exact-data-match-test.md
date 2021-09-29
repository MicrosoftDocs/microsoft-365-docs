---
title: "Test an exact data match sensitive information type"
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
description: configure services
ms.custom: seo-marvel-apr2020
---

# Test an exact data match sensitive information type

After your EDM SIT has been created and an hour after verifying that your sensitive information table has finished uploading and indexing, you can test that it detects the information you want to detect by using the test function in the sensitive information types section in the Compliance center.
 
>[!NOTE:]
>Changes in an already created EDM SIT can take some time to propagate across the system. If you are making changes in an EDM sensitive information type for troubleshooting detection issues, make sure to wait at least one hour after making those changes before using the test function to validate their impact.

1. Open **Compliance center** > **Data classification** > **Sensitive Information Types**.

2. Select your EDM SIT from the list and then select **Test** in the flyout pane. This option is only present in the for SIT under sensitive information types.
 
3. Upload an item that contains data you want to detect. For example create an item that contains a subset of the rows in your sensitive information table. If you used the configurable match feature in your schema to define ignored delimiters, make sure the item includes examples with and without those delimiters.

4. After the file has been uploaded and scanned, check for matches to your EDM SIT.

5. If the **Test** function in the SIT detects a match, validate that it is not trimming it or extracting it incorrectly. For example by extracting only a substring of the full string it is supposed to detect, or picking up only the first word in a multi-word string, or including extra symbols or characters in the extraction. See [Regular Expression Language - Quick Reference](/dotnet/standard/base-types/regular-expression-language-quick-reference) for the regular expression language reference. 

5. Alternatively, you can use the following PowerShell cmdlet:

```powershell
Test-DataClassification  -ClassificationNames “[Your EDM sensitive info type]” -TexttoClassify “[your own text to scan for matches]” 
```

>[!NOTE] When you create a or edit an EDM sensitive information type, or the base SIT on which an EDM type is based, all new content and content that’s modified after the changes to the SITs will be crawled for text that matches the new definitions, but preexisting content won’t be crawled until modified or reindexed. 

To force re-crawling of existing content in a SharePoint site or library or in OneDrive, follow the instructions in [Manually request crawling and re-indexing of a site, a library or a list](/sharepoint/crawl-site-content).

## Troubleshooting tips

If you don't find any matches, try the following:

- Confirm that your sensitive data was uploaded correctly using the commands explained in the guidance for uploading your sensitive data using the EDM tool.

- Check that the examples you entered in the item are present in your sensitive information table and that the ignored delimiters are correct.

- Test the SIT you used when you configured the primary element in each of your patterns. This will confirm that the SIT is able to match the examples in the item. Using an incorrectly defined SIT as the classification element of an EDM Sensitive information type is the most common cause for detection failures in EDM. 

- If the SIT you selected for a primary element in the EDM type doesn't find a match in the item or finds fewer matches than you expected, check that it supports the separators and delimiters that are in the content. Be sure to include the ignored delimiters defined in your schema.

- If the Test function does not detect any content at all, check if the SIT you selected includes requirements for additional keywords or other validations. For the built-in SITs, see [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md#sensitive-information-type-entity-definitions) to verify what the minimum requirements are for matching each type.

- If the Test functionality works but your SharePoint or OneDrive items are not being detected in DLP or autolabeling rules, check if the documents you would expect to match show up in Content Explorer. If they are not there, remember that only content created after the changes to the sensitive information type will show as matches. You have to re-crawl the sites and libraries for pre-existing items to show up. See [Manually request crawling and re-indexing of a site, a library or a list](/sharepoint/crawl-site-content) for details on re-crawling SharePoint and OneDrive. 

- If DLP or autolabeling rules that require multiple matches don't trigger, check that the proximity requirements for both your EDM type and the base sensitive information types are met. For example, if the maximum distance of between the primary element and supporting keywords is 300 characters, but the keywords are only present in the first row of a long table, only the first few rows of matching values are likely to meet the proximity requirements. Modify your SIT definitions to support more relaxed proximity rules or use the anywhere in the document option for the additional evidence conditions. 

- If detection of an EDM type is inconsistent or erratic, check that the sensitive information type you used as the base for the primary element in your EDM type is not detecting unnecessary content. Using a SIT that matches too much unrelated content, like any word, any number, all email addresses might cause the service to saturate and ignore relevant matches. Check the number of content pieces that match the sensitive type you used for your primary elements in content explorer. To estimate if the SIT is matching too much content:
    1. Dividing the number of content items in Content Explorer by the number of days since the sensitive type was created.
    2. If the number of matches per day is in the range of hundreds of thousands or millions, it is possible that the base SIT is too broad. See [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types) for recommendations and best practices on selecting the right sensitive information type for an EDM type. 

- Confirm that your sensitive data was uploaded correctly using the commands explained in [the guidance for uploading your sensitive data using the EDM tool](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).

  -  If the SIT you selected for a primary element in the EDM type doesn't find a match in the item or finds fewer matches than you expected, check that it supports separators and delimiters that exist in the content. Be sure to include the ignored delimiters defined in your schema. 

## Next step

You EDM based custom SIT are ready for use in data loss prevention policies.

- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md#create-test-and-tune-a-dlp-policy)