---
title: "Manage Copilot agents in Integrated Apps"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 9/17/2024
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
description: "Learn how to manage Copilot agents in the Integrated apps page in the Microsoft 365 admin center."
---

# Manage Copilot agents in Integrated Apps

> [!IMPORTANT]
>
> - You must have Microsoft 365 Copilot license to use Copilot agents.
> - The capability is enabled by default in all Microsoft 365 Copilot licensed tenants.
> - Admins can disable this functionality for a user or a group. Also, admins control how individual agents are approved for use and which agents are enabled.

Microsoft 365 Copilot is a new experience in Microsoft 365 that combines the power of large language models with your data and apps in Microsoft 365 to capture natural language commands to produce content and analyze data. It enables access to and use of third-party apps, such as Jira, [Dynamics 365](/microsoft-365-copilot/extensibility/overview-business-applications), or Bing Web Search. Admins can manage Copilot agents in the same way as they manage any other app in the Integrated apps section of the Microsoft 365 admin center. Admins can enable, disable, assign, block, or remove Copilot agents for their organization, and manage Copilot capabilities and data privacy.

## Overview

Agents enhance the functionality of Copilot by adding search capabilities, custom actions, connectors, and APIs. Agents are custom versions of Microsoft 365 Copilot that combine instructions, knowledge, and skills to perform specific tasks or scenarios.

Microsoft Copilot Studio is a low-code development platform that offers a graphical environment to build Copilot agents tailored to the internal needs of an organization. Copilot Studio enables developers and makers to create and test their applications in a user-friendly interface.

However, before these agents can become available to users, the agents must undergo a streamlined process of submission and approval. To learn more, see [Publish Copilot agents](#publish-copilot-agents).

When Copilot extensibility is enabled, users can see third party agents in Copilot that allows them to access the Copilot. The hub Copilot experience shows the list of agents that are available and deployed for the user. Users can toggle it on or off to restrict access of Copilot to any specific agents during the interaction. Users can also add or remove agents in their Copilot experience by right-clicking on the agents and selecting the appropriate option. Users can only access the agents that are allowed by the admin and that they have installed or been assigned to.

## Manage Copilot agents in the Microsoft 365 admin center

Admins can manage Copilot agents as apps in the Integrated apps section of the Microsoft 365 admin center, where they can see the list of available, deployed, or blocked apps for their organization. They are able to:

- Enable or disable Copilot extensibility for the complete organization through Microsoft 365 admin center settings.
- Make a Copilot agent available to specific users or groups.
- Block or unblock Copilot agents for the complete organization.
- Deploy or remove Copilot agents for the complete organization or specific users or groups.

Admins can view Copilot agents from the list of available, deployed, or blocked apps on the Integrated apps page by using the filter option of **Host products > Copilot**.

You can also check if a specific app has Copilot support by selecting it from apps list and checking if the app overview mentions **Copilot** as a host product.

## Enable or disable Copilot extensibility

Admins can enable or disable Copilot extensibility for their org by using a setting in the tenant default options in the Integrated Apps section of the Microsoft 365 admin center. This setting lets you control who can access Copilot agents in their organization. The setting has three options:

- **All Users**: This is the default option and it means that all users in the organization can access Copilot agents, subject to the existing app policies and user assignments.
- **No Users**: This option means that no users in the organization can access Copilot agents, and the third party agents are disabled in the Copilot agents flyout. This option also hides Copilot agents from the list of Available and Deployed apps on the Integrated Apps page.
- **Specific Users**: This option lets you select specific users or groups in your organization to have access to Copilot agents. So while all or specific users in your organization may have permissions to install and use apps from the Available apps and Deployed apps lists, only the users or groups you select in this setting can use Copilot agents.

## Deploy or remove Copilot agents

Admins can deploy or remove Copilot agents across the whole organization or for specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select a Copilot agent from the list of Available or Deployed apps and select **Deploy** or **Remove**. Admins can also choose to deploy or remove the agents for everyone or specific users or groups. Deploying or removing an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

## Manage how users can install Copilot agents

Admins can assign or unassign Copilot agents to specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and select the **Assign** or **Unassign** option. Admins can also choose to assign or unassign the app to everyone or specific users or groups. Assigning or unassigning an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

> [!IMPORTANT]
> Developers can [update the existing apps](/microsoft-365-copilot/extensibility/) to work with Microsoft 365 Copilot. If the updated app was pre-approved or pre-installed by an admin, then it'll update for the assigned users and starts working with Copilot. If a developer updates a previously blocked app to work with Microsoft 365 Copilot and then the admins make the app available to the users, then such an app also works with Copilot.

## Block or unblock Copilot agents

Admins can block or unblock Copilot agents for the complete organization or specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. Admins can select an app that has Copilot agent from the list of Available or Deployed apps and select the block or unblock option. Admins can also choose to block or unblock an agent for everyone or specific users or groups. Blocking or unblocking an agent affects its availability and functionality in Copilot as well as other host products, such as Outlook, Teams, or Microsoft 365.

## View and consent to permissions and data access

For detailed information about how Microsoft 365 Copilot uses, protects, and shares organizational information to power extensibility, see [Data, Privacy, and Security for Microsoft 365 Copilot](/microsoft-365-copilot/microsoft-365-copilot-privacy).

## Publish Copilot agents

The publishing process in the Microsoft 365 admin center for Copilot agents submitted via Copilot Studio is designed to ensure governance and quality of the custom applications. It also reduces manual work by automating the submission of manifests, freeing developers and admins from tedious tasks. The simplified approval process reduces the time it takes for you to approve apps, making it easier for you to manage custom applications in the Microsoft 365 admin center.

The publishing process involves the following steps:

1. Developers create and test Copilot agents in Copilot Studio, which provides a user-friendly interface for inputting the parameters and data for the applications.
1. Developers submit their Copilot agents for approval from within Copilot Studio to the Microsoft 365 admin center.
1. You can discover the apps with Copilot agents that are submitted but not yet approved in admin center under the **Requested Apps** tab in the Integrated Apps section. The tab shows the name, host products, status, and Copilot readiness of the applications. The status of a new app is `Publish pending` and of an update to an existing app is `Update pending`.
1. You can select a pending application to see more details and metadata, such as the description, requester, request date, and the status. These details help you to make an informed decision on whether to publish or reject the application.
1. You can approve or disapprove any pending application by selecting **Publish** or **Reject**.

   1. If the application is approved, it becomes available to the org users based on the org default settings and Copilot default settings. The application also becomes part of the `Available apps` list in the admin center, where admins can manage user assignments and other settings as any other app.

   1. If the application is disapproved, it is removed from the `Pending approval` list in the admin center, and the status is shared with Copilot Studio. The developer can make changes and resubmit the application for approval.

1. If the developer publishes an update to an existing application, the update is also submitted for approval and follows the same workflow as a new application. The update is shown in the ‘Pending approval’ list with the status `Update pending`. Until the update is approved, the previous version of the application remains available to the users.
