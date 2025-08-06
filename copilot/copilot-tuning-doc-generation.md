---
title: Configure Copilot Tuning for document generation
author: jasonjoh
ms.author: jasonjoh
manager: calvind
ms.audience: ITPro
ms.reviewer: jwolk
ms.date: 07/17/2025
ms.topic: how-to
ms.localizationpriority: medium
description: Learn how to use Copilot Tuning to build an AI model for document generation based on organizational knowledge.
---

# Configure Copilot Tuning for document generation

<!-- cSpell:ignore calvind jwolk -->

Initial drafts of new documents can be generated using a custom document generation model trained with Copilot Tuning. Copilot Tuning document generation models use an original input document and specified changes to create a draft of output file.

Document generation works best when the drafting process follows recognizable patterns and requires incorporating consistent modifications across similar types of documents. This approach streamlines the creation of first drafts, reducing manual editing time and promoting consistency across your documents.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

Some example use cases include:

- Human resources – Generate new job listings matching your organization's tone and structure based on existing job listing templates and information about new jobs.
- Legal – Draft recurring contracts quickly and consistently based on previous contracts and new or updated contract terms.
- Compliance – Create new compliance forms based on an approved form template and information tailored to new clients, deals, or jurisdictions.
- Procurement – Create draft purchase orders using previous purchase orders and information about new purchases.
- Documentation – Draft new product or feature docs based on existing documentation templates and information about new products or features.

## Prerequisites

- You must have permission to use Copilot Tuning in Copilot Studio. <!-- TODO: Link to permission doc here if it exists -->
- A collection of original documents and corresponding final draft documents that are stored in SharePoint.
- A collection of changelogs or specifications stored in SharePoint.
- A structured version of required changes to provide in the supplementary field within Copilot Tuning.
- More than 20 well-aligned pairs of reference documents to target pairs that reflect a representative range of changes you expect the system to handle.

> [!IMPORTANT]
> Document generation supports working with the following file formats: .doc, .docx, .html, .md, or .pdf. Copilot Tuning only uses information found in text. Copilot Tuning document generation doesn't use information in images, tables, or unstructured web content in your documents.

## Create a document generation model

The following are the high-level steps to configure a custom document generation model using Copilot Tuning.

> [!div class="checklist"]
>
> - [Prepare a mapping file](#prepare-a-mapping-file) to identify pairings of original files and final draft files in the training data
> - [Customize the model](#customize-the-model)
> - [Select security groups](#review-copilot-tuning-acl-analysis)
> - [Label training data](#label-training-data)
> - [Train the model and evaluate results](#train-and-evaluate-results)
> - [Publish the model](#publish-the-model)

### Prepare a mapping file

Your knowledge source should have more than 20 example pairs of original files and corresponding final (draft) files. In this step, you prepare a CSV file that provides more than 20 examples of original files to final (draft) documents. Copilot Tuning uses these examples to fine-tune the generation logic, helping the model learn how your organization typically edits or adapts documents.

Create a file named **mapping.csv** and store it in the root directory of your knowledge source. This file should have two columns:

- The first column is named `precedent` and contains the path to an original file in the data source.
- The second column is named `target` and contains the path to the final draft file in the data source that was created using the original file as a basis.

```CSV
precedent,target
"https://contoso.sharepoint.com/sites/ProductSpecs/Shared%20Documents/Mark-8-FAQ.docx", "https://contoso.sharepoint.com/sites/ProductSpecs/Shared%20Documents/mark-8-faq.md"
```

### Customize the model

To customize the model:

1. Open [Copilot Studio](https://copilotstudio.microsoft.com) in your browser. In the left-hand navigation bar, select the ellipses (**...**), and then select **Copilot Tuning**.
1. Select **Create new**.
1. Enter a name for your model and provide a description of what the model does. Ensure that the model name and description are user-friendly and clearly describe the purpose of the model.
1. Select **Add knowledge** to select the SharePoint location that contains your training data.
1. Under **Permissions** you can enter security groups or email addresses of the individuals who should be able to use this model. Copilot Tuning ensures that any knowledge that isn't accessible by these selected security groups is filtered out. If you don't explicitly give permissions, the model is only accessible to you.
1. Set the task type to **Document generation**.
1. Provide **Model Instructions** about your scenario. Instructions ensure Copilot Tuning is using the terminology your organization uses and evaluates your models output using the criteria one of your users would use to evaluate the document. It's important to accurately answer these questions because this information cues the system how to interpret the underlying data.
1. Select **Prepare labeling data**.

Copilot Tuning begins analyzing the ACLs of the training documents. Based on the size of your dataset, this step might take up to 24 hours. Copilot Tuning sends you an email when it's ready for you to go to the next step in the model creation process. In the meanwhile, you can check the status of the model from the Copilot Tuning landing page.

### Review Copilot Tuning ACL analysis

Copilot Tuning analyzes the document access control lists (ACLs) of the training documents and then filters out any knowledge that isn't accessible to the security groups selected in the previous step. Copilot Tuning might suggest more security groups based on its analysis to ensure access to the training data.

Based on the size of your dataset, this step might take up to 24 hours. Copilot Tuning sends you an email when it's ready for you to go to the next step in the model creation process. In the meanwhile, you can check the status of the model from the Copilot Tuning landing page.

### Label training data

Preparing high-quality datasets for fine-tuning can be time-consuming and often requires multiple iterations and input from data scientists. Copilot Tuning simplifies this process by automatically identifying which of your provided document pairs are most effective for fine-tuning. This learning process is iterative, and at times, Copilot Tuning might send an email asking you to label files to improve its understanding of what constitutes a high-quality target. When you receive an email indicating that data is ready for labeling, follow these steps to complete the process.

1. Open [Copilot Studio](https://copilotstudio.microsoft.com) in your browser. In the left-hand navigation bar, select the ellipses (**...**), and then select **Copilot Tuning**.
1. Select the model that is ready for labeling to open the labeling form.
1. The labeling form provides sample documents that Copilot Tuning identified as example final draft documents. Examine each document and label whether or not you think the document is a good example draft document. Once you label all of the documents, submit the labeling form.

Copilot Tuning continues preparing the training data based on your input. Based on the size of your dataset, this step might take up to 24 hours. You can return to the Copilot Tuning landing page and see the status of your model configuration. Your model configuration might ask you to label more data, might be processing the data in your knowledge source, or it might be ready to fine-tune the model. Copilot Tuning sends you an email when it's ready for you to go to the next step in the model creation process.

### Train and evaluate results

When sufficient data is prepared by Copilot Tuning, you can proceed with training the model. Fine-tuning of your model occurs in Azure AI Foundry. After the model is fine-tuned, Copilot Tuning generates results that you can review to evaluate if the model is of sufficient quality to deploy.

1. Open [Copilot Studio](https://copilotstudio.microsoft.com) in your browser. In the left-hand navigation bar, select the ellipses (**...**), and then select **Copilot Tuning**.
1. Select the model that is ready for training to open the model configuration dialog form.
1. Select **Start model training** to begin fine-tuning of your custom model.

Based on the size of your dataset, the fine-tuning step might take up to 24 hours. You can return to the Copilot Tuning landing page and see the status of your model.

If the results don't meet your expectations, you can go to the previous steps in the flow to add more data sources, adjust the model instructions, or provide more samples in your mapping file. Retrain the model until document generation results meet expectations.

### Publish the model

When the model generates results that meet your quality standards, you can publish the model through the Copilot Tuning interface. Publish the model by selecting the **Publish model** button. The model is deployed to an isolated and secured environment. It's only accessible to the security groups or users that were selected during model customization.

## Related content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
- [Microsoft 365 Copilot Tuning FAQ](copilot-tuning-faq.yml)
- [Create declarative agents with Copilot Studio agent builder and Microsoft 365 Copilot Tuning models](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-tuned-models).
- [Troubleshooting document generation models](copilot-tuning-troubleshooting-doc-generation.md).
