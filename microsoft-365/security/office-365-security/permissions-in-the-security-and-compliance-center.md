---
title: "Permissions in the Office 365 Security & Compliance Center"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 07/01/2019
audience: Admin
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.AdminRoleGroups'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid:
- MOE150
- MET150
description: "Admins can learn about the permissions that are available in the Office 365 Security & Compliance Center."
---

# Permissions in the Office 365 Security & Compliance Center

The Office 365 Security & Compliance Center lets you grant permissions to people who perform compliance tasks like device management, data loss prevention, eDiscovery, retention, and so on. These people can perform only the tasks that you explicitly grant them access to. To access the Security & Compliance Center, users need to be an Office 365 global administrator or a member of one or more Security & Compliance Center role groups.

Permissions in the Security & Compliance Center are based on the Role Based Access Control (RBAC) permissions model. This is the same permissions model that's used by Exchange, so if you're familiar with Exchange, granting permissions in the Security & Compliance Center will be very similar. It's important to remember, however, that Exchange role groups and Security & Compliance Center role groups don't share membership or permissions. While both have an Organization Management role group, they aren't the same. The permissions they grant, and the members of the role groups, are different. There's a list of Security & Compliance Center role groups below.

![Permissions page in the Office 365 Security & Compliance Center](../../media/992c20ca-e82e-497c-9c8d-6fab212deb80.png)

## Relationship of members, roles, and role groups

A **role** grants permissions to do a set of tasks; for example, the Case Management role lets people work with eDiscovery cases.

A **role group** is a set of roles that lets people perform their job across the Security & Compliance Center; for example, the Compliance Administrator role group includes the roles for Case Management, Content Search, and Organization Configuration (plus others) because someone who's a compliance admin will need the permissions for those tasks to do their job.

The Security & Compliance Center includes default role groups for the most common tasks and functions that you'll need to assign people to. We recommend simply adding individual users as **members** to the default role groups.

![Diagram showing relationship of role groups to roles and members](../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png)

You can edit or delete the existing role groups, but we don't recommend this. Instead of editing a default role group, you can copy it, modify it, and then save it with a different name.

## Permissions needed to use features in the Security & Compliance Center

The following table lists the default role groups that are available in the Security & Compliance Center, and the roles that are assigned to the role groups by default. To grant permissions to a user to perform a compliance task, add them to the appropriate Security & Compliance Center role group.

Managing permissions in the Security & Compliance Center only gives users access to the compliance features that are available within the Security & Compliance Center itself. If you want to grant permissions to other compliance features that aren't in the Security & Compliance Center, such as Exchange mail flow rules (also known as transport rules), you need to use the Exchange admin center.

To see how to grant access to the Security & Compliance Center, check out [Give users access to Office 365 Compliance admin center](grant-access-to-the-security-and-compliance-center.md).

|**Role group**|**Description**|**Default roles assigned**|
|:-----|:-----|:-----|
|**Compliance Administrator**<sup>1</sup>|Members can manage settings for device management, data loss prevention, reports, and preservation.|Case Management <br/><br/> Compliance Administrator <br/><br/> Compliance Search <br/><br/> DLP Compliance Management <br/><br/> Device Management <br/><br/> Disposition Management <br/><br/> Hold <br/><br/> IB Compliance Management <br/><br/> Manage Alerts <br/><br/> Organization Configuration <br/><br/> RecordManagement <br/><br/> Retention Management <br/><br/> View-Only Audit Logs <br/><br/> View-Only Retention Management <br/><br/> View-Only DLP Compliance Management <br/><br/> View-Only Device Management <br/><br/> View-Only IB Compliance Management <br/><br/> View-Only Manage Alerts <br/><br/> View-Only Recipients <br/><br/> View-Only Record Management|
|**Compliance Data Administrator**|Members can manage settings for device management, data protection, data loss prevention, reports, and preservation.|Compliance Administrator <br/><br/> Compliance Search <br/><br/> DLP Compliance Management <br/><br/> Device Management <br/><br/> Disposition Management <br/><br/> IB Compliance Management <br/><br/> Manage Alerts <br/><br/> Organization Configuration <br/><br/> RecordManagement <br/><br/> Retention Management <br/><br/> Sensitivity Label Administrator <br/><br/> View-Only Audit Logs <br/><br/> View-Only DLP Compliance Management <br/><br/> View-Only Device Management <br/><br/> View-Only IB Compliance Management <br/><br/> View-Only Manage Alerts <br/><br/> View-Only Recipients <br/><br/> View-Only Record Management <br/><br/> View-Only Retention Management|
|**Data Investigator**|Members can perform searches on mailboxes, SharePoint sites, and OneDrive accounts.|Communication <br/><br/> Compliance Search <br/><br/> Custodian <br/><br/> Data Investigation Management <br/><br/> Export<br/><br/> Preview <br/><br/> RMS Decrypt <br/><br/> Review<br/><br/> Search And Purge|
|**eDiscovery Manager**|Members can perform searches and place holds on mailboxes, SharePoint Online sites, and OneDrive for Business locations. Members can also create and manage eDiscovery cases, add and remove members to a case, create and edit Content Searches associated with a case, and access case data in Office 365 Advanced eDiscovery. <br/><br/> An eDiscovery Administrator is a member of the eDiscovery Manager role group who has been assigned additional permissions. In addition to the tasks that an eDiscovery Manager can perform, an eDiscovery Administrator can: <br/>• View all eDiscovery cases in the organization. <br/>• Manage any eDiscovery case after they add themselves as a member of the case. <br/><br/> The primary difference between an eDiscovery Manager and an eDiscovery Administrator is that an eDiscovery Administrator can access all cases that are listed on the **eDiscovery cases** page in the Security & Compliance Center. An eDiscovery manager can only access the cases they created or cases they are a member of. For more information about making a user an eDiscovery Administrator, see [Assign eDiscovery permissions in the Office 365 Security & Compliance Center](../../compliance/assign-ediscovery-permissions.md).|Case Management <br/><br/> Communication <br/><br/> Compliance Search <br/><br/> Custodian <br/><br/> Export <br/><br/> Hold <br/><br/> Preview <br/><br/> RMS Decrypt <br/><br/> Review|
|**MailFlow Administrator**|Members can monitor and view mail flow insights and reports in the Security & Compliance Center. Global admins can add ordinary users to this group, but, if the user isn't a member of the Exchange Admin group, the user will not have access to Exchange admin-related tasks.|View-Only Recipients|
|**Organization Management**<sup>1</sup>|Members can control permissions for accessing features in the Security & Compliance Center, and also manage settings for device management, data loss prevention, reports, and preservation. <br/><br/> Note that in order for a user who is not a global administrator to see the list of devices managed by MDM for Office 365 and perform actions on these devices, such as retiring a device from MDM for Office 365, the user must be an Exchange administrator. <br/><br/> Office 365 global admins are automatically added as members of this role group.|Audit Logs <br/><br/> Case Management <br/><br/> Compliance Administrator <br/><br/> Compliance Search <br/><br/> DLP Compliance Management <br/><br/> Device Management <br/><br/> Disposition Management <br/><br/> Hold <br/><br/> IB Compliance Management <br/><br/> Manage Alerts <br/><br/> Organization Configuration <br/><br/> Quarantine <br/><br/> RecordManagement <br/><br/> Retention Management <br/><br/> Role Management <br/><br/> Search And Purge <br/><br/> Security Administrator <br/><br/> Security Reader <br/><br/> Sensitivity Label Administrator <br/><br/> Service Assurance View <br/><br/> View-Only Audit Logs <br/><br/> View-Only DLP Compliance Management <br/><br/> View-Only Device Management <br/><br/> View-Only IB Compliance Management <br/><br/> View-Only Manage Alerts <br/><br/> View-Only Recipients <br/><br/> View-Only Record Management <br/><br/> View-Only Retention Management|
|**Quarantine Administrator**|Members can access all Quarantine actions. For more information, see [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md)|Quarantine|
|**Records Management**|Members can manage and dispose record content.|Audit Logs <br/><br/> RecordManagement <br/><br/> Retention Management|
|**Reviewer**|Members can only view the list of cases on the eDiscovery cases page in the Security & Compliance Center. They can't create, open, or manage an eDiscovery case. The primary purpose of this role group is to allow members to view and access case data in [Office 365 Advanced eDiscovery](../../compliance/office-365-advanced-ediscovery.md) (also known as *Advanced eDiscovery v1*). <br/><br/> This role group has the most restrictive eDiscovery-related permissions.<br/><br/>**Note:** At this time, users who are a member of the Reviewer role group can't access data in [Advanced eDiscovery in Microsoft 365](../../compliance/overview-ediscovery-20.md) (also known as *Advanced eDiscovery v2*). To add members to a case in Advanced eDiscovery v2 so that they can review case data, a user must be a member of the eDiscovery Manager role group.|Review|
|**Security Administrator**|Members of this role group may include cross-service administrators, as well as external partner groups and Microsoft Support. By default, this group may not be assigned any roles. However, it will be a member of the Security Administrators role in Azure Active Directory and will inherit the capabilities of that role. To manage permissions centrally, make changes to this role in the Azure Active Directory admin center. For more information, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). <br/><br/> If you edit this role group in the Security & Compliance Center, those changes apply only to the Security & Compliance Center and not any other services, whereas changes made in the Azure Active Directory admin center affect all services. <br/><br/> All of the read-only permissions of the Security reader role, plus a number of additional administrative permissions for the same services: Azure Information Protection, Identity Protection Center, Privileged Identity Management, Monitor Office 365 Service Health, and Office 365 Security & Compliance Center.|Audit Logs <br/><br/> DLP Compliance Management <br/><br/> Device Management <br/><br/> IB Compliance Management <br/><br/> Manage Alerts <br/><br/> Quarantine <br/><br/> Security Administrator <br/><br/> Sensitivity Label Administrator <br/><br/> View-Only Audit Logs <br/><br/> View-Only DLP Compliance Management <br/><br/> View-Only Device Management <br/><br/> View-Only IB Compliance Management <br/><br/> View-Only Manage Alerts|
|**Security Operator**|Members can manage security alerts, and also view reports and settings of security features.|Compliance Search <br/><br/> Manage Alerts <br/><br/> Security Reader <br/><br/> View-Only Audit Logs <br/><br/> View-Only DLP Compliance Management <br/><br/> View-Only Device Management <br/><br/> View-Only IB Compliance Management <br/><br/> View-Only Manage Alerts|
|**Security Reader**|Members have read-only access to a number of security features of Identity Protection Center, Privileged Identity Management, Monitor Office 365 Service Health, and Office 365 Security & Compliance Center. <br/><br/> Membership in this role group is synchronized across services and managed centrally. Members of this role group may include cross-service administrators, as well as external partner groups and Microsoft Support. By default, this group may not be assigned any roles. However, it will be a member of the Security Readers role in Azure Active Directory and will inherit the capabilities of that role. To manage permissions centrally, make changes to this role in the Azure Active Directory admin center - for more information, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). If you edit this role group in the Security & Compliance Center, those changes apply only to the Security & Compliance Center and not any other services, whereas changes made in the Azure Active Directory admin center affect all services|Security Reader <br/><br/> View-Only DLP Compliance Management <br/><br/> View-Only Device Management <br/><br/> View-Only IB Compliance Management <br/><br/> View-Only Manage Alerts|
|**Service Assurance User**|Members can access the Service assurance section in the Office 365 Security & Compliance Center. Service assurance provides reports and documents that describe Microsoft's security practices for customer data that's stored in Office 365. It also provides independent third-party audit reports on Office 365. For more information, see [Service assurance in the Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/service-assurance).|Service Assurance View|
|**Supervisory Review**|Members can create and manage the policies that define which communications are subject to review in an organization. For more information, see [Configure communication compliance policies for your organization](../../compliance/communication-compliance-configure.md).|Supervisory Review Administrator|

> [!NOTE]
> <sup>1</sup>This role group doesn't assign members the permissions necessary to search the Office 365 audit log or to use any reports that might include Exchange data, such as the DLP or ATP reports. To search the audit log or to view all reports, a user has to be assigned permissions in Exchange Online. This is because the underlying cmdlet used to search the audit log is an Exchange Online cmdlet. Office 365 global admins can search the audit log and view all reports because they're automatically added as members of the Organization Management role group in Exchange Online. For more information, see [Search the audit log in the Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/search-the-audit-log-in-security-and-compliance).

## Roles in the Security & Compliance Center

The following table lists the available roles and the role groups that they're assigned to by default.

Note that the following roles aren't assigned to the Organization Management role group by default:

- Communication

- Custodian

- Data Investigation Management

- Export

- Preview

- Review

- RMS Decrypt

- Supervisory Review Administrator

|**Role**|**Description**|**Default role group assignments**|
|:-----|:-----|:-----|
|**Audit Logs**|Turn on and configure auditing for the Office 365 organization, view the organization's audit reports, and then export these reports to a file.|Organization Management <br/><br/> Records Management <br/><br/> Security Administrator|
|**Case Management**|Create, edit, delete, and control access to eDiscovery cases.|Compliance Administrator <br/><br/> eDiscovery Manager <br/><br/> Organization Management|
|**Communication**|Manage all communications with the custodians identified in an Advanced eDiscovery case.  Create hold notifications, hold reminders, and escalations to management. Track custodian acknowledgement of hold notifications and manage access to the custodian portal that is used by each custodian in a case to track communications for the cases where they were identified as a custodian.|eDiscovery Manager|
|**Compliance Administrator**|View and edit settings and reports for compliance features.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**Compliance Search**|Perform searches across mailboxes and get an estimate of the results.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> eDiscovery Manager <br/><br/> Organization Management <br/><br/> Security Operator|
|**Custodian**|Identify and manage custodians for Advanced eDiscovery cases and use the information from Azure Active Directory and other sources to find data sources associated with custodians. Associate other data sources such as mailboxes, SharePoint sites, and Teams with custodians in a case.  Place a legal hold on the data sources associated with custodians to preserve content in the context of a case.|eDiscovery Manager|
|**Data Investigation Management**|Create, edit, delete, and control access to data investigations.|Data Investigator|
|**Device Management**|View and edit settings and reports for device management features.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator|
|**Disposition Management**|Control permissions for accessing Manual Disposition in the Security & Compliance Center.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**DLP Compliance Management**|View and edit settings and reports for data loss prevention (DLP) policies.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator|
|**Export**|Export mailbox and site content that's returned from searches.|eDiscovery Manager|
|**Hold**|Place content in mailboxes, sites, and public folders on hold. When on hold, a copy of the content is stored in a secure location. Content owners will still be able to modify or delete the original content.|Compliance Administrator <br/><br/> eDiscovery Manager <br/><br/> Organization Management|
|**IB Compliance Management**|View, create, remove, modify, and test Information Barrier policies.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator|
|**Manage Alerts**|View and edit settings and reports for alerts.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator <br/><br/> Security Operator|
|**Organization Configuration**|Run, view, and export audit reports and manage compliance policies for DLP, devices, and preservation.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**Preview**|View a list of items that are returned from content searches, and open each item from the list to view its contents.|eDiscovery Manager|
|**Quarantine**|Allows viewing and releasing quarantined email.|Quarantine Administrator <br/><br/> Security Administrator <br/><br/> Organization Management|
|**RecordManagement**|View and edit the configuration and reports for the Record Management feature.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Records Management|
|**Retention Management**|Manage retention policies.|Records Management <br/><br/> Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**Review**|Use Office 365 Advanced eDiscovery to track, tag, analyze, and test documents that are assigned to them.|eDiscovery Manager <br/><br/> Reviewer|
|**RMS Decrypt**|Decrypt RMS-protected content when exporting search results.|eDiscovery Manager|
|**Role Management**|Manage role group membership and create or delete custom role groups.|Organization Management|
|**Search And Purge**|Lets people bulk-remove data that matches the criteria of a content search.|Organization Management|
|**Security Administrator**|View and edit the configuration and reports for Security features.|Organization Management <br/><br/> Security Administrator|
|**Security Reader**|View the configuration and reports for Security features.|Organization Management <br/><br/> Security Operator <br/><br/> Security Reader|
|**Sensitivity Label Administrator**|View, create, modify, and remove sensitivity labels.|Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator|
|**Service Assurance View**|Download the available documents from the Service Assurance section. Content includes independent auditing, compliance documentation, and trust-related guidance for using Office 365 features to manage regulatory compliance and security risks.|Service Assurance User <br/><br/> Organization Management|
|**Supervisory Review Administrator**|Manage supervisory review policies, including which communications to review and who should perform the review.|Supervisory Review|
|**View-Only Audit Logs**|View and export audit reports. Because these reports might contain sensitive information, you should only assign this role to people with an explicit need to view this information.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator <br/><br/> Security Operator|
|**View-Only Device Management**|View the configuration and reports for the Device Management feature.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator <br/><br/> Security Operator <br/><br/> Security Reader|
|**View-Only DLP Compliance Management**|View the settings and reports for data loss prevention (DLP) policies.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator <br/><br/> Security Operator <br/><br/> Security Reader|
|**View-Only IB Compliance Management**|View the configuration and reports for the Information Barriers feature.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Security Administrator <br/><br/> Security Operator <br/><br/> Security Reader|
|**View-Only Manage Alerts**|View the configuration and reports for the Manage Alerts feature.|Security Administrator <br/><br/> Security Operator <br/><br/> Security Reader <br/><br/> Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**View-Only Recipients**|View information about users and groups.|MailFlow Administrator <br/><br/> Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**View-Only Record Management**|View the configuration and reports for the Record Management feature.|Compliance Administrator <br/><br/> Compliance Data Administrator <br/><br/> Organization Management|
|**View-Only Retention Management**|View the configuration and reports for the Retention Management feature.|Compliance Data Administrator <br/><br/> Organization Management <br/><br/> Compliance Administrator|
