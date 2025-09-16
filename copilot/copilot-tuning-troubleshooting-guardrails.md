---
title: "Troubleshoot Copilot Tuning guardrails"
f1.keywords:
ms.author: kwekua
author: kwekuako
manager: dansimp
ms.date: 06/17/2025
ms.update-cycle: 180-days
ms.topic: troubleshooting
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
- operations-pod
description: Find information about how to troubleshoot Copilot Tuning guardrails.
---

# Troubleshoot Copilot Tuning guardrails

This article describes some of the most common issues with Microsoft 365 Copilot Tuning guardrails and how to troubleshoot them.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## System crashed, froze, or became unresponsive

Contact Microsoft support or your IT administrator—this is a technical problem that the user can't fix.

## I get an error message when processing guardrails

If it's an AI model error (for example, Language Model API error), retry the analysis. If the error persists, retry and if that fails, contact Microsoft support or your IT administrator.

## Guardrails are not flagging critical errors

Broaden the criteria in the guardrails rules. Add additional rules for key issues.

## Guardrails are flagging false positives

Refine the criteria in the guardrails rules by following these steps:

1. Make sure that you use precise language and detailed conditions in your rules.
2. Include examples and illustrative content for clarity.
3. Use AND and OR grouping for conditions within rules to make them more relevant to different types of audiences.

## Duplicate alerts for the same issue

Adjust the frequency and sensitivity. Test guardrails rules thoroughly before you deploy them. Consider testing the guardrails in test environments.

## I need to broaden the criteria

To broaden the criteria, follow these steps:

   1. Identify key issues.
   2. Add rules that are specific to those concerns.
   3. Test rules before deploying to production to ensure accuracy.

## I need to handle duplicates

To handle duplicates effectively, follow these steps:

  1. Identify overlapping conditions across rules.
  2. Consolidate rules where possible to minimize overlap.
  3. Configure threshold to control the sensitivity of flags or alerts when available.

## Related content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)

If you need support or want to provide feedback, see [Copilot Tuning FAQ](copilot-tuning-faq.yml).
