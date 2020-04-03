---
title: "Learn about retention policies to automatically retain or delete content"
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

# Learn about retention policies to automatically retain or delete content

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

- [Create and configure retention policies](create-retention-policies.md)
- [Overview of labels](labels.md)
- [SharePoint Online Limits](https://docs.microsoft.com/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)
- [Limits and specifications for Microsoft Teams](https://docs.microsoft.com/microsoftteams/limits-specifications-teams) 
- [Comply with SEC Rule 17a-4](use-exchange-online-to-comply-with-sec-rule-17a-4.md)
