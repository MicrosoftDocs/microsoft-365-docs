---
title: Permissions - Security & Compliance Center
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: conceptual
f1_keywords: 
  - 'ms.o365.cc.AdminRoleGroups'

localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid: 
  - MOE150
  - MET150
description: Admins can learn about the permissions that are available in the Security & Compliance Center in Microsoft 365.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Permissions in the Security & Compliance Center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

The Security & Compliance Center lets you grant permissions to people who perform compliance tasks like device management, data loss prevention, eDiscovery, retention, and so on. These people can perform only the tasks that you explicitly grant them access to. To access the Security & Compliance Center, users need to be a global administrator or a member of one or more Security & Compliance Center role groups.

Permissions in the Security & Compliance Center are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by Exchange, so if you're familiar with Exchange, granting permissions in the Security & Compliance Center will be very similar. It's important to remember, however, that Exchange role groups and Security & Compliance Center role groups don't share membership or permissions. While both have an Organization Management role group, they aren't the same. The permissions they grant, and the members of the role groups, are different. There's a list of Security & Compliance Center role groups below.

![Permissions page in the Security & Compliance Center](../../media/992c20ca-e82e-497c-9c8d-6fab212deb80.png)

## Relationship of members, roles, and role groups

A **role** grants permissions to do a set of tasks; for example, the Case Management role lets people work with eDiscovery cases.

A **role group** is a set of roles that lets people do their jobs across the Security & Compliance Center. For example, the Compliance Administrator role group includes (among other roles) the roles for Case Management, Content Search, and Organization Configuration (plus others) because someone who's a compliance admin will need the permissions for those tasks to do their job.

The Security & Compliance Center includes default role groups for the most common tasks and functions that you'll need to assign people to. We recommend simply adding individual users as **members** to the default role groups.

![Diagram showing relationship of role groups to roles and members](../../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png)

## Permissions needed to use features in the Security & Compliance Center

The following table lists the default role groups that are available in the Security & Compliance Center, and the roles that are assigned to the role groups by default. To grant permissions to a user to perform a compliance task, add them to the appropriate Security & Compliance Center role group.

Managing permissions in the Security & Compliance Center only gives users access to the compliance features that are available within the Security & Compliance Center itself. If you want to grant permissions to other compliance features that aren't in the Security & Compliance Center, such as Exchange mail flow rules (also known as transport rules), you need to use the Exchange admin center.

To see how to grant access to the Security & Compliance Center, check out [Give users access to Microsoft 365 Compliance admin center](grant-access-to-the-security-and-compliance-center.md).

> [!NOTE]
> To view the **Permissions** tab in the Security & Compliance Center, you need to be an admin. Specifically, you need to be assigned the **Role Management** role, and that role is assigned only to the **Organization Management** role group in the Security & Compliance Center by default. Furthermore, the **Role Management** role allows users to view, create, and modify role groups.

<br><br>

****

|Role group|Description|Default roles assigned|
|---|---|---|
|**Communication Compliance**|Provides permission to all the communication compliance roles: administrator, analyst, investigator, and viewer.|Case Management <p> Communication Compliance Admin <p> Communication Compliance Analysis <p> Communication Compliance Case Management <p> Communication Compliance Investigation <p> Communication Compliance Viewer <p> Data Classification Feedback Provider <p> View-Only Case|
|**Communication Compliance Administrators**|Administrators of communication compliance that can create/edit policies and define global settings.|Communication Compliance Admin <p> Communication Compliance Case Management|
|**Communication Compliance Analysts**|Analysts of communication compliance that can investigate policy matches, view message meta data, and take remediation actions.|Communication Compliance Analysis <p> Communication Compliance Case Management|
|**Communication Compliance Investigators**|Analysts of communication compliance that can investigate policy matches, view message content, and take remediation actions.|Case Management <p> Communication Compliance Analysis <p> Communication Compliance Case Management <p> Communication Compliance Investigation <p> Data Classification Feedback Provider <p> View-Only Case|
|**Communication Compliance Viewers**|Viewer of communication compliance that can access the available reports and widgets.|Communication Compliance Case Management <p> Communication Compliance Viewer|
|**Compliance Administrator**<sup>1</sup>|Members can manage settings for device management, data loss prevention, reports, and preservation.|Case Management <p> Compliance Administrator <p> Compliance Search <p> Data Classification Feedback Provider <p> Data Classification Feedback Reviewer <p> Device Management <p> Disposition Management <p> DLP Compliance Management <p> Hold <p> IB Compliance Management <p> Manage Alerts <p> Organization Configuration <p> RecordManagement <p> Retention Management <p> View-Only Audit Logs <p> View-Only Case <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Manage Alerts <p> View-Only Recipients <p> View-Only Record Management <p> View-Only Retention Management|
|**Compliance Data Administrator**|Members can manage settings for device management, data protection, data loss prevention, reports, and preservation.|Compliance Administrator <p> Compliance Search <p> Device Management <p> DLP Compliance Management <p> Disposition Management <p> IB Compliance Management <p> Manage Alerts <p> Organization Configuration <p> RecordManagement <p> Retention Management <p> Sensitivity Label Administrator <p> View-Only Audit Logs <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Manage Alerts <p> View-Only Recipients <p> View-Only Record Management <p> View-Only Retention Management|
|**Compliance Manager Administrators**|Manage template creation and modification.|Compliance Manager Administration <p> Compliance Manager Assessment <p> Compliance Manager Contribution <p> Compliance Manager Reader|
|**Compliance Manager Assessors**|Create assessments, implement improvement actions, and update test status for improvement actions.|Compliance Manager Assessment <p> Compliance Manager Contribution <p> Compliance Manager Reader|
|**Compliance Manager Contributors**|Create assessments and perform work to implement improvement actions.|Compliance Manager Contribution <p> Compliance Manager Reader|
|**Compliance Manager Readers**|View all Compliance Manager content except for administrator functions.|Compliance Manager Reader|
|**Content Explorer Content Viewer**|View the contents files in Content explorer.|Data Classification Content Viewer|
|**Content Explorer List Viewer**|View all items in Content explorer in list format only.|Data Classification List Viewer|
|**eDiscovery Manager**|Members can perform searches and place holds on mailboxes, SharePoint Online sites, and OneDrive for Business locations. Members can also create and manage eDiscovery cases, add and remove members to a case, create and edit Content Searches associated with a case, and access case data in Advanced eDiscovery. <p> An eDiscovery Administrator is a member of the eDiscovery Manager role group who has been assigned additional permissions. In addition to the tasks that an eDiscovery Manager can perform, an eDiscovery Administrator can:<ul><li>View all eDiscovery cases in the organization.</li><li>Manage any eDiscovery case after they add themselves as a member of the case.</li></ul> <p> The primary difference between an eDiscovery Manager and an eDiscovery Administrator is that an eDiscovery Administrator can access all cases that are listed on the **eDiscovery cases** page in the Security & Compliance Center. An eDiscovery manager can only access the cases they created or cases they are a member of. For more information about making a user an eDiscovery Administrator, see [Assign eDiscovery permissions in the Security & Compliance Center](../../compliance/assign-ediscovery-permissions.md).|Case Management <p> Communication <p> Compliance Search <p> Custodian <p> Export <p> Hold <p> Preview <p> Review <p> RMS Decrypt|
|**Global Reader**|Members have read-only access to reports, alerts, and can see all the configuration and settings.<p> The primary difference between Global Reader and Security Reader is that a Global Reader can access **configuration and settings**.|Security Reader <p> Sensitivity Label Reader <p> Service Assurance View <p> View-Only Audit Logs <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Manage Alerts <p> View-Only Recipients <p> View-Only Record Management <p> View-Only Retention Management|
|**Insider Risk Management**|Use this role group to manage insider risk management for your organization in a single group. By adding all user accounts for designated administrators, analysts, and investigators, you can configure insider risk management permissions in a single group. This role group contains all the insider risk management permission roles. This is the easiest way to quickly get started with insider risk management and is a good fit for organizations that do not need separate permissions defined for separate groups of users.|Case Management <p> Insider Risk Management Admin <p> Insider Risk Management Analysis <p> Insider Risk Management Investigation <p> View-Only Case|
|**Insider Risk Management Admins**|Use this role group to initially configure insider risk management and later to segregate insider risk administrators into a defined group. Users in this role group can create, read, update, and delete insider risk management policies, global settings, and role group assignments.|Case Management <p> Insider Risk Management Admin <p> View-Only Case|
|**Insider Risk Management Analysts**|Use this group to assign permissions to users that will act as insider risk case analysts. Users in this role group can access all insider risk management alerts, cases, and notices templates. They cannot access the insider risk Content Explorer.|Case Management <p> Insider Risk Management Analysis <p> View-Only Case|
|**Insider Risk Management Auditors**|Auditors of insider risk management that can view the audit logs of actions performed by Analysts, Investigators and Administrators.|Insider Risk Management Audit|
|**Insider Risk Management Investigators**|Use this group to assign permissions to users that will act as insider risk data investigators. Users in this role group can access all insider risk management alerts, cases, notices templates, and the Content Explorer for all cases.|Case Management <p> Insider Risk Management Investigation <p> View-Only Case|
|**IRM Contributors**|This role group is visible, but is used by background services only.|Insider Risk Management Permanent contribution <p> Insider Risk Management Temporary contribution|
|**MailFlow Administrator**|Members can monitor and view mail flow insights and reports in the Security & Compliance Center. Global admins can add ordinary users to this group, but, if the user isn't a member of the Exchange Admin group, the user will not have access to Exchange admin-related tasks.|View-Only Recipients|
|**Organization Management**<sup>1</sup>|Members can control permissions for accessing features in the Security & Compliance Center, and also manage settings for device management, data loss prevention, reports, and preservation. <p> Users who are not global administrators must be Exchange administrators to see and take action on devices that are managed by Basic Mobility and Security for Microsoft 365 (formerly known as Mobile Device Management or MDM). <p> Global admins are automatically added as members of this role group.|Audit Logs <p> Case Management <p> Compliance Administrator <p> Compliance Search <p> Device Management <p> DLP Compliance Management <p> Hold <p> IB Compliance Management <p> Manage Alerts <p> Organization Configuration <p> Quarantine <p> RecordManagement <p> Retention Management <p> Role Management <p> Search And Purge <p> Security Administrator <p> Security Reader <p> Sensitivity Label Administrator <p> Sensitivity Label Reader <p> Service Assurance View <p> Tag Contributor <p> Tag Manager <p> Tag Reader <p> View-Only Audit Logs <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Case <p> View-Only Manage Alerts <p> View-Only Recipients <p> View-Only Record Management <p> View-Only Retention Management|
|**Quarantine Administrator**|Members can access all Quarantine actions. For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md)|Quarantine|
|**Records Management**|Members can configure all aspects of records management, including retention labels and disposition reviews.|Disposition Management <p> RecordManagement <p> Retention Management|
|**Reviewer**|Members can access review sets in [Advanced eDiscovery](../../compliance/overview-ediscovery-20.md) cases. Members of this role group can see and open the list of cases on the **eDiscovery > Advanced** page in the Microsoft 365 compliance center that they're members of. After the user accesses an Advanced eDiscovery case, they can select **Review sets** to access case data. This role doesn't allow the user to preview the results of a collection search that's associated with the case or do other search or case management tasks. Members of this role group can only access the data in a review set.|Review|
|**Security Administrator**|Members have access to a number of security features of Identity Protection Center, Privileged Identity Management, Monitor Microsoft 365 Service Health, and Security & Compliance Center. <p> By default, this role group may not appear to have any members. However, the Security Administrator role from Azure Active Directory is assigned to this role group. Therefore, this role group inherits the capabilities and membership of the Security Administrator role from Azure Active Directory. <p> To manage permissions centrally, add and remove group members in the Azure Active Directory admin center. For more information, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). If you edit this role group in the Security & Compliance Center (membership or roles), those changes apply only to the Security & Compliance Center and not to any other services. <p> This role group includes all of the read-only permissions of the Security reader role, plus a number of additional administrative permissions for the same services: Azure Information Protection, Identity Protection Center, Privileged Identity Management, Monitor Microsoft 365 Service Health, and Security & Compliance Center.|Audit Logs <p> Device Management <p> DLP Compliance Management <p> IB Compliance Management <p> Manage Alerts <p> Quarantine <p> Security Administrator <p> Sensitivity Label Administrator <p> Tag Contributor <p> Tag Manager <p> Tag Reader <p> View-Only Audit Logs <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Manage Alerts|
|**Security Operator**|Members can manage security alerts, and also view reports and settings of security features.|Compliance Search <p> Manage Alerts <p> Security Reader <p> Tag Contributor <p> Tag Reader <p> View-Only Audit Logs <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Manage Alerts|
|**Security Reader**|Members have read-only access to a number of security features of Identity Protection Center, Privileged Identity Management, Monitor Microsoft 365 Service Health, and Security & Compliance Center. <p> By default, this role group may not appear to have any members. However, the Security Reader role from Azure Active Directory is assigned to this role group. Therefore, this role group inherits the capabilities and membership of the Security Reader role from Azure Active Directory. <p> To manage permissions centrally, add and remove group members in the Azure Active Directory admin center. For more information, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). If you edit this role group in the Security & Compliance Center (membership or roles), those changes apply only to the Security & Compliance Center and not to any other services.|Security Reader <p> Sensitivity Label Reader <p> Tag Reader <p> View-Only Device Management <p> View-Only DLP Compliance Management <p> View-Only IB Compliance Management <p> View-Only Manage Alerts|
|**Service Assurance User**|Members can access the Service assurance section in the Security & Compliance Center. Service assurance provides reports and documents that describe Microsoft's security practices for customer data that's stored in Microsoft 365. It also provides independent third-party audit reports on Microsoft 365. For more information, see [Service assurance in the Security & Compliance Center](../../compliance/service-assurance.md).|Service Assurance View|
|**Supervisory Review**|Members can create and manage the policies that define which communications are subject to review in an organization. For more information, see [Configure communication compliance policies for your organization](../../compliance/communication-compliance-configure.md).|Supervisory Review Administrator|
|

> [!NOTE]
> <sup>1</sup> This role group doesn't assign members the permissions necessary to search the audit log or to use any reports that might include Exchange data, such as the DLP or Defender for Office 365 reports. To search the audit log or to view all reports, a user has to be assigned permissions in Exchange Online. This is because the underlying cmdlet used to search the audit log is an Exchange Online cmdlet. Global admins can search the audit log and view all reports because they're automatically added as members of the Organization Management role group in Exchange Online. For more information, see [Search the audit log in the Security & Compliance Center](../../compliance/search-the-audit-log-in-security-and-compliance.md).

## Roles in the Security & Compliance Center

The following table lists the available roles and the role groups that they're assigned to by default.

Note that the following roles aren't assigned to the Organization Management role group by default:

- Attack Simulator Admin
- Attack Simulator Payload Author
- Communication
- Communication Compliance Admin
- Communication Compliance Analysis
- Communication Compliance Case Management
- Communication Compliance Investigation
- Communication Compliance Viewer
- Compliance Manager Administration
- Compliance Manager Assessment
- Compliance Manager Contribution
- Compliance Manager Reader
- Custodian
- Data Classification Content Viewer
- Data Classification Feedback Provider
- Data Classification Feedback Reviewer
- Data Classification List Viewer
- Disposition Management
- Export
- Insider Risk Management Admin
- Insider Risk Management Analysis
- Insider Risk Management Audit
- Insider Risk Management Investigation
- Insider Risk Management Permanent contribution
- Insider Risk Management Temporary contribution
- Preview
- Review
- RMS Decrypt
- Supervisory Review Administrator

<br><br>

****

|Role|Description|Default role group assignments|
|---|---|---|
|**Attack Simulator Admin**|Used to create and manage all aspects of attack simulation campaigns.||
|**Attack Simulator Payload Author**|Used to create and manage attack payloads that can be deployed by attack simulator administrator.||
|**Audit Logs**|Turn on and configure auditing for the organization, view the organization's audit reports, and then export these reports to a file.|Organization Management <p> Security Administrator|
|**Case Management**|Create, edit, delete, and control access to eDiscovery cases.|Communication Compliance <p> Communication Compliance Investigators <p> Compliance Administrator <p>eDiscovery Manager <p> Insider Risk Management <p> Insider Risk Management Admins <p> Insider Risk Management Analysts <p> Insider Risk Management Investigators <p> Organization Management|
|**Communication**|Manage all communications with the custodians identified in an Advanced eDiscovery case.  Create hold notifications, hold reminders, and escalations to management. Track custodian acknowledgment of hold notifications and manage access to the custodian portal that is used by each custodian in a case to track communications for the cases where they were identified as a custodian.|eDiscovery Manager|
|**Communication Compliance Admin**|Used to manage policies in the Communication Compliance feature.|Communication Compliance <p> Communication Compliance Administrators|
|**Communication Compliance Analysis**|Used to perform investigation, remediation of the message violations in the Communication Compliance feature. Can only view message meta data.|Communication Compliance <p> Communication Compliance Analysts <p> Communication Compliance Investigators|
|**Communication Compliance Case Management**|Used to access Communication Compliance cases.|Communication Compliance <p> Communication Compliance Administrators <p> Communication Compliance Analysts <p> Communication Compliance Investigators <p> Communication Compliance Viewers|
|**Communication Compliance Investigation**|Used to perform investigation, remediation, and review message violations in the Communication Compliance feature. Can view message meta data and message.|Communication Compliance <p> Communication Compliance Investigators|
|**Communication Compliance Viewer**|Used to access reports and widgets in the Communication Compliance feature.|Communication Compliance <p> Communication Compliance Viewers|
|**Compliance Administrator**|View and edit settings and reports for compliance features.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management|
|**Compliance Manager Administration**|Manage template creation and modification.|Compliance Manager Administrators|
|**Compliance Manager Assessment**|Create assessments, implement improvement actions, and update test status for improvement actions.|Compliance Manager Administrators <p> Compliance Manager Assessors|
|**Compliance Manager Contribution**|Create assessments and perform work to implement improvement actions.|Compliance Manager Administrators <p> Compliance Manager Assessors <p> Compliance Manager Contributors|
|**Compliance Manager Reader**|View all Compliance Manager content except for administrator functions.|Compliance Manager Administrators <p> Compliance Manager Assessors <p> Compliance Manager Contributors <p> Compliance Manager Readers|
|**Compliance Search**|Perform searches across mailboxes and get an estimate of the results.|Compliance Administrator <p> Compliance Data Administrator <p>eDiscovery Manager <p> Organization Management <p> Security Operator|
|**Custodian**|Identify and manage custodians for Advanced eDiscovery cases and use the information from Azure Active Directory and other sources to find data sources associated with custodians. Associate other data sources such as mailboxes, SharePoint sites, and Teams with custodians in a case.  Place a legal hold on the data sources associated with custodians to preserve content in the context of a case.|eDiscovery Manager|
|**Data Classification Content Viewer**|View in-place rendering of files in Content explorer.|Content Explorer Content Viewer|
|**Data Classification Feedback Provider**|Allows providing feedback to classifiers in content explorer.|Communication Compliance <p> Communication Compliance Investigators <p> Compliance Administrator|
|**Data Classification Feedback Reviewer**|Allows reviewing feedback from classifiers in feedback explorer.|Compliance Administrator|
|**Data Classification List Viewer**|View the list of files in content explorer.|Content Explorer List Viewer|
|**Device Management**|View and edit settings and reports for device management features.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management <p> Security Administrator|
|**Disposition Management**|Control permissions for accessing Manual Disposition in the Security & Compliance Center.|Compliance Administrator <p> Compliance Data Administrator <p> Records Management|
|**DLP Compliance Management**|View and edit settings and reports for data loss prevention (DLP) policies.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management <p> Security Administrator|
|**Export**|Export mailbox and site content that's returned from searches.|eDiscovery Manager|
|**Hold**|Place content in mailboxes, sites, and public folders on hold. When on hold, a copy of the content is stored in a secure location. Content owners will still be able to modify or delete the original content.|Compliance Administrator <p>eDiscovery Manager <p> Organization Management|
|**IB Compliance Management**|View, create, remove, modify, and test Information Barrier policies.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management <p> Security Administrator|
|**Insider Risk Management Admin**|Create, edit, delete, and control access to Insider Risk Management feature.|Insider Risk Management <p> Insider Risk Management Admins|
|**Insider Risk Management Analysis**|Access all insider risk management alerts, cases, and notices templates.|Insider Risk Management <p> Insider Risk Management Analysts|
|**Insider Risk Management Audit**|Allow viewing Insider Risk audit trails.|Insider Risk Management Auditors|
|**Insider Risk Management Investigation**|Access all insider risk management alerts, cases, notices templates, and the Content Explorer for all cases.|Insider Risk Management <p> Insider Risk Management Investigators|
|**Insider Risk Management Permanent contribution**|This role group is visible, but is used by background services only.|IRM Contributors|
|**Insider Risk Management Temporary contribution**|This role group is visible, but is used by background services only.|IRM Contributors|
|**Manage Alerts**|View and edit settings and reports for alerts.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management <p> Security Administrator <p> Security Operator|
|**Organization Configuration**|Run, view, and export audit reports and manage compliance policies for DLP, devices, and preservation.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management|
|**Preview**|View a list of items that are returned from content searches, and open each item from the list to view its contents.|eDiscovery Manager|
|**Quarantine**|Allows viewing and releasing quarantined email.|Quarantine Administrator <p> Security Administrator <p> Organization Management|
|**RecordManagement**|View and edit the configuration of the records management feature.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management <p> Records Management|
|**Retention Management**|Manage retention policies, retention labels, and retention label policies.|Compliance Administrator <p> Compliance Data Administrator <p> Organization Management <p> Records Management|
|**Review**|This role lets users access review sets in Advanced eDiscovery cases. Users who are assigned this role can see and open the list of cases on the **eDiscovery > Advanced** page in the Microsoft 365 compliance center that they're members of. After the user accesses an Advanced eDiscovery case, they can select **Review sets** to access case data. This role doesn't allow the user to preview the results of a collection search that's associated with the case or do other search or case management tasks. Users with this role can only access the data in a review set.|eDiscovery Manager <p> Reviewer|
|**RMS Decrypt**|Decrypt RMS-protected content when exporting search results.|eDiscovery Manager|
|**Role Management**|Manage role group membership and create or delete custom role groups.|Organization Management|
|**Search And Purge**|Lets people bulk-remove data that matches the criteria of a content search.|Organization Management|
|**Security Administrator**|View and edit the configuration and reports for Security features.|Organization Management <p> Security Administrator|
|**Security Reader**|View the configuration and reports for Security features.|Global Reader <p> Organization Management <p> Security Operator <p> Security Reader|
|**Sensitivity Label Administrator**|View, create, modify, and remove sensitivity labels.|Compliance Data Administrator <p> Organization Management <p> Security Administrator|
|**Sensitivity Label Reader**|View the configuration and usage of sensitivity labels.|Global Reader <p> Organization Management <p> Security Reader|
|**Service Assurance View**|Download the available documents from the Service Assurance section. Content includes independent auditing, compliance documentation, and trust-related guidance for using Microsoft 365 features to manage regulatory compliance and security risks.|Global Reader <p> Organization Management <p> Service Assurance User|
|**Supervisory Review Administrator**|Manage supervisory review policies, including which communications to review and who should do the review.|Supervisory Review|
|**Tag Contributor**|View and update membership of existing user tags.|Organization Management <p> Security Administrator <p> Security Operator|
|**Tag Manager**|View, update, create, and delete user tags.|Organization Management <p> Security Administrator|
|**Tag Reader**|Read-only access to existing user tags.|Security Reader|
|**View-Only Audit Logs**|View and export audit reports. Because these reports might contain sensitive information, you should only assign this role to people with an explicit need to view this information.|Compliance Administrator <p> Compliance Data Administrator <p> Global Reader <p> Organization Management <p> Security Administrator <p> Security Operator|
|**View-Only Case**||Communication Compliance <p> Communication Compliance Investigators <p> Compliance Administrator <p> Insider Risk Management <p> Insider Risk Management Admins <p> Insider Risk Management Analysts <p> Insider RiskManagement Investigators <p> Organization Management|
|**View-Only Device Management**|View the configuration and reports for the Device Management feature.|Compliance Administrator <p> Compliance Data Administrator <p> Global Reader <p> Organization Management <p> Security Administrator <p> Security Operator <p> Security Reader|
|**View-Only DLP Compliance Management**|View the settings and reports for data loss prevention (DLP) policies.|Compliance Administrator <p> Compliance Data Administrator <p> Global Reader <p> Organization Management <p> Security Administrator <p> Security Operator <p> Security Reader|
|**View-Only IB Compliance Management**|View the configuration and reports for the Information Barriers feature.|Compliance Administrator <p> Compliance Data Administrator <p> Global Reader <p> Organization Management <p> Security Administrator <p> Security Operator <p> Security Reader|
|**View-Only Manage Alerts**|View the configuration and reports for the Manage Alerts feature.|Compliance Administrator <p> Compliance Data Administrator <p> Global Reader <p> Organization Management <p> Security Administrator <p> Security Operator <p> Security Reader|
|**View-Only Recipients**|View information about users and groups.|Compliance Administrator <p> Compliance Data Administrator <p> Global Reader <p> MailFlow Administrator <p> Organization Management|
|**View-Only Record Management**|View the configuration of the records management feature.|Compliance Administrator <p> Compliance Data Administrator <p> <p> Global Reader <p> Organization Management|
|**View-Only Retention Management**|View the configuration of retention policies, retention labels, and retention label policies.|Compliance Administrator <p> Compliance Data Administrator <p> Global Administrator <p> Organization Management|
|
