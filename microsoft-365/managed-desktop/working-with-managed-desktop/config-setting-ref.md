---
title: Configurable settings reference for Microsoft Managed Desktop
description:  Setting categories for configurable settings in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Configurable settings reference - Microsoft Managed Desktop

This topic lists the settings categories that customers can configure with Microsoft Managed Desktop. Each setting category includes info on requirements, best practices, and how to customize the setting category. 

## Desktop background picture
You can customize the desktop background picture for Microsoft Managed Desktop devices in your organization. You might use this to apply a company brand or marketing material. 

### Requirements

These requirements must be met for a desktop background picture:
- Picture file format - .jpg, jpeg, or .png
- File location - Host on a trusted secure http (https) location. 
- Not allowed - Http and file share (unc) locations are not supported. 

### Customize and deploy desktop background picture

**To add a custom desktop background picture**
1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu
2. Look for the Microsoft Managed Desktop section, select **Settings**.
3. In **Settings** workspace, select **Desktop background picture**. 
4. Enter the location of the picture you want to use. 
5. Select **Stage deployment** to save your changes and deploy them to the Test group. 

## Browser start pages
Browser start pages open in individual tabs when your users start Microsoft Edge. If you want to make it easy for your users to open a set of sites that they use frequently, add a browser start page for each site. 

### Requirements

You must provide the fully qualified domain name (FQDN) for intranet or Internet sites for your browser start pages. If internal sites are configured, let users know that access to these sites is only allowed when connected to the internal network when in the office, or when connected with a VPN connection. 

### Customize and deploy browser start pages

**To add a browser start page**
1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu
2. Look for the Microsoft Managed Desktop section, select **Settings**.
3. In **Settings** workspace, select **Browser start pages**. 
4. Select **Add start page**.
5. On **Add browser start page**, enter the URL for the site you want to use, and then select **Add start page**. 
6. Repeat steps 1-5 for additional browser start pages. 
7. Select **Stage deployment** to save your changes and deploy them to the Test group.

## Enterprise mode site list location

If you have specific websites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the websites automatically open using Internet Explorer 11. Also, if you know that your intranet sites aren't going to work correctly with Microsoft Edge, you can set all intranet sites to open using Internet Explorer 11 automatically. Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on Internet Explorer 11. For more information on enterprise mode site lists,see [Enterprise Mode and Enterprise Mode Site Lists](/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode). 

You can specify an https:// location, or the location for an internal share where you’ve hosted your enterprise mode site list. 

### Requirements

These requirements must be met for the enterprise mode site list file:
- File format - XML file that meets [file requirements](/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode#site-list-xml-file)
- File location - Host file on an internal https location. 
- Not allowed - Hosting on an internal file share, like *//sharename*, is not allowed

### Best practices

These best practices are offered to help customers make decisions to modernize their IT infrastructure:
- **Choose a limited number of sites** – Microsoft Managed Desktop uses Microsoft Edge as the preferred browser to improve overall security for your organization and usability for your users. Most sites in this list are for legacy web apps that need an older version of a browser that will not include as many security features. 
- **Consider an alternate** – Consider a different site, or web app that doesn’t require an older browser. Or, consider updating the site so that it can use newer browsers. Newer browsers use the latest technology and help improve security.

### Customize and deploy Enterprise site mode list location

**To add an enterprise site mode list location**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu
2. Look for the Microsoft Managed Desktop section, select **Settings**.
3. In **Settings** workspace, select **Enterprise mode site list location**. 
4. Enter the https location for your site list. 
5. Select **Stage deployment** to save your changes and deploy them to the Test group.

## Trusted sites

Trusted sites allow you to customize security zones, or where a site can be used, for different sites. Security zones include: 
- Zone 1 – Local Intranet zone
- Zone 2 – Trusted sites zone
- Zone 3 – Internet zone
- Zone 4 – Restricted Sites zone

### Requirements

Provide the fully qualified domain name (FQDN) for intranet or Internet sites for each trusted site. 

### Customize and deploy trusted sites

**To add a trusted site**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu
2. Look for the Microsoft Managed Desktop section, select **Settings**.
3. In **Settings** workspace, select **Trusted sites**, and then select **Add trusted site**. 
4. On **Add trusted site**, enter the URL, choose a security zone, and then select **Add trusted site**. 
5. Repeat steps 1-4 for each trusted site you want to add. 
6. Select **Stage deployment** to save your changes and deploy them to the Test group.

**To remove a trusted site**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu
2. Look for the Microsoft Managed Desktop section, select **Settings**.
3. In **Settings** workspace, select **Trusted sites**. 
4. Select the site that you want to delete, and then select **Delete**. 
5. Repeat steps 1-4 for each trusted site you want to delete. 
6. Select **Stage deployment** to save your changes and deploy them to the Test group.

## Proxy
You can manage network proxy settings for your organization. Add your proxy server and port number, and then add your proxy site exceptions. Microsoft Managed Desktop includes a set of default proxy exceptions that are required for the service to operate. The default exclusion list may only be modified by the Microsoft Managed Desktop service.  For more information, see [Network configuration for Microsoft Managed Desktop](../get-ready/network.md). 

The proxy site exceptions that you add in the Microsoft Managed Desktop portal are added to the default proxy exceptions included with Microsoft Managed Desktop service. 

> [!NOTE]
> Updating the default proxy exception list is always prioritized over customer deployments. This means that your staged deployment will be paused if there is a deployment for the default proxy exception list.  

### Requirements

These requirements must be met for proxy server and proxy site exceptions:
- Must be a valid server address and port number
- URLs must be a valid http site 

### Customize and deploy proxies

**To add an individual proxy site exception**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu
2. Look for the Microsoft Managed Desktop section, select **Settings**.
3. In **Settings** workspace, select **Proxy**. 
4. Enter the **Address** and **Port number** for you proxy server, and then select **Add proxy exception**. 
5. Enter the URL of a valid http site, and then select **Add proxy exception**. 
6. Repeat steps 1-5 for each trusted site you want to add. 
7. Select **Stage deployment** to save your changes and deploy them to the Test group.

## Additional resources
- [Configurable settings overview](config-setting-overview.md) 
- [Deploy configurable settings](config-setting-deploy.md)