---
title: "Microsoft SharePoint Syntex adoption: Get started"
description: "Learn how to use and implement SharePoint Syntex in your organization to help you solve your business problems."
ms.author: samanro
author: samanro
manager: pamgreen
ms.date: 7/20/2020
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.custom: Adopt
search.appverid: 
localization_priority: Normal
---

# Microsoft SharePoint Syntex adoption: Get started

Think of the intelligent content services available in SharePoint Syntex as having three parts:

- **Content understanding:** create no-code AI models to classify and extract information from content to automatically apply metadata for knowledge discovery and reuse. Learn more about [content understanding](document-understanding-overview.md).
- **Content processing:** Automate capture, ingestion and categorization of content and streamline content-centric processes using Power Automate. Learn more about [content processing](form-processing-overview.md).
- **Content compliance:** Control and manage content to improve security and governance with integration to Microsoft Information Protection.

With new AI services and capabilities, you can build content understanding and classification apps directly into the content management flow using SharePoint Syntex. There are two different ways of understanding your content. The model type you use is based on file format and use case:

| Form processing | Document understanding |
|:-------|:-------|
| Created from document library. | Created in the content center, part of SharePoint Syntex. |
| Model created in AI builder. | Model created in native interface. |
| Used for semi-structured file formats. | Used for unstructured file formats. |
| Settable classifier. | Trainable classifier with optional extractors. |
| Restricted to a single library. | Can be applied to multiple libraries. |
| Train on PDF, JPG, PNG format, total 50 MB/500 pp. | Train on 5-10 PDF, Office, or email files, including negative examples. |

The following table explains availability and licensing for SharePoint Syntex:

| Form processing | Document understanding |
|:-------|:-------|
| Form processing relies on Power Platform. <br>For information about global availability for Power Platform and AI Builder, see [Power Platform availability](https://dynamics.microsoft.com/geographic-availability/). | Available in all regions. |
| Uses AI Builder credits.<br>Credits can be purchased in batches of 1M.<br>1M credits are included when 300+ SharePoint Syntex licenses are purchased.<br>1M credits will allow processing of 2000 file pages. | Models work on all latin alphabet languages. In addition to English: German, Swedish, French, Spanish, Italian, and Portuguese. |
| Provisioned against the default common data service environment. | Does not have capacity restrictions. |

For more information about AI Builder credits and units, see [AI Builder licensing](https://docs.microsoft.com/ai-builder/administer-licensing).

SharePoint Syntex integrates with Microsoft 365 compliance features like:

- Retention labels that define records policy based on document age or external events.
- Sensitivity labels that set DLP, encryption, sharing, and conditional access policies.

Users can apply labels, or they can be applied automatically by SharePoint Syntex AI models. Analytics and file plans provide scaled management of label usage and policies.

## Identify pilot business scenarios to optimize

To prepare for using SharePoint Syntex in your organization, you first need to understand the scenarios in which it will be useful. The why helps determine what model will be needed, and how to structure your org based on where the model will be applied. Here are a few scenarios where document understanding can help your organization:

- Content processing: Process contracts, statements of work, and other form-like documents. Intake the forms, train the model to understand and map the fields, and then run your forms through to automatically collect the data. For more information, see [Form processing overview](form-processing-overview.md).
- Invoice analysis: Pull out the relevant details from your invoices and make sure they're complying with policy or are being processed appropriately.

Think about ways that SharePoint Syntex can help your organization:

- Automate business processes
- Improve search accuracy
- Manage compliance risk

### Form processing scenario example

For example, you can set up a process using SharePoint Syntex and Power Automate features to track and monitor invoices.

1. Set up a library to store the invoice documents.
1. Train the model to recognize fields in the documents.
1. Extract the fields you want to track into a list.
1. Set up a flow to notify you for specific events, such as:
    - A new invoice is added.
    - An invoice is past its due date.
    - An invoice is for an amount that's larger than your automatic approval amount.

![Track and monitor invoices with SharePoint Syntex and Power Automate](../media/content-understanding/process-invoices-flow.png)

When you automate this scenario, you can:

- Save time and money by automatically extracting data from the invoices instead of doing it manually.
- Reduce potential errors and ensure better compliance by using workflows to act on the invoices and notify you of any issues.

### Document understanding scenario example

As another example, you can set up a process to identify contracts that your company has with other companies or individuals. You can set up a model to extract key information from those contracts, such as the client name, fees, dates, or other important information, and add that to the library as fields you can quickly view. And you can apply a retention label on the document library to ensure that contracts cannot be deleted before a specific length of time for appropriate compliance with your business regulations.

1. Start at the content center and create a new document understanding model for contracts.
1. Upload sample documents for positive and negative examples, then run the training to identify contract documents and review the results.
1. Train the extractor to identify fields in the contracts, such as the client name, fee, and date, and then test the extractor.
1. When the model is complete, apply the model to a library where you can upload contracts.
1. Apply a retention label to the date field, so that contracts are retained in the library for the length of time your organization requires for contracts.

![Track and monitor contracts with SharePoint Syntex and retention labels](../media/content-understanding/process-contracts-flow.png)

When you automate this scenario, you can:

- Save time and money by automatically extracting data from the contracts instead of doing it manually.
- Ensure better compliance by using retention labels to ensure that the contracts are retained appropriately.

### Tips for identifying scenarios

When thinking about which business scenarios to consider, ask yourself the following questions:

- Does it solve a real problem?
- Will it be widely used or have broad impact?
- Is it obtainable?
- Can you measure success?

Prioritize scenarios based on impact and ease of implementation. Make your initial focus area higher impact scenarios that can also be easily implemented. De-prioritize lower impact scenarios that are hard to implement.

## Identify roles & responsibilities

Determine who in your organization will build and manage the models? The following roles might be involved:

| SharePoint/Knowledge admin | Power Platform admin | Knowledge manager | Model owner |
|:-------|:-------|:-------|:-------|
| AAD role| ADD role | AAD role | Champions |
| Configure form processing | Configure Common data service environment for form processing | Gather use cases | Gather business use cases |
| Manage content centers and permissions| Purchase and allocate AIB credits | Establish best practices and review model analytics | Create and apply models |

Knowledge manager, Business Process Owner and Content model owner create sample models and champion adoption in the organization.
Others who may be involved: Compliance admin, Taxonomy managers.

Where will they build and apply the models? Are there existing processes or repositories that could be enhanced?

- Form processing: Decide which sites will get Form processing action.
- Document understanding: You can create multiple content centers for different business areas.

## Strategic positioning

Work with stakeholders to make sure they are aligned on the strategy for using SharePoint Syntex. Research and provide the following resources to help with this positioning:

- Business outcomes:
  - Potential fiscal outcomes
  - Potential agility outcomes
  - Business outcome template
- Stakeholders/Exec sponsor buy-in/alignment
  - Business case decks
  - Financial models
  - Company readiness - culture

## Identify stakeholders

Identify the stakeholders for your project.

|Role |Responsibilities |Department |
|:-------|:-------|:--------|
| Executive sponsor(s)   | Communicate high-level vision and values to the company   |  Executive leadership   |
| Project lead(s) | Oversee the entire launch execution and rollout process | Project management |
| Knowledge administrators| Create and manage the content centers | IT or other department|
| Content managers and model owners| Gather use cases and create and apply models | Any department|
| Champions | Help evangelize and manage objection handling | Any department (staff) |
| Tenant administrator | Configure tenant-level settings | IT department|
| Power Platform administrator| Configure common data services environment | IT department|

> [!Note]
> Though we recommend having each of these roles fulfilled throughout your rollout, you may find that you don't require them all to get started with your identified solution.

## Readiness checklist

To get ready for implementing SharePoint Syntex, you need to:

![Readiness for Content Understanding](../media/content-understanding/cu-adoption-readinesschecklist.png)

1. Plan the end state
    - Document understanding models are the means, not the end.
    - Plan for harnessing the value of extracted metadata with:
      - Search
      - Filtering and view formatting
      - Compliance
      - Automation
2. Identify
    - Understand existing information architecture and content management feature use​.
    - Are any existing content types good candidates for models​?
    - What existing processes would be improved by metadata​?
3. Design
    - Design your approach to information architecture, managed metadata and content types​
    - Design the process for definition, creation, management​.

## Engage your organization

1. Identify stake holders, confirm scenarios, and develop project plan.
1. Configure settings and apply licenses.
1. Begin awareness and training – Recruit Champions.
1. Roll out in stages.  
1. Gather feedback and iterate.
1. As usage grows plan for any AI Builder credits as needed.
