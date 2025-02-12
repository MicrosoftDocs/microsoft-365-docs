---
title: "Understand Copilot Prompt Gallery"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 12/03/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: "Learn about the Copilot Prompt Gallery and how it works with your organization."
---

# Understand Copilot Prompt Gallery - admin guide

Copilot Prompt Gallery is a resource of Microsoft-created prompts, videos, and articles that help users understand and use Microsoft Copilot effectively. Copilot Prompt Gallery is available within Microsoft Copilot and online at [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts).

As an admin, you can support Copilot Prompt Gallery adoption and success within your organization. This article covers Copilot Prompt Gallery architecture, data flows, security, and privacy.

## Overview

:::image type="content" source="media/prompt-gallery-overview.png" alt-text="Screenshot showing the prompts available to try in Copilot Prompt Gallery." lightbox="media/prompt-gallery-overview.png":::

Copilot Prompt Gallery is a comprehensive repository that provides users with access to a catalog of Copilot prompts. The catalog includes prompts created by Microsoft that highlight key scenarios and capabilities of Microsoft Copilot, designed to help users become proficient in using Copilot to accomplish their tasks.

Copilot Prompt Gallery features videos and articles to help users get started with Copilot and maximize productivity through effective prompting. Users can save and share successful prompts, facilitating collaboration and knowledge sharing within the organization.

Each suggested prompt in the prompt Gallery includes additional information about how to personalize it and ways to extend the prompt for even more value. This makes Copilot Prompt Gallery a single resource to help your users use Copilot with ease and proficiency.

## Data flow and compliance

Copilot Prompt Gallery processes and manages data in a structured manner to ensure compliance and security. The following are key data flows and compliance considerations:

:::image type="content" source="media/copilot-prompt-gallery-diagram.png" alt-text="Diagram showing the data flow for Copilot Prompt Gallery." lightbox="media/copilot-prompt-gallery-diagram.png":::

Copilot Prompt Gallery is both a website and a feature of Copilot that allows users to discover, manage, use, and share Copilot prompts:

1. A user accesses Copilot Prompt Gallery, either via the Copilot Prompt Gallery website or in Copilot through an app.
2. Copilot Prompt Gallery accesses Microsoft-authored prompts from the public catalog.
3. Copilot Prompt Gallery accesses user-created prompts from user, group, and tenant collections in the Microsoft 365 Substrate data store.

The prompts are stored in collections within the Substrate Data Store, which is a storage type that allows applications to store files and data and enables efficient indexing and search. There are collections for users, groups, and tenants, all of which are within the tenant boundary. All data is encrypted, transported via a secure pipeline, and is accessible only via Substrate APIs.

## Related content

- [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts)
- [Microsoft Copilot help & learning](https://support.microsoft.com/copilot-skilling)
- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
