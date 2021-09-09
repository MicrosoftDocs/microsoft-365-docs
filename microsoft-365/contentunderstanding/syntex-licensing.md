---
title: 'Licensing for SharePoint Syntex'
ms.author: mikeplum
author: MikePlumleyMSFT
ms.reviewer: ssquires
manager: serdars
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
search.appverid: MET150
localization_priority: Priority
description: "Learn about licensing for SharePoint Syntex"
---

# Licensing for SharePoint Syntex

To use SharePoint Syntex, your organization must have a subscription to SharePoint Syntex, and each Syntex user must have a license. If you cancel your SharePoint Syntex subscription at a future date (or your trial expires), users will no longer be able to create, publish, or run document understanding or form processing models. Additionally, term store reports, SKOS taxonomy import, and Content type push will no longer be available. No models, content, or metadata will be deleted and site permissions will not be changed.
 
## Tasks requiring a license
 
The following tasks require a SharePoint Syntex license for the user performing them:
 
- Applying a document understanding model to a library. (Unlicensed users can be granted access to a content center and can create document understanding models there but can't apply them to a document library.)
- Creating a form processing model via the entry point in a library
- Uploading content to a library where a document understanding or form processing model has been applied
- Running a document understanding model on-demand
- Viewing the metadata extracted from files using a document understanding or forms processing model. (Users must be licensed to access and use metadata associated with processed files, regardless of where the files are moved.)
- Use premium taxonomy services. (Premium taxonomy services comprise SKOS-based term set import, pushing enterprise content types to hub-associated sites, and term store reports.)

Unlicensed users can be granted access to a content center and can create document understanding models there but can't apply them to a document library.
 
## Cost of running models
 
The cost of running document understanding models is included in the cost of a SharePoint Syntex license. However, form processing models use AI Builder capacity, for both training and runtime processing. Capacity must be allocated to the Power Apps environment where you will use AI Builder.
 
If you have 300 or more SharePoint Syntex licenses for SharePoint Syntex in your organization, you will be allocated one million AI Builder credits. This capacity is renewed each month if you maintain the 300-license minimum. (Unused credits don't roll over from month to month.) If you have fewer than 300 licenses, you must purchase AI Builder credits in order to use forms processing.
 
You can estimate the AI Builder capacity that’s right for you with the [AI Builder calculator](https://powerapps.microsoft.com/ai-builder-calculator).

If you plan to use a custom Power Platform environment, you must [allocate credits to that environment](/power-platform/admin/capacity-add-on).

Go to the [Power Platform admin center](https://admin.powerplatform.microsoft.com/resources/capacity) to check your credits and usage.
  
## Additional term store features
 
A subscription to SharePoint Syntex features the following additional term store features:
 
- SKOS-based term set import
- Pushing enterprise content types to a hub site, which also adds them to the associated sites and any newly created lists or libraries
- Term store reports providing insights into published term sets and their use across your tenant


## See also

[Licensing overview for Microsoft Power Platform](/power-platform/admin/pricing-billing-skus)

[Power Apps and Power Automate licensing FAQ](/power-platform/admin/powerapps-flow-licensing-faq)
