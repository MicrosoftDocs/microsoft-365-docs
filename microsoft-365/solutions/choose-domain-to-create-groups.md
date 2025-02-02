---
title: "Choose the domain to use when creating Microsoft 365 groups"
ms.reviewer: rahulnayak
ms.date: 02/18/2020
f1.keywords: NOCSH
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-subscription-management 
- Adm_O365
- m365solution-collabgovernance
search.appverid:
- MET150
ms.assetid: 7cf5655d-e523-4bc3-a93b-3ccebf44a01a
recommendations: false
description: "Learn to choose the domain to use when creating Microsoft 365 groups by configuring email address policies using PowerShell."
---

# Choose the domain to use when creating Microsoft 365 groups

Some organizations use separate email domains to segment different parts of their businesses. You can specify which domain should be used when your users create Microsoft 365 groups.
  
If your organization needs users to create their groups in domains other than the default accepted domain of your business, you can allow this by configuring email address policies (EAPs) using PowerShell.

Before you can run the PowerShell cmdlets, download and install a module that will let you talk to your organization. Check out [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

## Example scenarios

Let's say your business's main domain is Contoso.com. But your organization's default accepted domain is service.contoso.com. This means groups will be created in service.contoso.com (for example, jimsteam@service.contoso.com).
  
Let's say you also have sub-domains configured in your organization. You want groups to be created in these domains, too:
  
- students.contoso.com for students
    
- faculty.contoso.com for faculty members
    
The following two scenarios explain how you would accomplish this.

> [!NOTE]
> When you have mulitple EAPs, they are evaluated in the order of priority. A value of 1 means the highest priority. Once an EAP matches, no further EAP is evaluated and addresses that gets stamped on the group are as per the matched EAP. > If no EAPs match the specified criteria, then the group gets provisioned in the organization's default accepted domain. Check out [Manage accepted domains in Exchange Online](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) for details on how to add an accepted domain.
  
### Scenario 1

The following example shows you how to provision all Microsoft 365 groups in your organization in the groups.contoso.com domain.
  
```
New-EmailAddressPolicy -Name Groups -IncludeUnifiedGroupRecipients -EnabledEmailAddressTemplates "SMTP:@groups.contoso.com" -Priority 1
```

### Scenario 2

Let's say you want to control what sub-domains Microsoft 365 groups are created in. You want:
  
- Groups created by students (users which have **Department** set to **Students**) in the students.groups.contoso.com domain. Use this command:
    
  ```
  New-EmailAddressPolicy -Name StudentsGroups -IncludeUnifiedGroupRecipients -EnabledEmailAddressTemplates "SMTP:@students.groups.contoso.com","smtp:@groups.contoso.com" -ManagedByFilter {Department -eq 'Students'} -Priority 1
  ```

- Groups created by faculty members (users which have **Department** set to **Faculty or email address contains faculty.contoso.com)**) in the faculty.groups.contoso.com domain. Use this command:
    
  ```
  New-EmailAddressPolicy -Name FacultyGroups -IncludeUnifiedGroupRecipients -EnabledEmailAddressTemplates "SMTP:@faculty.groups.contoso.com","smtp:@groups.contoso.com" -ManagedByFilter {Department -eq 'Faculty' -or EmailAddresses -like "*faculty.contoso.com*"} -Priority 2
  ```

- Groups created by anyone else are created in the groups.contoso.com domain. Use this command:
    
  ```
  New-EmailAddressPolicy -Name OtherGroups -IncludeUnifiedGroupRecipients -EnabledPrimarySMTPAddressTemplate "SMTP:@groups.contoso.com" -Priority 3
  ```
> [!NOTE]
> This scenario does not work when the MX record points to third-party spam filtering.
 
## Change email address policies

To change the priority or email address templates for an existing EAP, use the Set-EmailAddressPolicy cmdlet.
  
```
Set-EmailAddressPolicy -Name StudentsGroups -EnabledEmailAddressTemplates "SMTP:@students.groups.contoso.com","smtp:@groups.contoso.com", "smtp:@students.contoso.com"
```

Changing an EAP has no impact on the groups that have already been provisioned.
  
## Delete email address policies

To delete an EAP, use the Remove-EmailAddressPolicy cmdlet.
  
```
Remove-EmailAddressPolicy -Identity StudentsGroups
```

Changing an EAP has no impact on the groups that have already been provisioned.
  
## Hybrid requirements

If your organization is configured in a hybrid scenario, check out [Configure Microsoft 365 groups with on-premises Exchange hybrid](/exchange/hybrid-deployment/set-up-microsoft-365-groups) to make sure your organization meets the requirements for creating Microsoft 365 groups. 
  
## Additional info about using email address policies groups:

There are a few more things to know:
  
- How fast groups are created depends on the number of EAPs configured in your organization.
    
- Admins and users can also modify domains when they create groups.
    
- Group of users is determined using the standard queries (User properties) that are already available. Check out [Filterable properties for the -RecipientFilter parameter](/powershell/exchange/recipientfilter-properties) for supported filterable properties. 
    
- If you don't configure any EAPs for groups, then the default accepted domain is selected for group creation.
    
- If you remove an accepted domain, you should update the EAPs first, otherwise, group provisioning will be impacted.
    
- A maximum limit of 100 email address policies can be configured for an organization.
    
## Related content

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations) (article)

[Create your collaboration governance plan](collaboration-governance-first.md) (article)

[Create a Microsoft 365 group in the admin center](../admin/create-groups/create-groups.md) (article)
