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

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Use a retention policy to manage the data for your organization by deciding proactively whether to retain content, delete content, or retain and then delete the content.

A retention policy lets you do this very efficiently by assigning the same retention settings at the container level to be automatically inherited by content in that container. For example, all items in SharePoint sites, all email messages in users' Exchange mailboxes, all channel messages for teams that are used with Microsoft Teams. If you're not sure whether to use a retention policy at the container level or a retention label at the item level, see [Retention policies and retention labels](retention.md#retention-policies-and-retention-labels).

For more information about retention policies and how retention works in Microsoft 365, see [Learn about retention policies and retention labels](retention.md).

> [!NOTE]
> The information on this page is for compliance administrators. If you are not an administrator and want to understand how retention policies have been configured for the apps that you use, contact your help desk, IT department, or administrator. If you're seeing messages about retention policies in Teams chats and channel messages, you might find it helpful to review [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

## Before you begin

The global admin for your organization has full permissions to create and edit retention policies. If you aren't signing in as a global admin, see [Permissions required to create and manage retention policies and retention labels](get-started-with-retention.md#permissions-required-to-create-and-manage-retention-policies-and-retention-labels).

Decide before you create your retention policy whether it will be **adaptive** or **static**. For more information, see [Adaptive or static policy scopes for retention](retention.md#adaptive-or-static-policy-scopes-for-retention). If you decide to use an adaptive policy, you must create one or more adaptive scopes before you create your retention policy, and then select them during the create retention policy process. For instructions, see [Configuration information for adaptive scopes](configure-retention-settings.md#configuration-information-for-adaptive-scopes).

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
- Yammer user messages

If you select the Teams or Yammer locations when you create a retention policy, the other locations are automatically excluded. This means that the instructions to follow depend on whether you need to include the Teams or Yammer locations:

- [Instructions for a retention policy for Teams locations](#retention-policy-for-teams-locations)
- [Instructions for a retention policy for Yammer locations](#retention-policy-for-yammer-locations)
- [Instructions for a retention policy for locations other than Teams and Yammer](#retention-policy-for-locations-other-than-teams-and-yammer)

> [!NOTE]
> When you use adaptive policies instead of static policies, you can configure a single retention policy to include both Teams and Yammer locations. This isn't the case for static policies where Teams and Yammer locations require their own retention policy.

When you have more than one retention policy, and when you also use retention labels, see [The principles of retention, or what takes precedence?](retention.md#the-principles-of-retention-or-what-takes-precedence) to understand the outcome when multiple retention settings apply to the same content.

### Retention policy for Teams locations

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to start the Create retention policy wizard, and name your new retention policy.

<<<<<<< HEAD
3. For the **Choose the type of retention policy to create** page, select **Adaptive** or **Static**, depending on the choice you made from the [Before you begin](#before-you-begin) instructions. If you haven't already created adaptive scopes, you won't be able to select **Adaptive** and finish the wizard.

4. Depending on your selected scope:
    
    - If you chose **Adaptive**: On the **Define adaptive scope** page, select **Add scopes** and select one or more adaptive scopes that have been created. Then, select one or more locations. The locations that you can select depend on the scope types added. For example, if you only added a scope type of **User**, you will be able to select **Teams chats** but not **Teams channel messages**. 
    
    - If you chose **Static**: On the **Choose locations to apply the policy** page, select one or more locations for Teams: **Teams channel message**, **Teams chats**, and **Teams private channel messages**.
        
       By default, [all teams and all users are selected](configure-retention-settings.md#a-policy-that-applies-to-entire-locations), but you can refine this by selecting the [**Choose** and **Exclude** options](configure-retention-settings.md#a-policy-with-specific-inclusions-or-exclusions). However, before you change the default, be aware of the following consequences for a retention policy that deletes messages when it's configured for includes or excludes:
        
        - For group chats, because a copy of messages are saved in each user's mailbox who are included in the chat, copies of messages will continue to be returned in eDiscovery results from users who weren't assigned the policy.
        - For users who weren't assigned the policy, deleted messages will be returned in their Teams search results but won't display the contents of the message as a result of the permanent deletion from the policy assigned to users.
=======
3. For the **Choose locations to apply the policy** page, select any or all of the locations for Teams:
    - **Teams channel message**: Messages from standard channel chats and standard channel meetings, but not from [private channels](/microsoftteams/private-channels) that have their own policy location.
    - **Teams chats**: Messages from private 1:1 chats, group chats, and meeting chats.
    - **Teams private channel messages**: Messages from private channel chats and private channel meetings. This option is currently rolling out in preview and if you don't see it displayed, try again in a few days.
    
   By default, [all teams and all users are selected](#a-policy-that-applies-to-entire-locations), but you can refine this by selecting the [**Choose** and **Exclude** options](#a-policy-with-specific-inclusions-or-exclusions). However, before you change the default, be aware of the following consequences for a retention policy that deletes messages when it's configured for includes or excludes:
    
    - For group chat messages and private channel messages, because a copy of messages are saved in each user's mailbox who are included in the chat, copies of messages will continue to be returned in eDiscovery results from users who weren't assigned the policy.
    - For users who weren't assigned the policy, deleted messages will be returned in their Teams search results but won't display the contents of the message as a result of the permanent deletion from the policy assigned to users.
>>>>>>> 88aeae1243a7c6f5fd81daa9a610726a93165b9d

5. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content.

   You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](configure-retention-settings.md#settings-for-retaining-and-deleting-content).

6. Complete the wizard to save your settings.

For guidance when to use retention policies for Teams and understand the end user experience, see [Manage retention policies for Microsoft Teams](/microsoftteams/retention-policies) from the Teams documentation.

For technical details about how retention works for Teams, including what elements of messages are supported for retention and timing information with example walkthroughs, see [Learn about retention for Microsoft Teams](retention-policies-teams.md).

#### Known configuration issues

- Although you can select the option to start the retention period when items were last modified, the value of **When items were created** is always used. For messages that are edited, a copy of the original message is saved with its original timestamp to identify when this pre-edited message was created, and the post-edited message has a newer timestamp.

- When you select **Choose teams** for the **Teams channel messages** location, you might see Microsoft 365 groups that aren't also teams. Don't select these groups.

- When you select **Choose users for the Teams chats** location, you might see guests and non-mailbox users. Retention policies aren't designed for these users, so don't select them.


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
> Retention policies for Yammer are in preview and currently do not inform users when messages are deleted as a result of a retention policy.
>
> To use this feature, your Yammer network must be [Native Mode](/yammer/configure-your-yammer-network/overview-native-mode), not Hybrid Mode.

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to create a new retention policy.

<<<<<<< HEAD
3. For the **Choose the type of retention policy to create** page, select **Adaptive** or **Static**, depending on the choice you made from the [Before you begin](#before-you-begin) instructions. If you haven't already created adaptive scopes, you won't be able to select **Adaptive** and finish the wizard.
=======
3. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content. 
    
    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page.
>>>>>>> 88aeae1243a7c6f5fd81daa9a610726a93165b9d

4. Depending on your selected scope:
    
    - If you chose **Adaptive**: On the **Define adaptive scope** page, select **Add scopes** and select one or more adaptive scopes that have been created. Then, select one or more locations. The locations that you can select depend on the scope types added. For example, if you only added a scope type of **User**, you will be able to select **Yammer user messages** but not **Yammer community messages**. 
    
    - If you chose **Static**: On the **Choose locations to apply the policy** page, toggle on one or both of the locations for Yammer: **Yammer community message** and **Yammer user messages**.
        
        By default, all communities and users are selected, but you can refine this by specifying communities and users to be included or excluded.
        
        For Yammer user messages: 
        - If you leave the default at **All**, Azure B2B guest users are not included. 
        - If you select **Choose user**, you can apply a retention policy to external users if you know their account.

5. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content. 
    
    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](configure-retention-settings.md#settings-for-retaining-and-deleting-content) on this page.

6. Complete the wizard to save your settings.

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

<<<<<<< HEAD
3. For the **Choose the type of retention policy to create** page, select **Adaptive** or **Static**, depending on the choice you made from the [Before you begin](#before-you-begin) instructions. If you haven't already created adaptive scopes, you won't be able to select **Adaptive** and finish the wizard. Adaptive policies can't support Exchange public folders or Skype for Business.
=======
3. For the **Choose locations** page, toggle on or off any of the locations except the locations for Teams. For each location, you can leave it at the default to [apply the policy to the entire location](#a-policy-that-applies-to-entire-locations), or [specify includes and excludes](#a-policy-with-specific-inclusions-or-exclusions).

    Information specific to locations:
    - [Exchange email and Exchange public folders](#configuration-information-for-exchange-email-and-exchange-public-folders)
    - [SharePoint sites and OneDrive accounts](#configuration-information-for-sharepoint-sites-and-onedrive-accounts)
    - [Microsoft 365 Groups](#configuration-information-for-microsoft-365-groups)
    - [Skype for Business](#configuration-information-for-skype-for-business)

4. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content.

    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page.

5. Complete the wizard to save your settings.

#### Configuration information for Exchange email and Exchange public folders

The **Exchange email** location supports retention for users' email, calendar, and other mailbox items, by applying retention settings at the level of a mailbox. Shared mailboxes are also supported.

When you apply the retention settings to **All recipients**, any [inactive mailboxes](create-and-manage-inactive-mailboxes.md) are included. However, if you change this default and configure [specific inclusions or exclusions](#a-policy-with-specific-inclusions-or-exclusions), inactive mailboxes aren't supported and retention settings won't be applied or excluded for those mailboxes.

Additionally, resource mailboxes and Microsoft 365 group mailboxes are not supported for the **All recipients** default, or for specific inclusions or exclusions. For Microsoft 365 group mailboxes, select the **Microsoft 365 Groups** location instead.

If you do choose recipients to include or exclude, you can select distribution groups and email-enabled security groups. Behind the scenes, these groups are automatically expanded at the time of configuration to select the mailboxes of the users in the group. If the membership of those groups later change, an existing retention policy isn't automatically updated.

For detailed information about which mailbox items are included and excluded when you configure retention settings for Exchange, see [What's included for retention and deletion](retention-policies-exchange.md#whats-included-for-retention-and-deletion)

The **Exchange public folders** location applies retention settings to all public folders and can't be applied at the folder or mailbox level.

#### Configuration information for SharePoint sites and OneDrive accounts

When you choose the **SharePoint sites** location, the retention policy can retain and delete documents in SharePoint communication sites, team sites that aren't connected by Microsoft 365 groups, and classic sites. Team sites connected by Microsoft 365 groups aren't supported with this option and instead, use the **Microsoft 365 Groups** location that applies to content in the group's mailbox, site, and files.

Although the retention policy is applied at the site level, only documents have retention settings applied to them. For detailed information about what's included and excluded when you configure retention settings for SharePoint and OneDrive, see [What's included for retention and deletion](retention-policies-sharepoint.md#whats-included-for-retention-and-deletion). 

When you specify your locations for SharePoint sites or OneDrive accounts, you don't need permissions to access the sites and no validation is done at the time you specify the URL on the **Edit locations** page. However, the SharePoint sites that you specify are checked that they exist at the end of the wizard. If this check fails, you see a message that validation failed for the URL you entered, and the wizard won't create the retention policy until the validation check passes. If you see this message, go back in the wizard to change the URL or remove the site from the retention policy.

To specify individual OneDrive accounts to include or exclude, the URL has the following format: `https://<tenant name>-my.sharepoint.com/personal/<user_name>_<tenant name>_com`

For example, for a user in the contoso tenant that has a user name of "rsimone": `https://contoso-my.sharepoint.com/personal/rsimone_contoso_onmicrosoft_com`

To verify the syntax for your tenant and identify URLs for users, see [Get a list of all user OneDrive URLs in your organization](/onedrive/list-onedrive-urls).

### Configuration information for Microsoft 365 Groups

To retain or delete content for a Microsoft 365 group (formerly Office 365 group), use the **Microsoft 365 Groups** location. Even though a Microsoft 365 group has an Exchange mailbox, a retention policy that includes the entire **Exchange email** location won't include content in Microsoft 365 group mailboxes. Although the **Exchange email** location initially allows you to specify a group mailbox to be included or excluded, when you try to save the retention policy, you'll see an error that "RemoteGroupMailbox" is not a valid selection for the Exchange location.

By default, a retention policy applied to a Microsoft 365 group includes the group mailbox and SharePoint teams site. Files stored in the SharePoint teams site are covered with this location, but not Teams chats or Teams channel messages that have their own retention policy locations.

To change the default because you want the retention policy to apply to either just the Microsoft 365 mailboxes, or just the connected SharePoint teams sites, use the [Set-RetentionCompliancePolicy](/powershell/module/exchange/set-retentioncompliancepolicy) PowerShell cmdlet with the *Applications* parameter with one of the following values:

- `Group:Exchange` for just Microsoft 365 mailboxes that are connected to the group.
- `Group:SharePoint` for just SharePoint sites that are connected to the group.

To return to the default value of both the mailbox and SharePoint site for the selected Microsoft 365 groups, specify `Group:Exchange,SharePoint`.

### Configuration information for Skype for Business

Unlike other locations, you can't toggle the status of the Skype location on to automatically include all users. Instead, when you turn on that location, you must then select the **Edit** option to manually choose the users whose conversations you want to retain:

![Edit Skype location for retention policies](../media/skype-location-retention-policies.png)

After you select this **Edit** option, in the **Skype for Business** pane you can quickly include all users by selecting the hidden box before the **Name** column. However, it's important to understand that each user counts as a specific inclusion in the policy. So if you include 1,000 users by selecting this box, it's the same as if you manually selected 1,000 users to include, which is the maximum supported for Skype for Business.

Be aware that **Conversation History**, a folder in Outlook, is a feature that has nothing to do with Skype archiving. **Conversation History** can be turned off by the end user, but archiving for Skype is done by storing a copy of Skype conversations in a hidden folder that is inaccessible to the user but available to eDiscovery.
>>>>>>> 88aeae1243a7c6f5fd81daa9a610726a93165b9d

4. Depending on your selected scope:
    
    - If you chose **Adaptive**: On the **Define adaptive scope** page, select **Add scopes** and select one or more adaptive scopes that have been created. Then, select one or more locations. The locations that you can select depend on the scope types added. For example, if you only added a scope type of **User**, you will be able to select **Exchange email** but not **SharePoint sites**. 
    
    - If you chose **Static**: On the **Choose locations** page, toggle on or off any of the locations except the locations for Teams and Yammer. For each location, you can leave it at the default to [apply the policy to the entire location](configure-retention-settings.md#a-policy-that-applies-to-entire-locations), or [specify includes and excludes](configure-retention-settings.md#a-policy-with-specific-inclusions-or-exclusions).

    Information specific to locations:
    - [Exchange email and Exchange public folders](configure-retention-settings.md#configuration-information-for-exchange-email-and-exchange-public-folders)
    - [SharePoint sites and OneDrive accounts](configure-retention-settings.md#configuration-information-for-sharepoint-sites-and-onedrive-accounts)
    - [Microsoft 365 Groups](configure-retention-settings.md#configuration-information-for-microsoft-365-groups)
    - [Skype for Business](configure-retention-settings.md#configuration-information-for-skype-for-business)

5. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content.

    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](configure-retention-settings.md#settings-for-retaining-and-deleting-content) on this page.

6. Complete the wizard to save your settings.
