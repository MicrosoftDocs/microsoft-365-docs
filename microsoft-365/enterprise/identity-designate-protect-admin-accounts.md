---
title: "Step 5: Designate and protect administrator accounts"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: ""
---

# Step 5: Designate and protect administrator accounts

![This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Required-BothSKUs.png)

**Summary:** 

Help prevent digital attacks on your organization by ensuring that access with global administrator accounts is as secure as possible. You can do this by:

- Creating dedicated global administrator accounts with very strong passwords and using them only when absolutely necessary.
- Performing day-day administration by assigning specific administrator roles&mdash;such as Exchange administrator or Password administrator&mdash;to IT staff user accounts based on their responsibilities.

For dedicated global admin accounts, you must also:

1. Configure multi-factor authentication for each of the dedicated Office 365 global administrator accounts and use the strongest form of secondary authentication available in your organization. See the [Multi-factor authentication](identity-multi-factor-authentication.md) for more information. Before you enable MFA for your global admin account, test per-user account or conditional access-based MFA settings on a test user account to ensure that MFA works correctly and predictably.
2. Use a conditional access policy to require multifactor authentication for global administrator accounts and to deny authentication if the sign-in risk is medium or high. See [Information protection for Microsoft 365 Enterprise](infoprotect-infrastructure.md) for more information.
3. Use an Office 365 Cloud App Security policy to monitor global administrator account activity. See Information protection for [Information protection for Microsoft 365 Enterprise](infoprotect-infrastructure.md) for more information.

See [Protect your Office 365 global administrator accounts](https://support.office.com/article/Protect-your-Office-365-global-administrator-accounts-6b4ded77-ac8d-42ed-8606-c014fd947560) for more information about configuration.

> [!Note]
> Organizations should use cloud-only identities to create privileged accounts, such as global administrators, for break-glass scenarios in emergencies, such as a cyberattack.

The results of this step are:

- The only user accounts in your subscription that have the global admin role are the new set of dedicated global administrator accounts. Verify this with the following PowerShell command at the Windows Azure AD V2 Module for Windows PowerShell command prompt: 
```
Get-AzureADDirectoryRole | Where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
```
- All other everyday user accounts that manage your subscription have admin roles assigned that are associated with their job responsibilities.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step5)
 corresponding to this step.


## Next step

[Step 6: Privileged Identity Management](identity-privileged-identity-management.md)
