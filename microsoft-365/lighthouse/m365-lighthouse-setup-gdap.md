---
title: "Set up GDAP in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 08/16/2024
audience: Admin
ms.topic: how-to
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to set up granular delegated admin privileges (GDAP) for the customer tenants that you manage."
---

# Set up GDAP in Microsoft 365 Lighthouse

Granular delegated admin privileges (GDAP) are a prerequisite for customer tenants to be fully onboarded to Lighthouse. You can set up all your customers with GDAP through Microsoft 365 Lighthouse. By setting up GDAP for the customer tenants that you manage, you help keep your customers secure while ensuring users in your partner organization have the permissions necessary to do their work.

To walk through how to set up GDAP in your partner organization, complete the [Secure Microsoft 365 Lighthouse interactive guide](https://go.microsoft.com/fwlink/p/?linkid=2281856).

If you encounter any problems during GDAP setup and need guidance, see [Troubleshoot error messages and problems in Microsoft 365 Lighthouse: GDAP setup and management](m365-lighthouse-troubleshoot.md#gdap-setup-and-management).

## Before you begin

- You need specific permissions in the partner tenant:

  - To establish GDAP security groups, add users, and create GDAP templates, you must be an Administrator in Lighthouse. This role can be assigned from the **Lighthouse permissions** page by someone in your partner tenant who has the appropriate permissions.

  - To create and complete GDAP relationships, in addition to being an Administrator in Lighthouse, you must also be an Admin agent in Partner Center.

- The customers you manage in Lighthouse need to be set up in Partner Center with either a reseller relationship or an existing GDAP relationship.

> [!NOTE]
> Lighthouse GDAP templates use role-assignable security groups. A Microsoft Entra ID P1 license is required to add users to these groups. To enable Just-in-Time (JIT) roles, Microsoft Entra IDE Governance or a Microsoft Entra ID P2 license is required.

## Set up GDAP

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Home**.

2. On the **Set up GDAP** card, select **Set up GDAP**.

3. On the **Delegated access** page, select the **GDAP templates** tab, and then select **Create a template**.

4. In the **Create a template** pane, enter a name for the template and an optional description.

5. Under **Support roles**, Lighthouse includes five default support roles: Account manager, Service desk agent, Specialist, Escalation engineer, and Administrator. For each support role that you want to use, do the following:
    1. Select **Edit** to open the **Edit support role** pane.

    2. Update the support role name and description, as needed, to align with the support roles in your partner organization.
    
    3. Under **Entra roles**, select the Microsoft Entra roles that the support role requires based on the role's job function. The following options are available:
        - Use the Microsoft Entra roles that Microsoft recommends. 
        - Set the filter to **All** and select your preferred Microsoft Entra roles.
      
        To learn more, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).
        > [!NOTE]
        > Certain Microsoft Entra roles can't be added to multiple support roles—for example, the Microsoft Entra roles for the Administrator support role can't be added to any other support role.   

    4. Select **Save**.

6. For each support role that you want to use, select the **Add or create a security group** icon next to the support role to open the **Select or create a security group** pane. If you don't want to use a particular support role, don't assign any security groups to it.
 
    > [!NOTE]
    > Each GDAP template requires you to assign at least one role-assignable security group to a support role. 

7. Do one of the following:
    - Select **Use an existing security group**, choose one or more security groups from the list, and then select **Save**.
    - Select **Create a new security group**, enter a name and optional description for the new security group, add users to the security group, and then select **Save**.

8. When you're done defining the support roles and security groups, select **Save** in the **Create a template** pane to save the GDAP template.

   The new template now appears in the list of templates on the **GDAP templates** tab of the **Delegated access** page. 

9. Follow steps 3 through 8 to create additional GDAP templates, as needed.

10. On the **GDAP templates** tab of the **Delegated access** page, select the three dots (more actions) next to a template in the list, and then select **Assign template**.

11. In the **Assign this template to tenants** pane, choose one or more customer tenants that you want to assign the template to, and then select **Next**.

    > [!NOTE]
    > Each customer tenant can be associated with only one GDAP template at a time. If you want to assign a new template to a customer, the existing GDAP relationships are saved and only new relationships based on the new template are created.

12. Review the assignment details, and then select **Assign**.
 
    It might take a minute or two for the GDAP template assignments to apply. To refresh the data on the **GDAP templates** tab, select **Refresh**.

13. Follow steps 10 through 12 to assign additional templates to tenants, as needed.

## Obtain customer approval to administer their products

As part of the GDAP setup process, a GDAP relationship request link is generated for each customer who doesn't have an existing GDAP relationship with your partner organization. You'll need to send the link to the appropriate customer contact so they can approve the GDAP relationship before you can administer their products for them.

1. On the **Delegated access** page, select the **Relationships** tab.

2. Expand the customer tenant whose approval you require.

3. Select the GDAP relationship that shows a **Pending** status to open the relationship details pane.

4. Select either **Open in email** or **Copy email to clipboard**, edit the text if needed (but don't edit the link URL that they need to select to give you administration permission), and then send the GDAP relationship request to your customer.

Once the GDAP relationship request is approved, the GDAP template settings are applied. It might take up to an hour after relationship approval for changes to appear in Lighthouse.
 
GDAP relationships are visible in Partner Center and the security groups are visible in Microsoft Entra ID.

## Edit GDAP settings

Once you complete GDAP setup, you can update or change roles, security groups, or templates at any time.

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Permissions** > **Delegated access**.

2. On the **GDAP templates** tab, make any necessary changes to the GDAP templates or their associated configurations, and then save your changes.

## Related content

[Overview of permissions](m365-lighthouse-overview-of-permissions.md) (article)\
[Troubleshoot error messages and problems](m365-lighthouse-troubleshoot.md) (article)\
[Configure portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction) (article)\
[Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Microsoft Entra ID](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)\
[What is Microsoft Entra entitlement management?](/azure/active-directory/governance/entitlement-management-overview) (article)
