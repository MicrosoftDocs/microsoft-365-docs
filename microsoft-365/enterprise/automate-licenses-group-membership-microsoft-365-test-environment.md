---
title: "Automate licensing and group membership for your Microsoft 365 for enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/09/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-identity-device-management
ms.custom: 
- TLG
- Ent_TLGs
description: "Configure group-based licensing and dynamic group membership in your Microsoft 365 for enterprise test environment."
---

# Automate licensing and group membership for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

Group-based licensing automatically assigns or removes licenses for a user account based on group membership. Dynamic group membership adds or removes members to a group based on user account properties, such as **Department** or **Country**. This article steps you through demonstrations of both adding and removing group members in your Microsoft 365 for enterprise test environment.

Setting up auto-licensing and dynamic group membership in your Microsoft 365 for enterprise test environment involves two phases:

- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Configure and test dynamic group membership and automatic licensing](#phase-2-configure-and-test-dynamic-group-membership-and-automatic-licensing)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to only test automated licensing and group membership in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test automated licensing and group membership in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It's provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization.
  
## Phase 2: Configure and test dynamic group membership and automatic licensing

First, create a new group named Sales, and add a dynamic group membership rule so that user accounts with the **Department** set to **Sales** automatically join the Sales group.

1. In a private instance of your internet browser, sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with the global administrator account of your Microsoft 365 E5 test lab subscription.
2. On a separate tab of your browser, go to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
3. In the Azure portal, enter **groups** in the search box, and then select **Groups**.
4. in the **All groups** pane, select **New group**.
5. In **Group type**, select **Microsoft 365**.
6. In **Group name**, enter **Sales**.
7. In **Membership type**, select **Dynamic user**.
8. Select **Dynamic user members**.
9. In the **Dynamic membership rules** pane: 
   - Select the **department** property.
   - Select the **Equals** operator.
   - In the **Value** box, enter **Sales**.
10. Select **Save**.
11. Select **Create**.

Next, configure the Sales group so that members are automatically assigned the Microsoft 365 E5 license.

1. Select the **Sales** group, and then select **Licenses**.
2. In the **Update license assignments** pane, select **Microsoft 365 E5**, and then select **Save**.
3. In your browser, close the Azure portal tab.

Next, test dynamic group membership and automatic licensing on the User 4 account:

1. From the **Microsoft Office Home** tab in your browser, select **Admin**.
2. From the **Microsoft 365 admin center** tab, select **Active users**.
3. On the **Active users** page, select the **User 4** account.
4. On the **User 4** pane, select **Edit** for **Product licenses**.
5. On the **Product licenses** pane, disable the **Microsoft 365 E5** license, and then select **Save** > **Close**.
6. In the properties of the User 4 account, verify that no product licenses have been assigned and there are no group memberships.
7. For **Contact information**, select **Edit**.
8. In the **Edit Contact information** pane, select **Contact information**.
9. In the **Department** box, enter **Sales**, and then select **Save** > **Close**.
10. Wait a few minutes, and then periodically select the **Refresh** icon in the upper-right of the User 4 account pane.

In time, you should see the:

- **Group memberships** property updated with the **Sales** group.
- **Product licenses** property updated with the **Microsoft 365 E5** license.

See these articles to deploy dynamic group membership and automatic licensing in production:

- [Group-based licensing in Azure Active Directory](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal)
- [Dynamic groups in Azure Active Directory](/azure/active-directory/users-groups-roles/groups-create-rule)

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Identity roadmap](identity-roadmap-microsoft-365.md)

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)