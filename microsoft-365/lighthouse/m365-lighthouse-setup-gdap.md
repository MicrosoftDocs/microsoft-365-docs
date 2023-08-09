---
title: "Set up GDAP for your customers in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: magarlan, chrigreen
ms.date: 06/09/2023
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to set up granular delegated admin privileges (GDAP) for your customers."
---

# Set up GDAP for your customers in Microsoft 365 Lighthouse

You can now set up all your customers with granular delegated admin privileges (GDAP) through Microsoft 365 Lighthouse, regardless of their licenses or size. By setting up your organization with GDAP for the customer tenants you manage, users in your organization have the permissions necessary to do their work while keeping customer tenants secure. Lighthouse lets you quickly transition your organization to GDAP and begin the journey to least-privilege for your delegated access to customers.

Delegated access via delegated admin privileges (DAP) or GDAP is a prerequisite for customer tenants to be fully onboarded to Lighthouse. Therefore, creating GDAP relationships with your customers may be the first step in managing your customer tenants in Lighthouse.

During the GDAP setup process, you create GDAP templates by configuring what support roles and security groups are needed for your organization. Then, you assign customer tenants to GDAP templates. GDAP roles are scoped to [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference), and when you set up GDAP, you see recommendations for a set of roles needed for different job functions.

## Watch: Set up GDAP

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE5e61P]

## Before you begin

- You need to have specific permissions in the partner tenant:

  - To establish GDAP security groups, add users, and create GDAP templates, you must be a Global Administrator in the partner tenant. This role can be assigned in Azure Active Directory (Azure AD).

  - To create and complete GDAP relationships, you must be a member of the Admin Agents group in Partner Center.

- The customers you manage in Lighthouse need to be set up in Partner Center with either a reseller relationship or an existing delegated relationship (DAP or GDAP).

> [!NOTE]
> Lighthouse GDAP templates use role-assignable security groups. An Azure AD P1 license is required to add users to these groups. To enable Just-in-Time (JIT) roles, Microsoft Entra IDE Governance or an Azure AD P2 license is required.

## Set up GDAP for the first time

When you set up GDAP for the first time, you must complete the following sections in order. Once completed, you can come back and edit any section as needed.

If you encounter any problems during GDAP setup, see [Troubleshoot error messages and problems in Microsoft 365 Lighthouse: GDAP setup and management](m365-lighthouse-troubleshoot.md#gdap-setup-and-management) for guidance.

To get started:

1. In the left navigation pane in Lighthouse, select **Home**.

2. On the **Set up GDAP** card, select **Set up GDAP**.

3. Complete the following sections in order.

    [Step 1: Roles and permissions](#step-1-roles-and-permissions)

    [Step 2: GDAP templates](#step-2-gdap-templates)

    [Step 3: Security groups](#step-3-security-groups)

    [Step 4: Tenant assignments](#step-4-tenant-assignments)

    [Step 5: Review and finish](#step-5-review-and-finish)

### Step 1: Roles and permissions

Choose the Azure AD roles needed based on your employees' job functions.

1. On the **Roles and permissions** page, select the Azure AD roles needed based on your employees' job functions. Do one of the following:

    - Adopt recommended roles
    - Edit Azure AD role selections

    By default, Lighthouse includes five support roles: Account manager, Service desk agent, Specialist, Escalation engineer, and JIT agent. You can rename support roles to match your organization's preferences by selecting **Edit support roles**. Certain Azure AD roles can't be added to different support roles&mdash;for example, the Azure AD roles in the JIT agent support role can't be added to any other support role.

    If not all support roles are needed for your GDAP setup, you can exclude one or more from your GDAP templates in the next step.  

2. Select **Next**.
3. Select **Save and close** to save your settings and exit GDAP Setup.

### Step 2: GDAP templates

A GDAP template is a collection of:

- Support roles
- Security groups
- Users in each security group

To create a GDAP template:

1. On the **GDAP templates** page, select **Create template**.

2. In the template pane, enter the template name and description into the appropriate fields.

3. Select one or more support roles from the list.

4. Select **Save**.

5. Select **Next**.

6. Select **Save and close** to save your settings and exit GDAP Setup.

### Step 3: Security groups

You need at least one security group per support role for each template. For the first template, you'll create a new security group, but for subsequent templates, you may reuse groups if desired.

1. On the **Security groups** page, select **Create security group**.

2. In the security group pane, enter a name and description.

3. Select **Add users**.

4. From the Add users list, select the users you want to include in this security group.

5. Select **Save**.

6. Select **Save** again.

7. Select **Next**.

8. Select **Save and close** to save your settings and exit GDAP Setup.

JIT agent security group users are eligible to request access to highly privileged GDAP roles; they are not given access to them automatically. As part of GDAP Setup, select a JIT approver security group from your tenant to approve access requests from JIT agents. The JIT approver security group must be role assignable. After completing GDAP setup, a JIT access policy is created for JIT agents to request access.  You can review the policy created in the [Azure AD Identity Governance portal](https://portal.azure.com/#view/Microsoft_AAD_ERM/DashboardBlade/~/elmEntitlement), and JIT agents can request access to their roles from the [My Access portal](https://myaccess.microsoft.com/#/access-packages). For more information on how JIT agents can request access, see [Manage access to resources](/azure/active-directory/governance/entitlement-management-access-package-first?wt.mc_id=365admincsh_lighthouse). For more information on how approvers can approve requests, see [Approve or deny request](/azure/active-directory/governance/entitlement-management-access-package-first?wt.mc_id=365admincsh_lighthouse).

### Step 4: Tenant assignments

Assign groups of customers to each template. Each customer can only be assigned to one template. Once selected, that customer tenant won't be displayed as an option on subsequent templates. If you rerun GDAP Setup, your tenant assignments per GDAP template will be saved.

- To add new tenants to a GDAP template, rerun GDAP Setup. Keep saved tenant assignments and select new tenants to assign to the GDAP template. New GDAP relationships will only be created for the newly assigned tenants.

- To remove tenants from a GDAP template, rerun GDAP Setup. Remove the tenant assignment. Removing the tenant assignment won't remove the GDAP relationship created from a previous assignment, but it allows you to reassign the customer tenant to a different GDAP template if needed.

Make sure that all tenants you want assigned to a GDAP template are selected before selecting Next. You can filter the list of tenants using the search box in the upper right corner.

1. On the **Tenant assignments** page, select the tenants you want to assign to GDAP templated you created.

2. Select **Next** to go to the next section or select **Save and close** to save your settings and exit GDAP Setup.

### Step 5: Review and finish

1. On the **Review settings** page, review the settings you created to confirm they're correct.

2. Select **Finish**.

It may take a minute or two for the settings you've configured to apply. If you need to refresh the data, follow the prompts. Setup will be incomplete if you exit GDAP Setup without selecting **Finish**. 

> [!NOTE]
> For customers with an existing DAP relationship, these settings are automatically applied. Customers with an Active status on the last page of GDAP Setup are assigned to roles and security groups as defined in the GDAP template.  

> [!NOTE]
> For customers without an existing DAP relationship, an admin relationship request link is generated for each customer on the last page of GDAP Setup. From there, you can send the link to your customer's Global Administrator so they can approve the GDAP relationship. Once the relationship is approved, rerun GDAP Setup to assign the security groups to the GDAP relationship created for that customer.

Once you've completed GDAP Setup, you can navigate to different steps to update or change roles, security groups, or templates. GDAP relationships are now visible in Partner Center and the security groups are now visible in Azure AD.

## Related content

[Overview of permissions](m365-lighthouse-overview-of-permissions.md) (article)\
[Troubleshoot error messages and problems](m365-lighthouse-troubleshoot.md) (article)\
[Configure portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction) (article)\
[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Azure Active Directory](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)\
[What is Azure AD entitlement management?](/azure/active-directory/governance/entitlement-management-overview) (article)
