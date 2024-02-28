---
ms.date: 08/21/2023
title: "Manage Loop app preview"
ms.reviewer: dancost, rekeys
ms.author: mikeplum
author: MikePlumleyMSFT
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
description: "Learn how to manage access to the Loop app preview."
---

# Manage Loop app preview access

This article details the Cloud Policy setting used to gate access to the Loop app Preview experiences within your organization. Microsoft must invite you to the preview. If your tenant is invited, you can configure the users who will have access by using Cloud Policy. If your tenant is not invited, this policy will have no effect in your organization.

## Requirements

Users in your organization must first be enabled for Loop app with workspaces and also licensed for Loop app with workspaces. Learn more in [License Requirements](/microsoft-365/loop/loop-workspaces-configuration#license-requirements). If both of these conditions are true, and the user account is added to the Loop app Preview policy, they will also be enabled for Loop app Preview experiences.

## User experience expectations when admin settings are configured

When a user account in your organization is provided access to the Loop app Preview experience, they can choose between the Production or the Preview experience. They will default to Preview for each Loop app session and file loaded, and are able to manually switch to Production if needed.

## Microsoft 365 Groups for Cloud Policy

If you want to scope the Cloud Policy settings to only some users in your tenant, you must create or use an existing Microsoft 365 group that defines which users in your organization this policy will apply to. To create a Microsoft 365 group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

> [!NOTE]
> This section isn't required if you choose to apply the Loop settings to all the users in your tenant.

You'll be able to use this group for the Cloud Policy setup procedure specified in [Settings management in Cloud Policy](#settings-management-in-cloud-policy).

If you prefer, you can also create other types of groups to use with Cloud Policy. For more information, see [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

## Configuring Preview user accounts in Cloud Policy

The Loop app Preview gate checks the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) setting:

- **Enable preview features for Loop**

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose one of the following settings:
    - For **Enable preview features for Loop**:
        - **Enabled**: Loop app Preview experience is available to the users.
        - **Disabled**: Loop app Preview experience isn't available to the users.
        - **Not configured**: Loop app Preview experience isn't available to the users.   
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there can be a delay in the change being reflected as described below:
- If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations prior to the change, then it will take 24 hours for the change to be reflected.

## Related topics

- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
- [Manage Loop workspace experiences in SharePoint Embedded](/microsoft-365/loop/loop-workspaces-configuration)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)

