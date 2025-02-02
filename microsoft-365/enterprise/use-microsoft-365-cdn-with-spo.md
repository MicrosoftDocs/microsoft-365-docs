---
title: Use Office 365 Content Delivery Network (CDN) with SharePoint Online
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.reviewer: shawndube
ms.date: 12/05/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Ent_O365
- SPO_Content
f1.keywords:
- CSH
ms.custom:
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- SPO160
ms.assetid: bebb285f-1d54-4f79-90a5-94985afc6af8
description: Learn how to use the Office 365 Content Delivery Network (CDN) to speed up delivery of your SharePoint Online assets.
---

# Use the Office 365 Content Delivery Network (CDN) with SharePoint Online

You can use the built-in Office 365 Content Delivery Network (CDN) to host static assets to provide better performance for your SharePoint Online pages. The Office 365 CDN improves performance by caching static assets closer to the browsers requesting them, which helps to speed up downloads and reduce latency. Also, the Office 365 CDN uses the [HTTP/2 protocol](https://en.wikipedia.org/wiki/HTTP/2) for improved compression and HTTP pipelining. The Office 365 CDN service is included as part of your SharePoint Online subscription.

> [!CAUTION]
> As images are now automatically managed in a SharePoint Online service-managed Private CDN, the manually configured Private CDN is in the process of being deprecated. This behavior means that customers no longer need to configure private CDN. The recommended practice remains unchanged as images are hosted via the service-managed Private CDN automatically. Public CDN continues to be available for all other file types (for example, CSS and JS). Customers using Private CDN for file types other than images, need to move those files into Public CDN. We recommend Public CDN for these file types to enhance performance.

> [!NOTE]
> The Office 365 CDN is only available to tenants in the **Production** (worldwide) cloud. Tenants in the US Government and China clouds do not currently support the Office 365 CDN.

The Office 365 CDN is composed of multiple CDNs that allow you to host static assets in multiple locations, or _origins_, and serve them from global high-speed networks. Depending on the kind of content you want to host in the Office 365 CDN, you can add **public** origins, **private** origins or both. See [Choose whether each origin should be public or private](use-microsoft-365-cdn-with-spo.md#CDNOriginChoosePublicPrivate) for more information on the difference between public and private origins.

![Office 365 CDN conceptual diagram.](../media/O365-CDN/o365-cdn-flow-transparent.png "Office 365 CDN conceptual diagram")

If you're already familiar with the way that CDNs work, you only need to complete a few steps to enable the Office 365 CDN for your tenant. This article describes how. Read on for information about how to get started hosting your static assets.

> [!TIP]
> There are other Microsoft-hosted CDNs that can be used with Office 365 for specialized usage scenarios, but are not discussed in this topic because they fall outside the scope of the Office 365 CDN. For more information, see [Other Microsoft CDNs](content-delivery-networks.md#other-microsoft-cdns).

 **Head back to [Network planning and performance tuning for Office 365](./network-planning-and-performance.md).**

## Overview of working with the Office 365 CDN in SharePoint Online

To set up the Office 365 CDN for your organization, you follow these basic steps:

- [Plan for deployment of the Office 365 CDN](use-microsoft-365-cdn-with-spo.md#plan-for-deployment-of-the-office-365-cdn)
  - [Determine which static assets you want to host on the CDN](use-microsoft-365-cdn-with-spo.md#CDNAssets).
  - [Determine where you want to store your assets](use-microsoft-365-cdn-with-spo.md#CDNStoreAssets). This location can be a SharePoint site, library or folder and is called an _origin_.
  - [Choose whether each origin should be public or private](use-microsoft-365-cdn-with-spo.md#CDNOriginChoosePublicPrivate). You can add multiple origins of both public and private types.

- Set up and configure the CDN, using either PowerShell or the CLI for Microsoft 365
  - [Set up and configure the CDN by using the SharePoint Online Management Shell](use-microsoft-365-cdn-with-spo.md#CDNSetupinPShell)
  - [Set up and configure the CDN by using PnP PowerShell](use-microsoft-365-cdn-with-spo.md#CDNSetupinPnPPosh)
  - [Set up and configure the CDN by using the CLI for Microsoft 365](use-microsoft-365-cdn-with-spo.md#CDNSetupinCLI)

  When you complete this step, you get the following results:

  - The CDN is enabled for your organization.
  - You added your origins, identifying each origin as public or private.

Once you're done with setup, you can [Manage the Office 365 CDN](use-microsoft-365-cdn-with-spo.md#CDNManage) over time by:

- Adding, updating, and removing assets
- Adding and removing origins
- Configuring CDN policies
- If necessary, disabling the CDN

Finally, see [Using your CDN assets](use-microsoft-365-cdn-with-spo.md#using-your-cdn-assets) to learn about accessing your CDN assets from both public and private origins.

See [Troubleshooting the Office 365 CDN](use-microsoft-365-cdn-with-spo.md#CDNTroubleshooting) for guidance on resolving common issues.

## Plan for deployment of the Office 365 CDN

Before you deploy the Office 365 CDN for your Office 365 tenant, you should consider the following factors as part of your planning process.

- [Determine which static assets you want to host on the CDN](use-microsoft-365-cdn-with-spo.md#CDNAssets)
- [Determine where you want to store your assets](use-microsoft-365-cdn-with-spo.md#CDNStoreAssets)
- [Choose whether each origin should be public or private](use-microsoft-365-cdn-with-spo.md#CDNOriginChoosePublicPrivate)

<a name="CDNAssets"> </a>

### Determine which static assets you want to host on the CDN

In general, CDNs are most effective for hosting _static assets_, or assets that don't change often. A good rule of thumb is to identify files that meet some or all of these conditions:

- Static files embedded in a page (like scripts and images) that might have a significant effect on page load times.
- Large files like executables and installation files.
- Resource libraries that support client-side code.

For example, adding repeatedly requested small files (site images and scripts) to a CDN origin can significantly improve site rendering performance and incrementally reduce the load on your SharePoint Online sites. Larger files (installation executables) can be downloaded from the CDN, delivering a positive performance effect and subsequent reduction of the load on your SharePoint Online site, even if they aren't accessed as often.

Performance improvement on a per-file basis is dependent on many factors, including the client's proximity to the nearest CDN endpoint, transient conditions on the local network, and so forth. Many static files are small, and can be downloaded from Office 365 in less than a second. However, a web page might contain many embedded files with a cumulative download time of several seconds. Serving these files from the CDN can significantly reduce the overall page load time. See [What performance gains does a CDN provide?](content-delivery-networks.md#what-performance-gains-does-a-cdn-provide) for an example.

<a name="CDNStoreAssets"> </a>

### Determine where you want to store your assets

The CDN fetches your assets from a location called an _origin_. An origin can be a SharePoint site, document library or folder that is accessible by a URL. You have great flexibility when you specify origins for your organization. For example, you can specify multiple origins or a single origin where you want to put all your CDN assets. You can choose to have both public or private origins for your organization. Most organizations choose to implement a combination of the two.

You can create new container for your origins such as folders or document libraries, and add files you want to make available from the CDN. This is a good approach for a specific set of assets that you want to be available from the CDN, and you want to restrict the set of CDN assets to only those files in the container.

You can also configure an existing site collection, site, library or folder as an origin, which makes all eligible assets in the container available from the CDN. Before you add an existing container as an origin, it's important to make sure you're aware of its contents and permissions so you don't inadvertently expose assets to anonymous access or unauthorized users.

You can define _CDN policies_ to exclude content in your origins from the CDN. CDN policies exclude assets in public or private origins by attributes such as _file type_ and _site classification_, and are applied to all origins of the CdnType (private or public) you specify in the policy. For example, if you add a private origin consisting of a site that contains multiple subsites, you can define a policy to exclude sites marked as **Confidential** so content from sites with that classification applied aren't served from the CDN. The policy applies to content from _all_ private origins that you added to the CDN.

Keep in mind that the greater the number of origins, the greater the effect on the time it takes the CDN service to process requests. We recommend that you limit the number of origins as much as possible.

<a name="CDNOriginChoosePublicPrivate"> </a>

### Choose whether each origin should be public or private

When you identify an origin, you specify whether it should be made _public_ or _private_. Access to CDN assets in public origins is anonymous, and CDN content in private origins is secured by dynamically generated tokens for greater security. Regardless of which option you choose, Microsoft does all the heavy lifting for you when it comes to administration of the CDN itself. Also, you can change your mind later, after you set up the CDN and identified your origins.

Both public and private options provide similar performance gains, but each has unique attributes and advantages.

**Public** origins within the Office 365 CDN are accessible anonymously, and hosted assets can be accessed by anyone who has the URL to the asset. Because access to content in public origins is anonymous, you should only use them to cache nonsensitive generic content such as JavaScript files, scripts, icons and images.

**Private** origins within the Office 365 CDN provide private access to user content such as SharePoint Online document libraries, sites and proprietary images. Access to content in private origins is secured by dynamically generated tokens so it can only be accessed by users with permissions to the original document library or storage location. Private origins in the Office 365 CDN can only be used for SharePoint Online content, and you can only access assets in private origins through redirection from your SharePoint Online tenant.

You can read more about how CDN access to assets in a private origin works in [Using assets in private origins](use-microsoft-365-cdn-with-spo.md#using-assets-in-private-origins).

#### Attributes and advantages of hosting assets in public origins

- Assets exposed in a public origin are accessible by everyone anonymously.
    > [!IMPORTANT]
    > You should never place resources that contain user information or are considered sensitive to your organization in a public origin.

- If you remove an asset from a public origin, the asset might continue to be available for up to 30 days from the cache; however, we invalidate links to the asset in the CDN within 15 minutes.

- When you host style sheets (CSS files) in a public origin, you can use relative paths and URIs within the code. This result means that you can reference the location of background images and other objects relative to the location of the asset that's calling it.

- While you can construct a public origin's URL, you should proceed with caution, use the page context property, and follow the guidance for doing so. If access to the CDN becomes unavailable, the URL doesn't automatically resolve to your organization in SharePoint Online and might result in broken links and other errors. The URL is also subject to change, so you shouldn't hard code it to the current value.

- The default file types that are included for public origins are: `.css`, `.eot`, `.gif`, `.ico`, `.jpeg`, `.jpg`, `.js`, `.map`, `.png`, `.svg`, `.ttf`, `.woff` and `.woff2`. You can specify additional file types.

- You can configure a policy to exclude assets based on specified site classifications. For example, you can exclude all assets that are marked as "confidential" or "restricted", even if they're an allowed file type and are located in a public origin.

#### Attributes and advantages of hosting assets in private origins

- Private origins can only be used for SharePoint Online assets.

- Users can only access the assets from a private origin if they have permissions to access the container. Anonymous access to these assets is prevented.

- Assets in private origins must be referred from the SharePoint Online tenant. Direct access to private CDN assets doesn't work.

- If you remove an asset from the private origin, the asset might continue to be available for up to an hour from the cache. But, links to the asset in the CDN are invalid within 15 minutes of the removal of the asset.

- The default file types that are included for private origins are .gif, .ico, .jpeg, .jpg, .js, and .png. You can specify additional file types.

- Just like with public origins, you can configure a policy to exclude assets that are identified by site classifications that you specify even if you use wildcards to include all assets within a folder or document library.

For more information about why to use the Office 365 CDN, general CDN concepts, and other Microsoft CDNs you can use with your Office 365 tenant, see [Content Delivery Networks](content-delivery-networks.md).

### Default CDN origins

Unless you specify otherwise, Office 365 sets up some default origins for you when you enable the Office 365 CDN. If you initially opt not to provision them, you can add these origins after you complete setup. Unless you understand the consequences of skipping the setup of default origins and have a specific reason for doing so, you should allow them to be created when you enable the CDN.

Default private CDN origins:

- \*/siteassets

Default public CDN origins:

- \*/masterpage
- \*/style library
- \*/clientsideassets

> [!NOTE]
> _clientsideassets_ is a default public origin that was added to the Office 365 CDN service in December 2017. This origin must be present in order for SharePoint Framework solutions in the CDN to work. If you enabled the Office 365 CDN prior to December 2017, or if you skipped setup of default origins when you enabled the CDN, you can manually add this origin. For more information, see [My client-side web part or SharePoint Framework solution isn't working](use-microsoft-365-cdn-with-spo.md#my-client-side-web-part-or-sharepoint-framework-solution-isnt-working).

<a name="CDNSetupinPShell"> </a>
## Set up and configure the Office 365 CDN by using the SharePoint Online Management Shell

The procedures in this section require you to use the SharePoint Online Management Shell to connect to SharePoint Online. For instructions, see [Connect to SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).

Complete these steps to set up and configure the CDN to host your assets in SharePoint Online using the SharePoint Online Management Shell.

<details>
  <summary>Select to expand</summary>

### Enable your organization to use the Office 365 CDN

Before you make changes to the tenant CDN settings, you should retrieve the current status of the private CDN configuration in your Office 365 tenant. Connect to your tenant using the SharePoint Online Management Shell:

```powershell
Connect-SPOService -Url https://contoso-admin.sharepoint.com
```

Now use the **Get-SPOTenantCdnEnabled** cmdlet to retrieve the CDN status settings from the tenant:

```powershell
Get-SPOTenantCdnEnabled -CdnType <Public | Private>
```

The status of the CDN for the specified CdnType is shown on the screen.

Use the **Set-SPOTenantCdnEnabled** cmdlet to enable your organization to use the Office 365 CDN. You can enable your organization to use public origins, private origins, or both at once. You can also configure the CDN to skip the setup of default origins when you enable it. You can always add these origins later as described in this article.

In Windows PowerShell for SharePoint Online:

```powershell
Set-SPOTenantCdnEnabled -CdnType <Public | Private | Both> -Enable $true
```

For example, to enable your organization to use both public and private origins, type the following command:

```powershell
Set-SPOTenantCdnEnabled -CdnType Both -Enable $true
```

To enable your organization to use both public and private origins but skip setting up the default origins, type the following command:

```powershell
Set-SPOTenantCdnEnabled -CdnType Both -Enable $true -NoDefaultOrigins
```

See [Default CDN origins](use-microsoft-365-cdn-with-spo.md#default-cdn-origins) for information about the origins that are provisioned by default when you enable the Office 365 CDN, and the potential effect of skipping the setup of default origins.

To enable your organization to use public origins, type the following command:

```powershell
Set-SPOTenantCdnEnabled -CdnType Public -Enable $true
```

To enable your organization to use private origins, type the following command:

```powershell
Set-SPOTenantCdnEnabled -CdnType Private -Enable $true
```

For more information about this cmdlet, see [Set-SPOTenantCdnEnabled](/powershell/module/sharepoint-online/Set-SPOTenantCdnEnabled).

<a name="Office365CDNforSPOFileType"> </a>

### Change the list of file types to include in the Office 365 CDN (Optional)

> [!TIP]
> When you define file types by using the **Set-SPOTenantCdnPolicy** cmdlet, you overwrite the currently defined list. If you want to add additional file types to the list, use the cmdlet first to find out what file types are already allowed and include them in the list along with your new ones.

Use the **Set-SPOTenantCdnPolicy** cmdlet to define static file types that can be hosted by public and private origins in the CDN. By default, common asset types are allowed, for example .css, .gif, .jpg, and .js.

In Windows PowerShell for SharePoint Online:

```powershell
Set-SPOTenantCdnPolicy -CdnType <Public | Private> -PolicyType IncludeFileExtensions -PolicyValue "<Comma-separated list of file types >"
```

For example, to enable the CDN to host .css and .png files, you would enter the command:

```powershell
Set-SPOTenantCdnPolicy -CdnType Private -PolicyType IncludeFileExtensions -PolicyValue "CSS,PNG"
```

To see what file types are currently allowed by the CDN, use the **Get-SPOTenantCdnPolicies** cmdlet:

```powershell
Get-SPOTenantCdnPolicies -CdnType <Public | Private>
```

For more information about these cmdlets, see [Set-SPOTenantCdnPolicy](/powershell/module/sharepoint-online/) and [Get-SPOTenantCdnPolicies](/powershell/module/sharepoint-online/).

<a name="Office365CDNforSPOSiteClassification"> </a>

### Change the list of site classifications you want to exclude from the Office 365 CDN (Optional)

> [!TIP]
> When you exclude site classifications by using the **Set-SPOTenantCdnPolicy** cmdlet, you overwrite the currently defined list. If you want to exclude additional site classifications, use the cmdlet first to find out what classifications are already excluded and then add them along with your new ones.

Use the **Set-SPOTenantCdnPolicy** cmdlet to exclude site classifications that you don't want to make available over the CDN. By default, no site classifications are excluded.

In Windows PowerShell for SharePoint Online:

```powershell
Set-SPOTenantCdnPolicy -CdnType <Public | Private> -PolicyType ExcludeRestrictedSiteClassifications  -PolicyValue "<Comma-separated list of site classifications >"
```

To see what site classifications are currently restricted, use the **Get-SPOTenantCdnPolicies** cmdlet:

```powershell
Get-SPOTenantCdnPolicies -CdnType <Public | Private>
```

The returned properties are _IncludeFileExtensions_, _ExcludeRestrictedSiteClassifications_ and _ExcludeIfNoScriptDisabled_.

The _IncludeFileExtensions_ property contains the list of file extensions that are served from the CDN.

> [!NOTE]
> The default file extensions are different between public and private.

The _ExcludeRestrictedSiteClassifications_ property contains the site classifications that you want to exclude from the CDN. For example, you can exclude sites marked as **Confidential** so content from sites with that classification applied isn't served from the CDN.

The _ExcludeIfNoScriptDisabled_ property excludes content from the CDN based on the site-level _NoScript_ attribute settings. By default, the _NoScript_ attribute is set to **Enabled** for _Modern_ sites and **Disabled** for _Classic_ sites. This depends on your tenant settings.

For more information about these cmdlets, see [Set-SPOTenantCdnPolicy](/powershell/module/sharepoint-online/) and [Get-SPOTenantCdnPolicies](/powershell/module/sharepoint-online/).

<a name="Office365CDNforSPOOriginPosh"> </a>

### Add an origin for your assets

Use the **Add-SPOTenantCdnOrigin** cmdlet to define an origin. You can define multiple origins. The origin is a URL that points to a SharePoint library or folder that contains the assets that you want to be hosted by the CDN.

> [!IMPORTANT]
> You should never place resources that contain user information or are considered sensitive to your organization in a public origin.

```powershell
Add-SPOTenantCdnOrigin -CdnType <Public | Private> -OriginUrl <path>
```

The value of _path_ is the relative path to the library or folder that contains the assets. You can use wildcards in addition to relative paths. Origins support wildcards prepended to the URL. This allows you to create origins that span multiple sites. For example, to include all of the assets in the masterpages folder for all of your sites as a public origin within the CDN, type the following command:

```powershell
Add-SPOTenantCdnOrigin -CdnType Public -OriginUrl */masterpage
```

- The wildcard modifier ***/** can only be used at the beginning of the path, and matches all URL segments under the specified URL.
- The path can point to a document library, folder or site. For example, the path _*/site1_ matches all the document libraries under the site.

You can add an origin with a specific relative path. You can't add an origin using the full path.

This example adds a private origin of the siteassets library on a specific site:

```powershell
Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl sites/site1/siteassets
```

This example adds a private origin of the _folder1_ folder in the site collection's site assets library:

```powershell
Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl sites/test/siteassets/folder1
```

If there's a space in the path, you can either surround the path in double quotes or replace the space with the URL encoding %20. The following examples add a private origin of the _folder 1_ folder in the site collection's site assets library:

```powershell
Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl sites/test/siteassets/folder%201
```

```powershell
Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl "sites/test/siteassets/folder 1"
```

For more information about this command and its syntax, see [Add-SPOTenantCdnOrigin](/powershell/module/sharepoint-online/Add-SPOTenantCdnOrigin).

> [!NOTE]
> In private origins, assets being shared from an origin must have a major version published before they can be accessed from the CDN.

After you run the command, the system synchronizes the configuration across the datacenter. This result can take up to 15 minutes.

<a name="ExamplePublicOrigin"> </a>

### Example: Configure a public origin for your master pages and for your style library for SharePoint Online

Normally, these origins are set up for you by default when you enable the Office 365 CDN. However, if you want to enable them manually, follow these steps.

- Use the **Add-SPOTenantCdnOrigin** cmdlet to define the style library as a public origin.

  ```powershell
  Add-SPOTenantCdnOrigin -CdnType Public -OriginUrl */style%20library
  ```

- Use the **Add-SPOTenantCdnOrigin** cmdlet to define the master pages as a public origin.

  ```powershell
  Add-SPOTenantCdnOrigin -CdnType Public -OriginUrl */masterpage
  ```

For more information about this command and its syntax, see [Add-SPOTenantCdnOrigin](/powershell/module/sharepoint-online/Add-SPOTenantCdnOrigin).

After you run the command, the system synchronizes the configuration across the datacenter. This result can take up to 15 minutes.

<a name="ExamplePrivateOrigin"> </a>

### Example: Configure a private origin for your site assets, site pages, and publishing images for SharePoint Online

- Use the **Add-SPOTenantCdnOrigin** cmdlet to define the site assets folder as a private origin.

  ```powershell
  Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl */siteassets
  ```

- Use the **Add-SPOTenantCdnOrigin** cmdlet to define the site pages folder as a private origin.

  ```powershell
  Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl */sitepages
  ```

- Use the **Add-SPOTenantCdnOrigin** cmdlet to define the publishing images folder as a private origin.

  ```powershell
  Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl */publishingimages
  ```

For more information about this command and its syntax, see [Add-SPOTenantCdnOrigin](/powershell/module/sharepoint-online/Add-SPOTenantCdnOrigin).

After you run the command, the system synchronizes the configuration across the datacenter. This result can take up to 15 minutes.

<a name="ExamplePrivateOriginSiteCollection"> </a>

### Example: Configure a private origin for a site collection for SharePoint Online

Use the **Add-SPOTenantCdnOrigin** cmdlet to define a site collection as a private origin. For example:

```powershell
Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl sites/site1/siteassets
```

For more information about this command and its syntax, see [Add-SPOTenantCdnOrigin](/powershell/module/sharepoint-online/Add-SPOTenantCdnOrigin).

After you run the command, the system synchronizes the configuration across the datacenter. You might see a _Configuration pending_ message. This message is expected as the SharePoint Online tenant connects to the CDN service. This result can take up to 15 minutes.

<a name="CDNManage"> </a>

### Manage the Office 365 CDN

After you set up the CDN, you can make changes to your configuration as you update content or as your needs change, as described in this section.

<a name="Office365CDNforSPOaddremoveasset"> </a>

#### Add, update, or remove assets from the Office 365 CDN

After you complete the setup steps, you can add new assets, and update or remove existing assets whenever you want. Just make your changes to the assets in the folder or SharePoint library that you identified as an origin. If you add a new asset, it's available through the CDN immediately. However, if you update the asset, it takes up to 15 minutes for the new copy to propagate and become available in the CDN.

If you need to retrieve the location of the origin, you can use the **Get-SPOTenantCdnOrigins** cmdlet. For information on how to use this cmdlet, see [Get-SPOTenantCdnOrigins](/powershell/module/sharepoint-online/Get-SPOTenantCdnOrigins).

<a name="Office365CDNforSPORemoveOriginPosh"> </a>

#### Remove an origin from the Office 365 CDN

You can remove access to a folder or SharePoint library that you identified as an origin using the **Remove-SPOTenantCdnOrigin** cmdlet.

```powershell
Remove-SPOTenantCdnOrigin -OriginUrl <path> -CdnType <Public | Private | Both>
```

For information on how to use this cmdlet, see [Remove-SPOTenantCdnOrigin](/powershell/module/sharepoint-online/Remove-SPOTenantCdnOrigin).

<a name="Office365CDNforSPOModifyOrigin"> </a>

#### Modify an origin in the Office 365 CDN

You can't modify an origin after you create it. Instead, remove the origin and then add a new one. For more information, see [To remove an origin from the Office 365 CDN](use-microsoft-365-cdn-with-spo.md#Office365CDNforSPORemoveOriginPosh) and [To add an origin for your assets](use-microsoft-365-cdn-with-spo.md#Office365CDNforSPOOriginPosh).

<a name="Office365CDNforSPODisable"> </a>

#### Disable the Office 365 CDN

Use the **Set-SPOTenantCdnEnabled** cmdlet to disable the CDN for your organization. If you have both the public and private origins enabled for the CDN, you need to run the cmdlet twice as shown in the following examples.

To disable use of public origins in the CDN, enter the following command:

```powershell
Set-SPOTenantCdnEnabled -CdnType Public -Enable $false
```

To disable use of the private origins in the CDN, enter the following command:

```powershell
Set-SPOTenantCdnEnabled -CdnType Private -Enable $false
```

For more information about this cmdlet, see [Set-SPOTenantCdnEnabled](/powershell/module/sharepoint-online/Set-SPOTenantCdnEnabled).

</details>

<a name="CDNSetupinPnPPosh"> </a>

## Set up and configure the Office 365 CDN by using PnP PowerShell

The procedures in this section require you to use PnP PowerShell to connect to SharePoint Online. For instructions, see [Getting started with PnP PowerShell](https://github.com/SharePoint/PnP-PowerShell#getting-started).

Complete these steps to set up and configure the CDN to host your assets in SharePoint Online using PnP PowerShell.

<details>
  <summary>Select to expand</summary>

### Enable your organization to use the Office 365 CDN

Before you make changes to the tenant CDN settings, you should retrieve the current status of the private CDN configuration in your Office 365 tenant. Connect to your tenant using PnP PowerShell:

```powershell
Connect-PnPOnline -Url https://contoso-admin.sharepoint.com -UseWebLogin
```

Now use the **Get-PnPTenantCdnEnabled** cmdlet to retrieve the CDN status settings from the tenant:

```powershell
Get-PnPTenantCdnEnabled -CdnType <Public | Private>
```

The status of the CDN for the specified CdnType is shown on the screen.

Use the **Set-PnPTenantCdnEnabled** cmdlet to enable your organization to use the Office 365 CDN. You can enable your organization to use public origins, private origins, or both at the same time. You can also configure the CDN to skip the setup of default origins when you enable it. You can always add these origins later as described in this article.

In PnP PowerShell:

```powershell
Set-PnPTenantCdnEnabled -CdnType <Public | Private | Both> -Enable $true
```

For example, to enable your organization to use both public and private origins, type the following command:

```powershell
Set-PnPTenantCdnEnabled -CdnType Both -Enable $true
```

To enable your organization to use both public and private origins but skip setting up the default origins, type the following command:

```powershell
Set-PnPTenantCdnEnabled -CdnType Both -Enable $true -NoDefaultOrigins
```

See [Default CDN origins](use-microsoft-365-cdn-with-spo.md#default-cdn-origins) for information about the origins that are provisioned by default when you enable the Office 365 CDN, and the potential effect of skipping the setup of default origins.

To enable your organization to use public origins, type the following command:

```powershell
Set-PnPTenantCdnEnabled -CdnType Public -Enable $true
```

To enable your organization to use private origins, type the following command:

```powershell
Set-PnPTenantCdnEnabled -CdnType Private -Enable $true
```

For more information about this cmdlet, see [Set-PnPTenantCdnEnabled](https://pnp.github.io/powershell/cmdlets/Set-PnPTenantCdnEnabled.html).

<a name="Office365CDNforPnPPoshFileType"> </a>

### Change the list of file types to include in the Office 365 CDN (Optional)

> [!TIP]
> When you define file types by using the **Set-PnPTenantCdnPolicy** cmdlet, you overwrite the currently defined list. If you want to add additional file types to the list, use the cmdlet first to find out what file types are already allowed and include them in the list along with your new ones.

Use the **Set-PnPTenantCdnPolicy** cmdlet to define static file types that can be hosted by public and private origins in the CDN. By default, common asset types are allowed, for example .css, .gif, .jpg, and .js.

In PnP PowerShell:

```powershell
Set-PnPTenantCdnPolicy -CdnType <Public | Private> -PolicyType IncludeFileExtensions -PolicyValue "<Comma-separated list of file types >"
```

For example, to enable the CDN to host .css and .png files, you would enter the command:

```powershell
Set-PnPTenantCdnPolicy -CdnType Private -PolicyType IncludeFileExtensions -PolicyValue "CSS,PNG"
```

To see what file types are currently allowed by the CDN, use the **Get-PnPTenantCdnPolicies** cmdlet:

```powershell
Get-PnPTenantCdnPolicies -CdnType <Public | Private>
```

For more information about these cmdlets, see [Set-PnPTenantCdnPolicy](https://pnp.github.io/powershell/cmdlets/Set-PnPTenantCdnPolicy.html) and [Get-PnPTenantCdnPolicies](https://pnp.github.io/powershell/cmdlets/Get-PnPTenantCdnPolicies.html).

<a name="Office365CDNforPnPPoshSiteClassification"> </a>

### Change the list of site classifications you want to exclude from the Office 365 CDN (Optional)

> [!TIP]
> When you exclude site classifications by using the **Set-PnPTenantCdnPolicy** cmdlet, you overwrite the currently defined list. If you want to exclude additional site classifications, use the cmdlet first to find out what classifications are already excluded and then add them along with your new ones.

Use the **Set-PnPTenantCdnPolicy** cmdlet to exclude site classifications that you don't want to make available over the CDN. By default, no site classifications are excluded.

In PnP PowerShell:

```powershell
Set-PnPTenantCdnPolicy -CdnType <Public | Private> -PolicyType ExcludeRestrictedSiteClassifications  -PolicyValue "<Comma-separated list of site classifications>"
```

To see what site classifications are currently restricted, use the **Get-PnPTenantCdnPolicies** cmdlet:

```powershell
Get-PnPTenantCdnPolicies -CdnType <Public | Private>
```

The returned properties are _IncludeFileExtensions_, _ExcludeRestrictedSiteClassifications_ and _ExcludeIfNoScriptDisabled_.

The _IncludeFileExtensions_ property contains the list of file extensions that are served from the CDN.

> [!NOTE]
> The default file extensions are different between public and private.

The _ExcludeRestrictedSiteClassifications_ property contains the site classifications that you want to exclude from the CDN. For example, you can exclude sites marked as **Confidential** so content from sites with that classification applied won't be served from the CDN.

The _ExcludeIfNoScriptDisabled_ property excludes content from the CDN based on the site-level _NoScript_ attribute settings. By default, the _NoScript_ attribute is set to **Enabled** for _Modern_ sites and **Disabled** for _Classic_ sites. This depends on your tenant settings.

For more information about these cmdlets, see [Set-PnPTenantCdnPolicy](https://pnp.github.io/powershell/cmdlets/Set-PnPTenantCdnPolicy.html) and [Get-PnPTenantCdnPolicies](https://pnp.github.io/powershell/cmdlets/Get-PnPTenantCdnPolicies.html).

<a name="Office365CDNforSPOOriginPnPPosh"> </a>

### Add an origin for your assets

Use the **Add-PnPTenantCdnOrigin** cmdlet to define an origin. You can define multiple origins. The origin is a URL that points to a SharePoint library or folder that contains the assets that you want to be hosted by the CDN.

> [!IMPORTANT]
> You should never place resources that contain user information or are considered sensitive to your organization in a public origin.

```powershell
Add-PnPTenantCdnOrigin -CdnType <Public | Private> -OriginUrl <path>
```

The value of _path_ is the relative path to the library or folder that contains the assets. You can use wildcards in addition to relative paths. Origins support wildcards prepended to the URL. This allows you to create origins that span multiple sites. For example, to include all of the assets in the masterpages folder for all of your sites as a public origin within the CDN, type the following command:

```powershell
Add-PnPTenantCdnOrigin -CdnType Public -OriginUrl */masterpage
```

- The wildcard modifier ***/** can only be used at the beginning of the path, and matches all URL segments under the specified URL.
- The path can point to a document library, folder or site. For example, the path _*/site1_ matches all the document libraries under the site.

You can add an origin with a specific relative path. You can't add an origin using the full path.

This example adds a private origin of the site assets library on a specific site:

```powershell
Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl sites/site1/siteassets
```

This example adds a private origin of the _folder1_ folder in the site collection's site assets library:

```powershell
Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl sites/test/siteassets/folder1
```

If there's a space in the path, you can either surround the path in double quotes or replace the space with the URL encoding %20. The following examples add a private origin of the _folder 1_ folder in the site collection's site assets library:

```powershell
Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl sites/test/siteassets/folder%201
```

```powershell
Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl "sites/test/siteassets/folder 1"
```

For more information about this command and its syntax, see [Add-PnPTenantCdnOrigin](https://pnp.github.io/powershell/cmdlets/Add-PnPTenantCdnOrigin.html).

> [!NOTE]
> In private origins, assets shared from an origin must have a major version published before they're accessible from the CDN.

After you run the command, the system synchronizes the configuration across the datacenter. This result can take up to 15 minutes.

<a name="ExamplePublicOriginPnPPosh"> </a>

### Example: Configure a public origin for your master pages and for your style library for SharePoint Online

Normally, these origins are set up for you by default when you enable the Office 365 CDN. However, if you want to enable them manually, follow these steps.

- Use the **Add-PnPTenantCdnOrigin** cmdlet to define the style library as a public origin.

  ```powershell
  Add-PnPTenantCdnOrigin -CdnType Public -OriginUrl */style%20library
  ```

- Use the **Add-PnPTenantCdnOrigin** cmdlet to define the master pages as a public origin.

  ```powershell
  Add-PnPTenantCdnOrigin -CdnType Public -OriginUrl */masterpage
  ```

For more information about this command and its syntax, see [Add-PnPTenantCdnOrigin](https://pnp.github.io/powershell/cmdlets/Add-PnPTenantCdnOrigin.html).

After you run the command, the system synchronizes the configuration across the datacenter. This result can take up to 15 minutes.

<a name="ExamplePrivateOriginPnPPosh"> </a>

### Example: Configure a private origin for your site assets, site pages, and publishing images for SharePoint Online

- Use the **Add-PnPTenantCdnOrigin** cmdlet to define the site assets folder as a private origin.

  ```powershell
  Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl */siteassets
  ```

- Use the **Add-PnPTenantCdnOrigin** cmdlet to define the site pages folder as a private origin.

  ```powershell
  Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl */sitepages
  ```

- Use the **Add-PnPTenantCdnOrigin** cmdlet to define the publishing images folder as a private origin.

  ```powershell
  Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl */publishingimages
  ```

For more information about this command and its syntax, see [Add-PnPTenantCdnOrigin](https://pnp.github.io/powershell/cmdlets/Add-PnPTenantCdnOrigin.html).

After you run the command, the system synchronizes the configuration across the datacenter. This result can take up to 15 minutes.

<a name="ExamplePrivateOriginSiteCollectionPnPPosh"> </a>

### Example: Configure a private origin for a site collection for SharePoint Online

Use the **Add-PnPTenantCdnOrigin** cmdlet to define a site collection as a private origin. For example:

```powershell
Add-PnPTenantCdnOrigin -CdnType Private -OriginUrl sites/site1/siteassets
```

For more information about this command and its syntax, see [Add-PnPTenantCdnOrigin](https://pnp.github.io/powershell/cmdlets/Add-PnPTenantCdnOrigin.html).

After you run the command, the system synchronizes the configuration across the datacenter. You might see a _Configuration pending_ message. This result is expected as the SharePoint Online tenant connects to the CDN service. This result can take up to 15 minutes.

<a name="CDNManagePnPPosh"> </a>

### Manage the Office 365 CDN

After you set up the CDN, you can make changes to your configuration as you update content or as your needs change, as described in this section.

<a name="Office365CDNforSPOaddremoveassetPnPPosh"> </a>

#### Add, update, or remove assets from the Office 365 CDN

After you complete the setup steps, you can add new assets, and update or remove existing assets whenever you want. Just make your changes to the assets in the folder or SharePoint library that you identified as an origin. If you add a new asset, it's available through the CDN immediately. However, if you update the asset, it takes up to 15 minutes for the new copy to propagate and become available in the CDN.

If you need to retrieve the location of the origin, you can use the **Get-PnPTenantCdnOrigin** cmdlet. For information on how to use this cmdlet, see [Get-PnPTenantCdnOrigin](https://github.com/pnp/powershell/blob/dev/documentation/Get-PnPTenantCdnOrigin.md).

<a name="Office365CDNforSPORemoveOriginPnPPosh"> </a>

#### Remove an origin from the Office 365 CDN

You can remove access to a folder or SharePoint library that you identified as an origin. To take this action, use the **Remove-PnPTenantCdnOrigin** cmdlet.

```powershell
Remove-PnPTenantCdnOrigin -OriginUrl <path> -CdnType <Public | Private | Both>
```

For information on how to use this cmdlet, see [Remove-PnPTenantCdnOrigin](https://pnp.github.io/powershell/cmdlets/Remove-PnPTenantCdnOrigin.html).

<a name="Office365CDNforSPOModifyOriginPnPPosh"> </a>

#### Modify an origin in the Office 365 CDN

You can't modify an origin after you create it. Instead, remove the origin and then add a new one. For more information, see [To remove an origin from the Office 365 CDN](use-microsoft-365-cdn-with-spo.md#Office365CDNforSPORemoveOriginPnPPosh) and [To add an origin for your assets](use-microsoft-365-cdn-with-spo.md#Office365CDNforSPOOriginPnPPosh).

<a name="Office365CDNforSPODisable"> </a>

#### Disable the Office 365 CDN

Use the **Set-PnPTenantCdnEnabled** cmdlet to disable the CDN for your organization. If you have both the public and private origins enabled for the CDN, you need to run the cmdlet twice as shown in the following examples.

To disable use of public origins in the CDN, enter the following command:

```powershell
Set-PnPTenantCdnEnabled -CdnType Public -Enable $false
```

To disable use of the private origins in the CDN, enter the following command:

```powershell
Set-PnPTenantCdnEnabled -CdnType Private -Enable $false
```

For more information about this cmdlet, see [Set-PnPTenantCdnEnabled](https://pnp.github.io/powershell/cmdlets/Set-PnPTenantCdnEnabled.html).

</details>

<a name="CDNSetupinCLI"> </a>

## Set up and configure the Office 365 CDN using the CLI for Microsoft 365

The procedures in this section require the [CLI for Microsoft 365](https://aka.ms/cli-m365). The, connect to your Office 365 tenant using the [login](https://pnp.github.io/cli-microsoft365/cmd/login/) command.

Complete these steps to set up and configure the CDN to host your assets in SharePoint Online using the CLI for Microsoft 365.

<details>
  <summary>Select to expand</summary>

### Enable the Office 365 CDN

You can manage the state of the Office 365 CDN in your tenant using the [spo cdn set](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-set/) command.

To enable the Office 365 Public CDN in your tenant, run the following command:

```cli
m365 spo cdn set --type Public --enabled true
```

To enable the Office 365 SharePoint CDN, run the following command:

```cli
m365 spo cdn set --type Private --enabled true
```

#### View the current status of the Office 365 CDN

To check if the particular type of Office 365 CDN is enabled or disabled, use the [spo cdn get](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-get/) command.

To check if the Office 365 Public CDN is enabled, run the following command:

```cli
m365 spo cdn get --type Public
```

### View the Office 365 CDN origins

To view the currently configured Office 365 Public CDN origins, run the following command:

```cli
m365 spo cdn origin list --type Public
```

See [Default CDN origins](use-microsoft-365-cdn-with-spo.md#default-cdn-origins) for information about the origins that are provisioned by default when you enable the Office 365 CDN.

### Add an Office 365 CDN origin

> [!IMPORTANT]
> You should never place resources that are considered sensitive to your organization in a SharePoint document library configured as a public origin.

Use the [spo cdn origin add](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-origin-add/) command to define a CDN origin. You can define multiple origins. The origin is a URL that points to a SharePoint library or folder that contains the assets that you want the CDN to host.

```cli
m365 spo cdn origin add --type [Public | Private] --origin <path>
```

Where `path` is the relative path to the folder that contains the assets. You can use wildcards in addition to relative paths.

To include all assets in the **Master Page Gallery** of all sites as a public origin, run the following command:

```cli
m365 spo cdn origin add --type Public --origin */masterpage
```

To configure a private origin for a specific site collection, run the following command:

```cli
m365 spo cdn origin add --type Private --origin sites/site1/siteassets
```

> [!NOTE]
> After adding a CDN origin, it might take up to 15 minutes for you to be able to retrieve files via the CDN service. You can verify if the particular origin has already been enabled using the [spo cdn origin list](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-origin-list/) command.

### Remove an Office 365 CDN origin

Use the [spo cdn origin remove](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-origin-remove/) command to remove a CDN origin for the specified CDN type.

To remove a public origin from the CDN configuration, run the following command:

```cli
m365 spo cdn origin remove --type Public --origin */masterpage
```

> [!NOTE]
> Removing a CDN origin doesn't effect the files stored in any document library that matches the origin. If these assets are referenced using their SharePoint URL, SharePoint automatically switches back to the original URL pointing to the document library. If the assets are referenced using a public CDN URL, removing the origin breaks the link, and you need to manually change them.

### Modify an Office 365 CDN origin

It's not possible to modify an existing CDN origin. Instead, you should remove the previously defined CDN origin using the `spo cdn origin remove` command and add a new one using the `spo cdn origin add` command.

### Change the types of files to include in the Office 365 CDN

By default, the following file types are included in the CDN: `.css`, `.eot`, `.gif`, `.ico`, `.jpeg`, `.jpg`, `.js`, `.map`, `.png`, `.svg`, `.ttf`, `.woff`, and `.woff2`. If you need to include additional file types in the CDN, you can change the CDN configuration using the [spo cdn policy set](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-policy-set/) command.

> [!NOTE]
> When changing the list of file types, you overwrite the currently defined list. If you want to include additional file types, first use the [spo cdn policy list](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-origin-list/) command to find out which file types are currently configured.

To add the _JSON_ file type to the default list of file types included in the public CDN, run the following command:

```cli
m365 spo cdn policy set --type Public --policy IncludeFileExtensions --value "CSS,EOT,GIF,ICO,JPEG,JPG,JS,MAP,PNG,SVG,TTF,WOFF,JSON"
```

### Change the list of site classifications you want to exclude from the Office 365 CDN

Use the [spo cdn policy set](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-policy-set/) command to exclude site classifications that you don't want to make available over the CDN. By default, no site classifications are excluded.

> [!NOTE]
> When changing the list of excluded site classifications, you overwrite the currently defined list. If you want to exclude additional classifications, first use the [spo cdn policy list](https://pnp.github.io/cli-microsoft365/cmd/spo/cdn/cdn-policy-list/) command to find out which classifications are currently configured.

To exclude sites classified as _HBI_ from the public CDN, run the following command:

```cli
m365 spo cdn policy set --type Public --policy ExcludeRestrictedSiteClassifications --value "HBI"
```

### Disable the Office 365 CDN

To disable the Office 365 CDN use the `spo cdn set` command, for example:

```cli
m365 spo cdn set --type Public --enabled false
```

</details>

## Using your CDN assets

Now that you enabled the CDN and configured origins and policies, you can begin using your CDN assets.

This section helps you understand how to use CDN URLs in your SharePoint pages and content so that SharePoint redirects requests for assets in both public and private origins to the CDN.

- [Updating links to CDN assets](use-microsoft-365-cdn-with-spo.md#updating-links-to-cdn-assets)
- [Using assets in public origins](use-microsoft-365-cdn-with-spo.md#using-assets-in-public-origins)
- [Using assets in private origins](use-microsoft-365-cdn-with-spo.md#using-assets-in-private-origins)

For information on how to use the CDN for hosting client-side web parts, see the article [Host your client-side web part from Office 365 CDN (Hello World part 4)](/sharepoint/dev/spfx/web-parts/get-started/hosting-webpart-from-office-365-cdn).

> [!NOTE]
> If you add the _ClientSideAssets_ folder to the **private** CDN origins list, CDN-hosted custom web parts will fail to render. Files used by SPFX web parts can only utilize the public CDN and the ClientSideAssets folder is a default origin for public CDN.

### Updating links to CDN assets

To use assets that you added to an origin, you simply update links to the original file with the path to the file in the origin.

- Edit the page or content that contains links to assets you added to an origin. You can also use one of several methods to globally search and replace links across an enter site or site collection if you want to update the link to a given asset everywhere it appears.
- For each link to an asset in an origin, replace the path with the path to the file in the CDN origin. You can use relative paths.
- Save the page or content.

For example, consider the image _/site/SiteAssets/images/image.png_, which you copied to the document library folder _/site/CDN_origins/public/_. To use the CDN asset, replace the original path to the image file location with the path to the origin to make the new URL _/site/CDN_origins/public/image.png_.

If you want to use the full URL to the asset instead of a relative path, construct the link like so:

`https://<TenantHostName>.sharepoint.com/sites/site/CDN_origins/public/image.png`

> [!NOTE]
> In general, you should not hardcode URLs directly to assets in the CDN. However, you can manually construct URLs for assets in public origins if needed. For more information, see [Hardcoding CDN URLs for public assets](use-microsoft-365-cdn-with-spo.md#constructing-cdn-urls-for-public-assets).

To learn about how to verify that assets are being served from the CDN, see [How do I confirm that assets are being served by the CDN?](use-microsoft-365-cdn-with-spo.md#CDNConfirm) in [Troubleshooting the Office 365 CDN](use-microsoft-365-cdn-with-spo.md#CDNTroubleshooting).

### Using assets in public origins

The **Publishing feature** in SharePoint Online automatically rewrites URLs of assets stored in public origins to their CDN equivalents so that assets are served from the CDN service instead of SharePoint.

If your origin is in a site with the Publishing feature enabled, and the assets you want to offload to the CDN are in one of the following categories, SharePoint automatically rewrites URLs for assets in the origin, if the asset hasn't been excluded by a CDN policy.

The following example is an overview where links are automatically rewritten by the SharePoint Publishing feature:

- IMG/LINK/CSS URLs in classic publishing page HTML responses.
  - This includes images added by authors within the HTML content of a page.
- Picture Library SlideShow webpart image URLs.
- Image fields in SPList REST API (RenderListDataAsStream) results.
  - Use the new property _ImageFieldsToTryRewriteToCdnUrls_ to provide a comma separated list of fields.
  - Supports hyperlink fields and PublishingImage fields.
- SharePoint image renditions.

The following diagram illustrates the workflow when SharePoint receives a request for a page containing assets from a public origin.

![Workflow diagram: Retrieving Office 365 CDN assets from a public origin.](../media/O365-CDN/o365-cdn-public-steps-transparent.png "Workflow: Retrieving Office 365 CDN assets from a public origin")

> [!TIP]
> If you want to disable auto-rewriting for specific URLs on a page, you can check out the page and add the query string parameter **?NoAutoReWrites=true** to the end of each link you want to disable.

#### Constructing CDN URLs for public assets

If the _Publishing_ feature isn't enabled for a public origin, or the asset isn't one of the link types supported by the auto-rewrite feature of the CDN service, you can manually construct URLs to the CDN location of the assets and use these URLs in your content.

> [!NOTE]
> You cannot hardcode or construct CDN URLs to assets in a private origin because the required access token that forms the last section of the URL is generated at the time the resource is requested. You can construct the URL for Public CDN and the URL should not be hard coded as it's subject to change.

For public CDN assets, the URL format looks like the following example:

```http
https://publiccdn.sharepointonline.com/<TenantHostName>/sites/site/library/asset.png
```

Replace **TenantHostName** with your tenant name. For example:

```http
https://publiccdn.sharepointonline.com/contoso.sharepoint.com/sites/site/library/asset.png
```

> [!NOTE]
> Use the page context property to construct the prefix instead of hard coding `https://publiccdn.sharepointonline.com`, because the URL is subject to change. If you use display templates with Classic SharePoint Online, you can use the property `window._spPageContextInfo.publicCdnBaseUrl` in your display template for the prefix of the URL. If you use SPFx web parts for modern and classic SharePoint, you can use the property `this.context.pageContext.legacyPageContext.publicCdnBaseUrl`, which also provides the prefix. If the prefix changes, your implementation is updated with it.
>
> As an example for SPFx, you can construct the URL using the property `this.context.pageContext.legacyPageContext.publicCdnBaseUrl` - `/` - `host` - `/` - `relativeURL for the item`. For more information, see the video [Using CDN in Client-side code](https://youtu.be/IH1RbQlbhIA), which is part of the [season 1 performance series](https://aka.ms/sppnp-perfvideos).

### Using assets in private origins

No additional configuration is required to use assets in private origins. SharePoint Online automatically rewrites URLs for assets in private origins so requests for those assets are always be served from the CDN. You can't manually build URLs to CDN assets in private origins because these URLs contain tokens that must be auto-generated by SharePoint Online at the time the asset is requested.

Access to assets in private origins is protected by dynamically generated tokens based on user permissions to the origin, with the caveats described in the following sections. Users must have at least **read** access to the origins for the CDN to render content.

The following diagram illustrates the workflow when SharePoint receives a request for a page containing assets from a private origin.

![Workflow diagram: Retrieving Office 365 CDN assets from a private origin.](../media/O365-CDN/o365-cdn-private-steps-transparent.png "Workflow: Retrieving Office 365 CDN assets from a private origin")

#### Token-based authorization in private origins

Access to assets in private origins in the Office 365 CDN is granted by tokens generated by SharePoint Online. Users who already have permission to access to the folder or library designated by the origin are automatically granted tokens that permit the user to access the file based on their permission level. These access tokens are valid for 30 to 90 minutes after they're generated to help prevent token replay attacks.

Once the access token is generated, SharePoint Online returns a custom URI to the client containing two authorization parameters _eat_ (edge authorization token) and _oat_ (origin authorization token). The structure of each token is _<'expiration time in Epoch time format'>__<'secure signature'>_. For example:

```http
https://privatecdn.sharepointonline.com/contoso.sharepoint.com/sites/site1/library1/folder1/image1.jpg?eat=1486154359_cc59042c5c55c90b26a2775323c7c8112718431228fe84d568a3795a63912840&oat=1486154359_7d73c2e3ba4b7b1f97242332900616db0d4ffb04312
```

> [!NOTE]
> Anyone in possession of the token can access the resource in the CDN. However, URLs containing these access tokens are only shared over HTTPS, so unless the URL is explicitly shared by an end user before the token expires, the asset won't be accessible to unauthorized users.

#### Item-level permissions aren't supported for assets in private origins

It's important to note that SharePoint Online doesn't support item-level permissions for assets in private origins. For example, for a file located at `https://contoso.sharepoint.com/sites/site1/library1/folder1/image1.jpg`, users have effective access to the file given the following conditions:

|User|Permissions|Effective access|
|---|---|---|
|User 1|Has access to folder1|Can access image1.jpg from the CDN|
|User 2|Doesn't have access to folder1|Can't access image1.jpg from the CDN|
|User 3|Doesn't have access to folder1, but is granted explicit permission to access image1.jpg in SharePoint Online|Can access the asset image1.jpg directly from SharePoint Online, but not from the CDN|
|User 4|Has access to folder1, but has been explicitly denied access to image1.jpg in SharePoint Online|Can't access the asset from SharePoint Online, but can access the asset from the CDN despite being denied access to the file in SharePoint Online|

<a name="CDNTroubleshooting"></a>

## Troubleshooting the Office 365 CDN

<a name="CDNConfirm"></a>

### How do I confirm that assets are being served by the CDN?

After you add links to CDN assets to a page, you can confirm that the asset is being served from the CDN by browsing to the page, right clicking on the image once it has rendered and reviewing the image URL.

You can also use your browser's developer tools to view the URL for each asset on a page, or use a third party network trace tool.

> [!NOTE]
> If you use a network tool such as Fiddler to test your assets outside of rendering the asset from a SharePoint page, you must manually add the referer header "Referer: `https://yourdomain.sharepoint.com`" to the GET request where the URL is the root URL of your SharePoint Online tenant.

You can't test CDN URLs directly in a web browser because you must have a referrer coming from SharePoint Online. However, if you add the CDN asset URL to a SharePoint page and then open the page in a browser, the CDN asset is rendered on the page.

For more information on using the developer tools in the Microsoft Edge browser, see [Microsoft Edge Developer Tools](/microsoft-edge/devtools-guide).

To watch a short video hosted in the [SharePoint Developer Patterns and Practices YouTube channel](https://aka.ms/sppnp-videos) that shows how to verify your CDN is working, see [Verifying your CDN usage and ensuring optimal network connectivity](https://www.youtube.com/watch?v=ClCtBAtGjE8&list=PLR9nK3mnD-OWMfr1BA9mr5oCw2aJXw4WA&index=5).

### Why are assets from a new origin unavailable?

Assets in new origins won't immediately be available for use, as it takes time for the registration to propagate through the CDN and for the assets to be uploaded from the origin to CDN storage. The time required for assets to be available in the CDN depends on how many assets and the files sizes.

### My client-side web part or SharePoint Framework solution isn't working

When you enable the Office 365 CDN for public origins, the CDN service automatically creates these default origins:

- */MASTERPAGE
- */STYLE LIBRARY
- */CLIENTSIDEASSETS

If the */clientsideassets origin is missing, SharePoint Framework solutions fails, and no warning or error messages are generated. This origin might be missing either because the CDN was enabled with the _-NoDefaultOrigins_ parameter set to **$true**, or because the origin was manually deleted.

You can check to see which origins are present with the following PowerShell command:

```powershell
Get-SPOTenantCdnOrigins -CdnType Public
```

Or you can check with the CLI for Microsoft 365:

```cli
m365 spo cdn origin list
```

To add the origin in PowerShell:

```powershell
Add-SPOTenantCdnOrigin -CdnType Public -OriginUrl */CLIENTSIDEASSETS
```

To add the origin using the CLI for Microsoft 365:

```cli
m365 spo cdn origin add --origin */CLIENTSIDEASSETS
```

### What PowerShell modules and CLI shells do I need to work with the Office 365 CDN?

You can choose to work with the Office 365 CDN using either the **SharePoint Online Management Shell** PowerShell module or the **CLI for Microsoft 365**.

- [Getting started with SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)
- [Installing the CLI for Microsoft 365](https://pnp.github.io/cli-microsoft365/user-guide/installing-cli/)

## See also

[Content Delivery Networks](./content-delivery-networks.md)

[Network planning and performance tuning for Office 365](./network-planning-and-performance.md)

[SharePoint Performance Series - Office 365 CDN video series](https://www.youtube.com/playlist?list=PLR9nK3mnD-OWMfr1BA9mr5oCw2aJXw4WA)
