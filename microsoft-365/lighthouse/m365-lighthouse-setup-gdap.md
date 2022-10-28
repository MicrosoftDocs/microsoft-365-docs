---
title: "Set up GDAP for your customers"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: magarlan, chrigreen
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to set up GDAP for your customers."
---

# Set up GDAP for your customers


> [!NOTE]
> This feature is rolling out at different speeds to our customers. If you aren't see this feature yet, you should see it soon.

Partners onboarded to Microsoft 365 Lighthouse can now set up all their customers with Granular Delegated Administrative Privileges (GDAP) through Lighthouse, regardless of their licenses or size. Lighthouse enables partners to quickly transition their organization to GDAP and begin the journey to least-privilege for their delegated access to customers. By setting up your organization with GDAP for the customer tenants you manage, users in your organization have the permissions necessary to do their work while keeping customer tenants secure.

Delegated access via DAP or GDAP is a prerequisite for customers to be fully onboard to Lighthouse. Therefore, creating GDAP relationships may be the first step in managing your customers in Lighthouse.

During the GDAP setup process, you'll assign roles to tiers of job functions for employees in your organization and then create GDAP templates that will assign those tiered roles to specific security groups with users for groups of customers. GDAP roles are scoped to [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference), and when you set up GDAP, you'll see recommendations for a set of roles needed for each tier.

## Before you begin

- You'll need to have specific permissions in your own tenant:

  - To establish GDAP security groups and add users, you'll need Global Administrator, User Administrator, or Groups Administrator to set up users with standing access to GDAP roles. You can assign these roles in Azure Active Directory (ADD).

    - To enable the just-in-time (JIT) Only tier, you'll need to have Global Administrator or a combination of User Administrator and Privilege Role Administrator.

  - To create and complete GDAP relationships, you must be a member of the Admin Agents group in Partner Center.

- Any customer can be managed by a Lighthouse partner, if they're set up in Partner Center with either a reseller relationship or an existing delegated relationship (DAP or GDAP).

- To enable the JIT Only tier permissions, you'll also need an Azure AD P2 license.

## Set up GDAP for the first time

When you set up GDAP for the first time, you must complete the following sections in order. Once completed, you can come back and edit any section as needed.

To get started:

1. In the left navigation in Lighthouse, select **Home.**

2. On the **Set up GDAP for your organization** card, select **Begin setup.**

3. Complete the following sections in order.

    [Step 1: Define tiers of permissions](#step-1-define-tiers-of-permissions)

    [Step 2: Create GDAP templates](#step-2-create-gdap-templates)

    [Step 3: Create security groups](#step-3-create-security-groups)

    [Step 4: Assign customer tenants](#step-4-assign-customer-tenants)

    [Step 5: Review settings](#step-5-review-settings)

### Step 1: Define tiers of permissions

Choose the roles needed for each tier based on your employees' job functions.

1. From the **Define tiers of permissions** page, select the roles needed for each tier based on your employees' job functions. You can

    - Adopt recommended configurations, or

    - Manually assign a role to each tier.

2. Select **Next** to go to the next section or select **Save and close** to save your settings and exit GDAP Setup.

You can rename tiers to match your organizational needs. You can remove roles from each tier within the recommendations. Certain roles can't be added to different tiers – for example, the roles in the JIT Only tier can't be added to any other tier.

### Step 2: Create GDAP templates

A GDAP template is a collection of:

- Tiers with roles

- Security groups per tier

- Users in each security group
 
To create a GDAP template:

1. From the **Create GDAP templates** page, select **Create template**.

2. In the template pane, enter template name and description into the appropriate fields.

3. Select one or more tiers from the list.

4. Select **Save**.

5. Select **Next** to go to the next section, or select **Save and close** to save your settings and exit GDAP Setup.

### Step 3: Create security groups

You'll need at least one security group per tier for each template. For the first template, you'll create a new security group, but on subsequent templates, you may reuse groups if desired.

1. From the **Create security groups** page, select **Create security group**.

2. In the security group pane, enter name and description.

3. Select **Add users**.

4. From the Add users list, select the users you want to include in this security group.

5. Select **Save.**

6. Select **Save** again.

7. Select **Next** to go to the next section or select **Save and close** to save your settings and exit GDAP Setup.

### Step 4: Assign customer tenants

Assign groups of customers to each template. Each customer can only be assigned to one template, so once selected, that customer tenant won't be displayed as an option on subsequent templates.

If you want to reassign a customer tenant, rerun GDAP Setup and deselect that customer from the existing assignment. Then you can reassign it to a different template. You can filter the list using the search box in the upper right corner.

1. From the **Assign customer tenants** page, select the tenants you want to associate with the security group you created.

2. Select **Next** to go to the next section or select **Save and close** to save your settings and exit GDAP Setup.

### Step 5: Review settings

1. From the **Review settings** page, review the settings you created and then select **Finish.**

2. Select **Done.**

If any customer tenants already had a DAP relationship, during the no consent window, these settings will be automatically applied. For customers without DAP, or if the no consent window has closed, choosing **Finish** will take you to the last page where a consent links are generated for each customer as needed. Once the customer consents to the GDAP relationship, the rest of the settings will be automatically applied.

Once you've completed GDAP setup, you can navigate to different steps to make any updates or changes to tiers, roles, security groups, or templates. The GDAP relationships will also be visible in Partner Center, and the security groups will be visible in Azure AD as well.

## Related content

[Overview of permissions](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction) (article)\
[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Azure Active Directory](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)\
[What is Azure AD entitlement management?](/azure/active-directory/governance/entitlement-management-overview) (article)
