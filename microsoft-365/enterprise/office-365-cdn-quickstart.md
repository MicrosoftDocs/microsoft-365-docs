---
title: "Office 365 Content Delivery Network (CDN) Quickstart"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 06/04/2020
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Ent_O365
- SPO_Content
- m365initiative-coredeploy
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid:
- MET150
- SPO160
description: "Office 365 Content Delivery Network (CDN) Quickstart"
---

# Office 365 Content Delivery Network (CDN) Quickstart

You can use the built-in **Office 365 Content Delivery Network (CDN)** to host static assets (images, JavaScript, Stylesheets, WOFF files) to provide better performance for your SharePoint Online pages. The Office 365 CDN improves performance by caching static assets closer to the browsers requesting them, which helps to speed up downloads and reduce latency. Also, the Office 365 CDN uses the HTTP/2 protocol for improved compression and HTTP pipelining. The Office 365 CDN service is included as part of your SharePoint Online subscription.

For more detailed information guidance see [Use the Office 365 Content Delivery Network (CDN) with SharePoint Online](use-microsoft-365-cdn-with-spo.md).

>[!NOTE]
>The Office 365 CDN is only available to tenants in the production (worldwide) cloud. Tenants in the US Government, China and Germany clouds do not currently support the Office 365 CDN.

## Use the Page Diagnostics for SharePoint tool to identify items not in CDN

You can use the **Page Diagnostics for SharePoint tool** browser extension to easily list assets in your SharePoint Online pages that can be added to a CDN origin.

The **Page Diagnostics for SharePoint tool** is a browser extension for the new Microsoft Edge (https://www.microsoft.com/edge) and Chrome browsers that analyzes both SharePoint Online modern portal and classic publishing site pages. The tool provides a report for each analyzed page showing how the page performs against a defined set of performance criteria. To install and learn about the Page Diagnostics for SharePoint tool, visit [Use the Page Diagnostics tool for SharePoint Online](./page-diagnostics-for-spo.md).

When you run the Page Diagnostics for SharePoint tool on a SharePoint Online page, you can click the **Diagnostic Tests** tab to see a list of assets not being hosted by the CDN. These assets will be listed under the heading **Content Delivery Network (CDN) check** as shown in the screenshot below.

![Page diagnostics.](../media/page-diagnostics-for-spo/pagediag-results-general.PNG)

>[!NOTE]
>The Page Diagnostics tool only works for SharePoint Online, and cannot be used on a SharePoint system page.

## CDN Overview

The Office 365 CDN is designed to optimize performance for users by distributing frequently accessed objects like images and javascript files over a high-speed global network, reducing page load time and providing access to hosted objects as close as possible to the user. The CDN fetches your assets from a location called an _origin_. An origin can be a SharePoint site, document library or folder that is accessible by a URL.

The Office 365 CDN is separated into two basic types:

- **Public CDN** is designed to be used for JS (JavaScript), CSS (StyleSheets), Web Font File (WOFF, WOFF2) and non-proprietary images like company logos.
- **Private CDN** is designed to be used for images (PNG, JPG, JPEG, etc.).

You can choose to have both public or private origins for your organization. Most organizations will choose to implement a combination of the two. Both public and private options provide similar performance gains, but each has unique attributes and advantages. For more information about public and private CDN origins, see [Choose whether each origin should be public or private](use-microsoft-365-cdn-with-spo.md#CDNOriginChoosePublicPrivate).

## How to enable Public and Private CDN with the default configuration
Before you make changes to the tenant CDN settings, you should verify that it meets compliance, security and privacy policies of your organization.

For more detailed configuration settings, or if you have already enabled CDN and want to add additional locations (origins), please see the section [Set up and configure the Office 365 CDN by using the SharePoint Online Management Shell](use-microsoft-365-cdn-with-spo.md#set-up-and-configure-the-office-365-cdn-by-using-the-sharepoint-online-management-shell)

Connect to your tenant using the SharePoint Online Management Shell:

```PowerShell
Connect-SPOService -Url https://<YourTenantName>-admin.sharepoint.com
```

To enable your organization to use both public and private origins with the default configuration, type the following command:

```PowerShell
Set-SPOTenantCdnEnabled -CdnType Both -Enable $true
```

Output of these cmdlets should look like the following:

![Output of Set-SPOTenantCdnEnabled.](../media/O365-CDN/o365-cdn-enable-output.png)

## See also

[Use the Page Diagnostics tool for SharePoint Online](./page-diagnostics-for-spo.md)

[Use the Office 365 Content Delivery Network (CDN) with SharePoint Online](use-microsoft-365-cdn-with-spo.md)

[Content Delivery Networks](./content-delivery-networks.md)

[Network planning and performance tuning for Office 365](./network-planning-and-performance.md)

[SharePoint Performance Series - Office 365 CDN video series](https://www.youtube.com/playlist?list=PLR9nK3mnD-OWMfr1BA9mr5oCw2aJXw4WA)