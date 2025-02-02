---
ms.date: 02/29/2024
title: "Manage Loop app preview"
ROBOTS: NOINDEX, NOFOLLOW
ms.reviewer: dancost, rekeys
ms.author: jenz
author: jenzamora
manager: jtremper
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: how-to
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

This article details the Cloud Policy setting used to gate access to the Loop app preview experiences within your organization.

## User experience expectations when admin settings are configured

When a user account in your organization is provided access to the Loop app preview experience, they can choose between the standard or the preview experience. These users default to preview for each Loop app session and are able to manually switch to standard if needed.

## Microsoft 365 Groups for Cloud Policy

If you want to scope the Cloud Policy settings to only some users in your tenant, you must create or use an existing Microsoft 365 group that defines which users in your organization this policy applies to. To create a Microsoft 365 group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

> [!NOTE]
> This section isn't required if you choose to apply the Loop settings to all the users in your tenant.

You are able to use this group for the Cloud Policy setup procedure specified in [Configuring preview user accounts in Cloud Policy](#configuring-preview-user-accounts-in-cloud-policy).

If you prefer, you can also create other types of groups to use with Cloud Policy. For more information, see [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

## Configuring preview user accounts in Cloud Policy

The Loop app preview gate checks the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) setting:

- **Enable preview features for Loop**

1. Sign in to [https://config.office.com](https://config.office.com) with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose one of the following settings:
    - For **Enable preview features for Loop**:
        - **Enabled**: Loop app preview experience is available to the users.
        - **Disabled**: Loop app preview experience isn't available to the users.
        - **Not configured**: Loop app preview experience isn't available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if necessary. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there can be a delay in the change being reflected as described:

- If there were existing policy configurations before the change, then it takes 90 mins for the change to be reflected.
- If there were no policy configurations before the change, then it takes 24 hours for the change to be reflected.

## Related topics

- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
- [Loop admin policies for Loop components and Loop workspaces](/microsoft-365/loop/loop-components-configuration)
