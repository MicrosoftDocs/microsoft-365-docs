---
title: "Use the eDiscovery Export Tool in Microsoft Edge"
description: "You have to enable SelectOnce support to use the newest version of Microsoft Edge to download search results from Content Search and eDiscovery in the security and compliance portal."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
---

# Use the eDiscovery Export Tool in Microsoft Edge

As a result of recent changes to the newest version of Microsoft Edge, SelectOnce support is no longer enabled by default. To continue using the eDiscovery Export Tool to download Content Search or eDiscovery search results, you either need to use [Microsoft Internet Explorer](https://support.microsoft.com/help/17621/internet-explorer-downloads) or enable SelectOnce support in the newest version of Microsoft Edge.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Enable SelectOnce support in Microsoft Edge

1. In Microsoft Edge, go to **edge://flags/#edge-select-once**.
2. If the existing value is set to **Default** or **Disabled** in the dropdown list, change it to **Enabled**.
3. Scroll down to the bottom of the browser window and select **Restart** to restart Microsoft Edge.

> [!NOTE]
> Organizations can use Group Policy to disable SelectOnce support. To check if there's an organizational policy for SelectOnce support, go to **edge://policy**. The following screenshot shows that SelectOnce is enabled across the entire organization. If this policy value is set to **false**, you'll need to contact an admin in your organization.

## Install and run the eDiscovery Export Tool

1. Select **Download results** on the flyout page of an export in Content Search or an eDiscovery case.
2. You'll be prompted with a confirmation to launch the tool, select **Open**. If the eDiscovery Export Tool isn't installed, you'll be prompted with a Security Warning, 
3. Select **Install**. After it's installed, the export tool will launch automatically.

For more information, see the following articles:

- [Export Content Search results](export-search-results.md)
- [How to enable experiment flags in Microsoft Edge](https://microsoftedgesupport.microsoft.com/hc/articles/360034075294-How-to-enable-experiment-flags-in-Microsoft-Edge-Insider-channels)
