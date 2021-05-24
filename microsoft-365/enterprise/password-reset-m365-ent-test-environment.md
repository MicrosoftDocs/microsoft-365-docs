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
localization_priority: Normal
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

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

Azure Active Directory (Azure AD) self-service password reset (SSPR) allows users to reset or unlock their passwords or accounts.

This article describes how to configure and test password resets in your Microsoft 365 test environment.

Setting up SSPR involves three phases:
- [Phase 1: Configure password hash synchronization for your Microsoft 365 test environment](#phase-1-configure-password-hash-synchronization-for-your-microsoft-365-test-environment)
- [Phase 2: Enable password writeback](#phase-2-enable-password-writeback)
- [Phase 3: Configure and test password reset](#phase-3-configure-and-test-password-reset)
    
![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

## Phase 1: Configure password hash synchronization for your Microsoft 365 test environment

First, follow the instructions in [password hash synchronization](password-hash-sync-m365-ent-test-environment.md). 

Your resulting configuration looks like this:
  
![The simulated enterprise with password hash synchronization test environment](../media/pass-through-auth-m365-ent-test-environment/Phase1.png)
  
This configuration consists of:
  
- A Microsoft 365 E5 trial or paid subscription.
- A simplified organization intranet connected to the internet, consisting of the DC1, APP1, and CLIENT1 virtual machines on a subnet of an Azure virtual network.
- Azure AD Connect runs on APP1 to synchronize the TESTLAB Active Directory Domain Services (AD DS) domain to the Azure AD tenant of your Microsoft 365 subscription.

## Phase 2: Enable password writeback

Follow the instructions in [Phase 2 of the password writeback Test Lab Guide](password-writeback-m365-ent-test-environment.md#phase-2-enable-password-writeback-for-the-testlab-ad-ds-domain).

You must have password writeback enabled to use password reset.
  
## Phase 3: Configure and test password reset

In this phase, configure password reset in the Azure AD tenant through group membership, and then verify that it works.

First, enable password reset for the accounts in a specific Azure AD group.

1. From a private instance of your browser, open [https://portal.azure.com](https://portal.azure.com), and then sign in with the credentials of your global administrator account.
2. In the Azure portal, select **Azure Active Directory** > **Groups** > **New group**.
3. Set the **Group type** to **Security**, **Group name** to **PWReset**, and the **Membership type** to **Assigned**.
4. Select **Members**, find and select **User 3**, select **Select**, and then select **Create**.
5. Close the **Groups** pane.
6. In the Azure Active Directory pane, select **Password reset** in the left navigation.
7. In the **Password reset-Properties** pane, under the option **Self Service Password Reset Enabled**, choose **Selected**.
8. Select **Select group**, select the **PWReset** group, and then select **Select** > **Save**.
9. Close the private browser instance.

Next, test password reset for the User 3 account.

1. Open a new private browser instance and browse to [https://aka.ms/ssprsetup](https://aka.ms/ssprsetup).
1. Sign in with the User 3 account credentials.
1. In **More information required**, select **Next**. 
1. In **Don't lose access to your account**, set the authentication phone to your mobile phone number and the authentication email to your work or personal email account.
1. After both are verified, select **Looks good**, and then close the private instance of the browser.
1. In a new private browser instance, go to [https://aka.ms/sspr](https://aka.ms/sspr).
1. Enter the User 3 account name, enter the characters from the CAPTCHA, and then select **Next**.
1. For **verification step 1**, select **Email my alternate email**, and then select **Email**. When you receive the email, enter the verification code, and then select **Next**.
1. In **Get back into your account**, enter a new password for the User 3 account, and then select **Finish**. Note the changed password of the User 3 account and store it in a safe location.
1. In a separate tab of the same browser, go to [https://portal.office.com](https://portal.office.com), and then sign in with the User 3 account name and its new password. You should see the **Microsoft Office Home** page.

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)