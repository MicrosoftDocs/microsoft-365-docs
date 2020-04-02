---
title: "Use retention policies to automatically retain or delete content based on Office 365 locations"
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

# Use retention policies to automatically retain or delete content based on Office 365 locations

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

For most organizations, the volume and complexity of their data is increasing daily — email, documents, instant messages, and more. Effectively managing or governing this information is important because you need to:
  
- **Comply proactively with industry regulations and internal policies** that require you to retain content for a minimum period of time — for example, the Sarbanes-Oxley Act might require you to retain certain types of content for seven years. 
    
- **Reduce your risk in the event of litigation or a security breach** by permanently deleting old content that you're no longer required to keep. 
    
- **Help your organization to share knowledge effectively and be more agile** by ensuring that your users work only with content that's current and relevant to them. 
    
A retention policy can help you achieve all of these goals. Managing content commonly requires two actions:
  
- **Retaining** content so that it can't be permanently deleted before the end of the retention period. 
    
- **Deleting** content permanently at the end of the retention period. 
    
With a retention policy, you can:
  
- Decide proactively whether to retain content, delete content, or both — retain and then delete the content.
    
- Apply a single policy to the entire organization or specific locations or users.
    
- Apply a policy to all content or to content when it meets specific conditions, such as content containing keywords or [types of sensitive information](what-the-sensitive-information-types-look-for.md).
    
When content is subject to a retention policy, people can continue to edit and work with the content as if nothing's changed. The content is retained in place, in its original location. But if someone edits or deletes content that's subject to the retention policy, a copy of the original content is saved to a secure location where it's retained while the retention policy for that content is in effect.
  
Additionally, some organizations have to comply with regulations such as Securities and Exchange Commission (SEC) Rule 17a-4, which requires that after a retention policy is turned on, it cannot be turned off or made less restrictive. To meet this requirement, you can use **Preservation Lock**. After a retention policy's been locked, no one (including an administrator) can turn off the retention policy or make it less restrictive.

## How a retention policy works with content in place

When you include a location such as a site or mailbox in a retention policy, the content remains in its original location. People can continue to work with their documents or mail as if nothing's changed. But if they edit or delete content that's included in the retention policy, a copy of the content is retained as it existed when you applied the policy.
  
- For SharePoint and OneDrive sites: The copy is retained in the **Preservation Hold** library. Be aware that the Preservation Hold library consumes storage quota for the site.

- For email and public folders: The copy is retained in the is retained in the **Recoverable Items** folder. 

- For Teams (chat) content: The copy is retained in the Exchange **Recoverable Items** folder.

- For Office 365 groups: 
    - The group mailbox is retained in the Exchange **Recoverable Items** folder.
    - Any site content is retained in the **Preservation Hold** library.

> [!NOTE]
> The Hold library consumes storage that isn't exempt from a site's storage quota. You might need to increase your storage when you use retention policies for SharePoint and Office 365 groups.
> 
These secure locations and the retained content are not visible to most people. With a retention policy, people do not even need to know that their content is subject to the policy.

For more information about specific workloads, see the following articles:

- [Learn about retention policies for SharePoint](retention-policies-sharepoint.md)
- [Learn about retention policies for Microsoft Teams](retention-policies-teams.md)
- [Learn about retention policies for Exchange](retention-policies-exchange.md)

## Permissions

Members of your compliance team who will create and manage retention policies need permissions to the [Microsoft 365 Compliance Center]((https://compliance.microsoft.com/). By default, your tenant admin has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To do this, we recommend that you go to the **Permissions** page of the [Microsoft 365 Compliance Center](https://compliance.microsoft.com/), edit the **Compliance administrator** admin role, and add members to that role group. 

These permissions are required only to create and apply a retention policy. The person configuring the retention policy doesn't require access to the content.

## How to create and edit retention policies

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** or edit an exiting retention policy.

3. For **Settings**, first specify the configuration options for retaining and deleting content. You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page:
    
    Then, decide whether the retention policy should apply to all content, or content that meets specific conditions. For more information about these advanced retention settings, see [Advanced settings to identify content that meets specific conditions](#advanced-settings-to-identify-content-that-meets-specific-conditions) on this page. 

4. For the **Choose locations** page, select whether the retention policy should apply to all supported locations across your organization, or you want to specify the locations. If you choose specific locations, you can also specify includes and excludes. 
    
    For more information about these configuration options, see [Applying a retention policy to an entire organization or specific locations](#applying-a-retention-policy-to-an-entire-organization-or-specific-locations) on this page.
    
    For information specific to Office 365 groups and Skype, see the following sections, [Configuration information for Office 365 groups](#configuration-information-for-office-365-groups) and [Configuration information for Skype for Business](#configuration-information-for-skype-for-business).

5. Complete the wizard to save your settings.

When you have more than one retention policy, see [The principles of retention, or what takes precedence?](#the-principles-of-retention-or-what-takes-precedence) on this page.

### Configuration information for Office 365 groups

To retain content for an Office 365 group, select the **Office 365 groups** location when you choose locations for your retention policy. Even though an Office 365 group has an Exchange mailbox, a retention policy that includes the entire **Exchange email** location won't include content in Office 365 group mailboxes. In addition, although the **Exchange email** location initially allows you to specify a group mailbox to be included or excluded, when you try to save the retention policy, you receive an error that "RemoteGroupMailbox" is not a valid selection for the Exchange location.

A retention policy applied to an Office 365 group includes both the group mailbox and site. A retention policy applied to an Office 365 group protects the resources created by an Office 365 group, which includes Microsoft Teams.

### Configuration information for Skype for Business

Unlike Exchange email, you can't toggle the status of the Skype location on to include all users, but when you turn on that location, you then manually choose the users whose conversations you want to retain:

![Choose Skype location for retention policies](../media/skype-location-retention-policies.png)
  
When you select **Choose users**, you can quickly include all users by selecting the **Name** box in the column header. However, it's important to understand that each user counts as a specific inclusion in the policy. Therefore, if you include over 1,000 users, the limits noted in the previous section apply. Selecting all Skype users here is not the same as if an org-wide policy were able to include all Skype users by default. 
  
![Choose Skype users page](../media/f1742493-741a-4142-a564-d7d41ab0236a.png)
  
Note that **Conversation History**, a folder in Outlook, is a feature that has nothing to do with Skype archiving. **Conversation History** can be turned off by the end user, but archiving for Skype is done by storing a copy of Skype conversations in a hidden folder that is inaccessible to the user but available to eDiscovery.

> [!NOTE]
> If you create retention policies for Skype or Teams locations in your organization, one of those policies is shown as the default folder policy when a user views the properties of a mailbox folder in the Outlook desktop client. This is an incorrect display issue in Outlook and [a known issue](https://support.microsoft.com/help/4491013/outlook-client-displays-teams-or-skype-for-business-retention-policies). What should be displayed as the default folder policy is the mailbox retention policy that's applied to the folder. The Skype or Teams retention policy is not applied to the user's mailbox.

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

You can also apply a retention policy only to content that contains [specific types of sensitive information](what-the-sensitive-information-types-look-for.md). For example, you can choose to apply unique retention requirements only to content that contains personally identifiable information (PII) such as taxpayer identification numbers, social security numbers, or passport numbers.
  
![Sensitive information types page](../media/8b104819-d185-4d58-b6b3-d06e82686a05.png)
  
Notes:
  
- Advanced retention for sensitive information doesn't apply to Exchange public folders or Skype for Business because those locations don't support sensitive information types.
    
- Exchange Online uses mail flow rules (also known as transport rules) to identify sensitive information, so this works only on messages in transit — not on all items already stored in a mailbox. For Exchange Online, this means that a retention policy can identify sensitive information and take retention actions only on messages that are received **after** the policy is applied to the mailbox. Query-based retention described in the previous section doesn't have this limitation because it uses the search index to identify content. 
    
## Applying a retention policy to an entire organization or specific locations

You can easily apply a retention policy to an entire organization, entire locations, or only to specific locations or users.
  
### Org-wide policy

One of the most powerful features of a retention policy is that it can apply to locations across Office 365, including:
  
- Exchange email
    
- SharePoint site collections
    
- OneDrive accounts
    
- Office 365 groups (applies to content in the group's mailbox and associated SharePoint site.)
    
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

You can also apply a retention policy to specific users, specific Office 365 groups, or specific sites. To do so, toggle the **Status** of that location on, and then use the links to include or exclude specific users, Office 365 groups, or sites. 
  
However, using this configuration, there are some limits when your retention policy includes or excludes over 1,000 specific locations:
  
- Maximum of 1,000 mailboxes
- Maximum of 100 sites
- Maximum of 10,000 retention policies

If your retention policies are likely to be subject to these limitations, choose the configuration option that applies to entire locations, or use an org-wide policy.

## The principles of retention, or what takes precedence?

It's possible or even likely that content might have several retention policies applied to it, each with a different action (retain, delete, or retain and then delete) and retention period. What takes precedence? At the highest level, rest assured that content being retained by one retention policy can't be permanently deleted by another retention policy.
  
![Diagram of the principles of retention](../media/1693d6ec-b340-4805-9da3-89aa41bc6afb.png)
  
To understand how different retention policies are applied to content, keep these principles of retention in mind:
  
1. **Retention wins over deletion.** Suppose that one retention policy is configured to delete Exchange email after three years, but another retention policy is configured to retain Exchange email for five years and then delete it. Any content that reaches three years old will be deleted and hidden from the users' view, but still retained in the Recoverable Items folder until the content reaches five years old, when it is permanently deleted. 
    
2. **The longest retention period wins.** If content is subject to multiple retention policies that retain content, it will be retained until the end of the longest retention period. 
    
3. **Explicit inclusion wins over implicit inclusion.** This means: 
    
    1. If a retention label with retention settings is manually assigned by a user to an item, such as an Exchange email or OneDrive document, that retention label takes precedence over both a retention policy assigned at the site or mailbox level and a default retention label assigned by the document library. For example, if the explicit retention label is configured to retain content for 10 years, but the retention policy assigned to the site is configured to retain content for only five years, the retention label takes precedence. Auto-applied retention labels are considered implicit rather than explicit, because they're applied automatically by Office 365.
    
    2. If a retention policy includes a specific location, such as a specific user's mailbox or OneDrive for Business account, that retention policy takes precedence over another retention policy that applies to all users' mailboxes or OneDrive for Business accounts but doesn't specifically include that user's mailbox.
    
4. **The shortest deletion period wins.** Similarly, if content is subject to multiple retention policies that delete content without a retention period, that content will be deleted at the end of the shortest retention period. 
    
Understand that the principles of retention work as a tie-breaking flow from top to bottom: If the rules applied by all retention policies or retention labels are the same at one level, the flow moves down to the next level to determine precedence for which rule is applied.
  
Finally, a retention policy or retention label cannot permanently delete any content that's on hold for eDiscovery. When the hold is released, the content again becomes eligible for the cleanup process described above.
  

## Find the PowerShell cmdlets for retention policies

To use the retention policies cmdlets:
  
1. [Connect to the Office 365 Security & Compliance Center Powershell](https://docs.microsoft.com/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell)
    
2. Use these Office 365 Security & Compliance Center cmdlets:
    
    - [Get-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/get-retentioncompliancepolicy)
    
    - [New-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/new-retentioncompliancepolicy)
    
    - [Remove-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/remove-retentioncompliancepolicy)
    
    - [Set-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/set-retentioncompliancepolicy)
    
    - [Get-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/get-retentioncompliancerule)
    
    - [New-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/new-retentioncompliancerule)
    
    - [Remove-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/remove-retentioncompliancerule)
    
    - [Set-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/set-retentioncompliancerule)


## Use Preservation Lock to comply with regulatory requirements

Some organizations might need to comply with rules defined by regulatory bodies such as the Securities and Exchange Commission (SEC) Rule 17a-4, which requires that after a retention policy is turned on, it cannot be turned off or made less restrictive. 

Preservation Lock ensures your organization can meet such regulatory requirements because it locks a retention policy so that no one — including the administrator — can turn off the policy or make it less restrictive.
  
When a retention policy is locked:

- No one can it turn off
- Locations can be added but not removed 
- Content subject to the policy can't be modified or deleted during the retention period
- You can extend a retention period but not decrease it

In summary, a locked retention policy can be increased or extended, but it can't be reduced or turned off.
  
> [!IMPORTANT]
> Before you lock a retention policy, it's critical that you understand the impact and confirm whether it's required for your organization to meet compliance requirements.

### Lock a retention policy by using PowerShell
  
You must use PowerShell to lock a retention policy:

1. [Connect to Office 365 Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell?view=exchange-ps).

2. List your retention policies and find the name of the policy that you want to lock by running `Get-RetentionCompliancePolicy`.
    
    ![List of retention policies in PowerShell](../media/retention-policy-preservation-lock-get-retentioncompliancepolicy.PNG)
    
3. To place a Preservation Lock on a retention policy, run `Set-RetentionCompliancePolicy` with the `RestrictiveRetention` parameter set to true. For example:
    
    	Set-RetentionCompliancePolicy -Identity "<Name of Policy>" – RestrictiveRetention $true
    
    ![RestrictiveRetention parameter in PowerShell](../media/retention-policy-preservation-lock-restrictiveretention.PNG)
    
    After you run that cmdlet, choose **Yes to All**:
    
    ![Prompt to confirm that you want to lock a retention policy in PowerShell](../media/retention-policy-preservation-lock-confirmation-prompt.PNG)

A Preservation Lock is now placed on the retention policy. If you run `Get-RetentionCompliancePolicy`, the `RestrictiveRetention` parameter is set to true. For example:

`Get-RetentionCompliancePolicy -Identity "<Name of Policy>" |Fl`

![Locked policy with all parameters shown in PowerShell](../media/retention-policy-preservation-lock-locked-policy.PNG)
  
## Releasing a retention policy

Providing your retention policy doesn't have a Preservation Lock, you can can turn off or delete a retention policy at any time. 

When you do so, any SharePoint or OneDrive content that's being retained in the Preservation Hold library is not immediately and permanently deleted. Instead, to help prevent inadvertent data loss, there is a 30-day grace period, during which content expiration for that policy does not happen in the Preservation Hold library, so that you can restore any content from there, if needed. 

You can also turn on the retention policy again during the grace period, and no content will be deleted for that policy.

This 30-day grace period in SharePoint and OneDrive corresponds to the 30-day delay hold in Exchange. For more information, see [Managing mailboxes on delay hold](identify-a-hold-on-an-exchange-online-mailbox.md#managing-mailboxes-on-delay-hold).


## Use a retention policy instead of older features

A single retention policy can easily apply to an entire organization and locations across Office 365, including Exchange Online, SharePoint Online, OneDrive for Business, and Office 365 groups. If you need to retain or delete content anywhere in Office 365, we recommend that you use a retention policy and optionally supplement this with [retention labels](labels.md).
  
If you have previously used other configurations to retain or delete content in Office 365, they will continue to work side by side with retention policies and retention labels. However, we recommend that going forward, you use retention policies and retention labels instead. They provide you with a single mechanism to centrally manage both retention and deletion of content across Office 365.

The older features that you might have used:
  
**Older features from Exchange Online:**

- [Manage eDiscovery cases in the Office 365 Security &amp; Compliance Center](https://support.office.com/article/edea80d6-20a7-40fb-b8c4-5e8c8395f6da) (eDiscovery hold) 
    
- [In-Place Hold and Litigation Hold](https://go.microsoft.com/fwlink/?linkid=846124) (eDiscovery hold) 

- [How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md)
    
- [Retention tags and retention policies](https://go.microsoft.com/fwlink/?linkid=846125), also known as [messaging records management (MRM)](https://go.microsoft.com/fwlink/?linkid=846126) (deletion only) 
    
**Older features from SharePoint Online and OneDrive for Business:**

- [Manage eDiscovery cases in the Office 365 Security &amp; Compliance Center](https://support.office.com/article/edea80d6-20a7-40fb-b8c4-5e8c8395f6da) (eDiscovery hold) 
    
- [Add content to a case and place sources on hold in the eDiscovery Center](https://support.office.com/article/54d70de9-1ec2-4325-84f3-aeb588554479) (eDiscovery hold) 
    
- [Overview of document deletion policies](https://support.office.com/article/55e8d858-f278-482b-a198-2e62d6a2e6e5) (deletion only) 
    
- [Configuring in place records management](https://support.office.com/article/7707a878-780c-4be6-9cb0-9718ecde050a) (retention only) 
    
- [Use policies for site closure and deletion](https://support.office.com/article/a8280d82-27fd-48c5-9adf-8a5431208ba5) (deletion only) 
    
- [Information management policies](intro-to-info-mgmt-policies.md) (deletion only)
     
If you've previously used any of the eDiscovery holds for the purpose of information governance, for proactive compliance, use a retention policy instead. Use eDiscovery for holds only.
  
### Retention policies and SharePoint content type policies or information management policies

If you have configured SharePoint sites for content type policies or information management policies to retain content for a list or library, those policies are ignored while a retention policy is in effect. 
  
### Preservation policies are converted to retention policies

If you were using a preservation policy to retain data in mailboxes, SharePoint or OneDrive sites, or public folders: That policy has been automatically converted to a retention policy that uses only the retain action — the policy won't delete content. No changes are needed from you for the same outcome as your configured preservation policy.

You can find any configured preservation policies on the **Policies** page in the [Microsoft 365 compliance center](https://compliance.microsoft.com/), or on the **Retention** page under **Information governance** in the [Security &amp; Compliance Center](https://protection.office.com/). You can edit a preservation policy to change the retention period, but you can't make other changes, such as adding or removing locations. 
  

## Related information

- [Overview of labels](labels.md)
- [SharePoint Online Limits](https://docs.microsoft.com/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)
- [Limits and specifications for Microsoft Teams](https://docs.microsoft.com/microsoftteams/limits-specifications-teams) 
- [Comply with SEC Rule 17a-4](use-exchange-online-to-comply-with-sec-rule-17a-4.md)
