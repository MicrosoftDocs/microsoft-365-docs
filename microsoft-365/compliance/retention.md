---
title: "Learn about retention policies & labels to automatically retain or delete content"
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
description: Learn about retention policies and retention labels that help you to retain what you need and delete what you don't.
---

# Learn about retention policies and retention labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

For most organizations, the volume and complexity of their data is increasing daily—email, documents, instant messages, and more. Effectively managing or governing this information is important because you need to:
  
- **Comply proactively with industry regulations and internal policies** that require you to retain content for a minimum period of time—for example, the Sarbanes-Oxley Act might require you to retain certain types of content for seven years. 
- **Reduce your risk in the event of litigation or a security breach** by permanently deleting old content that you're no longer required to keep. 
    
- **Help your organization to share knowledge effectively and be more agile** by ensuring that your users work only with content that's current and relevant to them. 
    
Retention settings that you configure can help you achieve all these goals. Managing content commonly requires two actions:
  
- **Retaining** content so that it can't be permanently deleted before the end of the retention period. 
    
- **Deleting** content permanently at the end of the retention period. 
    

With these two retention actions, you can configure retention settings for the following outcomes:

- Retain-only: Retain content forever or for a specified period of time.
- Delete-only: Delete content after a specified period of time.
- Retain and then delete: Retain content for a specified period of time and then delete it.

These retention settings work with content in place that saves you the additional overheads of creating and configuring additional storage when you need to retain content for compliance reasons. In addition, you don't need to implement customized processes to copy and synchronize this data.

## How retention settings work with content in place

When content has retention settings assigned to it, that content remains in its original location. People can continue to work with their documents or mail as if nothing's changed. But if they edit or delete content that's included in the retention policy, a copy of the content is automatically retained as it existed when you applied the retention settings.
  
- For SharePoint and OneDrive sites: The copy is retained in the **Preservation Hold** library.

- For Exchange mailboxes: The copy is retained in the **Recoverable Items** folder. 

- For Teams channel and chat messages: The copy is retained in a hidden folder within the Exchange **Recoverable Items** folder.

> [!NOTE]
> The Preservation Hold library consumes storage that isn't exempt from a site's storage quota. You might need to increase your storage when you use retention settings for SharePoint and Microsoft 365 groups.
> 
These secure locations and the retained content are not visible to most people. In most cases, people do not even need to know that their content is subject to retention settings.

For more detailed information about how retention settings work for different workloads, see the following articles:

- [Learn about retention for SharePoint and OneDrive](retention-policies-sharepoint.md)
- [Learn about retention for Microsoft Teams](retention-policies-teams.md)
- [Learn about retention for Exchange](retention-policies-exchange.md)

## Retention policies and retention labels

You can use both retention policies and retention labels to assign your retention settings to content. 

Use a retention policy to assign the same retention settings for content at a site or mailbox level, and use a retention label to assign retention settings at an item level (folder, document, email).

For example, if all documents in a SharePoint site should be retained for five years, it's more efficient to do this with a retention policy than apply the same retention label to all documents in that site. However, if some documents in that site should be retained for five years and others retained for ten years, a retention policy wouldn't be able to do this. When you need to specify retention settings at the item level, use retention labels. 

Unlike retention policies, retention settings from retention labels persist with the content if it’s copied or moved to a different Microsoft 365 location. In addition, retention labels have the following capabilities that retention policies don't support: 
 
- Options to start the retention period from when the content was labeled or based on an event, in addition to the age of the content or when it was last modified.

- Use [trainable classifiers](classifier-getting-started-with.md) to identify content to label.

- Apply a default label for SharePoint documents.

- Support [disposition review](disposition-reviews.md) to review the content before it's permanently deleted.

- Mark the content as a [record](records.md) as part of the label settings, and always have [proof of disposition](disposition.md#disposition-of-records) when content is deleted at the end of its retention period.

### Retention policies

Retention policies can be applied to the following locations:
- Exchange email
- SharePoint site
- OneDrive accounts
- Microsoft 365 groups
- Skype for Business
- Exchange public folders
- Teams channel messages
- Teams chats

You can very efficiently apply a single policy to multiple locations, or to specific locations or users.
    
You can also apply a policy to all content or to content when it meets specific conditions, such as content that contains keywords or [sensitive information types](sensitive-information-type-entity-definitions.md).

#### Use Preservation Lock to comply with regulatory requirements

Some organizations might need to comply with rules defined by regulatory bodies such as the Securities and Exchange Commission (SEC) Rule 17a-4, which requires that after a retention policy is turned on, it cannot be turned off or made less restrictive. 

Preservation Lock ensures your organization can meet such regulatory requirements because it locks a retention policy so that no one—including the administrator—can turn off the policy, delete the policy, or make it less restrictive.
  
When a retention policy is locked:

- No one can it turn off
- Locations can be added but not removed
- Content subject to the policy can't be modified or deleted during the retention period
- You can extend a retention period but not decrease it

In summary, a locked retention policy can be increased or extended, but it can't be reduced or turned off.
  
> [!IMPORTANT]
> Before you lock a retention policy, it's critical that you understand the impact and confirm whether it's required for your organization to meet regulatory requirements. Administrators won't be able to disable or delete a retention policy after the preservation lock is applied.

#### Releasing a retention policy

Providing your retention policy doesn't have a Preservation Lock, you can turn off or delete a retention policy at any time. 

When you do so, any SharePoint or OneDrive content that's being retained in the Preservation Hold library is not immediately and permanently deleted. Instead, to help prevent inadvertent data loss, there is a 30-day grace period, during which content expiration for that policy does not happen in the Preservation Hold library, so that you can restore any content from there, if needed. Additionally, you can't manually delete this content during the grace period.

You can turn on the retention policy again during the grace period, and no content will be deleted for that policy.

This 30-day grace period in SharePoint and OneDrive corresponds to the 30-day delay hold in Exchange. For more information, see [Managing mailboxes on delay hold](identify-a-hold-on-an-exchange-online-mailbox.md#managing-mailboxes-on-delay-hold).

### Retention labels

Use retention labels for different types of content that require different retention settings. For example:
  
- Tax forms that need to be retained for a minimum period of time. 
    
- Press materials that need to be permanently deleted when they reach a specific age. 
    
- Competitive research that needs to be retained for a specific period and then permanently deleted. 
    
- Work visas that must be marked as a record so that they can't be edited or deleted. 
    
In all these cases, retention labels let you apply retention settings for governance control at the item level (document or email).
  
With retention labels, you can:
  
- **Enable people in your organization to apply a retention label manually** to content in Outlook and Outlook on the web, OneDrive, SharePoint, and Microsoft 365 groups. Users often know best what type of content they're working with, so they can classify it and have the appropriate retention settings applied. 
    
- **Apply retention labels to content automatically** if it matches specific conditions, such as when the content contains: 
    - Specific types of sensitive information.
    - Specific keywords that match a query you create.
    - Pattern matches for a trainable classifier.

- **Start the retention period from when the content was labeled** for documents in SharePoint sites and OneDrive accounts, and to email items with the exception of calendar items. If you apply a retention label with this configuration to a calendar item, the retention period starts from when it is sent.

- **Start the retention period when an event occurs**, such as employees leave the organization, or contracts expire.

- **Apply a default retention label to a document library, folder, or document set** in SharePoint, so that all documents that are stored in that location inherit the default retention label.

Additionally, retention labels support [records management](records-management.md) for email and documents across Microsoft 365 apps and services. You can use a retention label to classify content as a record. When this happens and the content remains in Microsoft 365, the label places further restrictions on the content that might be needed for regulatory reasons. For more information, including a comparison of the actions allowed or blocked, see [Learn about records](records.md).

Retention labels, unlike [sensitivity labels](sensitivity-labels.md), do not persist if the content is moved outside Microsoft 365.

There is no limit to the number of retention labels that are supported for a tenant. However, 10,000 is the maximum number of policies that are supported for a tenant and these include the policies that apply the labels (retention label policies and auto-apply retention policies), as well as retention policies.

#### Classifying content without applying any actions

Although the main purpose of retention labels is to retain or delete content, you can also use retention labels without turning on any retention or other actions. In this case, you can use a retention label simply as a text label, without enforcing any actions.
  
For example, you can create and apply a retention label named "Review later" with no actions, and then use that label to find that content later.
  
![Label settings page with retention turned off](../media/retention-label-retentionoff.png)

#### Using a retention label as a condition in a DLP policy

You can specify a retention label as a condition in a data loss prevention (DLP) policy for documents in SharePoint. For example, configure a DLP policy to prevent documents from being shared outside the organization if they have a specified retention label applied to it.

For more information, see [Using a retention label as a condition in a DLP policy](data-loss-prevention-policies.md#using-a-retention-label-as-a-condition-in-a-dlp-policy).

#### Retention labels and policies that apply them

Retention labels are independent, reusable building blocks. The primary purpose of a retention label policy is to group a set of retention labels and specify the locations where you want those labels to appear. Then, admins and users can apply those labels to content in those locations.
  
![Diagram of labels, label policies, and locations](../media/eee42516-adf0-4664-b5ab-76727a9a3511.png)
  
When you publish retention labels, they're included in a retention label policy that make them available for admins and users to select:

- A single retention label can be included in many retention label policies.

- Retention label policies specify the locations to publish the retention labels.

- A single location can also be included in many retention label policies.

In addition to retention label policies, you can also create one or more auto-apply policies, each with a single retention label. With this policy, a retention label is automatically applied when conditions that you specify in the policy are met. 

#### Retention label policies and locations

Different types of retention labels can be published to different locations, depending on what the retention label does.
  
| If the retention label is… | Then the label policy can be applied to… |
|:-----|:-----|
|Published to admins and end users  <br/> |Exchange, SharePoint, OneDrive, Microsoft 365 Groups  <br/> |
|Auto-applied based on sensitive information types or trainable classifiers  <br/> |Exchange (all mailboxes only), SharePoint, OneDrive  <br/> |
|Auto-applied based on a query  <br/> |Exchange, SharePoint, OneDrive, Microsoft 365 Groups  <br/> |
   
In Exchange, auto-apply retention labels are applied only to messages newly sent (data in transit), not to all items currently in the mailbox (data at rest). Also, auto-apply retention labels for sensitive information types and trainable classifiers apply to all mailboxes; you can't select specific mailboxes.
  
Exchange public folders, Skype, and Teams channel messages and chats do not support retention labels. To retain and delete contain from these locations, use retention policies instead.

#### Only one retention label at a time

An email or document can have only a single retention label assigned to it at a time:
  
- For retention labels assigned manually by admins or end users, people can remove or change the retention label that's assigned.
    
- If content has an auto-apply label assigned, this label can be replaced by a published retention label.
    
- If content has a published retention label assigned, an auto-apply label cannot replace it.
    
- If there are multiple rules that assign an auto-apply label and content meets the conditions of multiple rules, the retention label for the oldest rule is assigned.
    
To understand how and why one retention label is applied rather than another, it's helpful to understand the difference between explicitly assign a label, and implicitly assigned a label:

- Retention labels applied from a label policy are explicitly assigned
- Retention labels applied automatically from an auto-apply policy are implicitly assigned

An explicitly assigned retention label takes precedence over an implicitly assigned retention label. For more information, see the [The principles of retention, or what takes precedence?](retention.md#the-principles-of-retention-or-what-takes-precedence) section on this page.

#### Using Content Search to find all content with a specific retention label applied to it

After retention labels are assigned to content, either by users or auto-applied, you can use content search to find all content that's classified with a specific retention label.
  
When you create a content search, choose the **Retention label** condition, and then enter the complete retention label name or part of the label name and use a wildcard. For more information, see [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md).
  
![Retention label condition](../media/retention-label-condition.png)


## Compare capabilities for retention policies and retention labels

Use the following table to help you identify whether to use a retention policy or retention label, based on capabilities.

|Capability|Retention policy |Retention label|
|:-----|:-----|:-----|:-----|
|Retention settings that can retain and then delete, retain-only, or delete-only |Yes |Yes |
|Workloads supported: <br />- Exchange <br />- SharePoint <br />- OneDrive <br />- Microsoft 365 groups <br />- Skype for Business <br />- Teams|<br /> Yes <br /> Yes <br /> Yes <br /> Yes <br /> Yes <br /> Yes | <br /> Yes, except public folders <br /> Yes <br /> Yes <br /> Yes <br /> No <br /> No  |
|Retention applied automatically | Yes | Yes |
|Retention applied manually | No | Yes |
|UI presence for end users | No | Yes |
|Persists if the content is moved | No | Yes, within Microsoft 365 |
|Declare item as a record| No | Yes |
|Start the retention period when labeled or based on an event | No | Yes |
|Disposition review | No| Yes |
|Proof of disposition for up to 7 years | No |Yes, when item is declared a record|
|Identify items subject to retention: <br /> - Content Search <br /> - Data classification page, content explorer, activity explorer | <br /> No <br /> No | <br /> Yes <br /> Yes|

Note that you can use both retention policies and retention labels as complementary retention methods. For example:

1. You create and configure a retention policy that automatically deletes content five years after it's last modified, and apply the policy to all OneDrive accounts.

2. You create and configure a retention label that keeps content forever and add this to a label policy that you publish to all OneDrive accounts. You explain to users how to manually apply this label to specific documents that should be excluded from automatic deletion if not modified after five years.

For more information about how retention policies and retention labels work together and how to determine their combined outcome, see the next section that explains the principles of retention and what takes precedence.

## The principles of retention, or what takes precedence?

It's possible or even likely that content might have several retention policies and retention labels applied to it, each with a different action (retain, delete, or retain and then delete) and retention period. What takes precedence? 

At a high level, you can be assured that retention always takes precedence over deletion, and then the longest retention period wins. 

However, there are a few more factors to throw into the mix, so use the following flow to understand the outcome where each level acts as a tie-breaker from top to bottom: If the outcome is determined by the first level, there's no need to progress to the next level, and so on. Only if the outcome can't be determined by the rules for the level does the flow move down to the next level to determine the outcome for which retention settings take precedence.

![Diagram of the principles of retention](../media/1693d6ec-b340-4805-9da3-89aa41bc6afb.png)
  
Explanation for the four different levels:
  
1. **Retention wins over deletion.** Suppose that one retention policy is configured to delete Exchange email after three years, but another retention policy is configured to retain Exchange email for five years and then delete it. Any content that reaches three years old will be deleted and hidden from the users' view, but still retained in the Recoverable Items folder until the content reaches five years old, when it is permanently deleted. 
2. **The longest retention period wins.** If content is subject to multiple retention settings that retain content for different periods of time, the content will be retained until the end of the longest retention period.
    
3. **Explicit inclusion wins over implicit inclusion.** This means: 
    
    1. If a retention label with retention settings is manually assigned by a user to an item, such as an Exchange email or OneDrive document, that retention label takes precedence over both a retention policy assigned at the site or mailbox level and a default retention label assigned to the document library. For example, if the explicit retention label is configured to retain content for ten years, but a retention policy assigned to the site is configured to retain content for only five years, the retention label takes precedence. Auto-applied retention labels are considered implicit rather than explicit, because they're applied automatically by Microsoft 365.
    
    2. If a retention policy includes a specific location, such as a specific user's mailbox or OneDrive account, that retention policy takes precedence over another retention policy that applies to all users' mailboxes or OneDrive accounts but doesn't specifically include that user's mailbox.
    
4. **The shortest deletion period wins.** Similarly, if content is subject to multiple retention settings that delete content without a retention period, that content will be deleted at the end of the shortest retention period. 

Finally, a retention policy or retention label cannot permanently delete any content that's on hold for eDiscovery. When that hold is released, the content again becomes eligible for the cleanup process in the secured locations for the workload.

## Auditing retention configuration

Administrator actions for retention policies and retention labels are saved to the audit log when [auditing is enabled](turn-audit-log-search-on-or-off.md). For example, an audit event is created when a retention policy or label is created, configured, or deleted. For the full list, see [Retention policy and retention label activities](search-the-audit-log-in-security-and-compliance.md#retention-policy-and-retention-label-activities).

## PowerShell cmdlets for retention policies and retention labels

To use the retention cmdlets, you must first [connect to the Office 365 Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell). Then, use any of the following cmdlets:

- [Get-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/get-compliancetag)

- [New-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/new-compliancetag)

- [Remove-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/remove-compliancetag)

- [Set-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/set-compliancetag)

- [Enable-ComplianceTagStorage](https://docs.microsoft.com/powershell/module/exchange/enable-compliancetagstorage)

- [Get-ComplianceTagStorage](https://docs.microsoft.com/powershell/module/exchange/get-compliancetagstorage)

- [Get-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/get-retentioncompliancepolicy)

- [New-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/new-retentioncompliancepolicy)

- [Remove-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/remove-retentioncompliancepolicy)

- [Set-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/set-retentioncompliancepolicy)

- [Get-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/get-retentioncompliancerule)

- [New-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/new-retentioncompliancerule)

- [Remove-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/remove-retentioncompliancerule)

- [Set-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/set-retentioncompliancerule)

## Use retention policies and retention labels instead of older features

If you need to proactively retain or delete content in Microsoft 365 for information governance, we recommend that you use retention policies and retention labels instead of the following older features. 
  
If you currently use these older features, they will continue to work side-by-side with retention policies and retention labels. However, we recommend that going forward, you use retention policies and retention labels instead. They provide you with a single mechanism to centrally manage both retention and deletion of content across Microsoft 365.

**Older features from Exchange Online:**

- [In-Place Hold and Litigation Hold](https://go.microsoft.com/fwlink/?linkid=846124) (eDiscovery hold) 

- [How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md)
    
- [Retention tags and retention policies](https://go.microsoft.com/fwlink/?linkid=846125), also known as [messaging records management (MRM)](https://go.microsoft.com/fwlink/?linkid=846126) (deletion only)
    
See also [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md).


**Older features from SharePoint and OneDrive:**

- [Add content to a case and place sources on hold in the eDiscovery Center](https://docs.microsoft.com/SharePoint/governance/add-content-to-a-case-and-place-sources-on-hold-in-the-ediscovery-center) (eDiscovery hold) 
    
- [Document deletion policies](https://support.office.com/article/Create-a-document-deletion-policy-in-SharePoint-Server-2016-4fe26e19-4849-4eb9-a044-840ab47458ff) (deletion only)
    
- [Configuring in place records management](https://support.office.com/article/7707a878-780c-4be6-9cb0-9718ecde050a) (retention only) 
    
- [Use policies for site closure and deletion](https://support.microsoft.com/en-us/office/use-policies-for-site-closure-and-deletion-a8280d82-27fd-48c5-9adf-8a5431208ba5) (deletion only) 
    
- [Information management policies](intro-to-info-mgmt-policies.md) (deletion only)
     
If you've previously used any of the eDiscovery holds for the purpose of information governance, for proactive compliance, use a retention policy instead. Use eDiscovery for holds only.
  
### Retention policies and SharePoint content type policies or information management policies

If you have configured SharePoint sites for content type policies or information management policies to retain content for a list or library, those policies are ignored while a retention policy is in effect. 

## Related information

- [SharePoint Online Limits](https://docs.microsoft.com/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)
- [Limits and specifications for Microsoft Teams](https://docs.microsoft.com/microsoftteams/limits-specifications-teams) 
- [Comply with SEC Rule 17a-4](use-exchange-online-to-comply-with-sec-rule-17a-4.md)

## Next steps

If you are ready to create retention policies, see [Create and configure retention policies](create-retention-policies.md).

To create and apply retention labels:
- [Create retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

