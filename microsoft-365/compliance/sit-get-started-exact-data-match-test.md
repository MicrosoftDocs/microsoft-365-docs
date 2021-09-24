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
======
[!TIP] A common practice is to combine the use of EDM Sensitive information types and the regular sensitive information types on which they are based in DLP rules, with different thresholds. For example, you could use an EDM sensitive information type that looks for social security numbers and other data, with strict requirements and low tolerance (e.g. one or more matches will cause a DLP alert), while using the regular sensitive information type on which you based your EDM type (e.g. the U.S. Social Security Number built-in sensitive information type) for higher counts (e.g. more than 100 matches), in case sensitive information not recorded in your databases or that’s being used in a way that doesn’t align with your EDM definition for additional evidence is being exfiltrated in large volumes.  


After you have imported your rule package with your EDM sensitive info type and have imported your sensitive data table, you can test your newly created type by using the **Test** function in the EDM wizard in the compliance center. See [Use the Exact Data Match Schema and Sensitive Information Type Wizard](sit-edm-wizard.md) for instructions on using this functionality.


After your EDM Sensitive information type has been created and after verifying that your sensitive information table has finished uploading and indexing, you can test that it detects the information you want to detect by using the test function in the Sensitive information types section in the Compliance center. 
[!NOTE:] changes in an already created EDM Sensitive information type can take some time to propagate across the system. If you are making changes in an EDM Sensitive information type for troubleshooting detection issues, make sure to wait at least one hour after those changes before using the test function to validate their impact.
1.	Open Compliance center > Data classification > Sensitive Information Types.
2.	Select your EDM SIT from the list and then select Test in the flyout pane. Note that this option is only present for EDM types under Sensitive information types, and not under the EDM section of the Compliance Center. 
3.	Upload an item that contains data you want to detect, for example create an item that contains a subset of the rows in your sensitive information table. If you used the configurable match feature in your schema to define ignored delimiters, make sure the item includes examples with and without those delimiters.
4.	After the file has been uploaded and scanned, check for matches to your EDM SIT.
Alternatively, you can use the following PowerShell commandlets:
Test-DataClassification  -ClassificationNames “[Your EDM sensitive info type]” -TexttoClassify “[your own text to scan for matches]” 

[!NOTE] When you create a or edit an EDM sensitive information type, or the base Sensitive Information Type on which an EDM type is based, all new content and content that’s modified after the changes to the sensitive types will be crawled for text that matches the new definitions, but preexisting content won’t be crawled until modified or reindexed. 
To force recrawling of existing content in a SharePoint site or library or in OneDrive, follow the instructions here: https://docs.microsoft.com/en-us/sharepoint/crawl-site-content.


Troubleshooting
If you don't find any matches, try the following:
•	Confirm that your sensitive data was uploaded correctly using the commands explained in the guidance for uploading your sensitive data using the EDM tool.
•	Check that the examples you entered in the item are present in your sensitive information table and that the ignored delimiters are correct.
•	Test the SIT you used when you configured the primary element in each of your patterns. This will confirm that the SIT is able to match the examples in the item. An incorrectly defined SIT as the classification element of an EDM Sensitive information type is the most common cause for detection failures in EDM. 
o	If the SIT you selected for a primary element in the EDM type doesn't find a match in the item or finds fewer matches than you expected, check that it supports separators and delimiters that exist in the content. Be sure to include the ignored delimiters defined in your schema.
o	If the Test function does not detect any content at all, check if the SIT you selected includes requirements for additional keywords or other validations. For the built-in SITs, see Sensitive information types entity definitions to verify what the minimum requirements are for matching each type.
o	If the Test function in the SIT detects a match, check that it is not trimming it or extracting the sensitive data incorrectly. For example, by extracting only a substring of the full string it is supposed to detect, picking up only the first word in a multi-word string, or including extra symbols or characters in the extraction. Since EDM needs to match the exact string present in the sensitive information table, such issues will cause the EDM match to fail even if content was detected by the classification SIT on which it is based. See Regular Expression Language - Quick Reference for information on defining regular expressions that can be used in sensitive information types. 
•	If the Test functionality works but your documents in SharePoint or OneDrive are not being detected in DLP or autolabeling rules, check if the documents you would expect to match show up in Content Explorer in the compliance center. If they fail to show up there, consider that only content created after the changes to the sensitive information type will show as matches. For content in preexisting documents to be detected you will need to recrawl the sites or libraries that contain them. See https://docs.microsoft.com/en-us/sharepoint/crawl-site-content for details on recrawling SharePoint and OneDrive. 
•	If DLP or autolabeling rules that require multiple matches fail to trigger, check that the proximity requirements for both your EDM type and the base sensitive information types for your EDM patterns are met for all content in your samples. E.g. if you require a maximum distance of 300 characters between the primary element and supporting keywords, but the keywords are only present in the first row of a long table, only the first few rows of matching values are likely to be within that distance of the required keywords. Modify your sensitive information type definitions to support more relaxed proximity rules or use the “anywhere in the document” option for the additional evidence conditions. 
•	If detection of an EDM type is inconsistent or erratic, check that the sensitive information type you used as the base for the primary element in your EDM type is not too broad, i.e. is not detecting unnecessary content. Using a SIT that would match too much unrelated content (e.g. any word, any number, all email addresses, etc.) might cause the service to saturate and ignore relevant matches. Navigate to Content Explorer in the Compliance Center and check the number of content pieces that match the sensitive type you used for your primary elements. You can estimate if it is likely to cause failures by dividing the number of content items in Content Explorer by the number of days since the sensitive type was created. If the number of matches per day is in the range of hundreds of thousands or millions, it is possible that the base SIT is too broad. See the recommendations and best practices in the Introduction to EDM for guidance on selecting the right sensitive information type for an EDM type. 



### Troubleshooting

If you don't find any matches, try the following:
- Confirm that your sensitive data was uploaded correctly using the commands explained in [the guidance for uploading your sensitive data using the EDM tool](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md).
- Check that the examples you entered in the item are present in your sensitive information table and that the ignored delimiters are correct.
- **Test** the SIT you used when you configured the primary element in each of your patterns. This will confirm that the SIT is able to match the examples in the item. 
  -  If the SIT you selected for a primary element in the EDM type doesn't find a match in the item or finds fewer matches than you expected, check that it supports separators and delimiters that exist in the content. Be sure to include the ignored delimiters defined in your schema. 
  -  If the **Test** function does not detect any content at all, check if the SIT you selected includes requirements for additional keywords or other validations. For the built-in SITs, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md) to verify what the minimum requirements are for matching each type.
<!-- END PUBLISHED SIT EDM WIZARD ARTICLE-->
