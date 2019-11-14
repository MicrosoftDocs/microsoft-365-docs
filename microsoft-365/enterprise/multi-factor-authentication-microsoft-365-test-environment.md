---
title: "Multi-factor authentication for your Microsoft 365 Enterprise test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 08/21/2018
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

For an additional level of security for signing in to Office 365 or any service or application that uses the Azure AD tenant for your organization, you can enable Azure multi-factor authentication, which requires more than just a username and password to verify an account. With multi-factor authentication, users are required to acknowledge a phone call, type a verification code sent in a text message, or specify an app password on their smart phones after correctly entering their passwords. They can sign in only after this second authentication factor has been satisfied. 
  
This article describes how to enable and test text message-based authentication for a specific account.
  
There are two phases to setting up multi-factor authentication for an account in your Microsoft 365 Enterprise test environment:
  
1. Create the Microsoft 365 Enterprise test environment.
    
2. Enable and test multi-factor authentication for the User 2 account.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to test multi-factor authentication in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test multi-factor authentication in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing multi-factor authentication does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for a Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test multi-factor authentication and experiment with it in an environment that represents a typical organization. 
  
## Phase 2: Enable and test multi-factor authentication for the User 2 account

Enable multi-factor authentication for the User 2 account with these steps:
  
1. Open a separate, private instance of your browser, go to the Microsoft 365 admin center ([https://portal.microsoft.com](https://portal.microsoft.com)), and then sign in with your global administrator account.
    
2. In the left navigation, click **Users > Active users**.
    
3. In the Active users pane, click **More > Multi-factor authentication setup**.
    
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


See the [Set up multi-factor authentication](identity-secure-user-sign-ins.md#identity-mfa) step in the Identity phase for information and links to deploy multi-factor authentication in production.
    
## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Phase 2: Identity](identity-infrastructure.md)

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 Enterprise deployment](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
