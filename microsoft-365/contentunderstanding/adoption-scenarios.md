---
title: "Scenarios and use cases for Microsoft SharePoint Syntex"
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: laurieellis
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
description: "Find scenarios about how to use SharePoint Syntex in your organization."
---

# Scenarios and use cases for Microsoft SharePoint Syntex

Use the following example scenarios to prompt ideas about how you can use SharePoint Syntex in your organization.

- [Scenario: Track data from invoices with form processing](scenario-track-data-from-invoices-with-form-processing.md)

## Scenario: Track data from invoices with form processing

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
- Reduce potential errors and ensure better compliance by using workflows to check invoices and notify you of any issues.

## Scenario: Track information from contracts with document understanding

As another example, you can set up a process to identify contracts your company has with other companies or individuals. Set up a model to extract key information from those contracts, such as the client name, fees, dates, or other important information, and add the information to the library as fields you can quickly view. Apply a retention label on the document library to ensure that contracts can't be deleted before a specific length of time for appropriate compliance with your business regulations.

1. Start at the content center and create a new document understanding model for contracts.
1. Upload sample documents for positive and negative examples, then run the training to identify contract documents and review the results.
1. Train the extractor to identify fields in the contracts, such as the client name, fee, and date, and then test the extractor.
1. When the model is complete, apply the model to a library where you can upload contracts.
1. Apply a retention label to the date field, so that contracts are retained in the library for the required length of time.

![Track and monitor contracts with SharePoint Syntex and retention labels](../media/content-understanding/process-contracts-flow.png)

When you automate this scenario, you can:

- Save time and money by automatically extracting data from the contracts instead of doing it manually.
- Ensure better compliance by using retention labels to ensure that the contracts are retained appropriately.

## Scenario: Avoid risk with records management, document governance, and compliance processes based on SharePoint Syntex

Reducing risks is a common goal for most companies. You might need:

- A better way to provide/enforce information governance across your tenant.
- To improve the system for classification of documents, emails and other forms of communication considered ‘records’ for projects.
- To audit receipts, contracts, and so on, to ensure compliance with company policies.
- To ensure that projects have all the documentation required for compliance.

Set up some processes for compliance with SharePoint Syntex to capture and appropriately classify, audit, and flag documents and forms that need better governance. You can rely on SharePoint Syntex to auto classify content rather than relying on end users to manually tag, or the compliance team to manually apply governance rules and archiving. And you can enable a simplified search experience, manage data volumes, apply records management and retention policies, ensure compliance, and best practice archiving and purging practices.

When you automate this scenario, you can feel secure that:

- Compliance is upheld and risk is reduced.
- Taxonomy and records management is consistently and accurately applied.
- Content volumes are controlled.
- Employees can easily discover the right information in the right context.

## Scenario: Capture information from previously inaccessible documents

Most organizations have large repositories of legal documents, policies, contracts, HR documents, and governance guidelines. Mine these data stores to extract valuable information such as: projects, sectors, themes, people, geographical areas, and so on.

For example, an HR director needs to quickly access all HR documents – including resumes, HR policies, and other forms. And they want to quickly identify necessary information from resumes and other HR-related documents without manually sifting through the documents. They’re looking for a solution that allows them to quickly find the information they need without having to manually look through thousands of resumes, HR policies, and other documentation that may be spread across several sites.

When you automate this scenario, you can:

- Unlock knowledge from digital content.
- Classify HR policies, resumes, sales documents, technical blueprints, account plans and extract information.
- Quickly find the correct information or document that you’re looking for.
- Get instant access to the latest information.
- Reduce search times.

## Scenario: Improve data processing to provide insights & analytics

For example, a pharmaceutical company could use SharePoint Syntex to extract information from FDA documents to answer questions that their leaders have. Having the answers more easily accessible can reduce the time needed to produce these answers and increase the availability of data to generate more accurate answers to leadership questions.

For example, a project manager needs to quickly provide answers to product-related questions from my leadership team. They need to find information and metrics related to queries in one consolidated dashboard. They’re looking for a solution that extracts the information they need from product labels, product pamphlets, and other materials and generates a consolidated report that they can use when reporting back to their leadership team.

When you automate this scenario, you can:

- Reduce time to produce answers.
- Increase availability of data.
- Provide more accurate answers.

## Scenario: Automate order processing

With SharePoint Syntex, you can reduce the time of manual processing of customer orders. For example, you can upload orders from fax, email, or paper into SharePoint by using OCR processing and then extract the metadata from those orders so you can fulfill them by using automated processes.

For example, a supply chain manager wants to reduce errors caused by manual data entry. They want to avoid manual review and data entry of inbound customer orders (paper, fax, or e-mail) to reduce errors going into their business systems. They want a solution that applies AI and machine learning techniques to validate incoming order information, extract core data and automatically push it into their ERP system, for order fulfillment and reconciliation.

When you automate this scenario, you can ensure that:

- Order and shipment accuracy increases.
- Fees or penalties associated to order or shipment errors are reduced.
- Delays in invoicing or payments decrease.
- Personnel costs are reduced.

## Scenario: Simplify visa renewal process

SharePoint Syntex can help you automate reminders and renewals for key contract information. For example, an HR director needs to ensure that employees’ visas are up to date and/or renewed on time. They want to give people a simple and intuitive process for updating their Visas. They need a solution that extracts renewal dates from contracts and automatically sends employees reminders when their renewal dates are approaching.

When you automate this scenario, you can ensure that:

- The levels of non-compliance are reduced.
- The number of manual reminders is reduced.
- The number of fines for non-compliance is reduced.

## See also

[Microsoft SharePoint Syntex adoption: Get started](adoption-getstarted.md)