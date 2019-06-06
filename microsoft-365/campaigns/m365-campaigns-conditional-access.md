---
title: "Set up conditional access policies"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to set  up conditional access policies for Microsoft 365 Business."
---

# Set up conditional access policies for Microsoft 365 for campaigns

You can use conditional access to add substancial additional security in addition to signing in with a user name and password. You can add policies to require second form of authentication (called multifactor authentication, or MFA), give differing access based on the device, or whether the app is a cloud app or a client app, and restrict access to IP addresses that you control. You can even block certain users from accessing resources. For more see, [overview of conditional access](https://docs.microsoft.com/azure/active-directory/conditional-access/overview) and [best practices for conditional access](https://docs.microsoft.com/azure/active-directory/conditional-access/best-practices).

**Recommended conditional access policies for Microsoft 365 for campaigns**
- Set up baseline conditional access policies
    - Require MFA for all users
    - Require approved apps
    - Block clients that don't support modern authentication


## Set up baseline policies

1. Go to [Azure portal](https://portal.azure.com), and then navigate to **Azure Active Directory** \> **Conditional Access**.
    
    The baseline policies are listed on the page.
    ![Page that lists baseline policies for conditional access.](media/baslinepolicies.png)
2. See the following specific instructions for each policy:

    - [Require MFA for admins](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-baseline-protect-administrators)

        Be sure to exclude the break-glass admin account from the MFA requirement.
    -   [Require MFA for users](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-baseline-protect-end-users)  
    - [Block legacy authentication](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-baseline-protect-legacy-auth)

You can set up many additional policies, such as requiring approved client apps. See the [Conditional Access Documentation](https://docs.microsoft.com/azure/active-directory/conditional-access/) for more information.
