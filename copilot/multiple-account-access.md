---
title: "Multiple account access to Copilot for work and school documents"
description: "Learn about multiple account access to Copilot for work and school documents."
ms.author: danbrown
author: DHB-MSFT
manager: laurawi
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- privacy-microsoft365
- privacy-copilot
- m365copilot
- magic-ai-copilot
hideEdit: true
ms.date: 01/30/2025
---

# Multiple account access to Copilot for work and school documents

> [!NOTE]
> - Multiple account access to Copilot is currently disabled for all work and school documents. 
> - Multiple account access to Copilot will be enabled in March 2025 at the earliest.
> - In the meantime, there's a policy setting to turn it off ahead of time. For more information, see [Manage multiple account access to Copilot using Cloud Policy](#manage-multiple-account-access-to-copilot-using-cloud-policy).

## What is multiple account access to Copilot?

In Microsoft 365 apps that support signing in with multiple accounts (Word, Excel, PowerPoint, Outlook, and OneNote desktop and mobile apps), users can use their Copilot access from one account on documents from a different account.

Multiple account access to Copilot is currently disabled, but once enabled, your users may use Copilot on work documents without a Copilot license assigned from your organization.  

## Data protection

Copilot data protection is always based on the identity used to access the file. This ensures enterprise data protection for files in your organization, regardless of which account grants Copilot access.

The setting for [web grounding in Copilot](manage-public-web-access.md) is also based on the identity used to access the file. If you disable web grounding in Copilot for a user in your organization, that user isn't able to use web grounding even when using Copilot access from another account.

Users using multiple account access to Copilot on work and school documents also have limited access to Copilot as shown in the following table.

> [!NOTE]
> - The following table shows the Copilot capabilities available to your users when multiple account access is enabled.
> - As noted at the top of this article, multiple account access is currently disabled for all organizations for all work and school documents.
> - When multiple account access is disabled, if your user only has access to Copilot through an account outside of your organization, such as from a personal Microsoft 365 subscription, they can’t use Copilot on work or school documents.


| Copilot capability                                                                          | When multiple account access to Copilot is enabled | When the user has been assigned an internal Microsoft 365 Copilot license |
|---------------------------------------------------------------------------------------------|------------------------------------|----------------------------------------|
| Access the organization’s Microsoft Graph                                                   |No |Yes|
| Ask Copilot questions about the current open document and make Copilot assisted edits       |Yes|Yes|
| Ask Copilot questions about other documents that aren't the currently opened document      |No|Yes|
| Ask Copilot questions that can be answered through web searches ([if web search is enabled](manage-public-web-access.md))|Yes|Yes|
| Generate drafts by referencing specific documents the active user has access to                     |Yes|Yes|

## Manage multiple account access to Copilot using Cloud Policy

You can use the "Multiple account access to Copilot for work documents" policy setting to control whether your users can use multiple account access to Copilot on work and school documents. This policy only applies to Microsoft 365 apps that allow signing in with multiple accounts (Word, Excel, PowerPoint, Outlook, and OneNote desktop and mobile apps).

To configure this policy setting, you can use [Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy).

> [!NOTE]
> - The policy setting is available in Cloud Policy as of January 30, 2025.
> - Currently the policy setting is only available in English. But we’re working on making the localized versions available as soon as we can.

If you enable or don't configure this policy setting, your users can use Copilot on work and school documents with a Copilot license that is from outside your organization.

If you disable this policy setting, your users can't use Copilot on work and school documents with a Copilot license that is from outside your organization.

The end-user experience for blocked users viewing work and school documents is as follows:

- All on-canvas Copilot UX is removed, both on-canvas Copilot entry points and proactive features like Word summary.

- If the user is signed in with an account with Copilot, the Copilot button in the ribbon remains active. However, your users can't use any Copilot capabilities; clicking the button displays an error message indicating that multiple account access to Copilot is blocked.