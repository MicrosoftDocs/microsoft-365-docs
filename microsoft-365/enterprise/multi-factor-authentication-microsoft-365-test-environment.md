---
title: "Multi-factor authentication for your Microsoft 365 Enterprise test environment"
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
description: "Configure multi-factor authentication using text messages sent to a smart phone in your Microsoft 365 Enterprise test environment."
---

# Multi-factor authentication for your Microsoft 365 Enterprise test environment

*This Test Lab Guide can be used for both Microsoft 365 Enterprise and Office 365 Enterprise test environments.*

For an additional level of security for signing in to Microsoft 365 or any service or application that uses the Azure AD tenant for your subscription, you can enable Azure multi-factor authentication, which requires more than just a username and password to verify an account. 

With multi-factor authentication, users are required to acknowledge a phone call, type a verification code sent in a text message, or specify an app password on their smart phones after correctly entering their passwords. They can sign in only after this second authentication factor has been satisfied. 
  
This article describes how to enable and test text message-based authentication for a specific user account.
  
There are two phases to setting up multi-factor authentication for an account in your Microsoft 365 Enterprise test environment:
  
1. Create the Microsoft 365 Enterprise test environment.
    
2. Enable and test multi-factor authentication for the User 2 account.

3. Enable and test multi-factor authentication with a conditional access policy (optional).

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](../media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to test multi-factor authentication in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test multi-factor authentication in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing multi-factor authentication does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test multi-factor authentication and experiment with it in an environment that represents a typical organization. 
  
## Phase 2: Enable and test multi-factor authentication for the User 2 account

Enable multi-factor authentication for the User 2 account with these steps:
  
1. Open a separate, private instance of your browser, go to the Microsoft 365 admin center ([https://portal.microsoft.com](https://portal.microsoft.com)), and then sign in with your global administrator account.
    
2. In the left navigation, click **Users > Active users**.
    
3. In the Active users pane, click **Multi-factor authentication**.
    
4. In the list, select the **User 2** account.
    
5. In the **User 2** section, under **Quick steps**, click **Enable**.
    
6. In the **About enabling multi-factor auth** dialog box, click **Enable multi-factor auth**.
    
7. In the **Updates successful** dialog box, click **Close**.
    
8. On the **Microsoft 365 admin center** tab, click the user account icon in the upper right, and then click **Sign out**.
    
9. Close your browser instance.
   
Complete the configuration for the User 2 account to use a text message for validation and test it with these steps:
  
1. Open a new, private instance of your browser.
    
2. Go to the Office 365 portal ([https://portal.office.com](https://portal.office.com)) and sign in with the User 2 account name and password.
    
3. After signing in, you are prompted to set up the account for more information. Click **Next**.
    
4. On the **Additional security verification** page:
    
   - Select your country or region.
    
   - Type phone number of the smart phone that will receive text messages.
    
   - In **Method**, click **Send me a code by text message**.
    
5. Click **Next**.
    
6. Enter the verification code from the text message received on your smart phone, and then click **Verify**.
    
7. On the **Step 3: Keep your existing applications** page, record the displayed app password for the User 2 account in a secure location, and then click **Done**.
    
8. If this is the first time you signed in with the User 2 account, you are prompted to change the password. Type the original password and a new password twice, and then click **Update password and sign in**. Record the new password in a secure location.
    
    You should see the Office portal for User 2 on the **Microsoft Office Home** tab of your browser.

## Phase 3: Enable and test multi-factor authentication with a conditional access policy

*This phase can only be used for a Microsoft 365 Enterprise test environment.*

In this phase you enable multi-factor authentication for the User 3 account using a group and a conditional access policy.

Next, create a new group named MFAUsers and add the User 3 account to it.

1. On the **Microsoft 365 admin center** tab, click **Groups** in the left navigation, and then click **Groups**.
2. Click **Add a group**.
3. In the **Choose a group type** pane, select **Security**, and then click **Next**.
4. In the **Set up the basics** pane, click **Create group**, and then click **Close**.
5. In the **Review and finish adding group** pane, type **MFAUsers**, and then click **Next**.
6. In the list of groups, click the **MFAUsers** group.
7. In the **MFAUsers** pane, click **Members**, and then click **View all and manage members**.
8. In the **MFAUsers** pane, click **Add members**, select the **User 3** account, and then click **Save > Close > Close**.

Next, create a conditional access policy to require multifactor authentication for members of the MFAUsers group.

1. In a new tab of your browser, go to [https://portal.azure.com](https://portal.azure.com).
2. Click **Azure Active Directory > Security > Conditional Access**.
3. In the **Conditional access – Policies** pane, click **New policy**.
4. In the **New** pane, type **MFA for user accounts** in **Name**.
5. In the **Assignments** section, click **Users and groups**.
6. On the **Include** tab of the **Users and groups** pane, click **Select users and groups > Users and groups > Select**.
7. In the **Select** pane, click the **MFAUsers** group, and then click **Select > Done**.
8. In the **Access controls** section of the **New** pane, click **Grant**.
9. In the **Grant** pane, click **Require multi-factor authentication**, and then click **Select**.
10. In the **New** pane, click **On** for **Enable policy**, and then click **Create**.
11. Close the **Azure portal** and **Microsoft 365 admin center** tabs.

To test this policy, sign out and sign in with the User 3 account. You should be prompted to configure MFA. This demonstrates that the MFAUsers policy is being applied.

See the [Set up multi-factor authentication](identity-secure-user-sign-ins.md#identity-mfa) step in the Identity phase for information and links to deploy multi-factor authentication in production.
    
## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Phase 2: Identity](identity-infrastructure.md)

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 Enterprise deployment](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
