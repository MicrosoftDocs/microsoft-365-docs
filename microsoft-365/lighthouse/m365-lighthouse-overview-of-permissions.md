---
title: "Overview of permissions in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: magarlan, chrigreen
ms.date: 06/23/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn more about Lighthouse permission requirements."
---

# Overview of permissions in Microsoft 365 Lighthouse

Delegated access to customer tenants is required for Managed Service Providers (MSPs) to use Microsoft 365 Lighthouse. Granular delegated admin privileges (GDAP) give MSPs a high level of control and flexibility by providing customer access through [Azure Active Directory (Azure AD) built-in roles](/azure/active-directory/roles/permissions-reference). Assigning the least privileged roles by task through GDAP to MSP technicians reduces security risk for both MSPs and customers. For more information on least privileged roles by task, see [Least-privileged roles - Partner Center](/partner-center/gdap-least-privileged-roles-by-task) and [Least privileged roles by task in Azure Active Directory](/azure/active-directory/roles/delegate-by-task). For more information on setting up a GDAP relationship with a customer tenant, see [Obtain granular admin permissions to manage a customer's service - Partner Center.](/partner-center/gdap-obtain-admin-permissions-to-manage-customer)

We recommend assigning roles to groups of MSP technicians based on the tasks each group needs to perform on behalf of the customer. For example, Service Desk Technicians may just need to read customer tenant data or reset user passwords. In contrast, Escalation Engineers may need to take more corrective actions to update customer tenant security settings. It's a best practice to assign the least permissive role required to complete a task so that customer and partner data is kept secure. We recommend using Privileged Identity Management (PIM) to enable time-scoped access to the Global Administrator role, if needed. Giving too many users global access is a security risk, and we recommend limiting it as much as possible. For more information on how to enable PIM, see [Set up Azure AD PIM.](m365-lighthouse-configure-portal-security.md#set-up-azure-ad-privileged-identity-management-pim)

The tables in the next section describe which GDAP roles grant permission to read customer data and take action on customer tenants in Lighthouse. See [Permissions in the partner tenant](#permissions-in-the-partner-tenant) in this article for additional roles required to manage Lighthouse entities (for example, tags and Lighthouse service requests).

## Example MSP service tiers, recommended GDAP roles, and permissions

The following table lists the recommended GDAP roles for some example MSP service tiers. 

|| Account Managers| Service Desk Technicians | System Administrators | Escalation Engineers|
|---|---|---|---|---|
| **Recommended GDAP roles** |<ul><li>Helpdesk Administrator</li></ul> |<ul><li>Security Reader<br>+</li><li>Helpdesk Administrator</li></ul> |<ul><li>Global Reader<br>+</li><li>User Administrator<br>+</li><li>Authentication Administrator</li></ul> |<ul><li>Global Reader<br>+</li><li>User Administrator<br>+</li><li>Intune Administrator<br>+</li><li>Security Administrator</li></ul>|

The following table lists the actions that the example MSP service tiers can perform on the different Lighthouse pages as determined by their assigned GDAP roles (which are indicated in the previous table).

| Lighthouse page | Account Managers allowed actions| Service Desk Technicians allowed actions |System Administrators allowed actions | Escalation Engineers allowed actions|
|---|---|---|---|---|
| Home  | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | 
| Tenants     | <ul><li>View tenants list</li><li>Update customer contacts and website</li><li>View deployment plans</li></ul>  | <ul><li>View tenants list</li><li>Update customer contacts and website</li><li>View deployment plans</li></ul>   |  <ul><li>View tenants list</li><li>Update customer contacts and website</li><li>View deployment plans</li><li>View Microsoft 365 services usage</li></ul> | <ul><li>View tenants list</li><li>Update customer contacts and website</li><li>View deployment plans</li><li>View Microsoft 365 services usage</li></ul>  |
| Users   | <ul><li>View tenant level (non-user specific) data</li><li>Search user accounts across tenants</li><li>Reset password for non-administrators*</li></ul>  | <ul><li>View all user-specific data</li><li>Search user accounts across tenants</li><li>Reset password for non-administrators*</li></ul>|  <ul><li>View all user-specific data</li><li>Search user accounts across tenants</li><li>Reset password for non-administrators*</i><li>Block sign-in</li></ul>  | <ul><li>View all user-specific data</li><li>Search user accounts across tenants</li><li>Reset password for non-administrators*</li><li>Block sign-in</li><li>Confirm compromised users</li><li>Dismiss risk for users</li></ul> |
| Devices    | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li><li>Sync device</li><li>Restart device</li><li>Collect diagnostics</li></ul>|
| Threat management  | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li><li>Run full scan</li><li>Run quick scan</li><li>Update antivirus protection</li><li>Reboot device</li></ul>|
| Baselines    | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul>  | <ul><li>View all data</li></ul> |
| Windows 365 | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> | <ul><li>View all data</li></ul> |
| Service health**| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A |
| Audit logs**| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N/A |

*See [Password reset permissions](/azure/active-directory/roles/permissions-reference#password-reset-permissions) for a table that lists which roles are required to reset passwords for customer tenant administrators.

**Different roles and permissions are required to view Service health and Audit logs. For more information, see [Permissions in the partner tenant](#permissions-in-the-partner-tenant).

> [!NOTE]
> If you get a message in Lighthouse saying that you don't have permission to view or edit information, you're assigned a role that doesn't have the appropriate permissions to perform the action. You'll need to reach out to an admin in your partner tenant who can assign you the appropriate role for the action you're trying to perform.

## Delegated admin privileges (DAP) in Lighthouse

GDAP will eventually replace DAP as the primary method to configure delegated access for customer tenants. However, if GDAP hasn't been set up, MSP technicians may still access Lighthouse by using the Helpdesk Agent or Admin Agent roles granted through DAP. For customers where GDAP and DAP coexist, roles granted to MSP technicians through GDAP take precedence. For more information on GDAP or DAP deprecation, see [GDAP frequently asked questions](/partner-center/gdap-faq) or the [Partner Center announcements](/partner-center/announcements/2022-march#15) for dates and timelines.

For customers with DAP and no GDAP, the Admin Agent role grants permissions to view all tenant data and take any action in Lighthouse (see below for other actions that also require a role in the partner tenant).

The Helpdesk Agent role grants permissions to view all tenant data and take limited action in Lighthouse, such as resetting user passwords, blocking user sign-ins, and updating customer contact information and websites.

Given the broad permissions granted to partner tenant users with DAP roles, we recommend adopting GDAP as soon as possible. 

## Permissions in the partner tenant

For certain actions in Lighthouse, role assignments in the partner tenant are required. The following table lists partner tenant roles and their associated permissions.

| Partner tenant roles | Permissions |
|--|--|
| Global Administrator of partner tenant | <ul><li>Sign up for Lighthouse in the Microsoft 365 admin center.</li><li>Accept partner contract amendments during the first-run experience.</li><li>Activate and inactivate a tenant.</li><li>Create, update, and delete tags.</li><li>Assign and remove tags from a customer tenant.</li><li>Review audit logs</li></ul> |
| Partner tenant member with at least one Azure AD role assigned with the following property set:<br>**microsoft.office365.supportTickets/allEntities/allTasks**<br>(For a complete list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).) | Create Lighthouse service requests. |
| Partner tenant member who meets *both* of the following requirements: <ul><li>Has at least one Azure AD role assigned with the following property set:<br>**microsoft.office365.serviceHealth/allEntities/allTasks**<br>(For a complete list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).)</li><li>Has at least one DAP role assigned (Admin Agent or Helpdesk Agent)</li></ul> | View service health information. |

## Related content

[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)  
[Delegated administration privileges (DAP) FAQ](/partner-center/dap-faq) (article)  
[View your Azure Active Directory roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)  
[Assign roles and permissions to users](/partner-center/permissions-overview) (article)  
[Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md) (article)  
[Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md) (article)  
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
