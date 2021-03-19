---
title: "Password writeback for your Microsoft 365 test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 11/22/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom: 
- TLGS
- Ent_TLGs
ms.assetid: 
description: "Summary: Configure password writeback for your Microsoft 365 test environment."
---

# Password writeback for your Microsoft 365 test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

Users can use password writeback to update their passwords through Azure Active Directory (Azure AD), which is then replicated to your local Active Directory Domain Services (AD DS). With password writeback, users don't have to update their passwords through the on-premises AD DS where their original user accounts are stored. This helps roaming or remote users who don't have a remote access connection to their on-premises network.

This article describes how to configure your Microsoft 365 test environment for password writeback.

Configuring your test environment for password writeback involves two phases:
- [Phase 1: Configure password hash synchronization for your Microsoft 365 test environment](#phase-1-configure-password-hash-synchronization-for-your-microsoft-365-test-environment)
- [Phase 2: Enable password writeback for the TESTLAB AD DS domain](#phase-2-enable-password-writeback-for-the-testlab-ad-ds-domain)
  
![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

## Phase 1: Configure password hash synchronization for your Microsoft 365 test environment

First, follow the instructions in [password hash synchronization](password-hash-sync-m365-ent-test-environment.md). Your resulting configuration looks like this:
  
![The simulated enterprise with password hash synchronization test environment](../media/pass-through-auth-m365-ent-test-environment/Phase1.png)
  
This configuration consists of:
  
- A Microsoft 365 E5 trial or paid subscription.
- A simplified organization intranet connected to the internet, consisting of the DC1, APP1, and CLIENT1 virtual machines on a subnet of an Azure virtual network.
- Azure AD Connect runs on APP1 to synchronize the TESTLAB AD DS domain to the Azure AD tenant of your Microsoft 365 subscription.

## Phase 2: Enable password writeback for the TESTLAB AD DS domain

First, configure the User 1 account with the global administrator role.

1. From the [Microsoft 365 admin center](https://portal.microsoft.com), sign in with your global administrator account.

2. Select **Active users**.
 
3. On the **Active users** page, select the **user1** account,

4. On the **user1** pane, select **Edit** next to **Roles**.

5. On the **Edit user roles** pane for user1, select **Global administrator**, select **Save**, and then select **Close**.

Next, configure the User 1 account with the security settings that allow it to change passwords on behalf of other users in the TESTLAB AD DS domain.

1. From the [Azure portal](https://portal.azure.com), sign in with your global administrator account, and then connect to APP1 with the TESTLAB\User1 account.

2. From the desktop of APP1, select **Start**, enter **active**, and then select **Active Directory Users and Computers**.

3. On the menu bar, select **View**. If **Advanced features** is not enabled, select it to enable it.

4. In the tree pane, select and hold (or right-click) your domain, select **Properties**, and then select the **Security** tab.

5. Select **Advanced**.

6. On the **Permissions** tab, select **Add**.

7. Select **Select a principal**, enter **User1**, and then select **OK**.

8. In **Applies to**, select **Descendant User objects**.

9. Under **Permissions**, select the following:

    - **Change password**
    - **Reset password**

10. Under **Properties**, select the following:
    - **Write lockoutTime**
    - **Write pwdLastSet**

11. Select **OK** three times to save the changes.

12. Close **Active Directory Users and Computers**.

Next, configure Azure AD Connect on APP1 for password writeback.

1. If needed, connect to APP1 with the TESTLAB\User1 account.

2. From the desktop of APP1, double-click **Azure AD Connect**.

3. On the **Welcome page**, select **Configure**.

4. On the **Additional tasks** page, select **Customize synchronization options**, and then select **Next**.

5. On the **Connect to Azure AD** page, enter your global administrator account credentials, and then select **Next**.

6. On the **Connect directories** and **Domain/OU filtering** pages, select **Next**.

7. On the **Optional features** page, select **Password writeback**, and then select **Next**.

8. On the **Ready to configure** page, select **Configure** and wait for the process to finish.

9. When you see the configuration finish, select **Exit**.

You are now ready to test password writeback for users on computers that aren't connected to the virtual network of your simulated intranet.

Your resulting configuration looks like this:

![The simulated enterprise with pass-through authentication test environment](../media/pass-through-auth-m365-ent-test-environment/Phase1.png)

This configuration consists of:

- A Microsoft 365 E5 trial or paid subscriptions with the DNS domain TESTLAB.\<*your domain name*> registered.
- A simplified organization intranet connected to the internet, consisting of the DC1, APP1, and CLIENT1 virtual machines on a subnet of an Azure virtual network.
- Azure AD Connect runs on APP1 to synchronize the list of accounts and groups from the Azure AD tenant of your Microsoft 365 subscription to the TESTLAB AD DS domain.
- Password writeback is enabled so that users can change their passwords through Azure AD without having to be connected to the simplified intranet.

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)