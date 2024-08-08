---
title: "Deploy Office Add-ins in Government Community Cloud High (GCC High) environments"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 08/08/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "Deploy Office Add-ins in Microsoft 365 GCC High environments."
---

# Deploy Office Add-ins in Government Community Cloud High (GCC High) environments

Centralized deployment for Office Add-ins can be managed at an administrative level in Microsoft 365 for Business. Since Government Community Cloud High (GCC High) tenants do not have access to the Office store, you will need to deploy Office Add-ins through the following process.

1. In your browser, go to appsource.microsoft.com.
2. Click on the tile of the add-in you want to deploy (do not click the <b>Get it now</b> button). This will open the details page for the add-in.
3. In the URL for the details page, find and copy the AssetID value. For example, if the URL is https://appsource.microsoft.com/en-US/product/office/WA1234567989?tab=Overview, the AssetID value is <b>WA1234567989</b>.
4. Paste the AssetID value to the following URL: https://store.office.com/app/download?assetid=value&cmu=en-001. For example, using the example AssetID value from the previous step, the URL would need to be updated to https://store.office.com/app/download?assetid=WA1234567989&cmu=en-001.
5. In your browser, go to admin.microsoft.com to open the Microsoft 365 admin center.
6. In the left pane, select <b>Show all</b> to expand the menu. Then select <b>Settings</b>, and then <b>Integrated apps</b>.
7. On the <b>Integrated apps</b> page, under <b>For advanced management of these apps go to the respective admin center or page</b>, select <b>Add-ins</b>.
8. On the <b>Add-ins</b> page, select <b>Deploy Add-in</b>.
9. On the <b>Deploy a new add-in</b> page, select <b>Next</b>.
10. Under <b>Deploy a custom add-in</b>, select <b>Upload custom apps </b>.
11. Select <b>I have a URL for the manifest file</b>, and then enter the URL you updated that includes your AssetID for your add-in.
12. Select <b>Upload</b>.
13. On the <b>Configure add-in</b> page, choose the users you want to have access to the add-in, then select <b>Deploy</b>. 