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
description: "Use a retention policy to decide proactively whether to retain content, delete content, or both - retain and then delete the content; apply a single policy to the entire organization or specific locations or users; and apply a policy to all content or content meeting certain conditions."
---

# Create and configure retention policies

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Use a retention policy to decide proactively whether to retain content, delete content, or both - retain and then delete the content. 

A retention policy lets you do this very efficiently by assigning the same retention settings for content by location, at a site or mailbox level. If you're not sure whether to use a retention policy or a retention label, see [Retention policies and retention labels](retention.md#retention-policies-and-retention-labels).

For more information about retention policies and how retention works, see [Learn about retention](retention.md).

## Before you begin

The global admin for your organization has full permissions to create and edit retention policies. If you aren't signing in as a global admin, see [Permissions required to create and manage retention policies and retention labels](get-started-with-retention.md#permissions-required-to-create-and-manage-retention-policies-and-retention-labels).

## Create and configure a retention policy

Although a retention policy can support multiple locations, you can't create a single retention policy that includes all the supported locations:
- Exchange email
- SharePoint site
- OneDrive accounts
- Microsoft 365 groups
- Skype for Business
- Exchange public folders
- Teams channel messages
- Teams chats

When you select either of the Teams locations when you create a retention policy, the other locations are automatically excluded. Therefore, the instructions to follow depend on whether you need to include the Teams locations:

- [Instructions for a retention policy for Teams locations](#retention-policy-for-teams-locations)
- [Instructions for a retention policy for locations other than Teams](#retention-policy-for-locations-other-than-teams)

When you have more than one retention policy, and when you also use retention labels, see [The principles of retention, or what takes precedence?](retention.md#the-principles-of-retention-or-what-takes-precedence) to understand the outcome when multiple retention settings apply to the same content.

### Retention policy for Teams locations

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to create a new retention policy.

3. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content. 
    
    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page.
    
    Do not select **Use advanced retention settings** because this option isn't supported for Teams locations. 

4. For the **Choose locations** page, select **Let me choose specific locations**. Then toggle on one or both of the locations for Teams: **Teams channel message** and **Teams chats**.
     
    For **Teams channel messages**, message from standard channels but not [private channels](https://docs.microsoft.com/microsoftteams/private-channels) are included. Currently, private channels aren't supported by retention policies.
    
    By default, all teams are selected, but you can refine this by specifying teams to be included, or teams to be excluded.

5. Complete the wizard to save your settings.

For more information about retention policies for Teams, see [Retention policies in Microsoft Teams](https://docs.microsoft.com/microsoftteams/retention-policies) from the Teams documentation.

#### Additional retention policy needed to support Teams

Teams is more than just chats and channel messages. If you have teams that were created from a Microsoft 365 group (formerly Office 365 group), you should additionally configure a retention policy that includes that Microsoft 365 group by using the **Office 365 groups** location. This retention policy applies to content in the group's mailbox, site, and files.

If you have team sites that aren't connected to a Microsoft 365 group, you need a retention policy that includes the **SharePoint sites** or **OneDrive accounts** locations to retain and delete files in Teams:

- Files that are shared in chat are stored in the OneDrive account of the user who shared the file. 

- Files that are uploaded to channels are stored in the SharePoint site for the team.

> [!TIP]
> You can apply a retention policy to the files of just a specific team when it's not connected to a Microsoft 365 group by selecting the SharePoint site for the team, and the OneDrive accounts of users in the Team.

It's possible that a retention policy that's applied to Microsoft 365 groups, SharePoint sites, or OneDrive accounts could delete a file that's referenced in a Teams chat or channel message before those messages get deleted. In this scenario, the file still displays in the Teams message, but when users select the file, they get a "File not found" error. This behavior isn't specific to retention policies and could also happen if a user manually deletes a file from SharePoint or OneDrive.


### Retention policy for locations other than Teams

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** to create a new retention policy.

3. For **Decide if you want to retain content, delete it, or both** page of the wizard, specify the configuration options for retaining and deleting content. 
    
    You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page.
    
    Then, decide whether the retention policy should apply to all content, or content that meets specific conditions. For more information about these advanced retention settings, see [Advanced settings to identify content that meets specific conditions](#advanced-settings-to-identify-content-that-meets-specific-conditions) on this page. 

4. For the **Choose locations** page, select whether the retention policy should apply to all supported locations across your organization, or you want to specify the locations. If you choose specific locations, you can also specify includes and excludes. 
    
    For more information about choosing between a retention policy for the organization or for specific locations, see [Applying a retention policy to an entire organization or specific locations](#applying-a-retention-policy-to-an-entire-organization-or-specific-locations) on this page.
    
    Information specific to locations:
    - [Exchange email and Exchange public folders](#configuration-information-for-exchange-email-and-exchange-public-folders)
    - [SharePoint sites and OneDrive accounts](#configuration-information-for-sharepoint-sites-and-onedrive-accounts)
    - [Office 365 groups](#configuration-information-for-microsoft-365-groups)
    - [Skype for Business](#configuration-information-for-skype-for-business)

5. Complete the wizard to save your settings.


#### Configuration information for Exchange email and Exchange public folders

The **Exchange email** location supports retention for users' email, calendar, and other mailbox items, by applying retention settings at the level of a mailbox.

The following mail items are included: Mail messages (includes drafts) with any attachments, tasks and calendar items when they have an end date, and notes. Contacts, and any tasks and calendar items that don't have an end date are not included. Other items stored in a mailbox, such as Skype and Teams saved messages, aren't included with this location. These items have their own retention locations.

Even though a Microsoft 365 group has an Exchange mailbox, a retention policy that includes the entire **Exchange email** location won't include content in Microsoft 365 group mailboxes. To retain content in these mailboxes, select the **Office 365 groups** location.

The **Exchange public folders** location applies retention settings to all public folders and can't be applied at the folder or mailbox level.

#### Configuration information for SharePoint sites and OneDrive accounts

When you choose the **SharePoint sites** location, the retention policy can retain and delete documents in SharePoint communication sites, team sites that aren't connected by Office 365 groups, and classic sites. Team sites connected by Office 365 groups aren't supported with this option and instead, use the **Office 365 groups** location that applies to content in the group's mailbox, site, and files.

Although the retention policy is applied at the site level, only documents have retention settings applied to them. Retention settings do not apply to the organizing structures that include libraries, lists, and folders within the site. 

When you specify your locations for SharePoint sites or OneDrive accounts, you don't need permissions to access the sites and no validation is done at the time you specify the URL on the **Edit locations** page. However, the SharePoint sites must be indexed and the sites that you specify are checked that they exist at the end of the wizard.

If this check fails, you see a message that validation failed for the URL you entered, and the wizard won't create the retention policy until the validation check passes. If you see this message, go back in the wizard to change the URL or remove the site from the retention policy.

To specify individual OneDrive accounts to include or exclude, the URL has the following format: `https://<tenant name>-my.sharepoint.com/personal/<user_name>_<tenant name>_com`

For example, for a user in the contoso tenant that has a user name of "rsimone": `https://contoso-my.sharepoint.com/personal/rsimone_contoso_onmicrosoft_com`

To verify the syntax for your tenant and identify URLs for users, see [Get a list of all user OneDrive URLs in your organization](https://docs.microsoft.com/onedrive/list-onedrive-urls).

### Configuration information for Microsoft 365 groups

To retain or delete content for a Microsoft 365 group (formerly Office 365 group), use the **Office 365 groups** location. Even though a Microsoft 365 group has an Exchange mailbox, a retention policy that includes the entire **Exchange email** location won't include content in Microsoft 365 group mailboxes. In addition, although the **Exchange email** location initially allows you to specify a group mailbox to be included or excluded, when you try to save the retention policy, you receive an error that "RemoteGroupMailbox" is not a valid selection for the Exchange location.

A retention policy applied to a Microsoft 365 group includes both the group mailbox and site. A retention policy applied to a Microsoft 365 group protects the resources created by a Microsoft 365 group, which includes files in Microsoft Teams.However, the only way to manage Teams conversations is through the Teams Conversations location.

### Configuration information for Skype for Business

Unlike Exchange email, you can't toggle the status of the Skype location on to include all users, but when you turn on that location, you then manually choose the users whose conversations you want to retain:

![Choose Skype location for retention policies](../media/skype-location-retention-policies.png)
  
When you select **Choose users**, you can quickly include all users by selecting the **Name** box in the column header. However, it's important to understand that each user counts as a specific inclusion in the policy. Therefore, if you include over 1,000 users, the limits noted in the previous section apply. Selecting all Skype users here is not the same as if an org-wide policy were able to include all Skype users by default. 
  
![Choose Skype users page](../media/f1742493-741a-4142-a564-d7d41ab0236a.png)
  
Note that **Conversation History**, a folder in Outlook, is a feature that has nothing to do with Skype archiving. **Conversation History** can be turned off by the end user, but archiving for Skype is done by storing a copy of Skype conversations in a hidden folder that is inaccessible to the user but available to eDiscovery.


## Settings for retaining and deleting content

By choosing the settings for retaining and deleting content in your retention policy, your retention policy will have one of the following configurations for a specified period of time:

- Retain-only
- Retain and then delete
- Delete-only

### Retaining content for a specific period of time

When you configure a retention policy, you choose to retain content indefinitely or for a specific number of days, months, or years. The duration for how long content is retained is calculated from the age of the content, not from when the retention policy is applied. You can choose whether the age is based on when the content was created or (for OneDrive and SharePoint) when it was last modified.

Examples:
  
- SharePoint: If you want to retain content in a site collection for seven years since it was last modified, and a document in that site collection hasn't been modified in six years, the document will be retained for only another year if it's not modified. If the document is edited again, the age of the document is calculated from the new last modified date, and it will be retained for another seven years.
  
- Exchange: If you want to retain content in a mailbox for seven years, and a message was sent six years ago, the message will be retained for only one year. For Exchange content, the age is based on the date received for incoming email, or the date sent for outgoing email. Retaining content based on when it was last modified applies only to site content in OneDrive and SharePoint.
  
At the end of the retention period, you choose whether you want the content to be permanently deleted:
  
![Retention settings page](../media/b05f84e5-fc71-4717-8f7b-d06a29dc4f29.png)
  
### Deleting content that's older than a specific age

A retention policy can both retain and then delete content, or delete old content without retaining it.
  
If your retention policy deletes content, it's important to understand that the time period specified for a retention policy is calculated from the time when the content was created or modified, not the time since the policy was assigned.
  
![Deletion settings](../media/042f9571-96f4-458f-8f38-fad3ed68ed31.png)
  
For example, suppose that you create a retention policy that deletes content after three years, and then assign that policy to all OneDrive accounts, which contain a lot of content that was created four or five years ago. In this case, a lot of content will be deleted soon after assigning the retention policy for the first time. For this reason, it's important to understand that a retention policy that deletes content can have a considerable impact on your content. 
  
Therefore, before you assign a retention policy to a site collection for the first time, you should first consider the age of the existing content and how the policy may impact that content. You may also want to communicate the new policy to your users before assigning it, to give them time to assess the possible impact. Note this warning that appears when you review the settings for your retention policy just before creating it.
  
![Warning about deleting content](../media/59c26b19-3628-4cc1-9a73-a05127a8e81b.png)
  
## Advanced settings to identify content that meets specific conditions

A retention policy can apply to all content in the locations that it includes, or you can choose to apply a retention policy only to content that contains specific keywords or [specific types of sensitive information](what-the-sensitive-information-types-look-for.md).
  
![Advanced retention options](../media/e8d9dd42-c062-4e8b-a2ca-bffe3ea298e0.png)
  
### Identify content that contains specific keywords

You can apply a retention policy only to content that meets specific conditions, and then take retention actions on just that content. The conditions available support applying a retention policy to content that contains specific words or phrases. You can refine your query by using search operators like AND, OR, and NOT. For more information on these operators, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
  
Support for adding searchable properties (for example, **subject:**) is coming soon.
  
Query-based retention uses the search index to identify content.
  
![Query editor](../media/2c31b412-922e-4a88-89e4-5175c23d9b5f.png)
  
### Identify content that contains sensitive information

You can also apply a retention policy only to content that contains [specific types of sensitive information](what-the-sensitive-information-types-look-for.md). For example, you can choose to apply unique retention requirements only to content that contains personal information, such as taxpayer identification numbers, social security numbers, or passport numbers.
  
![Sensitive information types page](../media/8b104819-d185-4d58-b6b3-d06e82686a05.png)
  
Notes:
  
- Advanced retention for sensitive information doesn't apply to Exchange public folders or Skype for Business because those locations don't support sensitive information types.
    
- Exchange Online uses mail flow rules (also known as transport rules) to identify sensitive information, so this works only on messages in transit—not on all items already stored in a mailbox. For Exchange Online, this means that a retention policy can identify sensitive information and take retention actions only on messages that are received **after** the policy is applied to the mailbox. Query-based retention described in the previous section doesn't have this limitation because it uses the search index to identify content. 
    
## Applying a retention policy to an entire organization or specific locations

You can easily apply a retention policy to an entire organization, entire locations, or only to specific locations or users.
  
### Org-wide policy

One of the most powerful features of a retention policy is that it can apply to locations across Microsoft 365, including:
  
- Exchange email
    
- SharePoint site collections
    
- OneDrive accounts
    
- Microsoft 365 groups
    
- Exchange public folders
    

![All locations option](../media/retention-policies-all-locations.png)

Other important features of an org-wide retention policy include:
  
- There is no limit to the number of mailboxes or sites the policy can include.
    
- For Exchange, any new mailbox created after the policy is applied will automatically inherit the policy.
  
### A policy that applies to entire locations

When you choose locations, you can easily include or exclude an entire location, such as Exchange email or OneDrive accounts. To do so, toggle the **Status** of that location on or off. 
  
Like an org-wide policy, if a policy applies to any combination of entire locations, there is no limit to the number of mailboxes or sites the policy can include. 

For example, if a policy includes all Exchange email and all SharePoint sites, all sites and mailboxes will be included, no matter how many. And for Exchange, any new mailbox created after the policy is applied will automatically inherit the policy.

### A policy with specific inclusions or exclusions

You can also apply a retention policy to specific users, specific Microsoft 365 groups, or specific sites. To do so, toggle the **Status** of that location on, and then use the links to include or exclude specific users, Microsoft 365 groups, or sites. 
  
However, using this configuration, there are some limits when your retention policy includes or excludes over 1,000 specific locations:
  
- Maximum numbers for the retention policy:
    - 1,000 mailboxes
    - 1,000 Microsoft 365 groups
    - 1,000 users for Teams private chats
    - 100 sites (OneDrive or SharePoint)

There is a maximum number of policies that are supported for a tenant: 10,000. These items include retention policies, retention label policies, and auto-apply retention policies.

If your retention policies are likely to be subject to these limitations, choose the configuration options that apply to entire locations, or use an org-wide policy.

## Updating retention policies

If you edit a retention policy and content is already subject to the original settings in your retention policy, your updated settings will be automatically applied to this content in addition to content that's newly identified.

Usually this update is fairly quick but can take several days. When the policy replication across your Microsoft 365 locations is complete, you'll see the status of the retention policy in the Microsoft 365 compliance center change from **On (Pending)** to **On (Success)**.

## Lock a retention policy by using PowerShell

You must use PowerShell if you need to use [Preservation Lock](retention.md#use-preservation-lock-to-comply-with-regulatory-requirements) to comply with regulatory requirements. Because administrators can't disable or delete a retention policy after a preservation lock is applied, enabling this feature is not available in the UI to safeguard against accidental configuration.

All retention policies with any configuration support Preservation Lock. However, when you use the PowerShell commands that follow, you'll notice that the **Workload** parameter always displays **Exchange, SharePoint, OneDriveForBusines, Skype, ModernGroup** rather than reflect the actual workloads configured in the policy. This is a display issue only.

1. [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell?view=exchange-ps).

2. List your retention policies and find the name of the policy that you want to lock by running [Get-RetentionCompliancePolicy](https://powershell/module/exchange/get-retentioncompliancepolicy). For example:
    
   ![List of retention policies in PowerShell](../media/retention-policy-preservation-lock-get-retentioncompliancepolicy.PNG)
    
3. To place a Preservation Lock on a retention policy, run the [Set-RetentionCompliancePolicy]( ) cmdlet with the name of the retention policy, and the *RestrictiveRetention* parameter set to true:
    
    ```powershell
    Set-RetentionCompliancePolicy -Identity "<Name of Policy>" –RestrictiveRetention $true
    ```
    
    For example:
    
    ![RestrictiveRetention parameter in PowerShell](../media/retention-policy-preservation-lock-restrictiveretention.PNG)
    
     When prompted, read and acknowledge the restrictions that come with this configuration, and choose **Yes to All**:
    
   ![Prompt to confirm that you want to lock a retention policy in PowerShell](../media/retention-policy-preservation-lock-confirmation-prompt.PNG)

A Preservation Lock is now placed on the retention policy. To confirm, run `Get-RetentionCompliancePolicy` again, but specify the retention policy name and display the policy parameters:

```powershell
Get-RetentionCompliancePolicy -Identity "<Name of Policy>" |Fl
```

You should see **RestrictiveRetention** is set to **True**. For example:

![Locked policy with all parameters shown in PowerShell](../media/retention-policy-preservation-lock-locked-policy.PNG)
  

