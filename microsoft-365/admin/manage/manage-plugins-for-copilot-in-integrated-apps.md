---
title: "Manage Plugins for Copilot in Integrated Apps (PREVIEW)"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 10/10/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: b4527d49-4073-4b43-8274-31b7a3166f92
description: "Determine if your tenant and users meet the requirements, so that you can use Centralized Deployment to deploy Office Add-ins."
---

# Manage Plugins for Copilot in Integrated Apps (PREVIEW)

> [!IMPORTANT]
> The information in this article only applies to the Microsoft Early Access Program, an invite-only paid preview program for commercial customers. Some information in this article relates to a prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft 365 Copilot is a new capability inside Microsoft 365 that combines the power of large language models with your data and Microsoft 365 apps to capture natural language commands to produce content and analyze data. Plugins for Copilot are extensions that enable Copilot to access and use third-party apps, such as Jira, Dynamics 365, or Bing Web Search. Admins can manage plugins for Copilot in the same way as they manage any other app in the Integrated apps section of the Microsoft 365 admin center (MAC). This document explains how admins can enable, disable, assign, block, or remove plugins for Copilot for their organization, and about Copilot capabilities and data privacy.

## Overview

Message extensions are a powerful way for users to engage with your app from Microsoft Teams. They allow users to interact with your web service through buttons and forms in the Microsoft Teams client. Users can search or initiate actions in an external system from the compose message area, the command box, or directly from a message. Message extensions appear along the bottom of the compose box.  

There are two types of message extensions (ME):

- **Action ME** - You want some external system to do an action and the result of the action to be sent back to your conversation.
- **Search-based ME** - You want to find something in an external system, and share the results with the conversation.

Currently, Copilot can use search-based message extensions as plugins, but only those that meet high quality standards and have been validated. Not all search-based message extensions qualify as plugins for Copilot.

When Copilot extensibility is enabled, users can see an extensibility icon in Copilot that allows them to access the plugin for Copilot hub. The plugin hub shows the list of plugins that are available and deployed for the user. Users can toggle it on or off to restrict access of Copilot to any specific plugin during the interaction. Users can also add or remove plugins from the plugin hub by right-clicking on the plugin and selecting the appropriate option. Users can only access the plugins that are allowed by the admin and that they have installed or been assigned to.

## Manage plugins for Copilot plugins in the Microsoft 365 admin center

Admins can manage plugins for Copilot as apps in the Integrated apps section of the Microsoft 365 admin center, where they can see the list of available, deployed, or blocked apps for their organization. They will be able to:

- Enable/Disable Copilot extensibility for the whole organization using PS script.
- Assign or unassign an app with plugins for Copilot to specific users or groups.
- Deploy or remove apps with plugins for Copilot for the whole organization or specific users or groups.
- Block or unblock apps with plugins for Copilot for the whole organization.

## Enabling or disabling Copilot extensibility

Admins can enable or disable Copilot extensibility at the tenant level by using the following Powershell script and instructions. 

### Prerequisites

- PowerShell (Version 5.1 or higher)
- Az module 10.3 or AzureRM 4.4
- Global administrator role
 
### Usage

1. Copy the script to your local machine.
1. Open a PowerShell terminal.
1. Navigate to the directory where the script is located.

### Authentication

The script uses Az module to authenticate the user and generate access token which is then used to call our services.


### Examples


```
# To get Copilot Extensibility Status
.\Invoke-CopilotMethod.ps1 -GetCopilotExtensibilityStatus
```



```
# To Update Copilot Extensibility Status 
.\Invoke-CopilotMethod.ps1 -SetCopilotExtensibilityStatus -EnableCopilotfeature 
.\Invoke-CopilotMethod.ps1 -SetCopilotExtensibilityStatus -DisableCopilotfeature`

```

```azurepowershell
# To Help menu for invoking this script 
 .\Invoke-CopilotMethod.ps1 -Help
```

## Deploy or remove plugins for Copilot

Admins can deploy or remove plugins for Copilot across the whole organization or for specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the available or deployed apps list and click on the **Deploy** or **Remove** button. Admins can also choose to deploy or remove the app for everyone or specific users or groups. Deploying or removing an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## Manage how users can install plugins for Copilot

Admins can assign or unassign plugins for Copilot to specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the available or deployed apps list and click on the **Assign** or **Unassign** button. Admins can also choose to assign or unassign the app to everyone or specific users or groups. Assigning or unassigning an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365. 

## Block or unblock plugins for Copilot

Admins can block or unblock plugins for Copilot for the whole organization or specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilotfrom the available or deployed apps list and click on the block or unblock button. Admins can also choose to block or unblock the app for everyone or specific users or groups. Blocking or unblocking an app affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## View and consent to permissions and data access 

Admins can view and consent to the permissions and data access required by plugins for Copilot by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can see the list of permissions and data access that the app requests and the rationale behind them. Admins can also see the privacy statement and terms of use of the app provider. Admins can provide their consent to the permissions and data access by clicking on the **Accept Permissions** button.


