---
title: "Automate licensing and group membership for your Microsoft 365 Enterprise test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/09/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: 
- TLG
- Ent_TLGs
description: "Configure group-based licensing and dynamic group membership in your Microsoft 365 Enterprise test environment."
---

# Automate licensing and group membership for your Microsoft 365 Enterprise test environment

Group-based licensing automatically assigns or removes licenses for a user account based on group membership. Dynamic group membership adds or removes members to a group based on user account properties, such as Department or Country. This article steps you through a demonstration of both in your Microsoft 365 Enterprise test environment.

There are two phases to setting up auto-licensing and dynamic group membership in your Microsoft 365 Enterprise test environment:

1. Create the Microsoft 365 Enterprise test environment.
2. Configure and test dynamic group membership and automatic licensing.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](http://aka.ms/catlgstack) for a visual map to all the articles in the One Microsoft Cloud Test Lab Guide stack.
  
## Phase 1: Build out your lightweight Microsoft 365 Enterprise test environment

If you haven't done so already, follow the instructions in the [lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
## Phase 2: Configure and test dynamic group membership and automatic licensing

First, you create a new Sales group and add a dynamic group membership rule so that user accounts with the Department set to Sales are automatically added to the Sales group.

1. Using a private instance of your Internet browser, sign in to the Office 365 portal at [https://portal.office.com](https://portal.office.com) with the global administrator account of your Office 365 E5 trial subscription.
2. On a separate tab of your browser, go to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
3. In the Azure portal, click **Azure Active Directory > Users and groups > All groups**.
4. On the **All groups** blade, click **New group**.
5. In **Group type**, select **Office 365**.
6. In **Group name**, type **Sales**.
7. In **Membership type**, select **Dynamic user** .
8. Click **Add dynamic query**.
9. In **Add users where**, select **department**.
10. In the next field, select **Equals**.
11. In the next field, type **Sales**.
12. Click **Add query**, and then click **Create**.
13. Close the **Group** and **Groups-All groups** blades.

Next, you configure the Sales group so that members are automatically assigned Office 365 E5 and Enterprise Mobility + Security E5 licenses.

1. On the **Overview** blade for Azure Active Directory, click **Licenses > All products**.
2. In the list, select **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5**, and then click **Assign**.
3. On the **Assign license** blade, click **Users and groups**.
4. In the list of groups, select the **Sales** group.
5. Click **Select**, and then click **Assign**.
6. Close the Azure portal tab in your browser.

Next, you test dynamic group membership and automatic licensing on the User 4 account. 

1. From the **Microsoft Office Home** tab in your browser, click **Admin**.
2. From the **Office Admin center** tab, click **Active users**.
3. On the **Active users** page, click the **User 4** account.
4. On the **User 4** pane, click **Edit** for **Product licenses**.
5. On the **Product licenses** pane, turn the **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5** licenses off, and then click **Save > Close**.
6. In the properties of the User 4 account, verify that no product licenses have been assigned and there are no group memberships.
7. Click **Edit** for **Contact information**.
8. In the **Edit Contact information** pane, click **Contact information**.
9. In the **Department** field, type **Sales**, and then click **Save > Close**.
10. Wait a few minutes, and then periodically click the refresh icon in the upper-right of the User 4 account pane. 

In time you should see the:

- **Group memberships** property updated with the **Sales** group.
- **Product licenses** property updated with the **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5** licenses.

See these steps in the Identity phase for information and links to deploy dynamic group membership and automatic licensing in production:

- [Set up automatic licensing](identity-group-based-licensing.md)
- [Set up dynamic group membership](identity-automatic-group-membership.md)

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides#identity) features and capabilities in your test environment.

## See also

[Phase 2: Identity](identity-infrastructure.md)

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 Enterprise deployment](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
