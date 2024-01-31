---
title: Licensing for Microsoft Syntex
ms.author: chucked
author: chuckedmonson
ms.reviewer: ssquires, kkameth
ms.date: 09/25/2023
manager: jtremper
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection: 
    - essentials-get-started
    - m365initiative-syntex
    - Tier1
search.appverid: MET150
ms.localizationpriority: medium
description: Learn about pay-as-you-go licensing for Microsoft Syntex.
---

# Licensing for Microsoft Syntex

Microsoft Syntex uses pay-as-you-go licensing for new and renewing customers. With pay-as-you-go, you can use Syntex without any license commitment or upfront purchasing. Any user in your organization can use Syntex services and only pay if and when services are used.

Pay-as-you-go requires an Azure subscription. Pay-as-you-go services are billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). For information about how to set up pay-as-you-go, see [Configure Microsoft Syntex for pay-as-you-go billing](syntex-azure-billing.md).

Before you configure pay-as-you-go, read the [Microsoft Syntex pay-as-you-go terms of service](/legal/microsoft-365/microsoft-syntex-pay-as-you-go-terms).

The features available for each license type are described in this article. <!-- You can use both licenses if you need to.-->

> [!NOTE]
> Microsoft Syntex is an add-on and requires users also to have a license for Microsoft 365.

> [!NOTE]
> For Government Community Cloud (GCC) organizations, pay-as-you-go licensing is not yet available. GCC organizations can continue to purchase and use per-user licenses until pay-as-you-go becomes available.

## Microsoft Syntex pay-as-you-go

Pay-as-you-go currently supports the following Syntex services:

- Prebuilt document processing
- Structured and freeform document processing
- Unstructured document processing
- Content assembly
- Image tagging
- Taxonomy tagging
- Translation
- Syntex eSignature
- Optical character recognition
- Microsoft 365 Archive (Preview)
- Microsoft 365 Backup (Preview)

More Syntex services will be added as they become available.

### Feature limited preview

Pay-as-you-go licensing includes access to additional Syntex features for a limited time as a preview. You won't be charged on a pay-as-you-go basis during the preview. These features include:

- Content query
- Universal annotations
- Contracts management accelerator
- Accounts payable accelerator
- Taxonomy features (including import using SKOS, SKOS formatting reference, push content type to hub, and term store reports)
- PDF merge and extract pages
- Content processing: Move or copy a file, set a content type from file name

For more information, see [Microsoft Syntex features limited time license agreement](feature-limited-license.md).

## If you still have active per-user licenses

As of July 1, 2023, per-user licenses are no longer available for purchase. Per-user licenses purchased before July 1 can still be assigned to new users. After existing per-user licenses expire, you'll need to opt in to Syntex [pay-as-you-go billing](syntex-azure-billing.md) to continue using Syntex services.

Users with active per-user licenses can perform the following tasks:

- Apply an unstructured document processing model to a library. (Unlicensed users can be granted access to a content center and can create models there, but can't apply them to a document library.)
- Create a structured document processing model or a freeform document processing model via the entry point in a library.
- Upload content to a library where a custom model has been applied.
- Run an unstructured document processing model on-demand.
- Create a modern template with content assembly.
- Generate a document from a modern template.
- Use of content query to search for metadata.
- Use of annotations to add notes and comments.
- Use of premium taxonomy services. (Premium taxonomy services comprise SKOS-based term set import, pushing enterprise content types to hub-associated sites, and term store reports.)
- Use the document library rules to move or copy content.
- Merge and extract PDFs

If you plan to use a custom Power Platform environment for structured or freeform document processing, see [Using a custom Power Platform environment](structured-freeform-setup.md#using-a-custom-power-platform-environment).

<!---
## AI Builder credits

Structured and freeform document processing for both pay-as-you-go and per-user licensing requires [AI Builder credits](https://learn.microsoft.com/en-us/ai-builder/administer-licensing#purchase-ai-builder-capacity).

Structured and freeform document processing use AI Builder capacity, for both training and runtime processing. Capacity must be allocated to the Power Apps environment where you'll use AI Builder.

You can estimate the AI Builder capacity that’s right for you with the [AI Builder calculator](https://powerapps.microsoft.com/ai-builder-calculator).

If you plan to use a custom Power Platform environment, you must [allocate credits to that environment](/power-platform/admin/capacity-add-on).

Go to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/resources/capacity) to check your credits and usage.
--->
<!--

Microsoft Syntex uses pay-as-you-go dcurrently has two types of licensing offerings:

- [Microsoft Syntex pay-as-you-go](#microsoft-syntex-pay-as-you-go). This is the new way to pay for Microsoft Syntex using an Azure subscription, which allows you to get started with Microsoft Syntex without any license commitment or upfront purchasing.

- [SharePoint Syntex per-user licensing](#microsoft-syntex-per-user-licensing). As of July 1, 2023, purchasing per-user licenses is no longer available. You will need to [set up pay-as-you-go billing](syntex-azure-billing.md).

<!--
The features available for each license type are described below. <!-- You can use both licenses if you need to.-->

<!--In the future, most new Microsoft Syntex features will be added to pay-as-you-go.
-->
<!--
> [!NOTE]
> Microsoft Syntex is an add-on and requires users also to have a license for Microsoft 365.

## Microsoft Syntex pay-as-you-go

Pay-as-you-go is a way to pay for Microsoft Syntex using an Azure subscription. You can use Syntex without any license commitment or upfront purchasing. Pay-as-you-go allows any user in your organization to use Syntex services and then only pay if and when they're used. Pay-as-you-go supports the following Syntex services:

- Prebuilt document processing
- Unstructured document processing
- Optical character recognition
- Content assembly
- Image tagging

All users in your organization will be able to create and apply unstructured and prebuilt document processing models and can upload documents to a primed library.

Pay-as-you-go services are billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). To set up billing, see [Configure Microsoft Syntex for pay-as-you-go billing](syntex-azure-billing.md).
All users in your organization are able to create and apply unstructured and prebuilt document processing models and can upload documents to a primed library. This service is charged on a pay-per-use basis.



## Microsoft Syntex per-user licensing

> [!NOTE]
> As of July 1, 2023, purchasing per-user licenses is no longer available. You will need to [set up pay-as-you-go billing](syntex-azure-billing.md).<br><br>
> Per-user licenses purchased before July 1 can still be assigned to new users. After existing per-user licenses expire, you will need to opt-in to Syntex [pay-as-you-go billing](syntex-azure-billing) to continue using existing and new Syntex features.
<!--<br><br>Some features currently available in the per-user licensing (such as annotations and content query) will not be included in Syntex pay-as-you-go, but will be included as part of your Microsoft 365 E3 or E5 and Office 365 A3 or A5 licensing.-->
<!--
> As of July 1, 2023, per-user licenses are no longer available for purchase. You will need to [set up pay-as-you-go billing](syntex-azure-billing.md).<br><br>
> **Per-user licenses purchased before July 1, 2023, can still be assigned to new users.** After existing per-user licenses expire, you will need to opt-in to Syntex [pay-as-you-go billing](syntex-azure-billing.md).

To use Syntex, you must have a license for each Syntex user. If you remove all Syntex per-user licenses from your tenant at a future date (or your trial expires), users won't be able to create, publish, or run custom models. Additionally, term store reports, SKOS taxonomy import, and content type push won't be available. Models, content, or metadata won't be deleted, and site permissions won't be changed.

#### Tasks requiring a per-user license
 
The following tasks require a [Syntex per-user license](https://www.microsoft.com/microsoft-365/enterprise/sharepoint-syntex) for the user performing them:
 
- Apply an unstructured document processing model to a library. (Unlicensed users can be granted access to a content center and can create models there, but can't apply them to a document library.)
- Create a structured document processing model or a freeform document processing model via the entry point in a library.
- Upload content to a library where a custom model has been applied.
- Run an unstructured document processing model on-demand.
- Use of content query to search for metadata.
- Use of annotations to add notes and comments.
- Use of premium taxonomy services. (Premium taxonomy services comprise SKOS-based term set import, pushing enterprise content types to hub-associated sites, and term store reports.)
- Use the document library rules to move or copy content.
- Merge and extract PDFs.

Unlicensed users can be granted access to a content center and can create models there, but can't apply them to a document library.
 
#### Cost of training and running models
 
The cost of training and running unstructured document processing models is included in the cost of a Syntex per-user license. However, the structured document processing and freeform document processing models use AI Builder capacity, for both training and runtime processing. Capacity must be allocated to the Power Apps environment where you use AI Builder.

For each Syntex per-user license, you're allocated 3,500 AI Builder credits per license, per month pooled at the tenant level, with a maximum allocation of 1 million credits per month. This allocation is renewed each month for each active Syntex per-user license. (Unused credits don't roll over from month to month.)

You can estimate the AI Builder capacity that’s right for you with the [AI Builder calculator](https://powerapps.microsoft.com/ai-builder-calculator).

If you plan to use a custom Power Platform environment, you must [allocate credits to that environment](/power-platform/admin/capacity-add-on).

Go to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/resources/capacity) to check your credits and usage.
  
#### Additional term store features

Having one or more Syntex per-user licenses in your organization enables the following additional term store features for SharePoint admins:
 
- SKOS-based term set import
- Push enterprise content types to a hub site, which also adds them to the associated sites and any newly created lists or libraries
- Term store reports providing insights into published term sets and their use across your tenant

## Related articles

[Microsoft Syntex - SharePoint Advanced Management overview](/sharepoint/advanced-management)

[Licensing overview for Microsoft Power Platform](/power-platform/admin/pricing-billing-skus)

[Power Apps and Power Automate licensing FAQ](/power-platform/admin/powerapps-flow-licensing-faq)

-->