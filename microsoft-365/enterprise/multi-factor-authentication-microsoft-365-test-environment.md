---
title: Microsoft 365 for enterprise test environment multi-factor authentication
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
- seo-marvel-apr2020
description: "Configure multi-factor authentication using text messages sent to a smart phone in your Microsoft 365 for enterprise test environment."
---

# Multi-factor authentication for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can be used for both Microsoft 365 for enterprise and Office 365 Enterprise test environments.*

For an additional level of security for signing in to Microsoft 365 or any service or application that uses the Azure AD tenant for your subscription, you can enable Azure AD multi-factor authentication, which requires more than just a username and password to verify an account.

With multi-factor authentication, users are required to acknowledge a phone call, type a verification code sent in a text message, or verify the authentication with an app on their smart phones after correctly entering their passwords. They can sign in only after this second authentication factor is satisfied.
  
This article describes how to enable and test text message-based authentication for a specific user account.
  
Setting up multi-factor authentication for an account in your Microsoft 365 for enterprise test environment involves two phases and a third optional phase:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Enable and test multi-factor authentication for the User 2 account](#phase-2-enable-and-test-multi-factor-authentication-for-the-user-2-account)
- [Phase 3: Enable and test multi-factor authentication with a conditional access policy](#phase-3-enable-and-test-multi-factor-authentication-with-a-conditional-access-policy)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you just want to test multi-factor authentication in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test multi-factor authentication in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing multi-factor authentication does not require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test multi-factor authentication and experiment with it in an environment that represents a typical organization.
  
## Phase 2: Enable and test multi-factor authentication for the User 2 account

Enable multi-factor authentication for the User 2 account with these steps:
  
1. Open a separate, private instance of your browser, go to the Microsoft 365 admin center ([https://portal.microsoft.com](https://portal.microsoft.com)), and then sign in with your global administrator account.
    
2. In the left navigation, select **Users** > **Active users**.
    
3. In the Active users pane, select **Multi-factor authentication**.
    
4. In the list, select the **User 2** account.
    
5. In the **User 2** section, under **Quick steps**, select **Enable**.
    
6. In the **About enabling multi-factor auth** dialog box, select **Enable multi-factor auth**.
    
7. In the **Updates successful** dialog box, select **Close**.
    
8. On the **Microsoft 365 admin center** tab, select the user account icon in the upper right, and then select **Sign out**.
    
9. Close your browser instance.
   
Complete the configuration for the User 2 account to use a text message for validation and test it with these steps:
  
1. Open a new, private instance of your browser.
    
2. Go to the [Microsoft 365 admin center](https://admin.microsoft.com) and sign in with the User 2 account name and password.
    
3. After signing in, you are prompted to set up the account for more information. Select **Next**.
    
4. On the **Additional security verification** page:
    
   - Select your country or region.
    
   - Enter the phone number of the smart phone that will receive text messages.
    
   - In **Method**, select **Send me a code by text message**.
    
5. Select **Next**.
    
6. Enter the verification code from the text message received on your smart phone, and then select **Verify**.
    
7. On the **Step 3: Keep your existing applications** page, select **Done**.
    
8. If this is the first time you signed in with the User 2 account, you are prompted to change the password. Enter the original password and a new password twice, and then select **Update password and sign in**. Record the new password in a secure location.
    
    You should see the Office portal for User 2 on the **Microsoft Office Home** tab of your browser.

## Phase 3: Enable and test multi-factor authentication with a conditional access policy

*This phase can only be used for a Microsoft 365 for enterprise test environment.*

In this phase, you enable multi-factor authentication for the User 3 account using a group and a conditional access policy.

Next, create a new group named MFAUsers and add the User 3 account to it.

1. On the **Microsoft 365 admin center** tab, select **Groups** in the left navigation, and then select **Groups**.
2. Select **Add a group**.
3. In the **Choose a group type** pane, select **Security**, and then select **Next**.
4. In the **Set up the basics** pane, select **Create group**, and then select **Close**.
5. In the **Review and finish adding group** pane, enter **MFAUsers**, and then select **Next**.
6. In the list of groups, select the **MFAUsers** group.
7. In the **MFAUsers** pane, select **Members**, and then select **View all and manage members**.
8. In the **MFAUsers** pane, select **Add members**, select the **User 3** account, and then select **Save** > **Close** > **Close**.

Next, create a conditional access policy to require multifactor authentication for members of the MFAUsers group.

1. In a new tab of your browser, go to [https://portal.azure.com](https://portal.azure.com).
2. Select **Azure Active Directory** > **Security** > **Conditional Access**.
3. In the **Conditional access – Policies** pane, select **New policy**.
4. In the **New** pane, enter **MFA for user accounts** in the **Name** box.
5. In the **Assignments** section, select **Users and groups**.
6. On the **Include** tab of the **Users and groups** pane, select **Select users and groups** > **Users and groups** > **Select**.
7. In the **Select** pane, select the **MFAUsers** group, and then select **Select** > **Done**.
8. In the **Access controls** section of the **New** pane, select **Grant**.
9. In the **Grant** pane, select **Require multi-factor authentication**, and then select **Select**.
10. In the **New** pane, select **On** for **Enable policy**, and then select **Create**.
11. Close the **Azure portal** and **Microsoft 365 admin center** tabs.

To test this policy, sign out and sign in with the User 3 account. You should be prompted to configure MFA. This demonstrates that the MFAUsers policy is being applied.

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Identity roadmap](identity-roadmap-microsoft-365.md)

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)