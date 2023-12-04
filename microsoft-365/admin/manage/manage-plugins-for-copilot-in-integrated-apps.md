---
title: "Manage Apps with Plugins for Copilot in Integrated Apps"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 11/09/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to manage plugins for Copilot in the Integrated apps page in the Microsoft 365 admin center."
---

# Manage Plugins for Copilot in Integrated Apps

> [!IMPORTANT]
> You must be licensed with Microsoft 365 Copilot to use plugins for Copilot for Microsoft 365. During the Public Preview, admins will need to enable their tenant by contacting their Microsoft Customer Success Account Manager or submitting a support ticket requesting to "Opt-in to plugins for Copilot for Microsoft 365."

Microsoft Copilot for Microsoft 365 is a new experience inside Microsoft 365 that combines the power of large language models with your data and Microsoft 365 apps to capture natural language commands to produce content and analyze data. Plugins for Copilot are extensions that enable Copilot to access and use third-party apps, such as Jira, Dynamics 365, or Bing Web Search. Admins can manage plugins for Copilot in the same way as they manage any other app in the Integrated apps section of the Microsoft 365 admin center. This document explains how admins can enable, disable, assign, block, or remove plugins for Copilot for their organization, and about Copilot capabilities and data privacy.

## Overview

Message extensions are a powerful way for users to engage with your app from Microsoft Teams. They allow users to interact with your web service through buttons and forms in the Microsoft Teams client. Users can search or initiate actions in an external system from the compose message area, the command box, or directly from a message. Message extensions appear along the bottom of the compose box.  

There are two types of message extensions (ME):

- **Action ME** - You want some external system to do an action and the result of the action to be sent back to your conversation.
- **Search-based ME** - You want to find something in an external system, and share the results with the conversation.

Currently, Copilot can use search-based message extensions as plugins, but only those that meet high quality standards and have been validated. Not all search-based message extensions qualify as plugins for Copilot.

When Copilot extensibility is enabled, users can see 3P plugins in Copilot that allows them to access the plugin for Copilot. The plugin hub Copilot experience shows the list of plugins that are available and deployed for the user. Users can toggle it on or off to restrict access of Copilot to any specific plugin during the interaction. Users can also add or remove plugins in their Copilot experience by right-clicking on the plugin and selecting the appropriate option. Users can only access the plugins that are allowed by the admin and that they have installed or been assigned to.

## Manage plugins for Copilot in the Microsoft 365 admin center

Admins can manage plugins for Copilot as apps in the Integrated apps section of the Microsoft 365 admin center, where they can see the list of available, deployed, or blocked apps for their organization. They will be able to:

- Enable/disable Copilot extensibility for the whole organization through Microsoft 365 admin center settings.
- Make available an app with plugins for Copilot to specific users or groups.
- Deploy or remove apps with plugins for Copilot for the whole organization or specific users or groups.
- Block or unblock apps with plugins for Copilot for the whole organization.

Admins can view all apps that have Copilot support from the list of available, deployed, or blocked apps on the Integrated apps page by using the filter option of **Microsoft 365 Copilot support** and setting it to **Yes**.

You can also check if a specific app has Copilot support by selecting it from apps list and checking if the app properties contains a tag stating **Microsoft 365 Copilot plug in is disabled** or **Microsoft 365 Copilot plug in is enabled**.  

## Enable or disable Copilot extensibility

Admins can enable or disable Copilot extensibility at the tenant level by using a new setting in the tenant default options in the Integrated Apps section of the Microsoft 365 admin center. This setting allows admins to control who can access Copilot plugins in their organization. The setting has three options:

- **All Users**: This is the default option and it means that all users in the organization can access Copilot plugins, subject to the existing app policies and user assignments.
- **No Users**: This option means that no users in the organization can access Copilot plugins, and the 3P plugins are disabled in the Copilot plugin flyout. This option also hides the apps that have Copilot plugins from the Available apps and Deployed apps lists in the Microsoft 365 admin center.
- **Specific Users**: This option allows you to select specific users or groups in your organization to have access to Copilot plugins. So while all or specific users in your organization may have permissions to install and use apps from the Available apps and Deployed apps lists, only the users or groups you select in this setting can use Copilot plugins within these apps.

## Deploy or remove plugins for Copilot

Admins can deploy or remove plugins for Copilot across the whole organization or for specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and click on the **Deploy** or **Remove** button. Admins can also choose to deploy or remove the app for everyone or specific users or groups. Deploying or removing an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## Manage how users can install plugins for Copilot

Admins can assign or unassign plugins for Copilot to specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and click on the **Assign** or **Unassign** button. Admins can also choose to assign or unassign the app to everyone or specific users or groups. Assigning or unassigning an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## Block or unblock plugins for Copilot

Admins can block or unblock plugins for Copilot for the whole organization or specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and click on the block or unblock button. Admins can also choose to block or unblock the app for everyone or specific users or groups. Blocking or unblocking an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## View and consent to permissions and data access 

For detailed information about how Microsoft 365 Copilot uses, protects, and shares organizational information to power extensibility, see [Data, Privacy, and Security for Microsoft 365 Copilot](/microsoft-365-copilot/microsoft-365-copilot-privacy).