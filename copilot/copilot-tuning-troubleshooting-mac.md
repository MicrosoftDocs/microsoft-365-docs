---
title: "Troubleshoot the Microsoft 365 Admin Center task fine-tuning"
f1.keywords:
ms.author: emrek
author: emrekiciman
manager: calvind
ms.date: 07/17/2025
audience: Admin
ms.topic: troubleshooting
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
description: Find information about how to troubleshoot issues with the Microsoft 365 admin center when using Copilot Tuning to fine-tune models.
---

# Troubleshoot the Microsoft 365 admin center task fine-tuning

This article describes some of the most common issues with Copilot Tuning in the Microsoft 365 admin center and how to troubleshoot those issues.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## I don't see Copilot Tuning in the admin center settings

If you don't see Copilot tuning in the admin center, make sure you have the required prerequisites in place:

- You must have an AI Admin role.
- Your tenant must have at least 5,000 Microsoft 365 Copilot add-on licenses.
- You must accept the Early Access Preview (EAP) terms to enable the feature.

## Setup is taking more than 5 minutes

If the setup takes more than 5 minutes, it might be due to service failures or other issues. If the setup isn't completed within an hour, reach out to your Microsoft EAP contact.

## I accidentally deleted a model

If a model is deleted, it can't be recovered. Make sure you have the correct permissions and take necessary precautions to avoid deleting a model accidentally.

## Insufficient training data

If the training data is insufficient, you get an error message. Make sure you have enough training data after filtering.

## While completing the configuration, I get an error message

If you see an error message during the configuration, retry the process after some time. It might be due to service outages or other temporary issues.

## Errors related to knowledge sources

If you enter a link to a knowledge source you don't have access to, an error message is displayed. Make sure you have access to the required knowledge sources.

## Validation fails during the training process

If the validation fails, make sure all required fields are filled. If you ask seven questions, all seven must be answered.

## Security group coverage issues

If the selected security groups don't have access to the required knowledge sources, choose a suggested set of security groups to share with. Make sure permissions are correctly set, and wait for them to sync.

### Related content

- [Copilot Tuning admin guide](copilot-tuning-admin-guide.md)
- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
- [Copilot Tuning FAQ](copilot-tuning-faq.yml)



