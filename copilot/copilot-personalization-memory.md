---
title: Microsoft 365 Copilot personalization and memory
description: This article details how to use the personalization and memory settings in Microsoft 365 Copilot
ms.date: 11/18/2025
ms.service: microsoft-365-copilot
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: scotv
ms.collection:
- m365copilot
- magic-ai-copilot
---

# Copilot personalization and memory

> [!IMPORTANT]
> Copilot personalization and memory are in preview and subject to change. For more information about the Frontier program, see [What is Frontier?](https://support.microsoft.com/topic/what-is-frontier-17c671e0-1906-4d9d-892c-68e11fbff4c7).

## Does Copilot personalization and memory require additional licensing?  

No, Copilot memory is available to Copilot Chat users with and without a Microsoft 365 Copilot license. For more information, see [Which Copilot is right for me or my organization?](/copilot/microsoft-365/which-copilot-for-your-organization).

## How can tenant administrators manage Copilot memory?

Enhanced personalization is the control that allows Copilot memory to be used by end-users. By default, Enhanced personalization is turned on. For more information, see [Microsoft 365 Copilot enhanced personalization control](/graph/control-enhanced-personalization-privacy). To configure the control programmatically via Microsoft Graph, a tenant administrator can write a script using Microsoft Graph. For more information, see [enhancedPersonalizationSetting resource type in Microsoft Graph](/graph/api/resources/enhancedpersonalizationsetting).

End-users that have the Enhanced personalization control turned off see the user-level controls for Custom instructions, Saved memories, and Chat history in **Settings > Personalization** as turned off. They can't turn on these settings. For more information on end-user controls, see **[Get started with personalizing what Microsoft 365 Copilot remembers](https://support.microsoft.com/topic/b3231eae-9e60-4b3c-ac58-81fddbe56279)**.

No action is required to turn on Copilot memory; you only need to turn off Copilot memory for end-users or the tenant if desired.

## Where are memories stored?

Memories, which include saved memories, details inferred from chat history and custom instructions, are stored in the user's Exchange mailbox in a hidden folder. Thus, memories follow the same security and compliance policies as other mailbox data, such as [Customer Lockbox](/purview/customer-lockbox-requests) and [encryption at rest](/purview/encryption).

For more information on Copilot data, privacy and security in Copilot personalization and memory, see [Data, Privacy, and Security for Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-privacy).

## How long is memory in Microsoft 365 Copilot retained?

### Custom instructions

If the Enhanced personalization control is turned off at the admin-level, or if the Custom instruction control is turned off at the end-user level, Copilot is stopped from applying custom instructions, but doesn't remove those custom instructions. For more information, see **[Get started with personalizing what Microsoft 365 Copilot remembers](https://support.microsoft.com/topic/cba7b79a-c46f-4ca7-b46e-2fa22c563f90)** and **[Customize how Microsoft 365 Copilot responds to you](https://support.microsoft.com/topic/8b826c0d-eb78-493e-a30d-4490ec1c4b9e)**.

### Saved memories

Saved memories are retained until the end-user explicitly **deletes the saved memory in Settings > Personalization**. Deleting a chat doesn't delete saved memories that were generated from that chat. If the Enhanced personalization control is turned off at the admin-level, or if the Saved memories control is turned off at the end-user level, Copilot is stopped from applying saved memories to the chat, but doesn't remove saved memories. For more information on how to delete saved memories, see **[Manage Copilot memory in Microsoft 365 Copilot](https://support.microsoft.com/topic/b3231eae-9e60-4b3c-ac58-81fddbe56279)** and **[Get started with personalizing what Microsoft 365 Copilot remembers.](https://support.microsoft.com/topic/cba7b79a-c46f-4ca7-b46e-2fa22c563f90)**

### Chat history

Details from the chat history are dynamic. Copilot might update or discard older details as it learns what's most helpful to retain. If a user deletes all chats where a piece information was originally shared or referenced, then all traces of that information are deleted from the Chat History details within seven days.  

If the Enhanced personalization control is turned off at the admin-level, or if the Chat history control is turned off at the end-user level, then all details from chat history are deleted after 30 days. For more information, see **[Get started with personalizing what Microsoft 365 Copilot remembers](https://support.microsoft.com/topic/cba7b79a-c46f-4ca7-b46e-2fa22c563f90)** and **[Revisit your Microsoft 365 Copilot Chat history](https://support.microsoft.com/topic/revisit-your-microsoft-365-copilot-chat-history-6ea899e3-3bb1-450a-a2ae-220341ac193a)**.

### Retention policies for memories

Retention policies and retention labels configured in Purview by organization admins don't apply to Copilot memory. For example, if an admin set-up a "delete after three months" policy for Copilot Chat interactions, the users' memories aren't deleted after three months. There are no admin controls to enforce retention rules specifically for Copilot memory.

### How can tenant admins respond to Data Subject Requests related to Copilot memory?

Admins can use eDiscovery and Microsoft Graph Explorer to search, export, and delete users' memory data. For more information, see [Search for and delete AI application data in eDiscovery](/purview/edisc-search-copilot-data) and search for `<IPM.Contact>`.

> [!NOTE]
> The user's contacts also have item class `<IPM.Contact>`. If you export all items in this item class `<IPM.Contact>` for a user, their Copilot memory is located in the `<'CopilotMemory'>` folder.

- For Copilot memory, you need to search the item class `<IPM.Contact>`.
- Saved memories and inferred memories from your chat history are discoverable using eDiscovery and Microsoft Graph Explorer.
- Custom instructions aren't accessible, but can manually be exported by the user through **Settings > Personalization**.

### Can an admin discover and delete users' memories?

Admins can search their users' memory in Microsoft 365 Copilot via Microsoft Purview eDiscovery or Content Search. Custom instructions aren't yet discoverable in these solutions. An admin can also delete memory data through Microsoft Graph Explorer in combination with Purview. For more information, see [Search for and delete AI application data in eDiscovery](/purview/edisc-search-copilot-data).

### Is there audit logging for Copilot memory?

Memory and personalization actions don't generate audit log entries in Purview.

### Can a tenant admin restrict what information is added to memory?

No, admins can't restrict what type of information is added to Copilot memory.

### Are temporary chats discoverable by admins?

Yes, temporary chats are available in Purview in the same way as normal chats.
