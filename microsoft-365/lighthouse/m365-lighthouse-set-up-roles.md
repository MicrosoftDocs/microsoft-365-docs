---
title: "Set up roles to manage customer tenants"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to set up roles to manage customer tenants."
---

# Set up roles to manage customer tenants

Managed Service Providers (MSPs) may enable granular and time-bound access to their customer tenants in Microsoft 365 Lighthouse by configuring Granular Delegated Admin Privileges (GDAP) in Partner Center. GDAP offers MSPs a high level of control and flexibility by providing customer access through [Azure Active Directory (Azure AD) built-in roles](/azure/active-directory/roles/permissions-reference). Assigning [the least privileged roles by task](/azure/active-directory/roles/delegate-by-task) through GDAP to MSP technicians reduces security risk for both MSPs and customers. Enable GDAP to assign more granular roles to your technicians who use Lighthouse and adopt a least-privileged approach to security across customer tenants.

If MSP technicians still access customer environments with the Helpdesk Agent or Admin Agent roles granted through Delegated Admin Privileges (DAP), see [DAP in Lighthouse](#dap-in-lighthouse) in this article. If both GDAP and DAP coexist, roles granted to users through GDAP take precedence for customers where a GDAP relationship has been established.

## Set up GDAP in Lighthouse

> [!NOTE]
> GDAP is currently in [technical preview](/partner-center/announcements/2022-february#6) (public preview) to allow partners to assign granular permissions before GDAP is generally available.

The high-level steps below are required to create a GDAP relationship with a customer. For more information on GDAP, see [Introduction to granular delegated admin privileges (GDAP).](/partner-center/gdap-introduction)

1. [Categorize users into security groups](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal#create-a-basic-group-and-add-members) within the partner tenant's Azure AD.

2. [Create and send a GDAP relationship request](/partner-center/gdap-obtain-admin-permissions-to-manage-customer) to the customer.

3. Make sure the [customer approves the GDAP relationship request](/partner-center/gdap-customer-approval).

4. [Assign the relevant security groups](/partner-center/gdap-assign-azure-ad-roles#grant-permissions-to-security-groups) to the GDAP relationship.

5. Assign the appropriate [Azure Active Directory built-in roles](/azure/active-directory/roles/permissions-reference) to the Lighthouse security groups aligned for customer management.

We recommend naming security groups based on the tasks MSP technicians handle in Lighthouse. For example, you could create security groups for helpdesk technicians, system administrators, and escalation engineers. We recommend using the roles outlined in the following table to manage Lighthouse.

### Example security groups

||Helpdesk technicians |System administrators |Escalation engineers|
|--------------------|-------------|-------------|------------|
|**Recommended GDAP roles** |<ul><li>Helpdesk Administrator</li><li>Security Reader</li></ul>   |<ul><li>User Administrator</li><li>Authentication Administrator</li><li>Global Reader</li><li>Intune Administrator</li><li>Security Administrator</li></ul>   |Global Administrator  |
|**Tasks** |Read customer information in Lighthouse and take limited actions (for example, resetting user passwords or updating contact information)   |Maintain customer security by taking corrective actions in Lighthouse (for example, rebooting devices).   |Take privileged actions when needed to protect the customer tenant (for example, blocking sign-in of a compromised administrator).  |

For descriptions of specific permissions, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference). For partner-specific roles and tasks, see [Least-privileged roles](/partner-center/gdap-least-privileged-roles-by-task).

## DAP in Lighthouse

DAP restricts access to customers in Lighthouse with two roles: Admin Agent and Helpdesk Agent. You can check which users in the partner tenant have the Admin Agent or Helpdesk Agent roles by reviewing security group memberships on the [Azure AD – All Groups](https://portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/AllGroups) page. To review which customers still have DAP in place, see [Monitoring administrative relationships and self-service DAP removal](/partner-center/dap-monitor-self-serve-removal).

For customers with DAP and no GDAP, the Admin Agent role grants permissions to view all tenant information and take any action in Lighthouse (see below for other actions that also require a role in the partner tenant). 

The Helpdesk Agent role grants permissions to view all tenant information and take limited action in Lighthouse (such as resetting user passwords, blocking user sign-ins, and updating customer contact information and websites).

Given the broad permissions granted to partner users with DAP, we recommend adopting GDAP as soon as possible. Both models coexist, but GDAP will eventually replace DAP, and GDAP permissions take precedence over DAP permissions during the transition period. For more information, see [GDAP frequently asked questions](/partner-center/gdap-faq).

## Other roles and permissions

For certain actions in Lighthouse, role assignments in the partner tenant are required. The following table lists partner tenant roles and their associated permissions.<br><br>

| Partner tenant roles | Permissions |
|--|--|
| Global Administrator of partner tenant | <ul><li>Sign up for Lighthouse in the Microsoft 365 admin center.</li><li>Accept partner contract amendments during the first-run experience.</li><li>Activate and inactivate a tenant.</li><li>Create, update, and delete tags.</li><li>Assign and remove tags from a customer tenant.</li></ul> |
| Partner tenant member with at least one Azure AD role assigned with the following property set: **microsoft.office365.supportTickets/allEntities/allTasks**<br>(For a complete list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference). | Create Lighthouse service requests. |
| Partner tenant member who meets *both* of the following requirements: <ul><li>Has at least one Azure AD role assigned with the following property set: **microsoft.office365.serviceHealth/allEntities/allTasks**<br>(For a complete list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference)</li><li>Has at least one DAP delegated role assigned (Admin Agent or Helpdesk Agent)</li></ul> | View service health information. |

## Next steps

After creating roles, you must set up additional Lighthouse portal security, specifically multifactor authentication (MFA) and optionally Azure AD Identity Management (PIM). For more information, see [Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md).

## Related content

[Least privileged roles by task](/partner-center/gdap-least-privileged-roles-by-task?branch=pr-en-us-2577) (article)  
[Delegated administration privileges (DAP) FAQ](/partner-center/dap-faq) (article)  
[Assign roles and permissions to users](/partner-center/permissions-overview) (article)  
[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)  
[Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md) (article)  
[Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md) (article)  
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
