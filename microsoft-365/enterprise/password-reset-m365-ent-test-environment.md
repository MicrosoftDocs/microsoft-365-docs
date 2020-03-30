---
title: "Password reset for your Microsoft 365 test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/13/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom: 
- TLGS
- Ent_TLGs
ms.assetid: 
description: "Summary: Configure and test password reset for your Microsoft 365 test environment."
---

# Password reset for your Microsoft 365 test environment

*This Test Lab Guide can only be used for Microsoft 365 Enterprise test environments.*

Azure Active Directory (Azure AD) self-service password reset (SSPR) allows users to reset or unlock their passwords or accounts. 

This article describes how you can configure and test password resets in your Microsoft 365 test environment in three phases:

1.	Create the Microsoft 365 Enterprise test environment.
2.  Enable password writeback.
3.	Configure and test password reset for the User 3 account.
    
![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](../media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Configure password hash synchronization for your Microsoft 365 test environment

First, follow the instructions in [password hash synchronization](password-hash-sync-m365-ent-test-environment.md). Here is your resulting configuration.
  
![The simulated enterprise with password hash synchronization test environment](../media/pass-through-auth-m365-ent-test-environment/Phase1.png)
  
This configuration consists of: 
  
- Microsoft 365 E5 or Office 365 E5 trial or paid subscriptions.
- A simplified organization intranet connected to the Internet, consisting of the DC1, APP1, and CLIENT1 virtual machines on a subnet of an Azure virtual network. 
- Azure AD Connect runs on APP1 to synchronize the TESTLAB Active Directory Domain Services (AD DS) domain to the Azure AD tenant of your Microsoft 365 or Office 365 subscription.

## Phase 2: Enable password writeback

Follow the instructions in [Phase 2 of the password writeback Test Lab Guide](password-writeback-m365-ent-test-environment.md#phase-2-enable-password-writeback-for-the-testlab-ad-ds-domain).

You must have password writeback enabled to use password reset.
  
## Phase 3: Configure and test password reset

In this phase, you configure password reset in the Azure AD tenant through group membership, and then verify that it works.

First, enable password reset for the accounts in a specific Azure AD group.

1. From a private instance of your browser, open [https://portal.azure.com](https://portal.azure.com), and then sign in with the credentials of your global administrator account.
2. In the Azure portal, click **Azure Active Directory > Groups > New group**.
3. Set the **Group type** to **Security**, **Group name** to **PWReset**, and the **Membership type** to **Assigned**. 
4. Click **Members**, find and select **User 3**, and then click **Select**, and then click **Create**.
5. Close the **Groups** pane.
6. In the Azure Active Directory pane, click **Password reset** in the left navigation.
7. In the **Password reset-Properties** pane, under the option **Self Service Password Reset Enabled**, choose **Selected**.
8. Click **Select group**, select the **PWReset** group, and then click **Select > Save**.
9. Close the private browser instance.

Next, you test password reset for the User 3 account.

1. Open a new private browser instance and browse to [https://aka.ms/ssprsetup](https://aka.ms/ssprsetup).
2. Sign in with the User 3 account credentials.
3. In **More information required**, click **Next**. 
5. In **Don’t lose access to your account**, set the authentication phone to your mobile phone number and the authentication email to your work or personal email account.
7. After both are verified, click **Looks good** and close the private instance of the browser.
8. Open a new private browser instance and go to [https://aka.ms/sspr](https://aka.ms/sspr).
9. Type the User 3 account name, type the characters from the CAPTCHA, and then click **Next**.
10. For **verification step 1**, click **Email my alternate email**, and then click **Email**. When you receive the email, type the verification code, and then click **Next**.
11. In **Get back into your account**, type a new password for the User 3 account, and then click **Finish**. Note the changed password of the User 3 account and store it in a safe location.
12. In a separate tab of the same browser, go to [https://portal.office.com](https://portal.office.com), and then sign in with the User 3 account name and its new password. You should see the **Microsoft Office Home** page.

See the [Simplify password resets](identity-secure-your-passwords.md#identity-pw-reset) step in the Identity phase for information and links to configure password resets in production.

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
