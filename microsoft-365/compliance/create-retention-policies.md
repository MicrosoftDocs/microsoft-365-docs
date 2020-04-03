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

For information about how retention policies work, see [Learn about retention policies](retention-policies.md).

## Before you begin

Members of your compliance team who will create and manage retention policies need permissions to the [Microsoft 365 Compliance Center]((https://compliance.microsoft.com/). By default, your tenant admin has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To do this, we recommend that you go to the **Permissions** page of the [Microsoft 365 Compliance Center](https://compliance.microsoft.com/), edit the **Compliance administrator** admin role, and add members to that role group. 

These permissions are required only to create and apply a retention policy. The person configuring the retention policy doesn't require access to the content.

## Create and configure a retention policy

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Policies** > **Retention**.

2. Select **New retention policy** or edit an exiting retention policy.

3. For **Settings**, first specify the configuration options for retaining and deleting content. You can create a retention policy that just retains content without deleting, retains and then deletes after a specified period of time, or just deletes content after a specified period of time. For more information, see [Settings for retaining and deleting content](#settings-for-retaining-and-deleting-content) on this page:
    
    Then, decide whether the retention policy should apply to all content, or content that meets specific conditions. For more information about these advanced retention settings, see [Advanced settings to identify content that meets specific conditions](#advanced-settings-to-identify-content-that-meets-specific-conditions) on this page. 

4. For the **Choose locations** page, select whether the retention policy should apply to all supported locations across your organization, or you want to specify the locations. If you choose specific locations, you can also specify includes and excludes. 
    
    For more information about these configuration options, see [Applying a retention policy to an entire organization or specific locations](#applying-a-retention-policy-to-an-entire-organization-or-specific-locations) on this page.
    
    For information specific to Office 365 groups and Skype, see the following sections, [Configuration information for Office 365 groups](#configuration-information-for-office-365-groups) and [Configuration information for Skype for Business](#configuration-information-for-skype-for-business).

5. Complete the wizard to save your settings.

When you have more than one retention policy, see [The principles of retention, or what takes precedence?](retention-policies.md#the-principles-of-retention-or-what-takes-precedence) on this page.

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


## Lock a retention policy by using PowerShell

You must use PowerShell if you need to need to use [Preservation Lock](retention-policies.md#use-preservation-lock-to-comply-with-regulatory-requirements) to comply with regulatory requirements.

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
  

