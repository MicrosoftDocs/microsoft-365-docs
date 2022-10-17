---
title: Licensing for Microsoft Syntex
ms.author: mikeplum
author: MikePlumleyMSFT
ms.reviewer: ssquires
manager: serdars
audience: admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
search.appverid: MET150
ms.localizationpriority: high
description: Learn about licensing for Microsoft Syntex.
---

# Licensing for Microsoft Syntex

To use Microsoft Syntex, you must have a license for each Syntex user. If you remove all Syntex licenses from your tenant at a future date (or your trial expires), users will no longer be able to create, publish, or run document understanding or form processing models. Additionally, term store reports, SKOS taxonomy import, and Content type push will no longer be available. No models, content, or metadata will be deleted and site permissions will not be changed.
 
> [!NOTE] 
> Syntex is an add-on license and requires users also to have a license for Microsoft 365.
 
## Tasks requiring a license
 
The following tasks require a [Syntex license](https://www.microsoft.com/microsoft-365/enterprise/sharepoint-syntex) for the user performing them:
 
- Applying a document understanding model to a library. (Unlicensed users can be granted access to a content center and can create document understanding models there but can't apply them to a document library.)
- Creating a form processing model via the entry point in a library
- Uploading content to a library where a document understanding or form processing model has been applied
- Running a document understanding model on-demand
- Creating a modern template with content assembly
- Generating a document from a modern template
- Use of advanced metadata search
- Use of premium taxonomy services. (Premium taxonomy services comprise SKOS-based term set import, pushing enterprise content types to hub-associated sites, and term store reports.)

Unlicensed users can be granted access to a content center and can create document understanding models there but can't apply them to a document library.
 
## Cost of training and running models
 
The cost of training and running document understanding models is included in the cost of a Syntex license. However, form processing models use AI Builder capacity, for both training and runtime processing. Capacity must be allocated to the Power Apps environment where you will use AI Builder.

For each Syntex license, you are allocated 3,500 AI Builder credits per license, per month pooled at the tenant level, with a maximum allocation of 1 million credits per month. This allocation is renewed each month for each active Syntex license. (Unused credits don't roll over from month to month.) 

You can estimate the AI Builder capacity that’s right for you with the [AI Builder calculator](https://powerapps.microsoft.com/ai-builder-calculator).

If you plan to use a custom Power Platform environment, you must [allocate credits to that environment](/power-platform/admin/capacity-add-on).

Go to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/resources/capacity) to check your credits and usage.
  
## Additional term store features

Having one or more Syntex licenses in your organization enables the following additional term store features for SharePoint admins:
 
- SKOS-based term set import
- Pushing enterprise content types to a hub site, which also adds them to the associated sites and any newly created lists or libraries
- Term store reports providing insights into published term sets and their use across your tenant


## See also

[Licensing overview for Microsoft Power Platform](/power-platform/admin/pricing-billing-skus)

[Power Apps and Power Automate licensing FAQ](/power-platform/admin/powerapps-flow-licensing-faq)
