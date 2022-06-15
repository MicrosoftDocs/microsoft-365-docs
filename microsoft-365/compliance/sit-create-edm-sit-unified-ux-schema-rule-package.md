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

1. In the Microsoft Purview compliance portal for your tenant go to **Data classification** > **Exact data matches**.

1. Make sure the **New EDM experience** is set to **On**.

1. Select **+ Create EDM classifier**.

1. Name the SIT and add a description. The name that the system generates for the schema will be the SIT name you enter here concatenated with *schema*. Select **Next**.

1. Select the method you want to use to define your schema, either **Upload a file containing sample data**, or **Manually define your data structure**. We recommend the upload sample data file option.

> [!NOTE]
> No matter which option you select, you'll be using the information in the sample file you created in [Create EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md)






> [!IMPORTANT]
> Select a sensitive information type that closely matches the format of the content you want to find. Selecting a sensitive information type that matches unnecessary content, like one that matches all text strings, or all numbers can cause excessive load in the system which could result in sensitive information being missed.

 The syntax of the rule package file is the same as for other sensitive information types. For complete details on the syntax of the rule package file and for additional configuration options, and for instructions on modifying and deleting sensitive information types using PowerShell, [Create a custom sensitive information type using PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md#create-a-custom-sensitive-information-type-using-powershell).

## Next step

- [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md#test-an-exact-data-match-sensitive-information-type)
