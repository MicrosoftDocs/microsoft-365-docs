---
title: Run a trial of Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: lauris; jaeccles
ms.date: 
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.custom: Adopt
search.appverid: 
localization_priority: Normal
description: Learn how to plan and run a trial pilot program for SharePoint Syntex in your organization.
---

# Run a trial of Microsoft SharePoint Syntex

This article describes how to set up and run a trial pilot program to deploy SharePoint Syntex in your organization. It also recommends best practices for the trial.

## Sign up for a trial

The trial of SharePoint Syntex gives access to 300 users for 30 days.

> [!NOTE]
> Up to 300 users are included in the trial to ensure the automatic addition of 1 million AI Builder credits. You do not have to include 300 users for a trial to succeed.

You can get the trial version from one of the following sources:

- The [SharePoint Syntex product page](https://www.microsoft.com/microsoft-365/enterprise/sharepoint-syntex?activetab=pivot:overviewtab)

- The [Microsoft 365 admin center](https://admin.microsoft.com)
    1.	Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com).
    2.	Go to **Billing** > **Purchase Services**.
    3.	Scroll down to the **Add-Ons** section.
    4.	On the SharePoint Syntex tile, select **Details**.
    5.	Select **Get free trial**.
    6.	To confirm the trial, follow the remaining wizard steps.

You must be a Microsoft 365 global administrator or billing administrator to activate a trial.

### Who should be involved in a trial

|Role  |Activity  |
|---------|---------|
|Microsoft 365 global admin or billing admin    |     Activate the trial and assign licenses    |
|Microsoft 365 global admin or SharePoint admin     |   Configure SharePoint Syntex and create content centers      |
|Business users     |    Model building and testing     |

### Before you activate a trial

To successfully plan a SharePoint Syntex trial, consider the following factors:

- The most meaningful testing is completed on “real world” scenarios and data.
- You can only activate a SharePoint Syntex trial once per tenant.

A test or demo tenant can be used as a “dry run” to walk through the activation steps and administrative controls. But it’s probably best to evaluate model building on a production tenant.

To maximize the value of a trial on a production tenant, planning and business engagement are essential. You should engage one or more business areas to identify three-to-six use cases that could potentially be addressed by SharePoint Syntex. These use cases should:

- Include scenarios that could be solved by either the forms processing or document understanding model.
- Have a clear understanding of the purpose for any extracted metadata; for example, view formatting or automation by using Power Automate. While SharePoint Syntex is focused on classifying documents and extracting metadata, the value to quantify is what this metadata enables.
- Be based on a defined set of data; for example, specific SharePoint sites or libraries. A common misconception of SharePoint Syntex is that general purpose models can be applied across all organization content. A more accurate view is that models are built to help solve specific business problems in targeted locations.

All of these use cases might not be a good fit for SharePoint Syntex. The goal of a quality trial isn't to prove that SharePoint Syntex will fit all the scenarios. Instead, the trial should help you better understand the value of product.

For each of the planned use cases, identify users who are subject matter experts in the related content or process. The creation of SharePoint Syntex models is focused on domain experts in the content, rather than on IT professionals or developer resources.

## Activate a trial

When you initiate a trial, you need to:

- Assign licenses to the relevant users.
- Perform [additional setup of SharePoint Syntex](https://docs.microsoft.com/microsoft-365/contentunderstanding/set-up-content-understanding).
    - You might want to [create additional content centers](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-content-center).

After the trial is activated, you can create models and process files. See [guidance for model creation](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-content-center).

## During a trial

Trial periods are limited, so it’s best to focus initially on whether SharePoint Syntex models can classify documents and extract metadata for the defined use cases. After the trial period is over, you can evaluate how the metadata can be exploited.

## After a trial

Based on the outcome of the trial, you can decide whether to proceed to production use of SharePoint Syntex.

### Proceed to production use

To ensure continuity of service, you need to purchase the required number of licenses and assign those licenses to users. Trial users who don’t have a full license at the end of the trial period won’t be able to fully utilize SharePoint Syntex.

You might have to estimate your projected use of forms processing and plan for the expected amount of AI Builder credits. For help, see [Estimate the AI Builder capacity that’s right for you](https://powerapps.microsoft.com/ai-builder-calculator/).

### Don't proceed to production use

If you don’t purchase licenses following the trial:

- You won’t be able to create new models.
- Libraries that were running models will no longer automatically classify files or extract models.
- Any previously classified files or extracted metadata won’t be affected. 
- Content centers and any document-understanding models won’t be automatically deleted. These will remain available for use if you decide to purchase licenses in the future.
- Forms-processing models will be stored in the Common Data Services (CDS) instance of the default Power Platform environment. These could be used with future licensing for SharePoint Syntex or with AI Builder capabilities in the Power Platform.

## See also

[Microsoft SharePoint Syntex adoption: Get started](adoption-getstarted)
