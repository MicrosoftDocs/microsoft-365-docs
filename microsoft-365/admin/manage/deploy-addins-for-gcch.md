---
title: "Deploy Office Add-ins in Government Community Cloud High (GCC High) environments"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 08/12/2024
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

This article was written by [Eric Splichal](https://social.technet.microsoft.com/profile/Splic-MSFT), Sr. Support Escalation Engineer.

Centralized deployment for Office Add-ins can be managed at an administrative level in Microsoft 365 for Business. Since Government Community Cloud High (GCC High) tenants do not have access to the Office store, you will need to deploy Office Add-ins through the following process.

1. In your browser, go to <b>appsource.microsoft.com</b>.
2. Click on the tile of the add-in you want to deploy (do not click the <b>Get it now</b> button). This will open the details page for the add-in.
3. In the URL for the details page, find and copy the AssetID value. For example, if the URL is "<b>https://appsource.microsoft.com/en-US/product/office/WA1234567989?tab=Overview</b>", the AssetID value is <b>WA1234567989</b>.
4. Paste the AssetID value to the following URL: "<b>https://store.office.com/app/download?assetid=value&cmu=en-001</b>". For example, using the example AssetID value from the previous step, the URL would need to be updated to "<b>https://store.office.com/app/download?assetid=WA1234567989&cmu=en-001</b>".
5. In your browser, go to <b>admin.microsoft.com</b> to open the Microsoft 365 admin center.
6. In the left pane, select <b>Show all</b> to expand the menu. Then select <b>Settings</b>, then <b>Add-ins</b>.
7. On the <b>Add-ins</b> page, select <b>Deploy Add-in</b>.
8. On the <b>Deploy a new add-in</b> page, select <b>Next</b>.
9. Under <b>Deploy a custom add-in</b>, select <b>Upload custom apps</b>.
10. Select <b>I have a URL for the manifest file</b>, and then enter the URL you updated that includes your AssetID for your add-in.
11. Select <b>Upload</b>.
12. On the <b>Configure add-in</b> page, choose the users you want to have access to the add-in, then select <b>Deploy</b>.

