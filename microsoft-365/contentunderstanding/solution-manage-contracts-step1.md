---
title: "Manage contracts in Microsoft 365"
ms.author: chuckedmonson
author: chucked
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to manage contracts using a Microsoft 365 solution."
---

# Step 1: Use SharePoint Syntex to identify contract files and extract data

A key business issue we identified is that we need a way to identify and classify all contract documents from the numerous files we receive. We also want to be able to be able to quickly view several key elements in each of the contract files we identify (for example, <i>Client</i>, <i>Contractor</i>, and <i>Fee amount</i>). We can do this by using [SharePoint Syntex](https://docs.microsoft.com/microsoft-365/contentunderstanding/) to create a document understanding model and applying it to a document library.

[Document understanding](https://docs.microsoft.com/microsoft-365/contentunderstanding/document-understanding-overview) uses artificial intelligence (AI) models to automate classification of files and extraction of information. Document understanding models are also optimal in extracting information from unstructured and semi-structured documents where the information you need is not contained in tables or forms, such as contracts.

1. First, you need to find at least five example files that we can use to "train" the model to search for characteristics that are specific to the content type we are trying to identify (a contract). 

2. Using SharePoint Syntex, create a new document understanding model. Using your example files, you need to [create a classifier](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-classifier). By training the classifier with your example files, you teach it to search for characteristics that are specific to what you would see in your company's contracts. For example, [create an "explanation"](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-a-classifier#create-an-explanation) that searches for specific strings that are in your contracts, such as <i>Service Agreement</i>, <i>Terms of Agreement</i>, and <i>Compensation</i>. You can even train your explanation to look for these strings in specific sections of the document, or located next to other strings. When you think you have trained your classifier with the information it needs, you can test your model on a sample set of example files to see how efficient it is. After testing, if needed you can choose to make changes to your explanations to make them more efficient. 
2. In your model, you can [create an extractor](https://docs.microsoft.com/microsoft-365/contentunderstanding/create-an-extractor) to pull out specific pieces of data from each contract. For example, for each contract, the information we are most concerned about is who the client is, the name of the contractor, and the total cost.
3. After you successfully create your model, [apply it to a SharePoint document library](https://docs.microsoft.com/microsoft-365/contentunderstanding/apply-a-model). As you upload documents to the document library, your document understanding model will run and will identify and classify all files that match the contracts content type you defined in your model. All files that are classified as contracts will display in a custom library view, and will also display the values from each contract that you defined in your extractor.

     ![Contracts in document library](../media/content-understanding/doc-lib-solution.png)</br> 

5. Additionally, if you have retention requirements for your contracts, you can use your model to also [apply a retention label](https://docs.microsoft.com/microsoft-365/contentunderstanding/apply-a-retention-label-to-a-model) that will prevent your contracts from being deleted for a specified period of time.
