---
title: "Create EDM SIT schema and rule package new experience"
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
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Create EDM SIT rule package new experience
ms.custom: seo-marvel-apr2020
---

# Create EDM SIT schema and rule package new experience

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

You can create the EDM schema and sensitive information type (or rule package) using the new experience in the compliance portal.

## Applies to

- New experience

If you want to create an EDM SIT using the classic experience see, [Create EDM SIT classic experience](sit-create-edm-sit-classic-ux.md).

## Before you begin

Make sure you have completed the steps in these articles before you start the procedures in this article.

1. [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md)
1. [Create EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md)

If you are not familiar with EDM based SITS or their implementation, you should familiarize yourself with:

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

1. Name the SIT and add a description. The name that the system generates for the schema will be the SIT name you enter here concatenated with *schema*. Select **Next**.

1. Select the method you want to use to define your schema, either **Upload a file containing sample data**, or **Manually define your data structure**. We recommend the upload sample data file option and the rest of this procedure assumes you have chosen to upload your sample file. Select **Next**.

> [!NOTE]
> No matter which option you select, you'll be using the information in the sample file you created in [Create EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md).

6. Select your sample file and select **Upload file** then select **Next**. If you get any errors during upload, address them and try again.

7. Once your data uploads it will be displayed on the **Verify your sample data is correct** page. Inspect the column names and sample data and choose **Next**.

8. Select your primary elements based on the recommendations presented. Look at the values in the **Match validation** column for guidance and choose **Next**.

> [!TIP]
> - Select primary elements whose values make that row unique in the table. For example, don't pick fields like *FirstName* or *DateOfBirth* as there will most likely be many duplications of first names or dates of birth in your actual sensitive data file. Instead pick things like *Social Security Number* and *BankAccountNumber* whose value will be unique in your table and therefore make the row unique in the table.
> - You can pick up to five primary elements. The more you can pick that have values that are unique in your actual sensitive data table, the better the accuracy of your EDM SIT will be. It will also improve performance and avoid timeouts caused by process overloading.
> - Select a sensitive information type that closely matches the format of the content you want to find. Selecting a SIT that matches unnecessary content, like one that matches all text strings, or all numbers can cause excessive load in the system which could result in sensitive information being missed.
> - All elements that are not selected as primary elements can still be used as corroborative or supporting evidence. The more supporting elements found that are in a defined proximity to primary elements, the higher the confidence that the item is a true positive.

9. On the **Configure settings for data fields** you can tell set how EDM treats case and which delimiters to ignore. You can set this for the values for all elements values or specify the settings for each element individually. Choose **Next**.

10. 


## Next step

- [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)
