---
title: "Assign eDiscovery permissions in the Microsoft 365 compliance center"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 5b9a067b-9d2e-4aa5-bb33-99d8c0d0b5d7
description: "Assign the permissions required to perform eDiscovery-related tasks using the Microsoft 365 compliance center."
ms.custom: seo-marvel-apr2020
---

# Assign eDiscovery permissions in the Microsoft 365 compliance center

If you want people to use any of the [eDiscovery-related tools](ediscovery.md) in the Microsoft 365 compliance center, you have to assign them the appropriate permissions. The easiest way to do this is to add the person the appropriate role group on the **Permissions** page in the compliance center. This topic describes the permissions required to perform eDiscovery tasks.
  
The primary eDiscovery-related role group in Microsoft 365 compliance center is called **eDiscovery Manager**. There are two subgroups within this role group.
  
- **eDiscovery Managers** - An eDiscovery Manager can use eDiscovery search tools to search content locations in the organization, and perform various search-related actions such as preview and export search results. Members can also create and manage cases in Core eDiscovery and Advanced eDiscovery, add and remove members to a case, create case holds, run searches associated with a case, and access case data. eDiscovery Managers can only access and manage the cases they create. They can't access or manage cases created by other eDiscovery Managers.
  
- **eDiscovery Administrators** - An eDiscovery Administrator is a member of the eDiscovery Manager role group, and can perform the same content search and case management-related tasks that an eDiscovery Manager can perform. Additionally, an eDiscovery Administrator can:
  
  - Access all cases that are listed on the **Core eDiscovery** and **Advanced eDiscovery** pages in the Microsoft 365 compliance center.

  - Access case data in Advanced eDiscovery for any case in the organization.
  
  - Manage any eDiscovery case after they add themselves as a member of the case.
  
  For reasons why you might want eDiscovery Administrators in your organization, see [More information](#more-information).

> [!NOTE]
> To analyze a user's data using Advanced eDiscovery, the user (the custodian of the data) must be assigned an Office 365 E5 or Microsoft 365 E5 license. Alternatively, users with an Office 365 E1 or a Office 365 or Microsoft 365 E3 license can be assigned an Microsoft 365 E5 Compliance or Microsoft 365 eDiscovery and Audit add-on license. Administrators, compliance officers, or legal personnel who are assigned to cases as members and use Advanced eDiscovery to collect, view, and analyze data don't need an E5 license. For more information about Advanced eDiscovery licensing, see [Subscriptions and licensing in Advanced eDiscovery](overview-ediscovery-20.md#subscriptions-and-licensing).
  
## Before you assign permissions

- You have to be a member of the Organization Management role group or be assigned the Role Management role to assign eDiscovery permissions in the Microsoft 365 compliance center.

- You can use the [Add-RoleGroupMember](/powershell/module/exchange/Add-RoleGroupMember) cmdlet in Security & Compliance Center PowerShell to add a mail-enabled security group as a member of the eDiscovery Managers subgroup in the eDiscovery Manager role group. However, you can't add a mail-enabled security group to the eDiscovery Administrators subgroup. For details, see [More information](#more-information). 
  
## Assign eDiscovery permissions

1. Go to <https://compliance.microsoft.com> and sign in using an account that can assign permissions.
  
2. In the left pane of the Microsoft 365 compliance center, select **Permissions**.

3. On the **Permissions & Roles** page, under **Compliance center**, click **Roles**.

4. On the **Compliance center roles** page, select **eDiscovery Manager**.
  
5. On the **eDiscovery Manager** flyout page, do one of the following based on the eDiscovery permissions that you want to assign.
  
    **To make a user an eDiscovery Manager:** Next to **eDiscovery Manager**, select **Edit**. On the **Choose eDiscovery Manager** wizard page, click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) **Add**. Select the user (or users) you want to add as an eDiscovery manager, and then select **Add**. When you're finished adding users, select **Done**. Then, on the **Editing Choose eDiscovery Manager** wizard page, select **Save** to save the changes to the eDiscovery Manager membership.
  
    **To make a user an eDiscovery Administrator:** Next to **eDiscovery Administrator**, select **Edit**. On the **Choose eDiscovery Administrator** page, click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) **Add**. Select the user (or users) you want to add as an **eDiscovery Administrator**, and then  **Add**. When you're finished adding users, select **Done**. Then, on the **Editing Choose eDiscovery Administrator** wizard page, select **Save** to save the changes to the eDiscovery Administrator membership.
  
> [!NOTE]
> You can also use the **Add-eDiscoveryCaseAdmin** cmdlet to make a user an eDiscovery Administrator. However, the user must be assigned the Case Management role before you can use this cmdlet to make them an eDiscovery Administrator. For more information, see [Add-eDiscoveryCaseAdmin](/powershell/module/exchange/add-ediscoverycaseadmin). 
  
On the **Permissions** page in the Microsoft 365 compliance center, you can also assign users eDiscovery-related permissions by adding them to the Compliance Administrator, Organization Management, and Reviewer role groups. For a description of the eDiscovery-related RBAC roles assigned to each of these role groups, see [RBAC roles related to eDiscovery](#rbac-roles-related-to-ediscovery).

## RBAC roles related to eDiscovery

The following table lists the eDiscovery-related RBAC roles in the Microsoft 365 compliance center, and indicates the built-in role groups that each role is assigned to by default.
  
| Role | Compliance Administrator | eDiscovery Manager & Administrator | Organization Management | Reviewer |
|:-----|:-----:|:-----:|:-----:|:-----:|
|Case Management <br/> |![Check mark](../media/checkmark.png) <br/> |![Check mark](../media/checkmark.png) <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> |
|Communication <br/> | <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> | <br/> |
|Compliance Search <br/> |![Check mark](../media/checkmark.png) <br/> |![Check mark](../media/checkmark.png) <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> |
|Custodian <br/> | <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> | <br/> |
|Export <br/> | <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> | <br/> |
|Hold <br/>  |![Check mark](../media/checkmark.png) <br/> |![Check mark](../media/checkmark.png) <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> |
|Preview <br/>  | <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> | <br/> |
|Review <br/>  | <br/> |![Check mark](../media/checkmark.png) <br/> | <br/> |![Check mark](../media/checkmark.png) <br/> |
|RMS Decrypt <br/>  ||![Check mark](../media/checkmark.png) <br/> |||
|Search And Purge <br/> | <br/> | <br/> |![Check mark](../media/checkmark.png)           <br/> | <br/> |
||||
  
The following sections describe each of the eDiscovery-related RBAC roles listed in the previous table.

### Case Management

This role lets users create, edit, delete, and control access to Core eDiscovery and Advanced eDiscovery cases in the Microsoft 365 compliance center. As previously explained, a user must be assigned the Case Management role before you can use the **Add-eDiscoveryCaseAdmin** cmdlet to make them an eDiscovery Administrator.

For more information, see:

- [Get started with Core eDiscovery](get-started-core-ediscovery.md)

- [Get started with Advanced eDiscovery](get-started-with-advanced-ediscovery.md)

### Communication

This role lets users manage all communications with the custodians identified in an Advanced eDiscovery case. This includes creating hold notifications, hold reminders, and escalations to management. The user can also track custodian acknowledgment of hold notifications and manage access to the custodian portal that is used by each custodian to track communications for the cases where they were identified as a custodian.

For more information, see [Work with communications in Advanced eDiscovery](managing-custodian-communications.md).

### Compliance Search

This role lets users run the Content Search tool in the Microsoft 365 compliance center to search mailboxes and public folders, SharePoint Online sites, OneDrive for Business sites, Skype for Business conversations, Microsoft 365 groups, and Microsoft Teams, and Yammer groups. This role allows a user to get an estimate of the search results and create export reports, but other roles are needed to initiate content search actions such as previewing, exporting, or deleting search results.

Users who are assigned the Compliance Search role but don't have the Preview role can preview the results of a search in which the preview action has been initiated by a user who is assigned the Preview role. The user without the Preview role can preview results for up to two weeks after the initial preview action was created.

Similarly, users who are assigned the Compliance Search role but don't have the Export role can download the results of a search in which the export action was initiated by a user who is assigned the Export role. The user without the Export role can download the results of a search for up to two weeks after the initial export action was created. After that, they can't download the results unless someone with the Export role restarts the export.

For more information, see [Content search in Office 365](content-search.md).

### Custodian

This role lets users identify and manage custodians for Advanced eDiscovery cases and use the information from Azure Active Directory and other sources to find data sources associated with custodians. The user can associate other data sources such as mailboxes, SharePoint sites, and Teams with custodians in a case. The user can also place a legal hold on the data sources associated with custodians to preserve content in the context of a case.

For more information, see [Work with custodians in Advanced eDiscovery](managing-custodians.md).

### Export

The role lets users export the results of a Content Search to a local computer. It also lets them prepare search results for analysis in Advanced eDiscovery.

For more information about exporting search results, see [Export search results from Microsoft 365 compliance center](export-search-results.md).

### Hold

This role lets users place content on hold in mailboxes, public folders, sites, Skype for Business conversations, and Microsoft 365 groups. When content is on hold, content owners can still modify or delete the original content, but the content will be preserved until the hold is removed or until the hold duration expires.

For more information about holds, see:

- [Create a hold in Core eDiscovery](create-ediscovery-holds.md) 

- [Create a hold in Advanced eDiscovery](add-custodians-to-case.md)

### Preview

This role lets users view a list of items that were returned from a Content Search. They can also open and view each item from the list to view its contents.

### Review

This role lets users access review sets in [Advanced eDiscovery](overview-ediscovery-20.md). Users who are assigned this role can see and open the list of cases on the **eDiscovery > Advanced** page in the Microsoft 365 compliance center that they're members of. After the user accesses an Advanced eDiscovery case, they can select **Review sets** to access case data. This role doesn't allow the user to preview the results of a collection search that's associated with the case or do other search or case management tasks. Users with this role can only access the data in a review set.

### RMS Decrypt

This role lets users view rights-protected email messages when previewing search results and export decrypted rights-protected email messages. This role also lets users view (and export) a file that's encrypted with a [Microsoft encryption technology](encryption.md) when the encrypted file is attached to an email message that's included in the results of an eDiscovery search. Additionally, this role lets users review and query encrypted email attachments that are added to a review set in Advanced eDiscovery. For more information about decryption in eDiscovery, see [Decryption in Microsoft 365 eDiscovery tools](ediscovery-decryption.md).

### Search And Purge

This role lets users perform bulk removal of data matching the criteria of a content search. For more information, see [Search for and delete email messages in your organization](search-for-and-delete-messages-in-your-organization.md).

## More information

- **Why create an eDiscovery Administrator?** As previously explained, an eDiscovery Administrator is member of the eDiscovery Manager role group who can view and access all eDiscovery cases in your organization. This ability to access all the eDiscovery cases has two important purposes:

  - If a person who is the only member of an eDiscovery case leaves your organization, no one (including members of the Organization Management role group or another member of the eDiscovery Manager role group) can access that eDiscovery case because they aren't a member of a case. In this situation, there would be no way to access the data in the case. But because an eDiscovery Administrator can access all eDiscovery cases in the organization, they can view the case and add themselves or another eDiscovery manager as a member of the case.

  - Because an eDiscovery Administrator can view and access all Core eDiscovery and Advanced eDiscovery cases, they can audit and oversee all cases and associated compliance searches. This can help to prevent any misuse of compliance searches or eDiscovery cases. And because eDiscovery Administrators can access potentially sensitive information in the results of a compliance search, you should limit the number of people who are eDiscovery Administrators.

- **Can I add a group as a member of the eDiscovery Manager role group?** As previously explained, you can add a mail-enabled security group as a member of the eDiscovery Managers subgroup in the eDiscovery Manager role group by using the **Add-RoleGroupMember** cmdlet in Security & Compliance Center PowerShell. For example, you can run the following command to add a mail-enabled security group to the eDiscovery Manager role group. 

  ```powershell
  Add-RoleGroupMember "eDiscovery Manager" -Member <name of security group>
  ```

    Exchange distribution groups and Microsoft 365 Groups aren't supported. You must use a mail-enabled security group, which you can create in Exchange Online PowerShell by running `New-DistributionGroup -Type Security`. You can also create a mail-enabled security group (and add members) in the Exchange admin center or in the Microsoft 365 admin center. It might take up to 60 minutes after you create it for a new mail-enabled security to be available to add to the eDiscovery Managers role group. 

    Also as previously stated, you can't make a mail-enabled security group an eDiscovery Administrator by using the **Add-eDiscoveryCaseAdmin** cmdlet in Security & Compliance Center PowerShell. You can only add individual users as eDiscovery Administrators.

    You also can't add a mail-enabled security group as a member of a case.