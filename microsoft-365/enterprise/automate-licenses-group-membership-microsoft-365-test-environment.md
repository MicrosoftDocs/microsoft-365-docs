---
title: "Automate licensing and group membership for your Microsoft 365 Enterprise test environment"
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
description: "Configure group-based licensing and dynamic group membership in your Microsoft 365 Enterprise test environment."
---

# Automate licensing and group membership for your Microsoft 365 Enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 Enterprise test environments.*

Group-based licensing automatically assigns or removes licenses for a user account based on group membership. Dynamic group membership adds or removes members to a group based on user account properties, such as Department or Country. This article steps you through a demonstration of both in your Microsoft 365 Enterprise test environment.

There are two phases to setting up auto-licensing and dynamic group membership in your Microsoft 365 Enterprise test environment:

1. Create the Microsoft 365 Enterprise test environment.
2. Configure and test dynamic group membership and automatic licensing.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to test automated licensing and group membership in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test automated licensing and group membership in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 
  
## Phase 2: Configure and test dynamic group membership and automatic licensing

First, you create a new Sales group and add a dynamic group membership rule so that user accounts with the Department set to Sales are automatically added to the Sales group.

1. Using a private instance of your Internet browser, sign in to the Office 365 portal at [https://portal.office.com](https://portal.office.com) with the global administrator account of your Microsoft 365 E5 test lab subscription.
2. On a separate tab of your browser, go to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
3. In the Azure portal, type **groups** in the search box, and then click **Groups**.
4. in the **All groups** pane, click **New group**.
5. In **Group type**, select **Office 365**.
6. In **Group name**, type **Sales**.
7. In **Membership type**, select **Dynamic user**.
8. Click **Dynamic user members**.
9. In the **Dynamic membership rules** pane: 
   - Select the **department** property.
   - Select the **Equals** operator.
   - Type **Sales** in **Value**.
10. Click **Save**.
11. Click **Create**.

Next, you configure the Sales group so that members are automatically assigned the Microsoft 365 E5 license.

1. Click the **Sales** group, and then click **Licenses**.
2. In the **Update license assignments** pane, select **Microsoft 365 E5**, and then click **Save**.
3. Close the Azure portal tab in your browser.

Next, you test dynamic group membership and automatic licensing on the User 4 account. 

1. From the **Microsoft Office Home** tab in your browser, click **Admin**.
2. From the **Microsoft 365 admin center** tab, click **Active users**.
3. On the **Active users** page, click the **User 4** account.
4. On the **User 4** pane, click **Edit** for **Product licenses**.
5. On the **Product licenses** pane, disable the **Microsoft 365 E5** license, and then click **Save > Close**.
6. In the properties of the User 4 account, verify that no product licenses have been assigned and there are no group memberships.
7. Click **Edit** for **Contact information**.
8. In the **Edit Contact information** pane, click **Contact information**.
9. In the **Department** field, type **Sales**, and then click **Save > Close**.
10. Wait a few minutes, and then periodically click the refresh icon in the upper-right of the User 4 account pane. 

In time you should see the:

- **Group memberships** property updated with the **Sales** group.
- **Product licenses** property updated with the **Microsoft 365 E5** license.

See these steps in the Identity phase for information and links to deploy dynamic group membership and automatic licensing in production:

- [Set up automatic licensing](identity-use-group-management.md#identity-group-license)
- [Set up dynamic group membership](identity-use-group-management.md#identity-dyn-groups)

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Phase 2: Identity](identity-infrastructure.md)

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 Enterprise deployment](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
