---
title: "Manage volume licensing user roles"
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: aasthatiwari, atuldubey
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-volume-licensing
ms.collection:
- Tier1
- scotvorg
ms.custom:
- commerce_vl
- AdminTemplateSet
service.tree.id: e6e1ea2a-04a0-4f78-bc75-7d45c90eee39
search.appverid: MET150
ms.localizationpriority: medium
description: "Learn how to manage volume licensing user roles in the Microsoft 365 admin center."
ms.date: 11/13/2025
---

# Manage volume licensing user roles

Volume licensing (VL) roles grant users access to VL pages in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Users who only have a VL role but don't have another admin center role can only access VL pages and can't access other pages in the admin center.

VL roles are assigned by one of the following people:

- A VL Administrator of the agreement who adds you as a user and invites you to sign in to register. If you're an Enterprise Agreement (EA) or Enterprise subscription (EAS) customer, you don't receive an invitation to sign in to register. Instead, the administrator of the VL agreement grants you access.
- A partner or seller who assigns you a role during the contract creation process.

> [!NOTE]
> If you’re an EA or EAS customer, you can use the [Billing Role Assignments API](/rest/api/billing/billing-role-assignments?view=rest-billing-2024-04-01&preserve-view=true) for VL user management.

## Before you begin

- You must have a VL role to access the VL pages in the Microsoft 365 admin center.
- VL roles are managed by the VL Administrator and don't provide visibility or permissions to other areas of the admin center beyond the VL pages.  

> [!NOTE]
> Global Administrators in the admin center don't have access to VL features. It's up to the VL agreement administrator to add any users, including Global Administrators, who might want access to specific Agreements (License IDs). For more information, see [Commonly used Microsoft 365 admin center roles](../../admin/add-users/about-admin-roles.md#commonly-used-microsoft-365-admin-center-roles), and [Volume licensing roles](../../admin/add-users/about-admin-roles.md#volume-licensing-roles).

## Understand volume licensing roles

There are seven distinct VL roles that you can assign for each Agreement (License ID). Each role permits specific actions in the admin center to manage VL.

The following table shows the relationship between VL roles in the retired Volume Licensing Service Center (VLSC) and VL roles in the Microsoft 365 admin center and lists the actions those roles can take.

| Microsoft 365 admin center role | (Retired) VLSC role | Allowable actions         |
|---------------------------------|---------------------|---------------------------|
| Administrator                   | Administrator       | Can assign, edit, and remove VL user permissions. Can perform all actions granted to other VL roles, except for viewing invoices.<br/><br/>If you're an EA or EAS customer, the Administrator can view invoices. |
| License position reader         | Licensing Info Viewer | Can view contract details, orders, and contract keys, and create license summaries. |
| Product download manager        | Download             | Can view contracts and download licensed Microsoft software products. |
| Product keys reader             | Product Keys         | Can view contracts and contract keys, manage activation and redemption of online services, and view keys on the **Products and services** page. |
| Benefits reader                 | Software Assurance Manager | Can view contracts and manage Workplace Discount Software Assurance entitlements. |
| Online services manager         | Online Services Manager    | Can view contracts and orders, reserve online services, manage activation and redemption of online services, and manage subscriptions on the **Billing** > **Licenses** page. |
| Invoice Reader                  | N/A                        | Can view contracts, the list of invoices, and can download invoices.<br/><br/>This role is automatically assigned to the person listed on the licensing contact as the **Bill To** contract and can’t be assigned to the VL admin.<br/><br/>If you're an EA or EAS customer, the Invoice Reader role isn't assigned to the **Bill To** contact. The VL Administrator can view the invoices or assign the Invoice Reader role to any user. |

## Understand the volume licensing administrator role

By default, the VL Administrator role is assigned to the Notices Contact, or the Primary Contact provided by your Microsoft partner or seller when they set up your VL contract. If you're an EA or EAS customer, when the VL contract is activated, the VL Administrator role is only assigned to the Notices Contact.

When these contacts sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, they can assign the VL Administrator role to other users. Those users can then access the Agreement (License ID) in the admin center without being listed on the original VL contract.

If you're an EA or EAS customer, when a VL contract is activated by your Microsoft partner or seller, the Online Services Manager (OSM) listed on the agreement is assigned the VL Administrator role in the Microsoft 365 admin center. However, if the OSM contact on the VL contract isn't a Microsoft Entra ID account, they won't receive the VL Administrator role in admin center, but they will still receive the Tenant Discovery email.

> [!NOTE]
> For privacy reasons, we don’t provide names of VL Administrators associated with your organization. Ask your organization's partner or seller what contact information they provided to Microsoft for your VL contract. If necessary, your organization's purchasing, finance, or IT departments might be able to identify your Microsoft Reseller from your organization's purchasing records.

## Change the volume licensing admin for the Microsoft 365 admin center

### If you already have a volume licensing user profile in the Microsoft 365 admin center

When you sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, you can view and manage the Agreements (License IDs).

If you no longer want to be a VL Administrator, you must first assign the VL Administrator role to another user. The new VL Administrator can then remove your VL Administrator permissions. You must repeat this process for each License ID.

### If you don’t have a volume licensing user profile in the Microsoft 365 admin center

**For non-EA and non-EAS customers only:** If you're named as a Primary or Notice contact for a contract, you receive a welcome email inviting you to create your VL user profile in the admin center. Alternatively, you can choose to forward the email to someone else who can register and become the VL Administrator in the admin center, instead.

**For EA and EAS customers only:** If you're named as a Notice contact for a contract, you receive an email regarding permission for the admin center.

### Change the Primary or Notice Contact information on the licensing contract

If you want to change who is named on a VL contract with a role such as Primary Contact or Notice Contact, contact your Microsoft partner or seller to process a Change of Contact Information Request to update the License IDs that list you with this role.

Updating the Notices Contact information on active VL contracts helps ensure that any Microsoft or partner communications are received.

If you're an EA or EAS customer, when you update the Notice Contact, you don’t get the VL Administrator role, and must ask an existing VL Administrator on the agreement to add you. If there are no active VL Administrators on the agreement, you must submit a change in contact information request via your partner. Next, [contact volume licensing support](contact-vl-support.md) to submit a support request confirming the agreement (License ID) and the Entra ID that you want to use to access the agreement in the Microsoft 365 admin center.

> [!NOTE]
> You don't have to continually update legal participant roles on VL contracts that are no longer active. After there's at least one active VL Administrator for each License ID, the licenses remain accessible to your organization, and you can add or remove administrators.  

## View existing volume licensing users

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Role assignments** section, select ****Manage VL role assignments**. The **Manage Assignments** page opens and contains a list of VL users for the License IDs that you administer.
3. Select **View access** for a user to view the License IDs for which they have permissions.

## Understand the Manage Assignments page

The **Manage Assignments** page contains a list of all the VL users that you invited and includes information like their status and the VL roles that you assigned to them. The following table explains each column in the list.

| Column name            | Description |
|------------------------| ------------|
| Display name           | The user's full name. The display name is automatically populated for users who belong to the tenant. If you add external VL users who don't belong to the tenant, make sure that you enter the full name of the user. |
| Status                 | Indicates the status of the user. For a list of explanations for the possible status, see the next table in this section. |
| Actions                | Indicates the action you can take for the user. For example, **View access**, **Resend invite**, and **Reset invite**.<br/><br/>**NOTE**<br/>If you're an EA or EAS customer, **Resend invite** and **Reset invite** actions don’t apply. |
| Sign-in email          | The email address used to sign in to admin center. In most cases, this address is the user's work email, but formats like user\@userorg.onmicrosoft.com are also possible. For non-EAS and EAS customers, the inclusion of this email is useful for organizations that don't have Microsoft Entra enabled. |
| Business email         | For non-EAS and EAS customers, the email address listed on the VL contract – typically the email address of the Primary Contact or Notices Correspondent. When you add new VL users, the invitation is sent to the **Business email** address so that the admin can then forward it to the new user. |
| Volume licensing roles | Lists the VL roles assigned to the user. |

The following table lists the statuses that you might see in the **Status** column on the **Manage Assignments** page.

| Status                 | Description       |
|------------------------|-------------------|
| Active                 | The user profile is active. The user can use their Microsoft Entra ID to sign in to the admin center to view and manage their VL agreements. |
| Assignment in Progress | A VL Administrator assigned the permissions, and no further edits can be made until the status is active. The status update might take up to two hours during peak processing periods. |
| Failed                 | The permissions assignment failed. VL Admins should assign permissions to the user again. If role assignment continues to fail, contact support to help investigate the problem. |
| Invitation sent        | The user has yet to register their assigned permissions and create their VL user profile by accepting the invitation email. |
| Invitation expired     | The user failed to register their assigned permissions by accepting the invitation email. The VL admin can reset the invitation. |
| User not found         | The user isn't in the organization's tenant. |

## Assign roles to volume licensing users

### Step 1. Add new users

Add new users who don't already have VL permissions.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Role assignments** section, select **Assign users to contracts**.
3. Select **Add or edit users**.
4. **For non-EA and non-EAS customers only:** Search for users you want to add by entering their email address.

   - Users with an email address managed by your organization are listed for selection and are added as "Internal user."
   - If you search for a user with an email address not managed by your organization, you see the message "No results found. Press enter to save." You can add the user as an "External user," which provides access only to VL information.
   - If a user's business email is different from their sign-in ID, use the sign-in ID.

5. **For EA and EAS customers only:** Search for users you want to add by entering their sign-in ID (work or school account).

   - If you search for a user with a sign-in ID not managed by your organization, you see the message "No results found” and can’t continue with role assignment. Ask the tenant administrator to create a sign-in ID (work or school account) for the user.
   - Role assignment can’t be done for a business email that's different from the sign-in ID (work or school account).

6. Select **Review + Apply**.
7. Continue to [Step 2. Assign users to contracts](#step-2-assign-users-to-contracts).

### Step 2. Assign users to contracts

1. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297442" target="_blank">Assign users to contracts</a> page, select the expand button next to a user, then select **Add contracts** to see a list of all license IDs for which you're an administrator.
2. Select the License ID contracts you want to assign to the selected user, then select **Add**.
3. If you're an admin for a parent agreement or a Microsoft Business and Services Agreement (MBSA), you can expand the list to all Agreements (License IDs) under that parent contract by selecting **Show inherited contracts**. As an "inherited admin" you can assign users to any Agreement (License ID) under the parent agreement. However, if you aren't an agreement administrator for the specific Agreement (License ID), these users aren't listed on the **Assigned** tab on the **Manage Assignments** page.

    > [!TIP]
    > VL Administrators with inherited permissions can assign themselves an admin role on a particular Agreement (License ID) and then see any users they added to inherited contracts.
4. When you return to the **Assign users to contracts** page, expand the user details again. You now see the list of License IDs that you assigned to that user.
5. Continue to [Step 3. Assign roles to users](#step-3-assign-roles-to-users).

### Step 3. Assign roles to users

After the Agreement (License ID) is selected, assign the VL roles. A user might have different VL roles for different Agreements (License IDs).

1. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297442" target="_blank">Assign users to contracts</a> page, select the expand button next to a user, then select **Assign roles**. You see a list of all the Agreements (License IDs) that you selected in the previous step.
2. In the **Assign roles to selected contracts** pane, select one or more roles from the **Volume licensing roles** drop-down list.
3. To assign the same VL roles for other license IDs, select **Copy role properties**. Select other license IDs that you want to assign the same roles for, then select **Paste role properties**.
4. Select **Apply**.
5. When you return to the **Assign users to contracts** page, you see that the user's details now include the new VL roles.
6. To save the updates, select **Verify and save user assignments**.

   - **Non-EA and non-EAS customers only:** Users receive a welcome email from microsoft-noreply\@microsoft.com with the subject line "Action required: Sign in to manage your volume licensing assets."
   - **EA and EAS customers only:** Users receive a notification email from microsoft-noreply@microsoft.com with the subject Line "Permission changes for Microsoft Volume Licensing contracts."

New users can access and manage the Agreement (License IDs) based on the VL roles that you assigned to them. For non-EA and non-EAS customers, License IDs are available approximately two hours after registration is complete.

## Import roles in volume licensing agreements (EA and EAS customers only)

If you’re a VL Administrator for an EA or EAS agreement, you can copy the VL user roles from one agreement to another in the Microsoft 365 admin center. This import streamlines the renewal process by copying multiple roles from one agreement to another, instead of requiring individual user assignment.

> [!IMPORTANT]
> You must have the administrator role to both the source and target enrollments to use the following steps.

1. In the admin center, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.
3. On the **Contracts** page, select a target License ID, then select the three dots (More actions), and then select **Import roles**.
4. In the **Import roles** pane, from the **Import from (Source enrollment)** drop-down, select the source enrollment from which you want to import roles. After the source enrollment is selected, you see the list of users who have permissions on the source enrollment along with their respective roles.
5. Select one or more users for which to copy roles. You can’t make changes to these roles.
6. Select **Continue**.
7. Select the **Accept and agree to the above declaration** check box, then select **Submit**.

Because the imported users already have access to a VL contract, they see the new contract in the VL section of the Microsoft 365 admin center. The imported users receive an email with information regarding their permissions added to the admin center.

> [!NOTE]
> The import roles feature isn’t available to the Parent Agreement (previously called Master Agreement), include Enterprise Agreement, Select Plus Agreement, and Microsoft Business and Services Agreement (MBSA). VL admins can use the Manage VL Role Assignment functionality to assign user roles to these agreement types. To assign user roles, see [Step 1. Add new users](#step-1-add-new-users).

## Edit or remove permissions of existing volume licensing users

When you delete a VL user, the VL permissions assigned to that user are removed for all the license IDs to which they were assigned, and the user is removed from the **Manage Assignments** list.

Access to VL information in the admin center is removed as soon as a user is removed from their organization's Microsoft Entra ID (tenant). However, the user is still displayed on the **Manage Assignments** page until a VL Administrator removes the user from all license IDs.

> [!NOTE]
> This procedure doesn't delete a user’s account from their organization. It only removes a user’s permission to the VL information in the admin center.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Role assignments** section, select **Manage VL role assignments**.
3. Find the user you want to manage and select **View access**.
4. In the details pane, select the **Volume licensing roles** drop-down list for the License ID that you want to change, then either select or clear the check boxes for the roles you want to add or remove.
5. Select **Verify and save changes**.

An email is sent to notify the user of the changes with the subject line "Permission changes for Microsoft Volume Licensing contracts."

It can take up to two hours for the role change to be reflected on the **Manage assignments** page. For newly processed agreements, it can take up to 10 hours for contract changes to take effect.

> [!NOTE]
> A VL admin can't edit or remove permissions of a user whose permissions on a License ID are inherited from the higher-level agreement (the parent agreement or MBSA).

## Apply admin permissions to all license IDs under a parent program

If you're the Primary Contact (non-EA and non-EAS customers only), Notices Contact, or Online Administrator Contact named on an MBSA, you can opt in to inherit VL admin permissions on every Agreement (License ID) added under that MBSA.

To view or change your opt-in preferences, use the following steps.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Preferences** section, select **Edit preferences**.
3. To opt in to get inherited admin permissions on all license IDs tied to the parent level contract you're the admin for, select **Yes**.

## Contact volume licensing support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you can't access the admin center, see [Contact volume licensing support](contact-vl-support.md).
