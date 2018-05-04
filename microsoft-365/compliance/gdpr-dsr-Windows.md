---
title: Windows Data Subject Requests Guide
description: Learn how to make data subject requests in regards to data collected by Windows
keywords: Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR, Windows, DSR
author: danihalfin
localization_priority: Priority
audience: microsoft-business
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.date: 04/18/2018
ms.author: daniha
audience: itpro
ms.collection: GDPR
---
# Windows Data Subject Requests Guide

## Introduction to DSRs

The EU General Data Protection Regulation (GDPR) gives rights to people (known as *data subjects*) to manage the personal data that has been collected by an employer or other type of agency or organization (known as the *controller*). Personal data is defined under the GDPR as any data that relates to an identified or identifiable natural person. The GDPR gives data subjects the right to access, rectify (correct), restrict, port, and delete their own personal data, and a right to object to processing. A request by a data subject to a data controller to take an action on their personal data is referred to here as a *data subject request*, or *DSR*.

The GDPR sets out specific requirements for controllers and processors regarding DSRs. Microsoft is the controller for most Windows products, apps, and services, and the processor for several enterprise services.

* **Controller** — A controller determines the type of personal data to collect and controls how that personal data is processed and how it is used. For example, Microsoft is the data controller when we collect Windows diagnostic data from your users.
* **Processor** — A processor provides data processing services to a data controller and has no independent control over what personal data is collected and how it is used. For example, Microsoft is the processor for Windows Defender Advanced Threat Protection (ATP) and Windows Analytics. For these services, we analyze (process) data from enterprise user devices, but do so on behalf of the organization itself, which is the controller for that data.

### Personal data we collect

Microsoft collects the data we need from your users to provide and improve Windows products, apps, and services. There are two categories of data—functional and diagnostic. Functional data is the transactional and interactional data that a Windows application needs to perform the service it provides. For example, to provide travel directions with Cortana, we need to collect location data. Diagnostic data is used to help identify and troubleshoot problems, improve our products and services, and provide users with personalized experiences. You can find a detailed description of the diagnostic data types and comprehensive examples of data we collect at [Windows Diagnostic Data](https://docs.microsoft.com/windows/configuration/windows-diagnostic-data).

Your organization can restrict the amount of diagnostic data that is shared with Microsoft by setting the diagnostic data level—or reduce the level of shared data to a basic level, if desired. For information about Windows diagnostic data levels and how you might configure diagnostic data in your organization, see [Configure Windows diagnostic data in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization).

## Microsoft as controller

Microsoft is controller for all Windows products, apps, and services except for some services, such as Windows Defender Advanced Threat Protection (ATP) and Windows Analytics. Where Microsoft is the controller, we are obligated to respond to your users directly regarding DSRs. The default Windows installation implements privacy and security practices, including the means for your users to control their data, as required under GDPR.

### Privacy consent

The Windows installation for some users displays a series of seven privacy consent screens which give your users choices about sharing their data and provide access to the [Microsoft Privacy Statement](https://privacy.microsoft.com/en-us/privacystatement), which describes our data processing practices.

However, in Windows commercial products your organization retains control over privacy settings and security. To manage privacy settings for users within your organization, your IT administrator may choose to disable the default Windows privacy consent screens (first screen shown below). If your IT administrator disables the privacy screens, a privacy notification (like one shown below) is displayed to your users until they acknowledge it, or until 72 hours have passed since initial login. Your IT administrator may choose to disable this privacy notification as well.

>[!IMPORTANT]
>Your organization is responsible for implementing privacy and security practices for Windows products if it does not accept the default Windows solution. If your IT administrator disables the default Windows privacy consent screens and privacy notification, your organization will need to provide your users with its own privacy program for Windows products to be compliant with the GDPR.

![First of seven privacy consent screens](images/gdpr-dsr-windows-consent.png)

*First of seven privacy consent screens*

![Privacy notification](images/gdpr-dsr-windows-notification.png)

*Privacy notification*

### How your users can control personal data

The most recent version of Windows (Windows 10, version 1803 and above) complies with the GDPR for data access and control by providing the following means for your users to restrict data collection, and to view, edit, port, or delete data that has already been gathered.

* **In-app settings** — Your users can control privacy settings and delete diagnostics data for their device directly within each Windows product, app, or service. In the most recent version of Windows, users can lower the level of Windows diagnostic data that is shared with Microsoft, if their IT administrator allows it. In addition, they can use the [Diagnostic Data Viewer](https://docs.microsoft.com/windows/configuration/diagnostic-data-viewer-overview) — available from within In-app settings — to view and search diagnostic data related to their device.

* **Microsoft Privacy Dashboard** — Your users can use the web-based [Microsoft Privacy Dashboard](https://account.microsoft.com/account/privacy?ru=https%3A%2F%2Faccount.microsoft.com%2Fprivacy&destrt=privacy-dashboard) — available through their Microsoft account — to view, control and delete activity data tied to their Microsoft account across multiple Microsoft services. For example, users can view and clear browsing history from Microsoft Edge, voice data from Cortana, and location data used by apps like Maps. They can also download a copy of their activity history and control whether they are shown interest-based ads. Deleted data is automatically removed from all data streams in our storage system.

* **Privacy web form** — If your users are unable access the data they’re looking for or wish to port their data, they can always contact the Microsoft [Privacy web form](https://privacy.microsoft.com/en-US/privacy-questions), which will respond to requests to access, change, update or delete personal data within 30 days.

Microsoft recognizes that organizations have different needs than individuals when addressing privacy. Your IT administrator may decide to preconfigure privacy settings for your users and prevent them from controlling these settings or using the Diagnostic Data Viewer. Some organizations may also restrict users from having a Microsoft account. If your users are not allowed to have a Microsoft account for the computer they use at work, DSR support currently will be more limited because users will not be able to view, control, or delete their activity data for the computer they use at work through the Privacy Dashboard, and DSR support via the Privacy web form will also be limited.

>[!IMPORTANT]
>If your IT administrator restricts your users from changing privacy settings or controlling their data, your organization will need to provide users with its own support for DSRs for Windows products. For example, your IT administrator can use group policies to manage user data and the IT administrator dashboard to delete user data.

## Microsoft as processor

This section discusses how Microsoft handles data subject rights for Windows services that process data on behalf of an organization. For example, [Windows Defender Advanced Threat Protection (ATP)](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp) and [Windows Analytics](https://www.microsoft.com/windowsforbusiness/windows-analytics) are Windows services where Microsoft is a processor. Both are subscription services for enterprises that require an additional license.

### Windows Defender ATP

Windows Defender ATP analyzes usage data from an organization's user devices to detect security threats. Before using Windows Defender ATP, your organization should determine that it has an interest in processing the Windows Defender ATP data for securing its data. To use Windows Defender ATP, your organization will need to subscribe to the service and your IT administrator needs to enable it for every device enrolled into Windows Defender ATP. If your organization does not want to share with Microsoft the personal data of employees collected on their devices, it can choose not to subscribe to the Windows Defender ATP service or choose to exclude selected devices from the service.

Your organization’s IT administrator can view data using the [Windows Defender ATP portal](https://securitycenter.windows.com). However, due to the nature of the Windows Defender ATP service, Microsoft cannot support data subject rights, such as rectify (correct), restrict, or port personal data. Windows Defender ATP data is retained and deleted based on the retention policy determined by your organization. In addition, when your organization leaves the service, Windows Defender ATP data is deleted within 180 days, per the Microsoft Online Service Terms (OST).

### Windows Analytics

Windows Analytics is a service that uses Windows diagnostic data from devices enrolled by your IT administrator to provide insights into the operational efficiency of your organization’s user devices. However, due to the nature of the Windows Analytics service, Microsoft cannot support data subject rights, such as rectify (correct), restrict, or port personal data. When Windows Analytics processes device related Windows diagnostic data, it copies some of the data for your organization’s IT to the Windows Analytics workspace in the Azure Cloud.

Your IT administrator can set the level of Windows diagnostic data that is shared with Microsoft and can choose to allow your users to lower this level for their device. Windows Analytics supports personal data privacy by providing the following means for users to control Windows diagnostic data that has been collected.

* **In-app settings** - In the most recent version of Windows, if your IT administrator allows it, your users can lower the amount of diagnostic data that is shared with Microsoft to the minimum required by Windows Analytics.

* **Diagnostic Data Viewer** - In the most recent version of Windows, your users can view Windows diagnostic data on their device by using the [Diagnostic Data Viewer](https://docs.microsoft.com/windows/configuration/diagnostic-data-viewer-overview), if your IT administrator allows this activity.

* **Deleting data** - In the most recent version of Windows, two steps are required by users to delete all data for a device enrolled in Windows Analytics: 
   1. The user must use the Delete diagnostic data setting on their device to remove Windows diagnostic data from the device and the copy of the data stored for Microsoft.
   2. The user must ask the IT administrator to delete the copy of the data that is stored in the Windows Analytics workspace, using the [purge API](https://docs.microsoft.com/rest/api/loganalytics/workspaces 2015-03-20/purge).

For more information about how Microsoft enables you to respond to DSRs, see [GDPR: Data Subject Requests (DSRs)](https://servicetrust.microsoft.com/ViewPage/GDPRDSR) in the Service Trust Portal.

## Learn more
[Microsoft Trust Center](https://www.microsoft.com/en-us/TrustCenter/Privacy/gdpr/default.aspx)