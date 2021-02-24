---
title: "Create and configure retention policies to automatically retain or delete content"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Use a retention policy to efficiently keep control of the content that users generate with email, documents, and conversations. Keep what you want and get rid of what you don't."
---

# Create and configure retention policies

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Use a retention policy to manage the data for your organization by deciding proactively whether to retain content, delete content, or retain and then delete the content.

A retention policy lets you do this very efficiently by assigning the same retention settings at the container level to be automatically inherited by content in that container. For example, all items in SharePoint sites, all email messages in users' Exchange mailboxes, all channel messages for teams that are used with Microsoft Teams. If you're not sure whether to use a retention policy at the container level or a retention label at the item level, see [Retention policies and retention labels](retention.md#retention-policies-and-retention-labels).

For more information about retention policies and how retention works in Microsoft 365, see [Learn about retention policies and retention labels](retention.md).

> [!NOTE]
> The information on this page is for compliance administrators. If you are not an administrator and want to understand how retention policies have been configured for the apps that you use, contact your help desk, IT department, or administrator. If you're seeing messages about retention policies in Teams chats and channel messages, you might find it helpful to review [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

## Before you begin

The global admin for your organization has full permissions to create and edit retention policies. If you aren't signing in as a global admin, see [Permissions required to create and manage retention policies and retention labels](get-started-with-retention.md#permissions-required-to-create-and-manage-retention-policies-and-retention-labels).

## Create and configure a retention policy

Although a retention policy can support multiple services that are identified as "locations" in the retention policy, you can't create a single retention policy that includes all the supported locations:

- Exchange email
- SharePoint site
- OneDrive accounts
- Microsoft 365 groups
- Skype for Business
- Exchange public folders
- Teams channel messages
- Teams chats
- Yammer community messages
- Yammer private messages

If you select the Teams or Yammer locations when you create a retention policy, the other locations are automatically excluded. This means that the instructions to follow depend on whether you need to include the Teams or Yammer locations:

- [Instructions for a retention policy for Teams locations](#retention-policy-for-teams-locations)
- [Instructions for a retention policy for Yammer locations](#retention-policy-for-yammer-locations)
- [Instructions for a retention policy for locations other than Teams and Yammer](#retention-policy-for-locations-other-than-teams-and-yammer)

When you have more than one retention policy, and when you also use retention labels, see [The principles of retention, or what takes precedence?](retention.md#the-principles-of-retention-or-what-takes-precedence) to understand the outcome when multiple retention settings apply to the same content.

### Retention policy for Teams locations

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to start the Create retention policy wizard, and name your new retention policy.

3. For the **Choose locations to apply the policy** page, select one or both of the locations for Teams: **Teams channel message** and **Teams chats**.

   For **Teams channel messages**, message from standard channels but not [private channels](https://docs.microsoft.com/microsoftteams/private-channels) are included. Currently, private channels aren't supported by retention policies.

   By default, [all teams and all users are selected](#a-policy-that-applies-to-entire-locations), but you can refine this by selecting the [**Choose** and **Exclude** options](#a-policy-with-specific-inclusions-or-exclusions).

4. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content.

   You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](configure-retention-settings.md#settings-for-retaining-and-deleting-content).

5. Complete the wizard to save your settings.

For more information about retention policies for Teams, see [Retention policies in Microsoft Teams](https://docs.microsoft.com/microsoftteams/retention-policies) from the Teams documentation.

#### Additional retention policy needed to support Teams

Teams is more than just chats and channel messages. If you have teams that were created from a Microsoft 365 group (formerly Office 365 group), you should additionally configure a retention policy that includes that Microsoft 365 group by using the **Microsoft 365 Groups** location. This retention policy applies to content in the group's mailbox, site, and files.

If you have team sites that aren't connected to a Microsoft 365 group, you need a retention policy that includes the **SharePoint sites** or **OneDrive accounts** locations to retain and delete files in Teams:

- Files that are shared in chat are stored in the OneDrive account of the user who shared the file.

- Files that are uploaded to channels are stored in the SharePoint site for the team.

> [!TIP]
> You can apply a retention policy to the files of just a specific team when it's not connected to a Microsoft 365 group by selecting the SharePoint site for the team, and the OneDrive accounts of users in the Team.

It's possible that a retention policy that's applied to Microsoft 365 groups, SharePoint sites, or OneDrive accounts could delete a file that's referenced in a Teams chat or channel message before those messages get deleted. In this scenario, the file still displays in the Teams message, but when users select the file, they get a "File not found" error. This behavior isn't specific to retention policies and could also happen if a user manually deletes a file from SharePoint or OneDrive.

### Retention policy for Yammer locations

> [!NOTE]
> Retention policies for Yammer are rolling out in preview. If you don't yet see the new locations for Yammer, try again in a few weeks.
>
> To use this feature, your Yammer network must be [Native Mode](https://docs.microsoft.com/yammer/configure-your-yammer-network/overview-native-mode), not Hybrid Mode.

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to create a new retention policy.

3. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content. 
    
    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page.
    
    Do not select **Use advanced retention settings** because this option isn't supported for Yammer locations. 

4. For the **Choose locations** page, select **Let me choose specific locations**. Then toggle on one or both of the locations for Yammer: **Yammer community message** and **Yammer private messages**.
    
    By default, all communities and users are selected, but you can refine this by specifying communities and users to be included or excluded.
    
    For Yammer private messages: 
    - If you leave the default at **All**, Azure B2B guest users are not included. 
    - If you select **Choose user**, you can apply a retention policy to external users if you know their account.

5. Complete the wizard to save your settings.

For more information about how retention policies work for Yammer, see [Learn about retention for Yammer](retention-policies-yammer.md).

#### Additional retention policies needed to support Yammer

Yammer is more than just community messages and private messages. To retain and delete email messages for your Yammer network, configure an additional retention policy that includes any Microsoft 365 groups that are used for Yammer, by using the **Microsoft 365 Groups** location. 

To retain and delete files that are stored in Yammer, you need a retention policy that includes the **SharePoint sites** or **OneDrive accounts** locations:

- Files that are shared in private messages are stored in the OneDrive account of the user who shared the file. 

- Files that are uploaded to communities are stored in the SharePoint site for the Yammer community.

It's possible that a retention policy that's applied to SharePoint sites or OneDrive accounts could delete a file that's referenced in a Yammer message before those messages get deleted. In this scenario, the file still displays in the Yammer message, but when users select the file, they get a "File not found" error. This behavior isn't specific to retention policies and could also happen if a user manually deletes a file from SharePoint or OneDrive.

### Retention policy for locations other than Teams and Yammer

Use the following instructions for retention policies that apply to any of these services:

- Exchange: Email and public folders
- SharePoint: Sites
- OneDrive: Accounts
- Microsoft 365 groups
- Skype for Business

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to start the Create retention policy wizard, and name your new retention policy.

3. For the **Choose locations** page, toggle on or off any of the locations except the locations for Teams. For each location, you can leave it at the default to [apply the policy to the entire location](#a-policy-that-applies-to-entire-locations), or [specify includes and excludes](#a-policy-with-specific-inclusions-or-exclusions).

    Information specific to locations:
    - [Exchange email and Exchange public folders](#configuration-information-for-exchange-email-and-exchange-public-folders)
    - [SharePoint sites and OneDrive accounts](#configuration-information-for-sharepoint-sites-and-onedrive-accounts)
    - [Microsoft 365 Groups](#configuration-information-for-microsoft-365-groups)
    - [Skype for Business](#configuration-information-for-skype-for-business)

4. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content.

    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page.

5. Complete the wizard to save your settings.

