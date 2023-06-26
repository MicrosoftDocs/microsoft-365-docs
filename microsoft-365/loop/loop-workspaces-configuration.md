---
ms.date: 06/19/2023
title: "Manage Loop workspaces in Syntex repository services"
ms.reviewer: dancost, tonchan
ms.author: v-smandalika
author: v-smandalika
manager: dansimp
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: sharepoint-online
ms.localizationpriority: medium
ms.topic: article
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
search.appverid:
- SPO160
- MET150
description: "Learn how to manage Loop workspaces in Syntex repository services."
---

# Manage Loop workspace experiences in Syntex repository services

Loop workspaces and the content created in Loop workspaces are backed by [Syntex repository services](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/). IT admins can manage access to Loop workspaces experiences using Cloud Policy.

If you're looking to manage Loop components in the Microsoft 365 ecosystem, visit [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration).

## Requirements

Just like other Microsoft 365 experiences, Loop also leverages core services across SharePoint and Microsoft 365. To effectively enable Loop workspace experiences, follow the instructions in [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) to ensure connections to Loop services.

### Microsoft 365 Groups for Cloud Policy

If you want to scope the Cloud Policy settings to only some users in your tenant, you must create or use an existing Microsoft 365 group that defines which users in your organization this policy will apply to. To create a Microsoft 365 group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

> [!NOTE]
> This section isn't required if you choose to apply the Loop settings to all the users in your tenant.

You'll be able to use this group for the Cloud Policy setup procedure specified in [Settings management in Cloud Policy](#settings-management-in-cloud-policy).

If you prefer, you can also create other types of groups to use with Cloud Policy. For more information, see [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

### Exchange Online license

Loop workspaces currently require each user to have an Exchange Online license and the user account cannot be a resource account (e.g. a shared mailbox user). If these requirements are not met, users will experience failures in the Loop app; won't receive notifications or signals when they collaborate and update; and encounter failures in other experiences also.

### WebSocket connections

Loop's near real-time communications are enabled by the core services that run a WebSocket server. Coauthors in the same session need to establish secured WebSocket connections to this service to send and receive collaborative data such as changes made by others, live cursors, presence, and so on. These experiences are crucial to Loop, and to all the scenarios powered by Fluid framework. So, at the minimum, WebSocket will need to be unblocked from the user's endpoint.

## Settings management in Cloud Policy

The Loop app checks the following Cloud Policy setting to see if workspaces are enabled:

- **Create and view Loop workspaces in Loop**
  
  > [!NOTE]
  > This policy was previously mistitled **Create and view Loop files in Loop**.

  > [!TIP]
  > If you're new to Cloud Policy and are looking to enable the Loop app for your organization during the public preview, you may appreciate a step-by-step document that describes how to roll out Cloud Policy settings to your tenant. Check out this Tech Community blog: [Learn how to enable the Microsoft Loop app, now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-365-blog/learn-how-to-enable-the-microsoft-loop-app-now-in-public-preview/ba-p/3769013).

To configure these Cloud Policy settings, perform the following steps:

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose **Create and view Loop workspaces in Loop** and then choose one of the following settings:
    - **Enabled**: Loop app and creation of workspaces is available to the users.
    - **Disabled**: Loop app and creation of workspaces isn't available to the users.
    - **Not configured**: Loop app and creation of workspaces isn't available to the users.
        - Loop during Public Preview is **IT Admin Opt-in** by default.
        - Loop app will still open Loop components when workspaces is disabled. If this isn't rolled out to your environment, Loop components will open in Office.com.
        - Ensure additional [Loop service requirements](#requirements) are met.
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there will be a delay in the change being reflected as described below:
- If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations prior to the change, then it will take 24 hours for the change to be reflected.

## eDiscovery for Loop workspaces and content created in Loop workspaces

Loop workspaces and the content created in Loop workspaces don't yet support eDiscovery workflows.

## Related topics

[Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)