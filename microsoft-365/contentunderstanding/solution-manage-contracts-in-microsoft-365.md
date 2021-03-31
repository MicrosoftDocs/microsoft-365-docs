---
title: "Solution - Manage contracts in Microsoft 365"
ms.author: efrene
author: efrene
manager: pamgreen
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to manage contracts using a Microsoft 365 solution."
---

# Solution - Manage contracts in Microsoft 365

This article describes how to create a contracts management solution with components of Microsoft 365. Our hope is that it provides you with a framework to help you plan and create a solution that fits your unique business needs. Even if this solution does not suit your business needs as a whole, we hope that there are parts of it that you can adopt in your planning to create you custom contract management solution.

## The business problem

The first step in planning your contract management system is understanding the problem you are trying to solve. For our solution, we can define three key issues that need to be addressed:

- Need a way of identifying contracts: Many organizations work with a number of documents – invoices, contracts, statements of work, etc.  Some are digital assets sent in via email, and some are paper assets sent in via traditional mail. We need a way to identify all customer contracts from all other documents, and then classifying them as such.
- Need a site to manage contract approvals: The organization needs to set up a collaborative site in which all required stakeholders can easily review contracts. Stakeholders should be able to review the whole contract if needed, but mostly care about seeing several key fields from each contract (for example, customer name, PO number, and total cost). The goal is for stakeholders to easily approve or reject incoming contracts.

- Need a way to route reviewed contracts: Approved and rejected contracts need to be routed through a specific workflow. Approved contracts need to be routed to a third-party app for payment processing.  Rejected contracts need to be routed for additional review.

## Overview of the solution

This contract management solution guidance includes three Microsoft 365 components:

- Microsoft SharePoint Syntex: Create models to identify and classify your contract files and then extract the appropriate data from them.

- Microsoft Teams: Use the functionality of a Teams site and associated channels to allow your stakeholders to review and manage contracts.

- Power Automate: Use flows to process contracts through the approval process, and then to a 3rd party application for payment.


### Apply the model to files already in the document library

While an applied model will process all files uploaded to the document library after it is applied, you can also do the following to run the model on files that already existed in the document library prior to the model being applied:

1. In your document library, select the files that you want to be processed by your model.
2. After selecting your files, **Classify and extract** will appear in the document library ribbon. Select **Classify and extract**.
3. The files you selected will be added to the queue to be processed.

      ![Classify and extract](../media/content-understanding/extract-classify.png)</br> 





## See Also
[Create a classifier](create-a-classifier.md)</br>
[Create an extractor](create-an-extractor.md)</br>
[Document Understanding overview](document-understanding-overview.md)</br>
[Create a form processing model](create-a-form-processing-model.md)  




