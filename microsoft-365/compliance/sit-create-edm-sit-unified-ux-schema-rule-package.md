---
title: "Create EDM SIT using the new experience"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Create EDM SIT rule package new experience
ms.custom: seo-marvel-apr2020
---

# Create EDM SIT using the new experience

You can create the EDM schema and sensitive information type (or rule package) using the new experience in the compliance portal.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Applies to

- New experience

If you want to create an EDM SIT using the classic experience see, [Create EDM SIT classic experience workflow](sit-create-edm-sit-classic-ux-workflow.md). If you need help deciding which one to use, see [Choosing the right EDM SIT creation experience for you](sit-get-started-exact-data-match-based-sits-overview.md#choosing-the-right-edm-sit-creation-experience-for-you).

## Before you begin

Make sure you have completed the steps in these articles before you start the procedures in this article.

1. [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md)
1. [Create EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md)

If you are not familiar with EDM based SITS or their implementation, it is essential that you familiarize yourself with the concepts in:

- [Learn about sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md)
- [Create exact data match sensitive information type new experience](sit-create-edm-sit-unified-ux-workflow.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

### Permissions

- You must have Global admin or Compliance admin permissions to create, test, and deploy a custom sensitive information type through the UI. See [About admin roles in Office 365](/office365/admin/add-users/about-admin-roles).

## Create your EDM schema and SIT

> [!IMPORTANT]
> The system will suggest a mapping between an existing SIT and your primary element. You should review the [existing SITs](sensitive-information-type-entity-definitions.md) to get an idea of which ones will meet your needs. Make sure the existing SIT will detect exactly the strings you want to select, and not include any surrounding characters or exclude any valid part of the string as stored in your sensitive information table.

> [!NOTE]
> All data are retained as you navigate forward and backward through the UI. Backward navigation (selecting **Back**) only supports moving from top level page to top level page and sub page to sub page. You can't backward navigate from top level page to the preceding sub page or from a sub page to a preceding top level page. 

1. In the Microsoft Purview compliance portal for your tenant go to **Data classification** > **Exact data matches**.

1. Make sure the **New EDM experience** is set to **On**.

1. Select **+ Create EDM classifier**.

1. Name the SIT and add a description. The name that the system generates for the schema will be the SIT name you enter here concatenated with *schema*. It will be displayed at the end of the flow. Select **Next**.

1. Select the method you want to use to define your schema, either **Upload a file containing sample data**, or **Manually define your data structure**. We recommend the upload sample data file option and the rest of this procedure assumes you have chosen to upload your sample file. Select **Next**.

> [!NOTE]
> No matter which option you select, you'll be using the information in the sample file you created in [Create EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md).

6. Select your sample file and select **Upload file** then select **Next**. If you get any errors during upload, address them and try again.

7. Once your data uploads it will be displayed on the **Verify your sample data is correct** page. Inspect the column names and sample data and choose **Next**.

8. Select your primary elements based on the recommendations presented. Look at the values in the **Match validation** column for guidance and choose **Next**.

> [!TIP]
> - Select primary elements whose values make that row unique in the table. For example, don't pick fields like *FirstName* or *DateOfBirth* as there will most likely be many duplications of first names or dates of birth in your actual sensitive data file. Instead pick things like *Social Security Number* and *BankAccountNumber* whose value will be unique in your table and therefore make the row unique in the table.
> - You must pick one primary element but no more than ten primary elements. If you have a multi-token corroborative data field, you should map that to a base SIT as well. The more you can pick that have values that are unique in your actual sensitive data table, the better the accuracy of your EDM SIT will be. It will also improve performance and avoid timeouts caused by process overloading. 
> - Select a sensitive information type that closely matches the format of the content you want to find. Selecting a SIT that matches unnecessary content, like one that matches all text strings, or all numbers can cause excessive load in the system which could result in sensitive information being missed.

9. On the **Configure settings for data fields** you can tell set how EDM treats case and which delimiters to ignore. You can set this for the values for all elements values or specify the settings for each element individually. Choose **Next**.

> [!IMPORTANT]
If you selected the Ignored Delimiters option for the primary element column in your schema, make sure the SIT you map to will match data with and without the selected delimiters.

10. EDM will automatically generate one detection rule for each of the primary elements you identified. EDM will create a high confidence rule and a medium confidence rule. High confidence rules have more requirements that must be met than medium rules. Likewise, medium confidence rules have more requirements than low confidence rules should you choose to create a low confidence rule. You can review and edit those rules on the **Configure detection rules for primary elements** page. Choose **Submit**.

> [!TIP]
> All elements that are not selected as primary elements can still be used as corroborative or supporting evidence. The more supporting elements found that are in a defined proximity to primary elements, the higher the confidence that the item is a true positive.

> [!NOTE]
When you select **Submit**, EDM will create the schema and rule package. The name of the schema can be found on the final page of the creation flow.  


## Next step

- **For new experience**: [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md)

