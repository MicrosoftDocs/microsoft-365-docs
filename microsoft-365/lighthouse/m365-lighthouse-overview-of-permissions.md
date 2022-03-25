---
title: "Overview of permissions in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
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
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn more about permissions."
---

# Overview of permissions in Microsoft 365 Lighthouse

Delegated access to customer tenants is required for Managed Service Providers (MSPs) to use Microsoft 365 Lighthouse. Granular Delegated Admin Privileges (GDAP) offers MSPs a high level of control and flexibility by providing customer access through [Azure Active Directory (Azure AD) built-in roles](/azure/active-directory/roles/permissions-reference). Assigning the least privileged roles by task through GDAP to MSP technicians reduces security risk for both MSPs and customers. For more information on least privileged roles by task, see [Least-privileged roles - Partner Center \| Microsoft Docs](/partner-center/gdap-least-privileged-roles-by-task) and [Least privileged roles by task - Azure Active Directory \| Microsoft Docs](/azure/active-directory/roles/delegate-by-task). For more information on setting up a GDAP relationship with a customer tenant, see [Obtain granular admin permissions to manage a customer's service.](/partner-center/gdap-obtain-admin-permissions-to-manage-customer)

The table below describes which GDAP roles grant permission to read customer information and take actions on customer tenants in Lighthouse. See Permissions in the partner tenant in this article for additional roles required to manage Lighthouse entities (for example, tags and Lighthouse service requests).

Note: If you get a message in Lighthouse saying that you don’t have permission to view or edit information, you’re assigned a role that doesn’t have the appropriate permissions to perform the action. You’ll need to reach out to an admin in your partner tenant who can assign you the appropriate role for the action you’re trying to perform.

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 18%" />
<col style="width: 21%" />
<col style="width: 21%" />
<col style="width: 22%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th colspan="4"><strong>Example MSP Service Tiers</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><strong>Account Managers</strong></td>
<td><strong>Service Desk</strong></td>
<td><strong>System Administrators</strong></td>
<td><strong>Escalation Engineers</strong></td>
</tr>
<tr class="even">
<td><strong>Recommended GDAP roles</strong></td>
<td><strong>Helpdesk Administrator</strong></td>
<td><strong>Security Reader + Helpdesk Administrator</strong></td>
<td><p><strong>Global Reader +</strong></p>
<p><strong>User Administrator +</strong></p>
<p><strong>Authentication Administrator</strong></p></td>
<td><p><strong>Global Reader +</strong></p>
<p><strong>User Administrator +</strong></p>
<p><strong>Intune Administrator +</strong></p>
<p><strong>Security Administrator</strong></p></td>
</tr>
<tr class="odd">
<td><strong>Lighthouse page</strong></td>
<td colspan="4"></td>
</tr>
<tr class="even">
<td>Home</td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Tenants</td>
<td><ul>
<li><p>View tenants list</p></li>
<li><p>Update customer contacts and website</p></li>
<li><p>View deployment plans</p></li>
</ul></td>
<td><ul>
<li><p>View tenants list</p></li>
<li><p>Update customer contacts and website</p></li>
<li><p>View deployment plans</p></li>
</ul></td>
<td><ul>
<li><p>View tenants list</p></li>
<li><p>Update customer contacts and website</p></li>
<li><p>View deployment plans</p></li>
<li><p>View Microsoft 365 services usage</p></li>
</ul></td>
<td><ul>
<li><p>View tenants list</p></li>
<li><p>Update customer contacts and website</p></li>
<li><p>View deployment plans</p></li>
<li><p>View Microsoft 365 services usage</p></li>
</ul></td>
</tr>
<tr class="even">
<td>Users</td>
<td><ul>
<li><p>View tenant level (non-user specific) information</p></li>
<li><p>Search user accounts across tenants</p></li>
<li><p>Reset password for non-administrators*</p></li>
</ul></td>
<td><ul>
<li><p>View all user-specific information</p></li>
<li><p>Search user accounts across tenants</p></li>
<li><p>Reset password for non-administrators*</p></li>
</ul></td>
<td><ul>
<li><p>View all user-specific information</p></li>
<li><p>Search user accounts across tenants</p></li>
<li><p>Reset password for non-administrators*</p></li>
<li><p>Block sign-in</p></li>
</ul></td>
<td><ul>
<li><p>View all user-specific information</p></li>
<li><p>Search user accounts across tenants</p></li>
<li><p>Reset password for non-administrators*</p></li>
<li><p>Block sign-in</p></li>
<li><p>Confirm user(s) compromised</p></li>
<li><p>Dismiss user(s) risk</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Devices</td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
<li><p>Sync device</p></li>
<li><p>Restart device</p></li>
<li><p>Collect diagnostics</p></li>
</ul></td>
</tr>
<tr class="even">
<td>Threat management</td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
<li><p>Run full scan</p></li>
<li><p>Run quick scan</p></li>
<li><p>Update antivirus</p></li>
<li><p>Reboot device</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Baselines</td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
</tr>
<tr class="even">
<td>Windows 365</td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
<td><ul>
<li><p>View all</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Service health</td>
<td colspan="4" rowspan="2">Other roles and permissions are required to view service health and audit logs. For more information, see <a href="#permissions-in-the-partner-tenant">Permissions in the partner tenant</a>.</td>
</tr>
<tr class="even">
<td>Audit logs</td>
</tr>
</tbody>
</table>

*\*See [Password reset permissions](/azure/active-directory/roles/permissions-reference#password-reset-permissions) for a table that outlines what roles are required to reset passwords for customer tenant administrators.*

Note: GDAP is currently in technical release (public preview) to allow partners to assign granular permissions before GDAP is generally available. Check [Known Issues](m365-lighthouse-known-issues.md) if you are experiencing an issue accessing or doing something in Lighthouse.

We recommend assigning roles to groups of technicians based on the tasks each group needs to take on behalf of the customer. For example, the Service Desk may just need to read customer tenant data or reset user passwords. In contrast, Escalation Engineers may need to take more corrective actions to update customer tenant security settings. It is a best practice to assign the least permissive role required to complete a task so that customer and partner data is kept secure. We recommend using Privileged Identity Management (PIM) to enable time-scoped access to the Global Administrator role, if needed. Giving too many users global access is a security risk, and we recommend limiting it as much as possible. For more information on how to enable PIM, see [Set up Azure AD PIM.](m365-lighthouse-configure-portal-security.md#set-up-azure-ad-privileged-identity-management-pim)

## Delegated Admin Privileges (DAP) in Lighthouse

GDAP will eventually replace DAP as the primary method to configure delegated access to customer tenants. However, if GDAP has not been set up, MSP technicians may still access Lighthouse using the Helpdesk Agent or Admin Agent roles granted through DAP. For customers where GDAP and DAP coexist, roles granted to MSP technicians through GDAP take precedence.

For customers with DAP and no GDAP, the Admin Agent role grants permissions to view all tenant information and take any action in Lighthouse (see below for other actions that also require a role in the partner tenant).

The Helpdesk Agent role grants permissions to view all tenant information and take limited action in Lighthouse, such as resetting user passwords, blocking user sign-ins, and updating customer contact information and websites.

Given the broad permissions granted to partner users with DAP roles, we recommend adopting GDAP as soon as possible. Both models coexist, but GDAP will eventually replace DAP, and GDAP permissions take precedence over DAP permissions during the transition period. For more information on GDAP or DAP deprecation, see [GDAP frequently asked questions](https://docs.microsoft.com/en-us/partner-center/gdap-faq) or the [Partner Center announcements](/partner-center/announcements/2022-march#15) for dates and timelines.

## Permissions in the partner tenant

For certain actions in Lighthouse, role assignments in the partner tenant are required. The following table lists partner tenant roles and their associated permissions.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Partner tenant roles</strong></th>
<th><strong>Permissions</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Global Administrator of partner tenant</td>
<td><ul>
<li><p>Sign up for Lighthouse in the Microsoft 365 admin center.</p></li>
<li><p>Accept partner contract amendments during the first-run experience.</p></li>
<li><p>Activate and inactivate a tenant.</p></li>
<li><p>Create, update, and delete tags.</p></li>
<li><p>Assign and remove tags from a customer tenant.</p></li>
<li><p>Review audit logs.</p></li>
</ul></td>
</tr>
<tr class="even">
<td>Partner tenant member with at least one Azure AD role assigned with the following property set: <strong>microsoft.office365.supportTickets/allEntities/allTasks</strong><br />
<strong>(For a complete list of Azure AD roles, see</strong> <a href="https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference">Azure AD built-in roles</a>.</td>
<td>Create Lighthouse service requests.</td>
</tr>
<tr class="odd">
<td><p>Partner tenant member who meets <em>both</em> of the following requirements:</p>
<ul>
<li><p>Has at least one Azure AD role assigned with the following property set: <strong>microsoft.office365.serviceHealth/allEntities/allTasks</strong><br />
<strong>(For a complete list of Azure AD roles, see</strong> <a href="https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference">Azure AD built-in roles</a></p></li>
<li><p>Has at least one DAP delegated role assigned (Admin Agent or Helpdesk Agent)</p></li>
</ul></td>
<td>View service health information.</td>
</tr>
</tbody>
</table>

## Related content

[Requirements for Microsoft 365 Lighthouse](https://docs.microsoft.com/en-us/microsoft-365/lighthouse/m365-lighthouse-requirements?view=o365-worldwide) (article)  
[Delegated administration privileges (DAP) FAQ](https://docs.microsoft.com/en-us/partner-center/dap-faq) (article)  
[Assign roles and permissions to users](https://docs.microsoft.com/en-us/partner-center/permissions-overview) (article)  
[Overview of Microsoft 365 Lighthouse](https://docs.microsoft.com/en-us/microsoft-365/lighthouse/m365-lighthouse-overview?view=o365-worldwide) (article)  
[Sign up for Microsoft 365 Lighthouse](https://docs.microsoft.com/en-us/microsoft-365/lighthouse/m365-lighthouse-sign-up?view=o365-worldwide) (article)  
[Microsoft 365 Lighthouse FAQ](https://docs.microsoft.com/en-us/microsoft-365/lighthouse/m365-lighthouse-faq?view=o365-worldwide) (article)
