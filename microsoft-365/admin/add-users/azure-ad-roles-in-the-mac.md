---
title: "Azure Active Directory roles in the Microsoft 365 admin center"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- okr_smb
description: "Manage these Azure admin roles in the Microsoft 365 admin center."
---

# Azure Active Directory roles in the Microsoft 365 admin center

The Microsoft 365 admin center lets you manage over 30 Azure AD roles. However, these roles are a subset of the roles available in the Azure portal. If you have a large business, there might be roles in the Azure portal that meet your organizational needs. Looking for the detailed role descriptions for Azure AD? Check out [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

A user who is assigned an admin role will have the same level of access to cloud services that your organization has subscribed to, regardless of whether you assign the role in the Microsoft 365 admin center or the Azure portal, or by using the Azure AD module for Windows PowerShell.

::: moniker range="o365-worldwide"

In the Microsoft 365 admin center, you can go to **Roles**, and then select any role to open its detail pane. Select the **Permissions** tab to view the detailed list of what admins assigned that role have permissions to do. Select the **Assigned** or **Assigned admins** tab to add users to roles. For more information on assigning roles in the Microsoft 365 admin center, see [Assign admin roles](assign-admin-roles.md).

::: moniker-end

## All Azure AD roles

Here's a list of all the admin roles available in the Microsoft 365 admin center. Looking for the detailed role descriptions of the Microsoft 365 admin roles? Check out [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide).

|Admin role     |Description  |
|---------|---------|
|Application admin     |    Full access to enterprise applications, application registrations, and application proxy settings.     |
|Application developer     |    Create application registrations and consent to app access on their own behalf.     |
|Authentication admin     |    Can require users to re-register authentication for non-password credentials, like MFA.     |
|Azure Information Protection admin     |   Manages labels for the Azure Information Protection policy, manages protection templates, and activates protection.       |
|Billing admin     |    Makes purchases, manages subscriptions, manages service requests, and monitors service health.     |
|Cloud application admin     | Full access to enterprise applications and application registrations. No application proxy.     |
|Cloud device admin     |    Enables, disables, and deletes devices and can read Windows 10 BitLocker keys.     |
|Compliance admin     |    Manages regulatory requirements and eDiscovery cases, maintains data governance for locations, identities, and apps.     |
|Compliance data admin     |    Keeps track of data, makes sure it's protected, gets insights into issues, and helps mitigate risk.     |
|Conditional Access admin     |   Manages Azure Active Directory conditional access settings, but not Exchange ActiveSync conditional access policy.      |
|Customer Lockbox access approver     |      Manages Customer Lockbox requests, can turn Customer Lockbox on or off.   |
|Desktop Analytics admin     |   Can access and manage Desktop management tools and services.      |
|Dynamics 365 admin     |  Full access to Microsoft Dynamics 365 Online, manages service requests, monitors service health.       |
|Exchange admin     |  Full access to Exchange Online, creates and manages groups, manages service requests, and monitors service health.    |
|External identity provider admin    |     Configure identity providers for use in direct federation.    |
|Global admin     |    Has unlimited access to all management features and most data in all admin centers.     |
|Global reader     |    Has read-only access to all management features and most data in admin centers. For a detailed description of access rights and limitations of this role, please see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader).    |
|Groups admin   |Creates groups and manages all groups settings across admin centers.|
|Guest inviter     |    Manages Azure Active Directory B2B guest user invitations.     |
|Helpdesk admin     | Resets passwords and re-authenticates for all non-admins and some admin roles, manages service requests, and monitors service health.      |
|Insights admin     | Manages all aspects of the Microsoft 365 Insights application, reads Azure Active Directory information, can monitor service health and create and manage service requests.      |
|Insights business admin     | Read reports and insights in the Microsoft 365 Insights application.      |
|Intune admin     | Full access to Intune, manages users and devices to associate policies, creates and manages groups.      |
|Kaizala admin     |    Full access to all Kaizala management features and data, manages service requests.     |
|License admin     |     Assigns and removes licenses from users and edits their usage location.    |
|Message center privacy reader     |    Access to data privacy messages in Message center, gets email notifications.     |
|Message center reader     | Reads and shares regular messages in Message center, gets weekly email digests, has read-only access to users, groups, domains, and subscriptions.     |
|Office Apps admin    |   Manages cloud-based policies for Office and the What's New content that users see in their Office apps.   |
|Password admin    |   Reset passwords of users who are non-administrators or members of the following roles: Directory Readers, Guest Inviter, Password Administrator. This role can't grant the ability to manage service requests or monitor service health.   |
|Power BI admin    |   Full access to Power Bl management tasks, manages service requests, and monitors service health.   |
|Power platform admin     |    Full access to Microsoft Dynamics 365, PowerApps, data loss prevention policies, and Microsoft Flow.     |
|Privileged role admin     |    Manages role assignments and all access control features of Privileged Identity Management.     |
|Privileged authentication admin     |    Resets passwords, updates non-password credentials, forces uses to sign out and monitors service health and manages service requests.     |
|Reports reader     |   Reads usage reporting data from the reports dashboard, PowerBI adoption content pack, sign-in reports, and Microsoft Graph reporting API.      |
|Search admin     |    Full access to Microsoft Search, assigns the Search admin and Search editor roles, manages editorial content, monitors service health, and creates service requests.     |
|Search editor     |    Can only create, edit, and delete content for Microsoft Search, like bookmarks, Q&A, and locations.     |
|Security admin     |    Controls organization's security, manages security policies, reviews security analytics and reports, monitors the threat landscape.     |
|Security operator     |    Investigates and responds to security alerts, manages features in Identity Protection center, monitors service health.     |
|Security reader     |    Read-only access to security features, sign-in reports, and audit logs.     |
|Service support admin     |    Creates service requests for Azure, Microsoft 365, and Office 365 services, and monitors service health.     |
|SharePoint admin     |    Full access to SharePoint Online, manages Microsoft 365 groups, manages service requests, and monitors service health.     |
|Skype for Business admin     | Full access to all Teams and Skype features, Skype user attributes, manages service requests, and monitors service health.      |
|Teams admin     |    Full access to Teams & Skype admin center, manages Microsoft 365 groups and service requests, and monitors service health.     |
|Teams communication manager     |    Assigns telephone numbers, creates and manages voice and meeting policies, and reads call analytics.     |
|Teams communication support engineer     |    Reads call record details for all call participants to troubleshoot communication issues.     |
|Teams communication support specialist     |    Reads user call details only for a specific user to troubleshoot communication issues.|
|User admin     |   Resets user passwords, creates and manages users and groups, including filters, manages service requests, and monitors service health.|

## Delegated administration for Microsoft Partners

If you're working with a Microsoft partner, you can assign them admin roles. They, in turn, can assign users in your company - or their company - admin roles. You might want them to do this, for example, if they are setting up and managing your online organization for you.
  
A partner can assign these roles:

- Full administration, which has privileges equivalent to a global admin, with the exception of managing multi-factor authentication through the Partner Center.

- Limited administration, which has privileges equivalent to a helpdesk admin.

Before the partner can assign these roles to users, you must add the partner as a delegated admin to your account. This process is initiated by an authorized partner. The partner sends you an email to ask you if you want to give them permission to act as a delegated admin. For instructions, see [Authorize or remove partner relationships](https://docs.microsoft.com/microsoft-365/admin/misc/add-partner).
  
## Related articles

[About Microsoft 365 admin roles](about-admin-roles.md)

[Assign admin roles](assign-admin-roles.md)
  
[Activity reports in the Microsoft 365 admin center](../activity-reports/activity-reports.md)