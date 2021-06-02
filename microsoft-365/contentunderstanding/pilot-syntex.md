---
title: "Run a pilot for Microsoft SharePoint Syntex"
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
description: "Learn how to plan and run a trial pilot program for SharePoint Syntex in your organization."
---

# Run a pilot for Microsoft SharePoint Syntex

This article describes how to set up a trial pilot program to deploy SharePoint Syntex in your organization. It also recommends best practices for the trial.

## Resources required


|Role  |Activity  |
|---------|---------|
|Microsoft 365 global admin or billing admin    |     Activate the trial and assign licenses    |
|Microsoft 365 global admin or SharePoint admin     |   Configure SharePoint Syntex and create content centers      |
|Business users     |    Model building and testing     |

## Trial options

### Publicly available trials

The trial version of SharePoint Syntex gives access to 300 users for 30 days. The 300 users ensure the automatic addition of 1 million AI Builder credits. It doesn’t mean that you need to include 300 users for a trial to succeed.

You can get the trial version from one of the following sources:

- The [SharePoint Syntex product page](https://www.microsoft.com/microsoft-365/enterprise/sharepoint-syntex?activetab=pivot:overviewtab)

  > [!NOTE]
  > This trial must be added to an existing tenant. If a tenant isn't available, you can generate a trial tenant through [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/enterprise/office-365-e3?activetab=pivot:overviewtab) or [Microsoft 365 E5 licensing](https://www.microsoft.com/microsoft-365/enterprise/office-365-e5?activetab=pivot:overviewtab) licensing.

- The [Microsoft 365 admin center](https://admin.microsoft.com)
    1.	Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com).
    2.	Navigate to **Billing** > **Purchase Services**.
    3.	Scroll down to the **Add-Ons** section.
    4.	On the SharePoint Syntex tile, select **Details**.
    5.	Select **Get free trial**.
    6.	To confirm the trial, follow the remaining wizard steps.

A user must be a Microsoft 365 global administrator or billing administrator to activate a trial.

### Extended trials

Extended trials are available for organizations who have engaged a partner through the Content Services Partner Program (CSPP). These trials offer 300 users access to SharePoint Syntex for 60 days. CSPP partners can request promotional codes for extended trials.

> [!NOTE]
> As with public trials, these promotional codes are for 300 users. They automatically include 1 million AI Builder credits.

### Comparison of trial options

|Trial source  |Users  |Duration  |
|---------|---------|---------|
|Public sources     |   300      |       30 days  |
|Partner (CSPP)     |   300      |     60 days    |

## Before you activate a trial

To successfully plan a SharePoint Syntex trial, consider the following factors:

- The most meaningful testing is completed on “real world” scenarios and data.
- You can only activate a SharePoint Syntex trial once per tenant.

A test or demo tenant can be used as a “dry run” to walk through the activation steps and administrative controls. But it’s probably best to evaluate model building on a production tenant.

To maximize the value of a trial on a production tenant, planning and business engagement are essential. You should engage one or more business areas to identify three-to-six use cases that could potentially be addressed by SharePoint Syntex. These use cases should:

- Include scenarios that could be solved by either the forms processing or document understanding model.
- Have a clear understanding of the purpose for any extracted metadata; for example, view formatting or automation by using Power Automate. While SharePoint Syntex is focused on classifying documents and extracting metadata, the value to quantify is what this metadata enables.
- Be based on a defined set of data; for example, specific SharePoint sites or libraries. A common misconception of SharePoint Syntex is that general purpose models can be applied across all organization content. A more accurate view is that models are built to help solve specific business problems in targeted locations.

All of these use cases might not be a good fit for SharePoint Syntex. The objective of a quality trial is not to prove that SharePoint Syntex will fit all the scenarios. Instead, the trial should help you better understand the value of product.

For each of the planned use cases, identify users who are subject matter experts in the related content or process. The creation of SharePoint Syntex models is focused on domain experts in the content, rather than on IT professionals or developer resources.

## Activate a trial

When you initiate a trial, you must do the following:

- Assign licenses to the relevant users.
- Perform [additional setup of SharePoint Syntex](https://docs.microsoft.com/microsoft-365/contentunderstanding/set-up-content-understanding).
    - You might want to [create additional content centers](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-content-center).

After the trial is activated, you can create models and process files. See [guidance for model creation](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-content-center).

## During a trial

Trial periods are limited, so it’s best to focus initially on whether SharePoint Syntex models can classify documents and extract metadata for the defined use cases. After the trial period is over, you can evaluate how the metadata can be exploited.

## After a trial

Based on the outcome of the trial, you can decide whether to proceed to production use of SharePoint Syntex.

### Proceed to production use

To ensure continuity of service, you need to purchase the required number of licenses and assign those to users. Trial users who don’t have a full license at the end of the trial period won’t be able to fully utilize SharePoint Syntex.

You might have to estimate your projected use of forms processing and plan for the expected amount of AI Builder credits. For help, see [Estimate the AI Builder capacity that’s right for you](https://powerapps.microsoft.com/ai-builder-calculator/).

### Do not proceed to production use

If you don’t purchase licenses following the trial:

- You won’t be able to create new models.
- Libraries that were running models will no longer automatically classify files or extract models.
- Any previously classified files or extracted metadata won’t be affected. 
- Content centers and any document-understanding models won’t be automatically deleted. These will remain available for use if you decide to purchase licenses in the future.
- Forms-processing models will be stored in the Common Data Services (CDS) instance of the default Power Platform environment. These could be used with future licensing for SharePoint Syntex or with AI Builder capabilities in the Power Platform.

## See also

[Microsoft SharePoint Syntex adoption: Get started](adoption-getstarted)
