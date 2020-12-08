---
title: Permissions in the Microsoft 365 security and compliance centers
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
ms.audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "By using the Microsoft 365 security center or Microsoft 365 compliance center, you can manage permissions centrally for all tasks related to security or compliance."
ms.custom: seo-marvel-apr2020
---

# Permissions in the Microsoft 365 compliance center and Microsoft 365 security center

**Applies to**
- [Exchange Online Protection](https://go.microsoft.com/fwlink/?linkid=2148611)
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


Your organization needs to manage security and compliance scenarios that span all the Microsoft 365 services. And you need the flexibility to give the right admin permissions to the right people in your organization's IT group. By using the Microsoft 365 security center or Microsoft 365 compliance center, you can manage permissions centrally for all tasks related to security or compliance.

After the global administrator assigns these admin roles, the admins have access to features and data that span all services in Microsoft 365, such as the Microsoft 365 security center, Microsoft 365 compliance center, Azure, Office 365, and Enterprise Mobility + Security.

## What the Microsoft 365 roles are

The roles that appear in the Microsoft 365 compliance center and Microsoft 365 security center are Azure Active Directory roles. These roles are designed to align with job functions in your organization's IT group, making it easy to give a person all the permissions necessary to get their job done.

****

|Role|Description|
|---|---|
|**Global administrator**|Users with this role have access to all administrative features in all Microsoft 365 services. Only global administrators can assign other administrator roles.|
|**Compliance data administrator**|Users with this role can keep track of your organization's data across Microsoft 365, make sure it's protected, and get insights into any issues to help mitigate risks.|
|**Compliance administrator**|Users with this role can help your organization stay compliant with any regulatory requirements, manage eDiscovery cases, and maintain data governance policies across Microsoft 365 locations, identities, and apps.|
|**Security operator**|Users with this role can view, investigate, and respond to active threats to your Microsoft 365 users, devices, and content.|
|**Security reader**|Users with this role can view and investigate active threats to your Microsoft 365 users, devices, and content, but (unlike the Security operator) they do not have permissions to respond by taking action.|
|**Security administrator**|Users with this role can control your organization's overall security by managing security policies, reviewing security analytics and reports across Microsoft 365 products, and staying up-to-speed on the threat landscape.|
|

## What the Microsoft 365 roles have access to

Here are the available roles and what people assigned to them can do.

### Global administrator

Users with this role have access to all administrative features in Azure Active Directory, as well as services that use Azure Active Directory identities like Microsoft 365 security center, Microsoft 365 compliance center, Exchange Online, SharePoint Online, and Skype for Business Online. The person who signs up for the Azure Active Directory tenant becomes a global administrator. Only global administrators can assign other administrator roles. There can be more than one global administrator at your company. Global admins can reset the password for any user and all other administrators.

### Compliance administrator

Users with this role have permissions to manage compliance-related features in the Microsoft 365 compliance center, Microsoft 365 admin center, Azure, and Security & Compliance Center. Users can also manage all features within the Exchange admin center and Teams & Skype for Business admin center and create support tickets for Azure and Microsoft 365.

****

|In this service...|The compliance administrator can...|
|---|---|
|[**Microsoft 365 compliance center**](https://compliance.microsoft.com/)|Protect and manage your organization's data across Microsoft 365 services. <br/><br/> Manage compliance alerts.|
|[**Compliance Manager**](https://docs.microsoft.com/microsoft-365/compliance/compliance-manager)|Track, assign, and verify your organization's regulatory compliance activities.|
|[**Security & Compliance Center**](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|Manage data governance. <br/><br/> Perform legal and data investigation. <br/><br/> Manage Data Subject Request.|
|[**Intune**](https://docs.microsoft.com/intune/role-based-access-control)|View all Intune audit data.|
|[**Cloud App Security**](https://docs.microsoft.com/cloud-app-security/manage-admins)|Has read-only permissions and can manage alerts. <br/><br/> Can create and modify file policies and allow file governance actions. <br/><br/> Can view all the built-in reports under Data Management.|
|

### Compliance data administrator

Users with this role have permissions to protect and track data in the Microsoft 365 compliance center, Microsoft 365 admin center, and Azure. Users can also manage all features within the Exchange admin center, Compliance Manager, and Teams & Skype for Business admin center and create support tickets for Azure and Microsoft 365.

****

|In this service...|The compliance data administrator can...|
|---|---|
|[**Microsoft 365 compliance center**](https://compliance.microsoft.com/)|Protect and manage your organization's data across Microsoft 365 services. <br/><br/> Manage compliance alerts. <br/><br/> Manage sensitivity labels|
|[**Compliance Manager**](https://docs.microsoft.com/microsoft-365/compliance/compliance-manager)|Track, assign, and verify your organization's regulatory compliance activities.|
|[**Security & Compliance Center**](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|Manage data governance. <br/><br/> Perform legal and data investigation. <br/><br/> Manage Data Subject Request. <br/><br/> Manage sensitivity labels|
|[**Intune**](https://docs.microsoft.com/intune/role-based-access-control) (coming soon)|View all Intune audit data.|
|[**Cloud App Security**](https://docs.microsoft.com/cloud-app-security/manage-admins)|Use read-only permissions to view information. <br/>Manage alerts. <br/><br/> Create and modify file policies and allow file governance actions. <br/><br/> View all the built-in reports under Data Management.|
|

### Security administrator

Users with this role have permissions to manage security-related features in the Microsoft 365 security center, Azure Active Directory Identity Protection, Azure Information Protection, and Security & Compliance Center.

****

|In this service...|The security administrator can...|
|---|---|
|[**Microsoft 365 security center**](https://security.microsoft.com/)|Monitor security-related policies across Microsoft 365 services. <br/><br/>  Manage security threats and alerts. <br/><br/> View reports. <br/><br/> Manage sensitivity labels.|
|**Identity Protection Center**|Do everything the Security Reader role can, plus  perform all Identity Protection Center operations, except for reset passwords.|
|[**Privileged Identity Management**](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure)|Do everything the Security Reader role can. <br/><br/> **Cannot** manage Azure AD role assignments or settings.|
|[**Security & Compliance Center**](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|Manage security policies. <br/><br/> View, investigate, and respond to security threats <br/><br/> View reports. <br/><br/> Manage sensitivity labels.|
|**Microsoft Defender for Identity**|Monitor and respond to suspicious security activity.|
|**Microsoft Defender for Endpoint  and EDR**|Assign roles. <br/><br/> Manage machine groups. <br/><br/> Configure endpoint threat detection and automated remediation. <br/><br/> View, investigate, and respond to alerts.|
|[**Intune**](https://docs.microsoft.com/intune/role-based-access-control)|Views user, device, enrollment, configuration, and application information. <br/><br/> **Cannot** make changes to Intune.|
|[**Cloud App Security**](https://docs.microsoft.com/cloud-app-security/manage-admins)|Add admins, add policies and settings, upload logs and perform governance actions.|
|[**Azure Defender**](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles) (coming soon)|View security policies, view security states, edit security policies, view alerts and recommendations, dismiss alerts and recommendations.|
|[**Office 365 service health**](https://docs.microsoft.com/microsoft-365/enterprise/view-service-health)|View the health of Office 365 services.|
|

### Security operator

Users with this role can manage alerts and have global read-only access on security-related feature, including all information in the Microsoft 365 security center, Azure Active Directory, Identity Protection, Privileged Identity Management, as well as the ability to read Azure Active Directory sign-in reports and audit logs, and in Security & Compliance Center.

****

|In this service...|The security operator can...|
|---|---|
|[**Microsoft 365 security center**](https://security.microsoft.com/)|Do everything the Security Reader role can. <br/><br/> View, investigate, and respond to security alerts.|
|**Identity Protection Center** (coming soon)|Do everything the Security Reader role can.|
|[**Privileged Identity Management**](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure)|Do everything the Security Reader role can.|
|[**Security & Compliance Center**](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|Do everything the Security Reader role can. <br/><br/> View, investigate, and respond to security threats|
|**Microsoft Defender for Endpoint  and EDR**|Do everything the Security Reader role can. <br/><br/> View, investigate, and respond to alerts.|
|[**Intune**](https://docs.microsoft.com/intune/role-based-access-control)|Views user, device, enrollment, configuration, and application information. <br/><br/> **Cannot** make changes to Intune.|
|[**Cloud App Security**](https://docs.microsoft.com/cloud-app-security/manage-admins)|Do everything the Security Reader role can, plus view and dismiss alerts.|
|[**Office 365 service health**](https://docs.microsoft.com/microsoft-365/enterprise/view-service-health)|View the health of Office 365 services.|
|

### Security reader

Users with this role have global read-only access on security-related feature, including all information in the Microsoft 365 security center, Azure Active Directory, Identity Protection, Privileged Identity Management, as well as the ability to read Azure Active Directory sign-in reports and audit logs, and in Security & Compliance Center.

****

|In this service...|The security reader can...|
|---|---|
|[**Microsoft 365 security center**](https://security.microsoft.com/)|View security-related policies across Microsoft 365 services. <br/><br/> View security threats and alerts. <br/><br/> View reports.|
|**Identity Protection Center**|Read all security reports and settings information for security features: anti-spam, encryption, data loss prevention (DLP), anti-malware, Defender for Office 365, anti-phishing, and mail flow rules (also known as transport rules).|
|[**Privileged Identity Management**](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure)|Use read-only access to view all information surfaced in Azure AD PIM: Policies and reports for Azure AD role assignments, security reviews, and (in the future) policy data and reports for scenarios other than Azure AD role assignment. <br/><br/> **Cannot** sign up for Azure AD PIM or make any changes to it. In the PIM portal or via PowerShell, someone in this role can activate additional roles (for example, Global Admin or Privileged Role Administrator), if the user is a eligible for them.|
|[**Security & Compliance Center**](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|View security policies. <br/><br/> View and investigate security threats. <br/><br/> View reports.|
|**Microsoft Defender for Endpoint  and EDR**|View and investigate alerts.|
|[**Intune**](https://docs.microsoft.com/intune/role-based-access-control)|Views user, device, enrollment, configuration, and application information. <br/><br/> **Cannot** make changes to Intune.|
|[**Cloud App Security**](https://docs.microsoft.com/cloud-app-security/manage-admins)|Use read-only permissions to view information. <br/><br/> Manage alerts.|
|[**Azure Defender**](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles)|View recommendations and alerts. <br/><br/> View security policies. <br/><br/> View security states, but cannot make changes.|
|[**Office 365 service health**](https://docs.microsoft.com/microsoft-365/enterprise/view-service-health)|View the health of Office 365 services.|
|

## Global administrators can manage roles in Azure Active Directory

In the Microsoft 365 compliance center and Microsoft 365 security center, when you select a role, you can view its assignments. But to manage those assignments, you need to go to the Azure Active Directory.

For more information, see [View and assign administrator roles in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-manage-roles-portal).

![Link to manage permissions in Azure Active Directory](../../media/permissions-manage-in-azure-ad-link.png)

## Managing roles in a service instead of Azure Active Directory

The roles that appear in the Microsoft 365 compliance center and Microsoft 365 security center also appear in the services where they have permissions. For example, you can see these roles in the Security & Compliance Center.

![Roles in Security & Compliance Center](../../media/m365-roles-in-o365-scc.png)

### Breaking inheritance

It's important to understand that you when you manage these roles in Azure Active Directory, you're doing so centrally for **all** Microsoft 365 services. However, when you manage a role in a specific service, such as the Security & Compliance Center, you're managing the role for **only** that specific service. The assignments and permissions for a role in a service override any permissions granted to the Azure Active Directory role.

This can be useful – for example, if a person is assigned to the Security administrator role, they don't have permissions to manage incidents. But you can use the permissions in Microsoft Defender for Endpoint to give them the specific permission for incident management in that service.

## Where to find role information for each Microsoft 365 service

By assigning a user to one of the Microsoft 365 compliance or security admin roles, you give that user permissions to a range of Microsoft 365 services. Use the links below to find more information about the specific permissions for a role in each service.

****

|Microsoft 365 service|Role info|
|---|---|
|Admin roles in Office 365 and Microsoft 365 for business plans|[Microsoft 365 admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|
|Azure Active Directory (Azure AD) and Azure AD Identity Protection|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Microsoft Defender for Identity|[Microsoft Defender for Identity role groups](https://docs.microsoft.com/azure-advanced-threat-protection/atp-role-groups)|
|Azure Information Protection|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Compliance Manager|[Compliance Manager](https://docs.microsoft.com/microsoft-365/compliance/compliance-manager-setup#set-user-permissions-and-assign-roles)|
|Exchange Online|[Exchange role-based access control](https://docs.microsoft.com/exchange/understanding-role-based-access-control-exchange-2013-help)|
|Intune|[Intune role-based access control](https://docs.microsoft.com/intune/role-based-access-control)|
|Managed Desktop|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Microsoft Cloud App Security|[Role-based access control](https://docs.microsoft.com/cloud-app-security/manage-admins)|
|Security & Compliance Center|[Microsoft 365 admin roles](permissions-in-the-security-and-compliance-center.md)|
|Privileged Identity Management|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Secure Score|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|SharePoint Online|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) <br/><br/> [About the SharePoint admin role in Office 365](https://docs.microsoft.com/sharepoint/sharepoint-admin-role)|
|Teams/Skype for Business|[Azure AD admin roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Microsoft Defender for Endpoint|[Microsoft Defender for Endpoint role-based access control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)|
|

## What is coming soon

We're still working on permissions in the Microsoft 365 compliance center and Microsoft 365 security center. For example, we're currently working on support for the ability to:

- Manage roles in the Microsoft 365 compliance center and Microsoft 365 security center, instead of going to Azure Active Directory.

- Customize roles by adding or removing specific permissions.

- Create custom roles with permissions that you choose.
