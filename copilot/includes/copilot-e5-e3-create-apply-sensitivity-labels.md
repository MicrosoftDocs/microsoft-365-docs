---
author: MandiOhlinger
ms.author: mandia
manager: laurawi
ms.reviewer: cabailey
ms.service: microsoft-365-copilot
ms.topic: include
description: Create and apply Microsoft Purview sensitivity labels for Microsoft 365 Copilot.
ms.date: 01/13/2025
---

✅ **Create and apply [sensitivity labels](/purview/get-started-with-sensitivity-labels) to protect your data**

[Sensitivity labels](/purview/sensitivity-labels) are a way to identify and classify the sensitivity of your organization's data, adding an extra layer of protection to your data.

When sensitivity labels are applied to items, like documents and emails, the labels add the protection directly to this data. As a result, that protection persists, wherever the data is stored. When sensitivity labels are applied to containers, like SharePoint sites and groups, the labels add protection indirectly by controlling access to the container where the data is stored. For example, privacy settings, external user access, and access from unmanaged devices.

The sensitivity labels can also affect Copilot results, including:

- The label settings include protection actions, like access to sites, customizable headers and footers, and encryption.
- If the label applies encryption, Copilot checks the usage rights for the user. For Copilot to return data from that item, the user must be granted permissions to copy from it.
- A prompt session with Copilot (called Microsoft 365 Copilot Chat) can reference data from different types of items. Sensitivity labels are shown in the returned results. The latest response displays the sensitivity label with the [highest priority](/purview/sensitivity-labels#label-priority-order-matters).

- If Copilot creates new content from labeled items, the sensitivity label from the source item is automatically inherited.
