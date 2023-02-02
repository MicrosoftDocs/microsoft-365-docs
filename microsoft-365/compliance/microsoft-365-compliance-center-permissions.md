---
title: "Permissions in the Microsoft Purview compliance portal"
description: Learn about managing permissions in the Microsoft Purview compliance portal.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.service: O365-seccomp
audience: ITPro
ms.topic: article
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
ms.custom: 
- admindeeplinkCOMPLIANCE
- admindeeplinkEXCHANGE
---

# Permissions in the Microsoft Purview compliance portal

The Microsoft Purview compliance portal supports directly  managing permissions for users who perform compliance tasks in Microsoft 365. This update means you'll no longer have to use the Office 365 Security & Compliance Center to manage permissions for compliance solutions. Using the new **Permissions** page in the compliance portal, you can manage permissions to users for compliance tasks in features like device management, Microsoft Purview Data Loss Prevention, eDiscovery, insider risk management, retention, and many others. Users can perform only the compliance tasks that you explicitly grant them access to.

To view the **Permissions** tab in the compliance portal, users need to be a global administrator or need to be assigned the *Role Management* role (a role is assigned only to the *Organization Management* role group). The *Role Management* role allows users to view, create, and modify role groups.

![Permissions page in Microsoft Purview compliance portal.](../media/m365-compliance-center-permissions.png)

Permissions in the compliance portal are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by most Microsoft 365 services, so if you're familiar with the permission structure in these services, granting permissions in the compliance portal will be familiar. It's important to remember that the permissions managed in the compliance portal don't cover the management of all the permissions needed in each individual service. You'll still need to manage certain service-specific permissions in the admin center for the specific service. For example, if you need to assign permissions for archiving, auditing, and MRM retention policies, you'll need to manage these permissions in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Relationship of members, roles, and role groups

A role grants permissions to do a set of tasks; for example, the Case Management role lets users work with eDiscovery cases.

A role group is a set of roles that enable users do their jobs across compliance solutions the compliance portal. For example, by adding users to the *Insider Risk Management* role group, designated administrators, analysts, investigators, and auditors are configured for the necessary insider risk management permissions in a single group. The compliance portal includes default role groups for tasks and functions for each compliance solution that you'll need to assign people to. Generally, we recommend simply adding individual users as members to the default compliance role groups as needed.

![Diagram showing relationship of role groups to roles and members.](../media/2a16d200-968c-4755-98ec-f1862d58cb8b.png)

## Permissions needed to use features in the compliance portal

To view all of the default role groups that are available in the compliance portal and the roles that are assigned to the role groups by default, see [Roles and role groups in the Microsoft 365 Defender and Microsoft Purview compliance portals](/microsoft-365/security/office-365-security/scc-permissions).

Managing permissions in the compliance portal only gives users access to the compliance features that are available within the compliance portal. If you want to grant permissions to other features that aren't in the compliance portal, such as Exchange mail flow rules (also known as transport rules), you'll need to use the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.

## Azure roles in the compliance portal

The roles that appear in the **Azure AD** > **Roles** section of the compliance portal **Permissions** page are Azure Active Directory roles. These roles are designed to align with job functions in your organization's IT group, making it easy to give a person all the permissions necessary to get their job done. You can view the users currently assigned to each role by selecting an Admin role and viewing the role panel details. To manage members of an Azure AD role, select Manage members in Azure AD. This choice redirects you to the Azure management portal.

|Role|Description|
|:---|:----------|
|**Global administrator**|Access to all administrative features in all Microsoft 365 services. Only global administrators can assign other administrator roles. For more information, see [Global Administrator / Company Administrator](/azure/active-directory/roles/permissions-reference#global-administrator--company-administrator).|
|**Compliance data administrator**|Keep track of your organization's data across Microsoft 365, make sure it's protected, and get insights into any issues to help mitigate risks. For more information, see [Compliance Data Administrator](/azure/active-directory/roles/permissions-reference#compliance-data-administrator).|
|**Compliance administrator**|Help your organization stay compliant with any regulatory requirements, manage eDiscovery cases, and maintain data governance policies across Microsoft 365 locations, identities, and apps. For more information, see [Compliance Administrator](/azure/active-directory/roles/permissions-reference#compliance-administrator).|
|**Security operator**|View, investigate, and respond to active threats to your Microsoft 365 users, devices, and content. For more information, see [Security Operator](/azure/active-directory/roles/permissions-reference#security-operator).|
|**Security reader**|View and investigate active threats to your Microsoft 365 users, devices, and content, but (unlike the Security operator) they do not have permissions to respond by taking action. For more information, see [Security Reader](/azure/active-directory/roles/permissions-reference#security-reader).|
|**Security administrator**|Control your organization's overall security by managing security policies, reviewing security analytics and reports across Microsoft 365 products, and staying up-to-speed on the threat landscape. For more information, see [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator).|
|**Global reader**|The read-only version of the **Global administrator** role. View all settings and administrative information across Microsoft 365. For more information, see [Global Reader](/azure/active-directory/roles/permissions-reference#global-reader).|
|**Attack simulation administrator**|Create and manage all aspects of attack simulation creation, launch/scheduling of a simulation, and the review of simulation results. For more information, see [Attack Simulation Administrator](/azure/active-directory/roles/permissions-reference#attack-simulation-administrator).|
|**Attack payload author**|Create attack payloads but not actually launch or schedule them. For more information, see [Attack Payload Author](/azure/active-directory/roles/permissions-reference#attack-payload-author).|
|

## Administrative units

Administrative units let you subdivide your organization into any unit that you want, and then assign specific administrators that can manage only the members of that unit. They also allow you to configure specific members to manage certain features for supported Microsoft Purview compliance solutions. For example, you could use administrative units to delegate permissions to administrators for each geographic region in a large multi-national organization or for grouping administrator access by department within your organization.

### Administrative units support in Microsoft Purview

The following Microsoft Purview compliance solutions support administrative units:

|**Solution**|**Description of support**|
|:-----------|:-------------------------|
| [Microsoft Purview Data Loss Protection](/microsoft-365/compliance/dlp-learn-about-dlp) | Includes support for associated alerts and [Activity Explorer](/microsoft-365/compliance/dlp-learn-about-dlp#dlp-activity-explorer) |
| [Microsoft Purview Information Protection](/microsoft-365/compliance/information-protection) | Includes support for [sensitivity labels](/microsoft-365/compliance/get-started-with-sensitivity-labels) |
|||

When you edit the role groups for these solutions, you can select individual accounts and then the **Assign admin units** option to select administrative units that have been defined in Azure Active Directory:

![Assign admin units option when you edit role groups.](../media/assign-admin-units.png)

These administrators, referred to as restricted administrators, can now select one or more of their assigned administrative units to automatically define the initial scope of policies that they create or edit. Only if administrators don't have administrative units assigned (unrestricted administrators), will they be able to assign policies to the entire directory without selecting individual administrative units.

> [!IMPORTANT]
> After you've assigned administrative units to members of the role groups, these restricted administrators will no longer be able to see and edit existing policies that support administrative units. However, there's no operational change to these policies and they remain visible and can be edited by unrestricted administrators.
> 
> Restricted administrators will also no longer be able to see historical data using features that support administrative units, such as activity explorer and alerts. Going forward, restricted administrators will be able to see this related data for their assigned administrative units only.

### Prerequisites for administrative units

Before configuring administrative units for Microsoft Purview compliance solutions, make sure your organization and users meet the following subscription and licensing requirements:

- [Azure Active Directory Premium licensing](/azure/active-directory/roles/admin-units-manage#prerequisites)
- Microsoft Purview licensing:
    - Microsoft 365 E5/A5/G5
    - Microsoft 365 E5/A5/F5/G5 Compliance and F5 Security & Compliance
    - Microsoft 365 E5/A5/F5/G5 Information Protection & Governance

### Configure and use administrative units

Complete the following steps to configure and use administrative units with Microsoft Purview compliance solutions:

1. [Create administrative units](/azure/active-directory/roles/admin-units-manage#create-an-administrative-unit) to restrict the scope of role permissions in Azure Active Directory (Azure AD).
2. [Add users and distribution groups](/azure/active-directory/roles/admin-units-members-add) to administrative units.
3. If creating a geographic region or department-based administrative units, configure administrative units with [dynamic membership rules](/azure/active-directory/roles/admin-units-members-dynamic).

    >[!NOTE]
    >You can't add groups to an administrative unit that uses dynamic membership rules. If needed, create two administrative units, one for users and one for groups.

4. Use any of the role groups from the Microsoft Purview compliance solutions that support administrative units to assign administrative units to members.

Now, when these restricted administrators create or edit policies that support administrative units, they can select administrative units so that only the users in those administrative units will be eligible for the policy:

- Unrestricted administrators don't have to select administrative units as part of the policy configuration. They can keep the default of the entire directory, or select one or more administrative units.

- Restricted administrators must now select one or more administrative units as part of the policy configuration.

Further into the policy configuration, unrestricted and restricted administrators can then refine their choice as before, by including or excluding (if supported) individual users and groups. However, if administrative units have been selected, **All** now represents all users in the selected administrative units rather than all users in the tenant. Similarly, the users that can included or excluded will be from the selected administrative units only.

For information about administrative units that are specific to each supported solution, see the following resources:

- [DLP policies](/microsoft-365/compliance/dlp-learn-about-dlp#dlp-is-part-of-the-larger-microsoft-purview-offering)
- [Sensitivity labels](/microsoft-365/compliance/get-started-with-sensitivity-labels#support-for-admininstrative-units)

## Add users to a compliance role group

Complete the following steps to add users to a compliance role group:

1. Sign into the permissions area of the compliance portal using credentials for an admin account in your Microsoft 365 organization, and go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a> to select the link to view and manage compliance roles in Microsoft 365.
1. Expand the **Compliance center** section and select **Roles**.
1. On the **Compliance center roles** page, select a compliance role group you want to add users to, then select **Edit role group** on the details pane.
1. Select **Choose members** from the left navigation pane, then select **Edit**.
1. Select **Add** and then select the checkbox for all users you want to add to the role group.
1. Select **Add**, then select **Done**.
1. Select **Save** to add the users to the role group. Select **Close** to complete the steps.

## Remove users from a compliance role group

Complete the following steps to remove users from a compliance role group:

1. Sign into the permissions area of the compliance portal using credentials for an admin account in your Microsoft 365 organization, and go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a> to select the link to view and manage compliance roles in Microsoft 365.
1. Expand the Compliance center section and select **Roles**.
1. On the **Compliance center roles** page, select a compliance role group you want to remove users from, then select **Edit role group** on the details pane.
1. Select **Choose members** from the left navigation pane, then select **Edit**.
1. Select **Remove** and then select the checkbox for all users you want to remove from the role group.
1. Select **Remove**, then select **Done**.
1. Select **Save** to remove the users from the role group. Select **Close** to complete the steps.

## Create a custom role group

Complete the following steps to create a custom role group:

1. Sign into the permissions area of the compliance portal using credentials for an admin account in your Microsoft 365 organization, and go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a>.
1. On the **Permissions & roles** page, select **Compliance center > Roles**.
1. On the **Compliance center roles** page, select **Create**.
1. On the **Name your role group** page, enter a name for the custom role group in the **Name** field. The name of the role group cannot be changed after creation of the role group. If needed, enter a description for the custom role group in the **Description** field. Select **Next** to continue.
1. On the **Choose roles** page, select **Choose roles**.
1. Select **Add**, then choose the roles to add to the custom role group. Select **Add** to add the role group, then select **Done**.
1. Select **Next** to continue.
1. On the **Choose members** page, select **Choose members**.
1. Select **Add**, then choose the members to add to the custom role group. Select **Add** to add the members, then select **Done**.
1. Select **Next** to continue.
1. On the **Review your settings** page, review the details for the custom role group. If you need to edit the information, select **Edit** in the appropriate section. When all the settings are correct, select **Create role group** to create the custom role group or select **Cancel** to discard the changes and not create the custom role group.

## Update a custom role group

Complete the following steps to update a custom role group:

1. Sign into the permissions area of the compliance portal using credentials for an admin account in your Microsoft 365 organization, and go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a>.
1. On the **Permissions & roles** page, select **Compliance center > Roles**.
1. On the **Compliance center roles** page and select the role group to update.
1. On the details pane for the selected role group, select **Edit role group**.
1. On the **Editing role group name** page, update the description for the custom role group in the **Description** field. The name of the custom role group cannot be changed.
1. On the **Choose roles** page, select **Edit** to update the roles assigned to the role groups.
1. Select **Add**, then choose the roles to add to the custom role group. Select **Add** to add the role group, then select **Done**.
1. On the **Choose members** page, select **Edit**.
1. Select **Add**, then choose the members to add to the custom role group. Select **Add** to add the members, then select **Done**.
1. Select **Save** to save updated *Description*, *Role groups*, and *Members* values.
1. On the details pane for the selected role group, select **Close**.

## Delete a custom role group

Complete the following steps to update a custom role group:

1. Sign into the permissions area of the compliance portal using credentials for an admin account in your Microsoft 365 organization, and go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">**Permissions**</a>.
1. On the **Permissions & roles** page, select **Compliance center > Roles**.
1. On the **Compliance center roles** page and select the role group to update.
1. On the details pane for the selected role group, select **Delete role group**.
1. On the **Warning** dialog, select **Yes** to delete the role group or select **No** to cancel the deletion process.
