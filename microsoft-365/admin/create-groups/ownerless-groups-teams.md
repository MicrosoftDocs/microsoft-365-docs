---
title: "Manage ownerless Microsoft 365 groups and teams"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
search.appverid:
- MET150
- MOE150
description: "Learn how to automatically invite members to become owners in an ownerless Microsoft 365 group or a team in Microsoft Teams."
---

# Manage ownerless Microsoft 365 groups and teams

A team in Microsoft Teams or a Microsoft 365 group and its related services can become ownerless if an owner's account is deleted or disabled in Microsoft 365. Groups and teams require an owner to add or remove members and change group settings.

A Global administrator can create a policy that automatically asks the most active members of an ownerless group or team if they'll accept ownership. When a member accepts the invitation to become an owner, the action is logged in the compliance portal audit log. Guests are never invited to be owners.

When creating the policy, you can specify:
- If you want to limit who can be invited to be an owner by specifying a security group
- The sender address of the notifications
- The number of weeks that the notifications will be sent
- Which groups or teams are part of the policy

> [!Note]
> Using a security group to limit who can be invited to be an owner requires that you possess but not necessarily assign an Azure AD Premium license for each Microsoft 365 group member in your organization.

To set an ownerless group or team policy

1. In the admin center, go to **Show all** \> **Settings** \> **Org settings** and on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Services** tab</a>, select **Microsoft 365 Groups**.

1. Select the **When there's no owner, email and ask active group members to become an owner** check box.

1. If you want to keep the default configuration settings, select **Save**, otherwise, select **Configure policy** and complete the following steps.

1. On the *Weekly notification options* page, specify who can receive ownership notifications. If you choose to allow or block certain members, then search for and add the security group that you want to use.

1. Type the number of active members that you want to notify and select the number of weeks to send the notification. (The notification list is created during the first notification and does not change.) Select **Next**.

1. On the *Who is this email coming from* page, select a sender for the email, and then select **Next**.

1. On the *Subject and message* page, customize the email and optionally include a **policy guideline URL**, and then select **Next**.

1. On the *Select which groups to target* page, select **Specific groups** and choose the groups and teams that you want to include in this policy, or select **All groups**.

1. Select **Next**.

1. On the *Review and finish* page, confirm your settings and click **Finish**, and then select **Done**.

Notifications are sent weekly starting within 24 hours of policy creation. Recipients can't forward the notifications to others. Notifications and responses are tracked in the audit log.

Up to two group members per group can accept the invitation to become an owner. If no group members accept, an administrator will have to [assign a group owner](/admin/create-groups/add-or-remove-members-from-groups).


