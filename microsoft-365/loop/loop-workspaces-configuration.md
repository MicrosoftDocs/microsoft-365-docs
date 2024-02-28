---
ms.date: 08/21/2023
title: "Manage Loop workspaces in SharePoint Embedded"
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
- essentials-manage
search.appverid:
- SPO160
- MET150
description: "Learn how to manage Loop workspaces in SharePoint Embedded."
---

# Manage Loop workspace experiences in SharePoint Embedded

Loop workspaces and the content created in Loop workspaces are stored in [SharePoint Embedded](https://techcommunity.microsoft.com/t5/sharepoint-premium-blog/announcing-sharepoint-embedded-public-preview-at-espc23/ba-p/3993428) containers. IT admins can manage access to Loop workspaces experiences using Cloud Policy.

If you're looking to manage Loop components in the Microsoft 365 ecosystem, visit [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration).

## Requirements

Just like other Microsoft 365 experiences, Loop also uses core services across SharePoint and Microsoft 365. To effectively enable Loop workspace experiences, follow the instructions in [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) to ensure connections to Loop services.

### License requirements

Licensing through the new Loop with workspaces service plan covers the creation of new workspaces and management of workspace members. The full set of experiences enabled and the specific licenses that include the Loop with workspaces service plan are covered in [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa).

### WebSocket connections

Loop's near real-time communications are enabled by the core services that run a WebSocket server. Coauthors in the same session need to establish secured WebSocket connections to this service to send and receive collaborative data such as changes made by others, live cursors, presence, and so on. These experiences are crucial to Loop, and to all the scenarios powered by Fluid framework. So, at the minimum, WebSocket needs to be unblocked from the user's endpoint.

### Microsoft 365 Groups for Cloud Policy

If you want to scope the Cloud Policy settings to only some users in your tenant, create or use an existing Microsoft 365 group. This group is used to define which users in your organization this policy apply to. To create a Microsoft 365 group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

> [!NOTE]
> This section isn't required if you choose to apply the Loop settings to all the users in your tenant.

You can use this group for the Cloud Policy setup procedure specified in [Settings management in Cloud Policy](#settings-management-in-cloud-policy).

If you prefer, you can also create other types of groups to use with Cloud Policy. For more information, see [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

## User experience expectations when admin settings are configured

As described in this topic, you can control the ability for users in your environment to create new Loop content. You can configure this either via select groups or for your entire tenant. To prevent collaboration between certain groups in your organization, refer to [Information Barriers](/en-us/purview/information-barriers-sharepoint).

### Here's what you should expect when using the Loop IT admin controls configured to Disabled

If configured to Disabled, the settings in this article will prevent creation of new Loop files. However, when Disabled, there are still a few places that Loop experiences can appear.

Because Loop app creates files in SharePoint Embedded, files and workspaces that were created before IT admins disable new creation can still appear in places such as Microsoft365.com, the Loop component viewer and editor (loop.microsoft.com), and links to Loop components shared in messages or documents. The files themselves are not removed and access to these files is determined by the permissions set on them. Therefore, someone with edit access to a Loop file can still open it and edit it after you have disabled creation of new Loop files. This would be similar to a txt file or any other file in OneDrive or SharePoint.

In addition, because there are no separate licensing requirements for the Loop component viewer and editor, only the requirement that users have access to OneDrive, users will still be able to access the Loop component viewer and editor by visiting loop.microsoft.com and via Loop in the All apps view in Microsoft365.com. The presence of the Loop app in the All apps view is dependent on the user having a license to OneDrive; if you wish to prevent users from seeing the Loop app, you can disable their access to OneDrive, or configure a conditional access policy for loop.microsoft.com so that visits to the page fail to load.

### Additional IT Admin resources

You can learn more about [Loop storage](/microsoft-365/loop/loop-compliance-summary#loop-storage) or [Conditional Access Policies](/sharepoint/control-access-from-unmanaged-devices) and [manually provisioning the Loop app for conditional access](/microsoft-365/loop/loop-compliance-summary#manually-initializing-microsoft-loop-app-for-conditional-access-management-in-microsoft-entra).

## Settings management in the Microsoft Admin Center

If you're looking for a simple way to turn on or off the creation of content in Loop workspaces in your tenant, do the following:

1. Sign in to the Microsoft 365 admin center as a Global Administrator.
1. Navigate to [Home > Org settings > Services > Loop](https://admin.microsoft.com/Adminportal/Home#/Settings/Services/:/Settings/L1/Loop).
1. Choose your desired state for Loop workspaces via the checkbox.
    > [!NOTE]
    > While we are updating the admin center to reflect the state of Loop in your environment, the checkbox may not reflect your configured state on load. However, the state you select and choose Save in the Admin Center will persist and override any defaults for your tenant.
1. Select Save.

The Microsoft Admin Center configures the Cloud Policy setting described in the next section, targeted at All users (your full tenant). See the next section if you wish to perform more advanced controls. If you previously configured a Cloud Policy for a group prior to when this Loop setting was defaulted to Enabled, review your Cloud Policy settings to confirm they still match your expectation.

## Settings management in Cloud Policy

The Loop app checks the following Cloud Policy setting to see if workspaces are enabled:

- **Create and view Loop workspaces in Loop**

To configure this Cloud Policy setting, perform the following steps:

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose **Create and view Loop workspaces in Loop** and then choose one of the following settings:
    - **Disabled**: Creation of Loop content in workspaces isn't available to the users.
        - Loop app will open Loop components when workspaces is disabled. If this isn't rolled out to your environment, Loop components open in Office.com.
    - **Enabled**: Creation of Loop content in workspaces is available to the users.
    - **Not configured**: Creation of Loop content in workspaces is available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if necessary. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there will be a delay in the change being reflected:

- If there were existing policy configurations before the change, then it takes 90 mins for the change to be reflected.
- If there were no policy configurations before the change, then it takes 24 hours for the change to be reflected.

> [!NOTE]
> In order to target only a group of users in your organization to be able to create and view Loop content in workspaces, create a second group that targets All users, set this group to Disabled, and make it a lower priority than your target group that is set to Enabled. This will override the default Not Configured state to Disabled for all users but your target group.

## Related topics

- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)
- [Summary of governance, lifecycle and compliance capabilities for Loop](/microsoft-365/loop/loop-compliance-summary)
