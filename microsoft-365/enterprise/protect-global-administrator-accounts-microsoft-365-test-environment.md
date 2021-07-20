---
title: "Protect global administrator accounts in your Microsoft 365 for enterprise test environment"
f1.keywords:
- NOCSH
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
description: "Use these steps to protect global administrator accounts in your Microsoft 365 for enterprise test environment."
---

# Protect global administrator accounts in your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

You can prevent digital attacks on your organization by ensuring that your administrator accounts are as secure as possible. 

This article describes how to use Azure Active Directory (Azure AD) conditional access policies to protect global administrator accounts.

Protecting global administrator accounts in your Microsoft 365 for enterprise test environment involves two phases:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Configure conditional access policies](#phase-2-configure-conditional-access-policies)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to test global administrator account protection in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test global administrator account protection in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing global administrator account protection does not require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS). It is provided here as an option so that you can test global administrator account protection and experiment with it in an environment that represents a typical organization. 
  
## Phase 2: Configure conditional access policies

First, create a new user account as a dedicated global administrator.

1. On a separate tab, open the [Microsoft 365 admin center](https://admin.microsoft.com/).
2. Select **Users** > **Active users**, and then select **Add a user**.
3. In the **Add user** pane, enter **DedicatedAdmin** in the **First name**, **Display name**, and **Username** boxes.
4. Select **Password**, select **Let me create the password**, and then enter a strong password. Record the password for this new account in a secure location.
5. Select **Next**.
6. In the **Assign product licenses** pane, select **Microsoft 365 E5**, and then select **Next**.
7. In the **Optional settings** pane, select **Roles** > **Admin center access** > **Global admin** > **Next**.
8. On the **You're almost done** pane, select **Finish adding**, and then select **Close**.

Next, create a new group named GlobalAdmins and add the DedicatedAdmin account to it.

1. On the **Microsoft 365 admin center** tab, select **Groups** in the left navigation, and then select **Groups**.
2. Select **Add a group**.
3. In the **Choose a group type** pane, select **Security**, and then select **Next**.
4. In the **Set up the basics** pane, select **Create group**, and then select **Close**.
5. In the **Review and finish adding group** pane, enter **GlobalAdmins**, and then select **Next**.
7. In the list of groups, select the **GlobalAdmins** group.
8. In the **GlobalAdmins** pane, select **Members**, and then select **View all and manage members**.
9. In the **GlobalAdmins** pane, select **Add members**, select the **DedicatedAdmin** account and your global admin account, and then select **Save** > **Close** > **Close**.

Next, create conditional access policies to require multi-factor authentication for global administrator accounts and to deny authentication if the sign-in risk is medium or high.

This first policy requires that all global administrator accounts use MFA.

1. In a new tab of your browser, go to [https://portal.azure.com](https://portal.azure.com).
2. Click **Azure Active Directory** > **Security** > **Conditional Access**.
3. In the **Conditional access – Policies** pane, select **Baseline policy: Require MFA for admins (preview)**.
4. In the **Baseline policy** pane, select **Use policy immediately > Save**.

This second policy blocks access to global administrator account authentication when the sign-in risk is medium or high.

1. In the **Conditional access – Policies** pane, select **New policy**.
2. In the **New** pane, enter **Global administrators** in **Name**.
3. In the **Assignments** section, select **Users and groups**.
4. On the **Include** tab of the **Users and groups** pane, select **Select users and groups** > **Users and groups** > **Select**.
5. In the **Select** pane, select the **GlobalAdmins** group, and then select **Select** > **Done**.
6. In the **Assignments** section, select **Conditions**.
7. In the **Conditions** pane, select **Sign-in risk**, select **Yes** for **Configure**, select **High** and **Medium**, and then select **Select** and **Done**.
8. In the **Access controls** section of the **New** pane, select **Grant**.
9. In the **Grant** pane, select **Block access**, and then select **Select**.
10. In the **New** pane, select **On** for **Enable policy**, and then select **Create**.
11. Close the **Azure portal** and **Microsoft 365 admin center** tabs.

To test the first policy, sign out and sign in with the DedicatedAdmin account. You should be prompted to configure MFA. This demonstrates that the first policy is being applied.

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Identity roadmap](identity-roadmap-microsoft-365.md)

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)