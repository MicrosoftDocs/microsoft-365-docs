---
title: "Protect your Microsoft 365 global administrator accounts"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/15/2020
audience: Admin
ms.topic: get-started-article
ms.service: o365-administration
localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid:
- MET150
- MOE150
- MED150
- MBS150
- BCS160
f1.keywords:
- NOCSH
ms.assetid: 6b4ded77-ac8d-42ed-8606-c014fd947560
description: This article provides information about protecting global administrator access to your Microsoft 365 subscription.
ms.custom: seo-marvel-apr2020
---

# Protect your Microsoft 365 global administrator accounts

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Security breaches of a Microsoft 365 subscription, including information harvesting and phishing attacks, are typically done by compromising the credentials of a Microsoft 365 global administrator account. Security in the cloud is a partnership between you and Microsoft:
  
- Microsoft cloud services are built on a foundation of trust and security. Microsoft provides you security controls and capabilities to help you protect your data and applications.
    
- You own your data and identities and the responsibility for protecting them, the security of your on-premises resources, and the security of cloud components you control.
    
Microsoft provides capabilities to help protect your organization, but they are effective only if you use them. If you do not use them, you may be vulnerable to attack. To protect your global administrator accounts, Microsoft is here to help you with detailed instructions to:
  
1. Create dedicated Microsoft 365 global administrator accounts and use them only when necessary.
    
2. Configure multi-factor authentication for your dedicated Microsoft 365 global administrator accounts and use the strongest form of secondary authentication.
    
> [!NOTES]
> Although this article is focused on global administrator accounts, you should consider whether additional accounts with wide-ranging permissions to access the data in your subscription, such as eDiscovery administrator or security or compliance administrator accounts, should be protected in the same way. <br > A global administrator account can be created without adding any licenses.
  
## Step 1. Create dedicated Microsoft 365 global administrator accounts and use them only when necessary

There are relatively few administrative tasks, such as assigning roles to user accounts, that require global administrator privileges. Therefore, instead of using everyday user accounts that have been assigned the global admin role, do these steps:
  
1. Determine the set of user accounts that have been assigned the global admin role. You can do this with Azure Active (Azure AD) Directory PowerShell for Graph command:
  
  ```powershell
  Get-AzureADDirectoryRole | where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
  ```

2. Sign into your Microsoft 365 subscription with a user account that has been assigned the global admin role.
    
3. Create up to a maximum of four dedicated global administrator user accounts. **Use strong passwords at least 12 characters long.** See [Create a strong password](https://support.microsoft.com/help/4026406/microsoft-account-create-a-strong-password) for more information. Store the passwords for the new accounts in a secure location. 
    
4. Assign the global admin role to each of the new dedicated global administrator user accounts.
    
5. Sign out of Microsoft 365.
    
6. Sign in with one of the new dedicated global administrator user accounts.
    
7. For each existing user account that had been assigned the global admin role from step 1:
    
  - Remove the global admin role.
    
  - Assign admin roles to the account that are appropriate to that user's job function and responsibility. For more information about various admin roles in Microsoft 365, see [About admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles).
    
8. Sign out of Microsoft 365.
    
The result should be:
  
- The only user accounts in your subscription that have the global admin role are the new set of dedicated global administrator accounts. Verify this with the following PowerShell command:
    
  ```powershell
  Get-AzureADDirectoryRole | where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
  ```

- All other everyday user accounts that manage your subscription have admin roles assigned that are associated with their job responsibilities.
    
From this moment onward, you sign in with the dedicated global administrator accounts only for tasks that require global administrator privileges. All other Microsoft 365 administration must be done by assigning other administration roles to user accounts.
  
> [!NOTE]
> This does require additional steps to sign out as your everyday user account and sign in with a dedicated global administrator account. But this only needs to be done occasionally for global administrator operations. Consider that recovering your Microsoft 365 subscription after a global administrator account breach requires a lot more steps.
  
## Step 2. Configure multi-factor authentication for your dedicated Microsoft 365 global administrator accounts and use the strongest form of additional verification

Multi-factor authentication (MFA) requires additional information beyond the account name and password. Microsoft 365 supports these additional verification methods:
  
- The Microsoft Authenticator app

- A phone call
    
- A randomly generated verification code sent through a text message
    
- A smart card (virtual or physical)
    
- A biometric device
    
>[!Note]
>For organizations that must adhere to National Institute of Standards and Technology (NIST) standards, the use of a phone call or text message-based additional verification methods are restricted. Click [here](https://pages.nist.gov/800-63-FAQ/#q-b01) for the details.
>

If you are a small business that is using user accounts stored only in the cloud (the cloud-only identity model), use these steps to configure MFA using a phone call or a text message verification code sent to a smart phone:
  
1. [Set up MFA](https://docs.microsoft.com/office365/admin/security-and-compliance/set-up-multi-factor-authentication).
    
2. [Set up MFA for Microsoft 365](https://support.office.com/article/Set-up-2-step-verification-for-Office-365-ace1d096-61e5-449b-a875-58eb3d74de14) to configure each dedicated global administrator account for phone call or text message as the verification method. 
    
If you are a larger organization that is using a Microsoft 365 hybrid identity model, you have more verification options. If you have the security infrastructure already in place for a stronger secondary authentication method, use these steps:
  
1. [Set up MFA](https://docs.microsoft.com/office365/admin/security-and-compliance/set-up-multi-factor-authentication).
    
2. [Set up MFA for your new global admin accounts](https://support.office.com/article/set-up-your-microsoft-365-sign-in-for-multi-factor-authentication-ace1d096-61e5-449b-a875-58eb3d74de14) to configure each dedicated global administrator account for the appropriate verification method. 
    
If the security infrastructure for the desired stronger verification method is not in place and functioning for Microsoft 365 MFA, we strongly recommend that you configure dedicated global administrator accounts with MFA using the Microsoft Authenticator app, a phone call, or a text message verification code sent to a smart phone for your global administrator accounts as an interim security measure. Do not leave your dedicated global administrator accounts without the additional protection provided by MFA.
  
For more information, see [Plan for multi-factor authentication for Microsoft 365 Deployments](https://docs.microsoft.com/office365/admin/security-and-compliance/multi-factor-authentication-plan).
  
To connect to Microsoft 365 services with MFA and PowerShell, see these articles:

- [PowerShell for Microsoft 365 for user accounts, groups, and licenses](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell)
- [Microsoft Teams](https://docs.microsoft.com/office365/enterprise/powershell/manage-microsoft-teams-with-office-365-powershell#sign-in-with-multi-factor-authentication-mfa)
- [Exchange Online](https://docs.microsoft.com/powershell/exchange/mfa-connect-to-exchange-online-powershell?view=exchange-ps#connect-to-exchange-online-powershell-by-using-mfa)
- [SharePoint Online](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online#to-connect-with-multifactor-authentication-mfa)
- [Skype for Business Online](https://docs.microsoft.com/office365/enterprise/powershell/manage-skype-for-business-online-with-office-365-powershell#connect-using-a-skype-for-business-online-administrator-account-with-multi-factor-authentication)

## Additional protections for enterprise organizations

After steps 1 and 2, use these additional methods to ensure that your global administrator account, and the configuration that you perform using it, are as secure as possible.
  
### Privileged access workstation

To ensure that the execution of highly privileged tasks is as secure as possible, use a privileged access workstation (PAW). A PAW is a dedicated computer that is only used for sensitive configuration tasks, such as Microsoft 365 configuration that requires a global administrator account. Because this computer is not used daily for Internet browsing or email, it is better protected from Internet attacks and threats.
  
For instructions on how to set up a PAW, see [https://aka.ms/cyberpaw](https://aka.ms/cyberpaw).
  
### Azure AD Privileged Identity Management

Rather than having your global administrator accounts be permanently assigned the global administrator role, you can use Azure AD Privileged Identity Management (PIM) to enable on-demand, just-in-time assignment of the global administrator role when it is needed.
  
Instead of your global administrator accounts being a permanent admin, they become eligible administrators. The global administrator role is inactive until someone needs it. You then complete an activation process to add the global administrator role to the global administrator account for a predetermined amount of time. When the time expires, PIM removes the global administrator role from the global administrator account.
  
Using PIM and this process significantly reduces the amount of time that your global administrator accounts are vulnerable to attack and use by malicious users.

PIM is available with Azure AD Premium P2, which is included with Microsoft 365 Enterprise E5 or Enterprise Mobility + Security (EMS) E5, or you can purchase individual licenses for your global administrator accounts.
  
For more information, see [Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure).
  
### Security information and event management (SIEM) software for Microsoft 365 logging

SIEM software run on a server performs real-time analysis of security alerts and events created by applications and network hardware. To allow your SIEM server to include Microsoft 365 security alerts and events in its analysis and reporting functions, integrate Azure AD into you SEIM. See [Introduction to Azure Log Integration](https://docs.microsoft.com/azure/security/security-azure-log-integration-overview).

## Next step

If you're setting up identity for your Microsoft 365 subscription, see:

- [Cloud-only identities](cloud-only-identities.md) if you're using cloud-only identity
- [Prepare for directory synchronization](prepare-for-directory-synchronization.md) if you're using hybrid identity

  
## See also

[Microsoft 365 security roadmap](https://docs.microsoft.com/office365/securitycompliance/security-roadmap).
