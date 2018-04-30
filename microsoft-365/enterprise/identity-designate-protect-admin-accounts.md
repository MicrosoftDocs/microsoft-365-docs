---
title: "Step 5: Protect global administrator accounts"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/01/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure your administrator accounts for maximum protection.
---

# Step 5: Protect global administrator accounts

*This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 5, you'll help prevent digital attacks on your organization by ensuring that your administrator accounts are as secure as possible. To do this, you must:

- Create dedicated global administrator accounts with very [strong passwords](https://support.microsoft.com//help/4026406/microsoft-account-create-a-strong-password) and use them only when necessary.
- Perform day-to-day administration by assigning specific administrator roles—such as Exchange administrator or Password administrator—to user accounts of IT staff as needed.

For your dedicated global admin accounts, you must also:

1. Test per-user account or conditional access-based multi-factor authentication (MFA) settings on a test user account to ensure that MFA works correctly and predictably. MFA requires a secondary form of authentication, such as a verification code sent to a smart phone.
2. Configure MFA for each of the dedicated Office 365 global administrator accounts, and use the strongest form of secondary authentication available in your organization. See [Multi-factor authentication](identity-multi-factor-authentication.md) for more information.
2. Use a conditional access policy to require multifactor authentication for global administrator accounts and to deny authentication if the sign-in risk is medium or high. See [Information protection for Microsoft 365 Enterprise](infoprotect-infrastructure.md) for more information.
4. Use an Office 365 Cloud App Security policy to monitor global administrator account activity. See [Information protection for Microsoft 365 Enterprise](infoprotect-infrastructure.md) for more information.

See [Protect your Office 365 global administrator accounts](https://support.office.com/article/Protect-your-Office-365-global-administrator-accounts-6b4ded77-ac8d-42ed-8606-c014fd947560) for more information about configuration.

> [!Note]
> Organizations should use cloud-only identities to create privileged accounts, such as global administrators, for break-glass scenarios in emergencies, such as a cyberattack.

The results of this step are:

- The only user accounts in your subscription that have the global admin role are the new set of dedicated global administrator accounts. Verify this with the following Windows Azure AD V2 PowerShell command: 
```
Get-AzureADDirectoryRole | Where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
```
- All other everyday user accounts that manage your subscription have admin roles assigned that are associated with their job responsibilities.

> [!Note]
> See [Connect to Office 365 PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell) for instructions on installing the Azure AD V2 PowerShell module and signing in to Office 365.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step5) for this step.


## Next step

[Step 6: Set up on-demand global administrators](identity-privileged-identity-management.md)
