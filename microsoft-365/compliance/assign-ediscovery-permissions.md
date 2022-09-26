---
title: "Assign eDiscovery permissions in the Microsoft Purview compliance portal"
description: "Assign the permissions required to perform eDiscovery-related tasks using the Microsoft Purview compliance portal."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
---

# Assign eDiscovery permissions in the compliance portal

If you want people to use any of the [eDiscovery-related tools](ediscovery.md) in the Microsoft Purview compliance portal, you have to assign them the appropriate permissions. The easiest way to do this is to add the person the appropriate role group on the **Permissions** page in the compliance portal. This topic describes the permissions required to perform eDiscovery tasks.

> [!TIP]
> You can view your own permissions on the eDiscovery (Premium) overview page in the compliance portal. You must have at least one role assigned for your permissions to be displayed.

The primary eDiscovery-related role group in compliance portal is called **eDiscovery Manager**. There are two subgroups within this role group.
  
- **eDiscovery Manager** - An eDiscovery Manager can use eDiscovery search tools to search content locations in the organization, and perform various search-related actions such as preview and export search results. Members can also create and manage cases in Microsoft Purview eDiscovery (Standard) and Microsoft Purview eDiscovery (Premium), add and remove members to a case, create case holds, run searches associated with a case, and access case data. eDiscovery Managers can only access and manage the cases they create. They can't access or manage cases created by other eDiscovery Managers.
  
- **eDiscovery Administrator** - An eDiscovery Administrator is a member of the eDiscovery Manager role group, and can perform the same content search and case management-related tasks that an eDiscovery Manager can perform. Additionally, an eDiscovery Administrator can:
  
  - Access all cases that are listed on the **eDiscovery (Standard)** and **eDiscovery (Premium)** pages in the compliance portal.

  - Access case data in eDiscovery (Premium) for any case in the organization.
  
  - Manage any eDiscovery case after they add themselves as a member of the case.
  
  - Remove members from an eDiscovery case. Only an eDiscovery Administrator can remove members from a case. Users who are members of the eDiscovery Manager subgroup can't remove members from a case, even if the user created the case.
  
  For reasons why you might want eDiscovery Administrators in your organization, see [More information](#more-information).

> [!NOTE]
> To analyze a user's data using eDiscovery (Premium), the user (the custodian of the data) must be assigned an Office 365 E5 or Microsoft 365 E5 license. Alternatively, users with an Office 365 E1 or a Office 365 or Microsoft 365 E3 license can be assigned a Microsoft 365 E5 Compliance or Microsoft 365 eDiscovery and Audit add-on license. Administrators, compliance officers, or legal personnel who are assigned to cases as members and use eDiscovery (Premium) to collect, view, and analyze data don't need an E5 license. For more information about eDiscovery (Premium) licensing, see [Subscriptions and licensing in eDiscovery (Premium)](overview-ediscovery-20.md#subscriptions-and-licensing).
  
## Before you assign permissions

- You have to be a member of the Organization Management role group or be assigned the Role Management role to assign eDiscovery permissions in the compliance portal.

- You can use the [Add-RoleGroupMember](/powershell/module/exchange/Add-RoleGroupMember) cmdlet in Security & Compliance PowerShell to add a mail-enabled security group as a member of the eDiscovery Managers subgroup in the eDiscovery Manager role group. However, you can't add a mail-enabled security group to the eDiscovery Administrators subgroup. For details, see [More information](#more-information).
  
## Assign eDiscovery permissions

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">compliance portal</a> and sign in using an account that can assign permissions.
  
2. In the left pane, select **Permissions**.

3. On the **Permissions & Roles** page, under **Microsoft Purview solutions**, click **Roles**.

   To go directly to this page, use <https://compliance.microsoft.com/compliancecenterpermissions>.

4. On the **Role groups for Microsoft Purview solutions** page, select **eDiscovery Manager**.
  
5. On the **eDiscovery Manager** flyout page, do one of the following based on the eDiscovery permissions that you want to assign.
  
    **To make a user an eDiscovery Manager:** Next to **eDiscovery Manager**, select **Edit**. On the **Choose eDiscovery Manager** wizard page, click ![Add Icon.](../media/ITPro-EAC-AddIcon.gif) **Add**. Select the user (or users) you want to add as an eDiscovery manager, and then select **Add**. When you're finished adding users, select **Done**. Then, on the **Editing Choose eDiscovery Manager** wizard page, select **Save** to save the changes to the eDiscovery Manager membership.
  
    **To make a user an eDiscovery Administrator:** Next to **eDiscovery Administrator**, select **Edit**. On the **Choose eDiscovery Administrator** page, click ![Add Icon.](../media/ITPro-EAC-AddIcon.gif) **Add**. Select the user (or users) you want to add as an **eDiscovery Administrator**, and then  **Add**. When you're finished adding users, select **Done**. Then, on the **Editing Choose eDiscovery Administrator** wizard page, select **Save** to save the changes to the eDiscovery Administrator membership.
  
> [!NOTE]
> You can also use the **Add-eDiscoveryCaseAdmin** cmdlet to make a user an eDiscovery Administrator. However, the user must be assigned the Case Management role before you can use this cmdlet to make them an eDiscovery Administrator. For more information, see [Add-eDiscoveryCaseAdmin](/powershell/module/exchange/add-ediscoverycaseadmin).
  
On the **Permissions** page in the compliance portal, you can also assign users eDiscovery-related permissions by adding them to the Compliance Administrator, Organization Management, and Reviewer role groups. For a description of the eDiscovery-related RBAC roles assigned to each of these role groups, see [RBAC roles related to eDiscovery](#rbac-roles-related-to-ediscovery).

## RBAC roles related to eDiscovery

The following table lists the eDiscovery-related RBAC roles in the compliance portal, and indicates the built-in role groups that each role is assigned to by default.
  
| Role | Compliance Administrator | eDiscovery Manager & Administrator | Organization Management | Reviewer |
|:-----|:-----:|:-----:|:-----:|:-----:|
|Case Management|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)||
|Communication||![Check mark.](../media/checkmark.png)|||
|Compliance Search|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)||
|Custodian||![Check mark.](../media/checkmark.png)|||
|Export||![Check mark.](../media/checkmark.png)|||
|Hold|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)||
|Preview||![Check mark.](../media/checkmark.png)|||
|Review||![Check mark.](../media/checkmark.png)||![Check mark](../media/checkmark.png)|
|RMS Decrypt||![Check mark](../media/checkmark.png)|||
|Search And Purge|||![Check mark](../media/checkmark.png)||
  
The following sections describe each of the eDiscovery-related RBAC roles listed in the previous table.

### Case Management

This role lets users create, edit, delete, and control access to eDiscovery (Standard) and eDiscovery (Premium) cases in the compliance portal. As previously explained, a user must be assigned the Case Management role before you can use the **Add-eDiscoveryCaseAdmin** cmdlet to make them an eDiscovery Administrator.

For more information, see:

- [Get started with eDiscovery (Standard)](get-started-core-ediscovery.md)

- [Get started with eDiscovery (Premium)](get-started-with-advanced-ediscovery.md)

### Communication

This role lets users manage all communications with the custodians identified in an eDiscovery (Premium) case. This includes creating hold notifications, hold reminders, and escalations to management. The user can also track custodian acknowledgment of hold notifications and manage access to the custodian portal that is used by each custodian to track communications for the cases where they were identified as a custodian.

For more information, see [Work with communications in eDiscovery (Premium)](managing-custodian-communications.md).

### Compliance Search

This role lets users run the Content Search tool in the compliance portal to search mailboxes and public folders, SharePoint Online sites, OneDrive for Business sites, Skype for Business conversations, Microsoft 365 groups, and Microsoft Teams, and Yammer groups. This role allows a user to get an estimate of the search results and create export reports, but other roles are needed to initiate content search actions such as previewing, exporting, or deleting search results.

In  Content search and eDiscovery (Standard), users who are assigned the Compliance Search role but don't have the Preview role can preview the results of a search in which the preview action has been initiated by a user who is assigned the Preview role. The user without the Preview role can preview results for up to two weeks after the initial preview action was created.

Similarly, users in Content search and eDiscovery (Standard) who are assigned the Compliance Search role but don't have the Export role can download the results of a search in which the export action was initiated by a user who is assigned the Export role. The user without the Export role can download the results of a search for up to two weeks after the initial export action was created. After that, they can't download the results unless someone with the Export role restarts the export.

The two-week grace period for previewing and exporting search results (without the corresponding search and export roles) doesn't apply to eDiscovery (Premium). Users must be assigned the Preview and Export roles to preview and export content in eDiscovery (Premium).

### Custodian

This role lets users identify and manage custodians for eDiscovery (Premium) cases and use the information from Azure Active Directory and other sources to find data sources associated with custodians. The user can associate other data sources such as mailboxes, SharePoint sites, and Teams with custodians in a case. The user can also place a legal hold on the data sources associated with custodians to preserve content in the context of a case.

For more information, see [Work with custodians in eDiscovery (Premium)](managing-custodians.md).

### Export

The role lets users export the results of a Content Search to a local computer. It also lets them prepare search results for analysis in eDiscovery (Premium).

For more information about exporting search results, see [Export search results from Microsoft Purview compliance portal](export-search-results.md).

### Hold

This role lets users place content on hold in mailboxes, public folders, sites, Skype for Business conversations, and Microsoft 365 groups. When content is on hold, content owners can still modify or delete the original content, but the content will be preserved until the hold is removed or until the hold duration expires.

For more information about holds, see:

- [Create a hold in eDiscovery (Standard)](create-ediscovery-holds.md) 

- [Create a hold in eDiscovery (Premium)](add-custodians-to-case.md)

### Preview

This role lets users view a list of items that were returned from a Content Search. They can also open and view each item from the list to view its contents.

### Review

This role lets users access review sets in [eDiscovery (Premium)](overview-ediscovery-20.md). Users who are assigned this role can see and open the list of cases on the **eDiscovery > Advanced** page in the compliance portal that they're members of. After the user accesses an eDiscovery (Premium) case, they can select **Review sets** to access case data. This role doesn't allow the user to preview the results of a collection search that's associated with the case or do other search or case management tasks. Users with this role can only access the data in a review set.

### RMS Decrypt

This role lets users view rights-protected email messages when previewing search results and export decrypted rights-protected email messages. This role also lets users view (and export) a file that's encrypted with a [Microsoft encryption technology](encryption.md) when the encrypted file is attached to an email message that's included in the results of an eDiscovery search. Additionally, this role lets users review and query encrypted email attachments that are added to a review set in eDiscovery (Premium). For more information about decryption in eDiscovery, see [Decryption in Microsoft 365 eDiscovery tools](ediscovery-decryption.md).

### Search And Purge

This role lets users perform bulk removal of data matching the criteria of a content search. For more information, see [Search for and delete email messages in your organization](search-for-and-delete-messages-in-your-organization.md).

## Adding role groups as members of eDiscovery cases

You can add role groups as members of eDiscovery (Standard) and eDiscovery (Premium) cases so that members of the role groups can access and perform tasks in the assigned cases. The roles assigned to the role group define what members of the role group can do. Then adding a role group as a member of the case lets members access and perform those tasks in a specific case. For more information about adding role groups as members of cases, see:

- [Get started with eDiscovery (Standard)](get-started-core-ediscovery.md#step-4-optional-add-members-to-a-ediscovery-standard-case)

- [Add or remove members from an eDiscovery (Premium) case](add-or-remove-members-from-a-case-in-advanced-ediscovery.md)

With this in mind, it's important to know that if a role is added or removed from a role group, then that role group will be automatically removed as a member of any case the role group is a member of. The reason for this is to protect your organization from inadvertently providing additional permissions to members of a case. Similarly, if a role group is deleted, it will be removed from all cases it was a member of.

Before you add or remove roles to a role group that may be a member of an eDiscovery case, you can run the following commands in [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) to get a list of cases the role group is a member of. After you update the role group, you add the role group back as a member of those cases.

### Get a list of eDiscovery (Standard) cases a role group is assigned to

```powershell
Get-ComplianceCase -RoleGroup "Name of role group"
```

### Get a list of eDiscovery (Premium) cases a role group is assigned to

```powershell
Get-ComplianceCase -RoleGroup "Name of role group" -CaseType AdvancedEdiscovery
```

## More information

- **Why create an eDiscovery Administrator?** As previously explained, an eDiscovery Administrator is member of the eDiscovery Manager role group who can view and access all eDiscovery cases in your organization. This ability to access all the eDiscovery cases has two important purposes:

  - If a person who is the only member of an eDiscovery case leaves your organization, no one (including members of the Organization Management role group or another member of the eDiscovery Manager role group) can access that eDiscovery case because they aren't a member of a case. In this situation, there would be no way to access the data in the case. But because an eDiscovery Administrator can access all eDiscovery cases in the organization, they can view the case and add themselves or another eDiscovery manager as a member of the case.

  - Because an eDiscovery Administrator can view and access all eDiscovery (Standard) and eDiscovery (Premium) cases, they can audit and oversee all cases and associated compliance searches. This can help to prevent any misuse of compliance searches or eDiscovery cases. And because eDiscovery Administrators can access potentially sensitive information in the results of a compliance search, you should limit the number of people who are eDiscovery Administrators.

- **Can I add a group as a member of the eDiscovery Manager role group?** As previously explained, you can add a mail-enabled security group as a member of the eDiscovery Managers subgroup in the eDiscovery Manager role group by using the **Add-RoleGroupMember** cmdlet in Security & Compliance PowerShell. For example, you can run the following command to add a mail-enabled security group to the eDiscovery Manager role group. 

  ```powershell
  Add-RoleGroupMember "eDiscovery Manager" -Member <name of security group>
  ```

    Exchange distribution groups and Microsoft 365 Groups aren't supported. You must use a mail-enabled security group, which you can create in Exchange Online PowerShell by running `New-DistributionGroup -Type Security`. You can also create a mail-enabled security group (and add members) in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a> or in the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2024339). It might take up to 60 minutes after you create it for a new mail-enabled security group to be available to add to the eDiscovery Managers role group.

    Also as previously stated, you can't make a mail-enabled security group an eDiscovery Administrator by using the **Add-eDiscoveryCaseAdmin** cmdlet in Security & Compliance PowerShell. You can only add individual users as eDiscovery Administrators.

    You also can't add a mail-enabled security group as a member of a case.
