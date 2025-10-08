---
title: "Troubleshoot Copilot Tuning document generation"
f1.keywords:
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 06/17/2025
ms.update-cycle: 180-days
ms.topic: troubleshooting
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
- operations-pod
description: Find information about how to troubleshoot Copilot Tuning document generation.
---

# Troubleshoot Copilot Tuning document generation

This article describes some of the most common issues with the Microsoft 365 Copilot Tuning document generation process and how to troubleshoot them.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## I'm unable to locate the correct SharePoint site for my knowledge sources

If you can't find the SharePoint site that contains the files you need 4, contact your IT administrator. You might need permission to view those files.

## Preparation steps are taking too long

Sometimes, service queues might experience delays that affect document processing times. In addition, resume processing might delay in updating the UI, making the issue appear unresolved. If the preparation process takes over 10 minutes to complete, try refreshing the page. Otherwise, check for potential errors in the processing logs.

## I'm seeing an error during the data extraction process

If an error occurs during knowledge source extraction, click the **Models** link on the left navigation pane to view the list of files in your model. Check the status in the right column to identify errors in copying SharePoint data into Heron.

## The Excel file is empty, and I can't label any data

Verify whether you are configuring the knowledge sources correctly and uploading a clean Excel file again. If the problem persists, contact the team for assistance.

## The evaluation report for the model is negative

Improve the model instructions iteratively to prevent common errors in tenant document generation or summarization models. To improve accuracy, add more data, fix labeling issues, or address data setup problems.

## I'm encountering issues when trying to upload my labels

To resolve this issue:

1.  Download a clean Excel file from the current application state.
2.  Correct the sheet.
3.  Retry uploading the file.

## Formatting or validity issue with the final Word document

Improve the model instructions to prevent common errors in tenant document generation or summarization models. Add more guardrails to help prevent tenant-specific formatting issues.

## Generated documents differ from the training data

Check the format of the input data to ensure that it matches the data used during model training.

If you need support or want to provide feedback, see [Copilot Tuning FAQ](copilot-tuning-faq.yml).

## Related Content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
