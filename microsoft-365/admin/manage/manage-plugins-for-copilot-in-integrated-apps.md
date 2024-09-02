---
title: "Manage extensions for Copilot in Integrated Apps"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 11/09/2023
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to manage extensions for Copilot in the Integrated apps page in the Microsoft 365 admin center."
---

# Manage extensions for Copilot in Integrated Apps

> [!IMPORTANT]
>
> - You must be licensed with Copilot for Microsoft 365 to use extensions for Copilot for Microsoft 365.
> - The capability is enabled by default in all Microsoft 365 Copilot licensed tenants.
> - Admins can disable this functionality on a user and group basis and control how individual extensions are approved for use, and which extensions are enabled.

Microsoft Copilot for Microsoft 365 is a new experience inside Microsoft 365 that combines the power of large language models with your data and apps in Microsoft 365 to capture natural language commands to produce content and analyze data. Extensions for Copilot are extensions that enable Copilot to access and use third-party apps, such as Jira, [Dynamics 365](/microsoft-365-copilot/extensibility/overview-business-applications), or Bing Web Search. Admins can manage extensions for Copilot in the same way as they manage any other app in the Integrated apps section of the Microsoft 365 admin center. This document explains how admins can enable, disable, assign, block, or remove extensions for Copilot for their organization, and about Copilot capabilities and data privacy.

## Overview

Extensions enhance the functionality of Copilot by adding search capabilities, custom actions, connectors, and APIs. *Declarative copilots* are custom versions of Copilot for Microsoft 365 that combine instructions, knowledge, and skills to perform specific tasks or scenarios.

Microsoft Copilot Studio (MCS) is a low code development platform that offers a graphical environment to build declarative copilots and other extensions tailored to the internal needs of an organization. Copilot Studio enables developers and makers to create and test their applications in a user-friendly interface.

However, before these applications can become accessible to end users, they need to undergo a streamlined process of submission and approval. To learn more, see [Publish extensions for Copilot](#publish-extensions-for-copilot).

When Copilot extensibility is enabled, users can see 3P extensions in Copilot that allows them to access the plugin for Copilot. The plugin hub Copilot experience shows the list of extensions that are available and deployed for the user. Users can toggle it on or off to restrict access of Copilot to any specific plugin during the interaction. Users can also add or remove extensions in their Copilot experience by right-clicking on the plugin and selecting the appropriate option. Users can only access the extensions that are allowed by the admin and that they have installed or been assigned to.

## Manage extensions for Copilot in the Microsoft 365 admin center

Admins can manage extensions for Copilot as apps in the Integrated apps section of the Microsoft 365 admin center, where they can see the list of available, deployed, or blocked apps for their organization. They will be able to:

- Enable/disable Copilot extensibility for the whole organization through Microsoft 365 admin center settings.
- Make available an app with extensions for Copilot to specific users or groups.
- Deploy or remove apps with extensions for Copilot for the whole organization or specific users or groups.
- Block or unblock apps with extensions for Copilot for the whole organization.

Admins can view all apps that have Copilot support from the list of available, deployed, or blocked apps on the Integrated apps page by using the filter option of **Microsoft 365 Copilot support** and setting it to **Yes**.

You can also check if a specific app has Copilot support by selecting it from apps list and checking if the app properties contains a tag stating **Microsoft 365 Copilot plug in is disabled** or **Microsoft 365 Copilot plug in is enabled**.  

## Enable or disable Copilot extensibility

Admins can enable or disable Copilot extensibility at the tenant level by using a new setting in the tenant default options in the Integrated Apps section of the Microsoft 365 admin center. This setting allows admins to control who can access Copilot extensions in their organization. The setting has three options:

- **All Users**: This is the default option and it means that all users in the organization can access Copilot extensions, subject to the existing app policies and user assignments.
- **No Users**: This option means that no users in the organization can access Copilot extensions, and the 3P extensions are disabled in the Copilot plugin flyout. This option also hides the apps that have Copilot extensions from the Available apps and Deployed apps lists in the Microsoft 365 admin center.
- **Specific Users**: This option allows you to select specific users or groups in your organization to have access to Copilot extensions. So while all or specific users in your organization may have permissions to install and use apps from the Available apps and Deployed apps lists, only the users or groups you select in this setting can use Copilot extensions within these apps.

## Deploy or remove extensions for Copilot

Admins can deploy or remove extensions for Copilot across the whole organization or for specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and select **Deploy** or **Remove**. Admins can also choose to deploy or remove the app for everyone or specific users or groups. Deploying or removing an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## Manage how users can install extensions for Copilot

Admins can assign or unassign extensions for Copilot to specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and click on the **Assign** or **Unassign** button. Admins can also choose to assign or unassign the app to everyone or specific users or groups. Assigning or unassigning an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

> [!IMPORTANT]
> Developers can [update the existing apps](/microsoft-365-copilot/extensibility/) to be used with Microsoft Copilot. If such an updated extension is pre-approved and pre-installed by an admin, then it'll update for the users and start working with Copilot. If a developer updates a previously blocked extension to use Copilot and then the admins make the extension available to the users, then such an extension also works with Copilot.

## Block or unblock extensions for Copilot

Admins can block or unblock extensions for Copilot for the whole organization or specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and click on the block or unblock button. Admins can also choose to block or unblock the app for everyone or specific users or groups. Blocking or unblocking an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## View and consent to permissions and data access

For detailed information about how Copilot for Microsoft 365 uses, protects, and shares organizational information to power extensibility, see [Data, Privacy, and Security for Copilot for Microsoft 365](/microsoft-365-copilot/microsoft-365-copilot-privacy).

## Publish extensions for Copilot

The publishing process in the Microsoft 365 admin center for apps with Copilot extensions submitted via Copilot Studio is designed to ensure governance and quality of the custom applications. It also reduces manual work by automating the submission of manifests, freeing developers and admins from tedious tasks. The simplified approval process reduces the time it takes for you to approve apps, making it easier for you to manage custom applications in the Microsoft 365 admin center.

The publishing process involves the following steps:

1. Developers create and test their apps with Copilot extensions in Copilot Studio, which provides a user-friendly interface for inputting the parameters and data for the applications.
2. Developers submit their apps with Copilot extensions for approval from Copilot Studio to the Microsoft 365 admin center.
3. You can discover the apps with Copilot extensions that are submitted but not yet approved in admin center under the new Requested Apps tab in the Integrated Apps section. The tab shows the name, host products, status, and Copilot readiness of the applications. The status can be either ‘Publish pending’ or ‘Update pending’, depending on whether the application is new or has been updated by the developer.
4. You can select on any pending application to see more details and metadata, such as the description, requester, request date, and the status. These details help you to make an informed decision on whether to publish or reject the application.
5. You can approve or disapprove any pending application by selecting **Publish** or **Reject**.

   a. If the application is approved, it becomes available to the end users based on the tenant default settings and Copilot default settings. The application also becomes part of the ‘Available apps’ list in the admin center, where admins can manage user assignments and other settings as any other MOS app.

   b. If the application is disapproved, it is removed from the ‘Pending approval’ list in the admin center, and the status is shared with Copilot Studio. The developer can then make changes and resubmit the application for approval.

6. If the developer publishes an update to an existing application, the update is also submitted for approval and follows the same workflow as a new application. The update is shown in the ‘Pending approval’ list with the status ‘Update pending’. Until the update is approved, the previous version of the application remains available to the end users.
