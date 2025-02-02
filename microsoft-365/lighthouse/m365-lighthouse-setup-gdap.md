---
title: "Set up GDAP in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 12/20/2024
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to set up granular delegated administrative privileges (GDAP) for the customer tenants that you manage."
---

# Set up GDAP in Microsoft 365 Lighthouse

Granular delegated administrative privileges (GDAP) are a prerequisite for customer tenants to be fully onboarded to Lighthouse. You can set up all your customers with GDAP through Microsoft 365 Lighthouse. By setting up GDAP for the customer tenants that you manage, you help keep your customers secure while ensuring users in your partner organization have the permissions necessary to do their work.

To walk through how to set up GDAP in your partner organization, complete the [Secure Microsoft 365 Lighthouse interactive guide](https://go.microsoft.com/fwlink/p/?linkid=2281856).

If you encounter any problems during GDAP setup and need guidance, see [Troubleshoot error messages and problems in Microsoft 365 Lighthouse: GDAP setup and management](m365-lighthouse-troubleshoot.md#gdap-setup-and-management).

## Before you begin

- You must hold specific roles in Microsoft Entra ID and/or Partner Center, as outlined in the [Delegated Access Role Requirements table](m365-lighthouse-delegated-access-overview.md#role-requirements).

- The customers you manage in Lighthouse need to be set up in Partner Center with either a reseller relationship or an existing GDAP relationship.

## Watch: Set up GDAP
> [!VIDEO 0c8acb10-8178-4dd5-b0e8-dddc74e83684]
Check out the other [Microsoft 365 Lighthouse videos](https://www.youtube.com/playlist?list=PLnWjfDdQkUQSCbV-ftVD311_fZxghB22C) on our YouTube channel.

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

    4. Select **Save**.

6. For each support role that you want to use, select the **Add or create a security group** icon next to the support role to open the **Select or create a security group** pane. If you don't want to use a particular support role, don't assign any security groups to it.
 
    > [!NOTE]
    > Each GDAP template requires you to assign at least one security group to a support role. 

7. Do one of the following:
 
    - To use an existing security group, select **Use an existing security group**, choose one or more security groups from the list, and then select **Save**.

    - To create a new security group, select **Create a new security group**, and then do the following:
 
        1. Enter a name and optional description for the new security group.
    
        2. If applicable, select **Create a just-in-time (JIT) access policy for this security group**, and then define the user eligibility expiration, JIT access duration, and JIT approver security group.
         
            > [!NOTE]
            > To create a just-in-time (JIT) access policy for a new security group, you must have a Microsoft Entra ID P2 license. If you're unable to select the checkbox to create a JIT access policy, verify that you have a Microsoft Entra ID P2 license.
    
        3. Add users to the security group, and then select **Save**.
        
            > [!NOTE]
            > Users who are part of a JIT agent security group are not automatically given access to GDAP roles in Microsoft Entra ID. These users must first request access from the <a href="https://myaccess.microsoft.com/#/access-packages" target="_blank">My Access portal</a> and a member of the JIT approver security group must review the JIT access request.
    
        4. If you created a JIT access policy for the security group, you can review the created policy on the <a href="https://entra.microsoft.com/#view/Microsoft_Azure_IdentityGovernance/Dashboard.ReactView" target="_blank">Identity Governance dashboard</a> in the Microsoft Entra admin center. 
        
            For more information on how JIT agents can request access, see [Request access to an access package in entitlement management](/entra/id-governance/entitlement-management-request-access).

            For more information on how approvers can approve requests, see [Approve or deny requests for Microsoft Entra roles in Privileged Identity Management](/entra/id-governance/privileged-identity-management/pim-approval-workflow). 

8. When you're done defining the support roles and security groups, select **Save** in the **Create a template** pane to save the GDAP template.

   The new template now appears in the list of templates on the **GDAP templates** tab of the **Delegated access** page. 

9. Follow steps 3 through 8 to create more GDAP templates, as needed.

10. On the **GDAP templates** tab of the **Delegated access** page, select the three dots (more actions) next to a template in the list, and then select **Assign template**.

11. In the **Assign this template to tenants** pane, choose one or more customer tenants that you want to assign the template to, and then select **Next**.

    > [!NOTE]
    > Each customer tenant can be associated with only one GDAP template at a time. If you want to assign a new template to a customer, the existing GDAP relationships are saved and only new relationships based on the new template are created.

12. Review the assignment details, and then select **Assign**.
 
    It might take a minute or two for the GDAP template assignments to apply. To refresh the data on the **GDAP templates** tab, select **Refresh**.

13. Follow steps 10 through 12 to assign additional templates to tenants, as needed.

## Obtain customer approval to administer their products

As part of the GDAP setup process, a GDAP relationship request link is generated for each customer who doesn't have an existing GDAP relationship with your partner organization. Before you can administer products for them, you need to send the link to an administrator in the customer tenant so they can select the link to approve the GDAP relationship.

1. On the **Delegated access** page, select the **Relationships** tab.

2. Expand the customer tenant whose approval you require.

3. Select the GDAP relationship that shows a **Pending** status to open the relationship details pane.

4. Select either **Open in email** or **Copy email to clipboard**, edit the text if needed (but don't edit the link URL that they need to select to give you administration permission), and then send the GDAP relationship request email to an administrator in the customer tenant.

Once the administrator in the customer tenant selects the link to approve the GDAP relationship, the GDAP template settings are applied. It might take up to an hour after relationship approval for changes to appear in Lighthouse.
 
GDAP relationships are visible in Partner Center and the security groups are visible in Microsoft Entra ID.

## Edit GDAP settings

Once you complete GDAP setup, you can update or change roles, security groups, or templates at any time.

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Permissions** > **Delegated access**.

2. On the **GDAP templates** tab, make any necessary changes to the GDAP templates or their associated configurations, and then save your changes.

3. Assign the updated GDAP templates to the appropriate customer tenants so those tenants have the updated configurations from the templates.

## Related content

[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Overview of the Delegated access page in Microsoft 365 Lighthouse](m365-lighthouse-delegated-access-overview.md) (article)\
[Troubleshoot error messages and problems in Microsoft 365 Lighthouse](m365-lighthouse-troubleshoot.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Introduction to granular delegated admin privileges (GDAP) - Partner Center](/partner-center/gdap-introduction) (article)\
[Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Learn about groups and access rights in Microsoft Entra ID](/azure/active-directory/fundamentals/concept-learn-about-groups) (article)\
[What is Microsoft Entra entitlement management?](/azure/active-directory/governance/entitlement-management-overview) (article)
