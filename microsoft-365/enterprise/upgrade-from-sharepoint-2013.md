---
title: "Upgrading from SharePoint 2013"
ms.author: serdars
author: serdarsoysal
manager: serdars
ms.date: 11/10/2021
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.collection:
- scotvorg
- Ent_O365
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Find information and resources to upgrade from SharePoint Server 2013 and SharePoint Foundation 2013. Support for both ends April 11, 2023.
---

# Upgrading from SharePoint 2013

Both Microsoft SharePoint Server 2013 and SharePoint Foundation 2013 will reach end of support on **April 11, 2023**. This article provides resources to help you migrate your existing SharePoint Server data to SharePoint Online in Microsoft 365 or upgrade your on-premises SharePoint 2013 environment. For the rest of this article, we'll use SharePoint 2013 to refer to both SharePoint Server 2013 and SharePoint Foundation 2013.

## What is *end of support*?

Most Microsoft products have a support lifecycle, during which they get new features, bug fixes, security fixes, and so on. After the end-of-support date, the product doesn't stop working, but Microsoft no longer provides:

- Technical support for problems that may occur.

- Bug fixes for issues that may impact the stability and usability of the server.

- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.

- Time zone updates.

That means there will be no further updates, patches, or fixes for the product (including security patches/fixes). Microsoft Support will have fully shifted its support efforts to more recent versions.

> [!NOTE]
> A software lifecycle typically lasts for five years of mainstream support from the initial release, and potentially up to an additional 5 years of extended support. [Microsoft solution providers](https://go.microsoft.com/fwlink/?linkid=841249) can help you upgrade to the next version of the software or migrate to Microsoft 365 (or both). Make sure you're aware of end-of-support dates for critical underlying technologies as well, particularly for the version of Microsoft SQL Server you're using with SharePoint. For more information, see [Fixed Lifecycle Policy](https://support.microsoft.com/help/14085).

## Plan ahead

Check the dates that support ends on the Product Lifecycle site for [SharePoint Server 2013](/lifecycle/products/sharepoint-server-2013) and [SharePoint Foundation 2013](/lifecycle/products/sharepoint-foundation-2013). Plan your upgrades or migrations with these dates in mind. Remember that your product *won't stop working* at the date listed. But because your installation will no longer be patched after that date, you'll want to plan a smooth transition to the next version of the product. The table below lists the options available to you.

|End of support product|Good|Better|Best|
|---|---|---|---|
|SharePoint Server 2013<BR>SharePoint Foundation 2013|Upgrade to SharePoint Server 2016 or 2019|Upgrade to SharePoint Server Subscription Edition|Migrate to SharePoint in Microsoft 365

## What's next?

We recommend migrating to SharePoint in Microsoft 365 to take advantage of the latest collaboration, intelligence, and security solutions in Microsoft 365. The modern experience features in Microsoft 365 are designed to be compelling, flexible, and performant.

If you have a need to maintain an on-premises SharePoint deployment, we recommend a hybrid deployment that will enable you to migrate as much of SharePoint functionality as you can to SharePoint in Microsoft 365. See [SharePoint hybrid](/sharepoint/hybrid/hybrid) to learn about and plan for a hybrid implementation.

### Migrate to SharePoint in Microsoft 365

You can use the SharePoint Migration Tool (SPMT) to migrate your sites and content to SharePoint in Microsoft 365. We have an extensive library of content that can help you plan ahead, perform your migration, and troubleshoot any issues you may come across. [Overview of the SharePoint Migration Tool](/sharepointmigration/introducing-the-sharepoint-migration-tool) is a good place to start.

### Upgrade to SharePoint Server Subscription Edition

Even though there isn't a direct path to upgrade from SharePoint 2013 to the Subscription Edition, this still is the second best option. The primary reason is that SharePoint Server Subscription Edition introduces a continuous update model that eliminates the need to release new major versions of SharePoint Server going forward.

To upgrade to Subscription Edition, you must be running SharePoint Server 2016 or 2019. Since there also isn't a direct path from SharePoint 2013 to 2019 either, your best option is to upgrade to 2016 first and then upgrade to Subscription Edition. See the links below to learn more about and plan your upgrade to Subscription Edition:

- [Upgrade to SharePoint Server 2016](/sharepoint/upgrade-and-update/upgrade-to-sharepoint-server-2016)
- [Upgrade to SharePoint Server Subscription Edition](/sharepoint/upgrade-and-update/upgrade-to-sharepoint-server-subscription-edition)

Even if you have a need to maintain an on-premises SharePoint deployment, we recommend that you migrate parts of your sites or content to Microsoft 365 with [SharePoint hybrid](/sharepoint/hybrid/hybrid) implementation to start taking advantage of the modern collaboration experiences, security and compliance features in Microsoft 365.  

### Upgrade to SharePoint Server 2016 or 2019

Both SharePoint Server 2016 and 2019 are supported platforms if you plan to maintain your on-premises SharePoint deployment beyond the end of support for 2013. However, **both versions will reach end of support on July 14, 2026**. This means that you will need to plan another upgrade within 3 years after the end of support date for 2013. Here are the support lifecycle pages for both products:

- [SharePoint Server 2016 support lifecycle dates](/lifecycle/products/sharepoint-server-2016)
- [SharePoint Server 2019 support lifecycle dates](/lifecycle/products/sharepoint-server-2019)

To learn more and plan your upgrade, see the following articles:

- [Upgrade to SharePoint Server 2016](/sharepoint/upgrade-and-update/upgrade-to-sharepoint-server-2016)
- [Upgrade to SharePoint Server 2019](/sharepoint/upgrade-and-update/upgrade-to-sharepoint-server-2019)

Even if you have a need to maintain an on-premises SharePoint deployment, we recommend that you migrate parts of your sites or content to Microsoft 365 with [SharePoint hybrid](/sharepoint/hybrid/hybrid) implementation to start taking advantage of the modern collaboration experiences, security and compliance features in Microsoft 365.  
