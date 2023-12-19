---
title: Try out Microsoft Syntex for free and explore its features
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: lauris; jaeccles
ms.date: 12/20/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection:
- enabler-strategic
- m365initiative-syntex
ms.custom: 
- Adopt
- admindeeplinkMAC
search.appverid:
ms.localizationpriority: medium
description: Learn how to try Microsoft Syntex services for free during a limited offering.
---

# Try out Microsoft Syntex for free and explore its features

Microsoft Syntex (evolving to be SharePoint Premium) is a powerful tool that lets you do more with your documents. You can process, analyze, create, sign, translate, manage, and enhance them with ease. And now, you can try some of these features at no cost when you set up [pay-as-you-go billing](syntex-azure-billing.md).

From January 1, 2024 to June 30, 2024, you get a limited amount of usage each month at no charge. It's a great way to try out select Syntex capabilities, such as document processing, tagging, and translation, to see how you can use them to streamline processes in your organization.

## Get started

If you want to try some of these features for free, you can do so from January 1, 2024 to June 30, 2024. Here are the steps to follow:

### Step 1: Set up pay-as-you-go billing.

To try Microsoft Syntex, you need to set up [pay-as-you-go billing](syntex-azure-billing.md). You'll get a limited amount of usage for free each month during the offering period.

### Step 2: Enable Microsoft Syntex services.

Once you have set up pay-as-you-go billing, you need to [turn on the services you want to try](set-up-microsoft-syntex.md).

### Step 3: Try out Microsoft Syntex features

After you have enabled Microsoft Syntex, you can start using its features. 

## Monthly usage limits for free offering

The following table shows the units of service up to the capacity limits you can you use at no charge each during the offering period.

|Service  |Unit  |Maximum monthly usage at no charge  |
|---------|---------|---------|
|Prebuilt document processing     | Page        | 100        |
|Structured document processing   | Page        | 100        |
|Unstructured document processing | Page        | 100        |
|Content assembly                 | Document    | 50         |
|Image tagging                    | Image       | 2,500      |
|Taxonomy tagging                 | Document    | 50         |
|eSignature                       | Envelope    | 5          |
|Translation                      | Character   | 1 million  |
|Optical character recognition    | Page        | 2,500      |

Monthly usage over the limitations shown will be billed as described in [Pay-as-you-go services and pricing](syntex-pay-as-you-go-services.md).

For ideas about how you might use Syntex services in your organization, see [Scenarios and use cases for Microsoft Syntex](adoption-scenarios.md) and [Get started driving adoption of Microsoft Syntex](adoption-getstarted.md).


<!---
This article describes how to set up and run a trial pilot program to deploy Microsoft Syntex in your organization. It also recommends best practices for the trial.

## Sign up for a trial

The trial of Syntex gives access to 300 users for 30 days.

> [!NOTE]
> Up to 300 users are included in the trial to ensure the automatic addition of 1 million AI Builder credits. You do not have to include 300 users for a trial to succeed.

You can get the trial version from one of the following sources:

- The [Syntex product page](https://www.microsoft.com/microsoft-365/enterprise/sharepoint-syntex?activetab=pivot:overviewtab)

- The [Microsoft 365 admin center](https://admin.microsoft.com)
    1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com).
    2. Go to **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">**Purchase Services**</a>.
    3. Scroll down to the **Add-Ons** section.
    4. On the Syntex tile, select **Details**.
    5. Select **Start free trial**.
    6. To confirm the trial, follow the remaining wizard steps.

You must be a Microsoft 365 global administrator or billing administrator to activate a trial.

### Who should be involved in a trial

|Role|Activity|
|---|---|
|Microsoft 365 global admin or billing admin|Activate the trial and assign licenses|
|Microsoft 365 global admin or SharePoint admin|Configure Syntex and create content centers|
|Business users|Model building and testing|

### Before you activate a trial

To successfully plan a Syntex trial, consider the following factors:

- The most meaningful testing is completed on “real world” scenarios and data.
- You can only activate a Syntex trial once per tenant.

A test or demo tenant can be used as a “dry run” to walk through the activation steps and administrative controls. But it's probably best to evaluate model building on a production tenant.

To maximize the value of a trial on a production tenant, planning and business engagement are essential. You should engage one or more business areas to identify three to six use cases that could potentially be addressed by Syntex. These use cases should:

- Include scenarios that could be solved by using either a custom model or a prebuilt model.

- Have a clear understanding of the purpose for any extracted metadata; for example, view formatting or automation by using Power Automate. While Syntex is focused on classifying documents and extracting metadata, the value to quantify is what this metadata enables.

- Be based on a defined set of data; for example, specific SharePoint sites or libraries. A common misconception of Syntex is that general purpose models can be applied across all organization content. A more accurate view is that models are built to help solve specific business problems in targeted locations.

All of these use cases might not be a good fit for Syntex. The goal of a quality trial isn't to prove that Syntex will fit all the scenarios. Instead, the trial should help you better understand the value of the product.

For each of the planned use cases, identify users who are subject matter experts in the related content or process. The creation of Syntex models is focused on domain experts in the content, rather than on IT professionals or developer resources.

## Activate a trial

When you initiate a trial, you need to:

- Assign licenses to the relevant users.
- Perform [additional setup of Syntex](set-up-content-understanding.md).
  - You might want to [create more content centers](create-a-content-center.md).

After the trial is activated, you can create models and process files. See [guidance for model creation](create-a-content-center.md).

## During a trial

Trial periods are limited, so it's best to focus initially on whether Syntex models can classify documents and extract metadata for the defined use cases. After the trial period is over, you can evaluate how the metadata can be used.

## After a trial

Based on the outcome of the trial, you can decide whether to proceed to production use of Syntex.

### Proceed to production use

To ensure continuity of service, you need to purchase the required number of [licenses](syntex-licensing.md) and assign those licenses to users. Trial users who don't have a full license at the end of the trial period won't be able to fully use Syntex.

You might have to estimate your projected use of structured document processing or freeform document processing models, and plan for the expected number of AI Builder credits. For help, see [Estimate the AI Builder capacity that's right for you](https://powerapps.microsoft.com/ai-builder-calculator/).

### Don't proceed to production use

If you don't purchase licenses following the trial:

- You won't be able to create new models.

- Libraries that were running models will no longer automatically classify files or extract models.

- Any previously classified files or extracted metadata won't be affected.

- Content centers and any models in them won't be automatically deleted. These will remain available for use if you decide to purchase licenses in the future.

- Structured document processing or freeform document processing models will be stored in the Dataverse (formerly named Common Data Service (CDS)) instance of the default Power Platform environment. These could be used with future licensing for Syntex or with AI Builder capabilities in the Power Platform.

## See also

[Get started driving adoption of Microsoft Syntex](adoption-getstarted.md)

[Scenarios and use cases for Microsoft Syntex](adoption-scenarios.md)--->
