---
title: "Protect global administrator accounts in your Microsoft 365 Enterprise test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/12/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-identity-device-management
ms.custom: 
- TLG
- Ent_TLGs
description: "Use these steps to protect global administrator accounts in your Microsoft 365 Enterprise test environment."
---

# Protect global administrator accounts in your Microsoft 365 Enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 Enterprise test environments.*

You can prevent digital attacks on your organization by ensuring that your administrator accounts are as secure as possible. This article describes how to use Azure Active Directory (Azure AD) conditional access policies to protect global administrator accounts.

There are two phases to protecting global administrator accounts in your Microsoft 365 Enterprise test environment:

1.	Create the Microsoft 365 Enterprise test environment.
2.	Protect your dedicated global administrator account.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to test global administrator account protection in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test global administrator account protection in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing global administrator account protection does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS). It is provided here as an option so that you can test global administrator account protection and experiment with it in an environment that represents a typical organization. 
  
## Phase 2: Configure conditional access policies

First, create a new user account as a dedicated global administrator.

1. On a separate tab, open the [Microsoft 365 admin center](https://admin.microsoft.com/).
2. Click **Users > Active users**, and then click **Add a user**.
3. In the **Add user** pane, type **DedicatedAdmin** in **First name**, **Display name**, and **Username**.
4. Click **Password**, click **Let me create the password**, and then type a strong password. Record the password for this new account in a secure location.
5. Click **Next**.
6. In the **Assign product licenses** pane, select **Microsoft 365 E5** or **Office 365 E5**, and then click **Next**.
7. In the **Optional settings** pane, click **Roles**, and then select **Admin center access** and **Global admin**. Click **Next**.
8. On the **You're almost done** pane, click **Finish adding**, and then click **Close**.

Next, create a new group named GlobalAdmins and add the DedicatedAdmin account to it.

1. On the **Microsoft 365 admin center** tab, click **Groups** in the left navigation, and then click **Groups**.
2. Click **Add a group**.
3. In the **Choose a group type** pane, select **Security**, and then click **Next**.
4. In the **Set up the basics** pane, click **Create group**, and then click **Close**.
5. In the **Review and finish adding group** pane, type **GlobalAdmins**, and then click **Next**.
7. In the list of groups, click the **GlobalAdmins** group.
8. In the **GlobalAdmins** pane, click **Members**, and then click **View all and manage members**.
9. In the **GlobalAdmins** pane, click **Add members**, select the **DedicatedAdmin** account and your global admin account, and then click **Save > Close > Close**.

Next, create conditional access policies to require multifactor authentication for global administrator accounts and to deny authentication if the sign-in risk is medium or high.

This first policy requires that all global administrator accounts use MFA.

1. In a new tab of your browser, go to [https://portal.azure.com](https://portal.azure.com).
2. Click **Azure Active Directory > Security > Conditional Access**.
3. In the **Conditional access – Policies** pane, click **Baseline policy: Require MFA for admins (preview)**.
4. In the **Baseline policy** pane, click **Use policy immediately > Save**.

This second policy blocks access to global administrator account authentication when the sign-in risk is medium or high.

1. In the **Conditional access – Policies** pane, click **New policy**.
2. In the **New** pane, type **Global administrators** in **Name**.
3. In the **Assignments** section, click **Users and groups**.
4. On the **Include** tab of the **Users and groups** pane, click **Select users and groups > Users and groups > Select**.
5. In the **Select** pane, click the **GlobalAdmins** group, and then click **Select > Done**.
6. In the **Assignments** section, click **Conditions**.
7. In the **Conditions** pane, click **Sign-in risk**, click **Yes** for **Configure**, click **High** and **Medium**, and then click **Select** and **Done**.
8. In the **Access controls** section of the **New** pane, click **Grant**.
9. In the **Grant** pane, click **Block access**, and then click **Select**.
10. In the **New** pane, click **On** for **Enable policy**, and then click **Create**.
11. Close the **Azure portal** and **Microsoft 365 admin center** tabs.

To test the first policy, sign out and sign in with the DedicatedAdmin account. You should be prompted to configure MFA. This demonstrates that the first policy is being applied.

See the [Protect global administrator accounts](identity-create-protect-global-admins.md#identity-global-admin) step in the Identity phase for information and links to protect your global administrator accounts in production.

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Phase 2: Identity](identity-infrastructure.md)

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 Enterprise deployment](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
