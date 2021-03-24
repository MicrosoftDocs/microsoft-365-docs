---
title: "Identity and device access prerequisites for password hash synchronization in your Microsoft 365 test environment"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:
description: Create a Microsoft 365 environment to test identity and device access with the prerequisites for password hash synchronization authentication.
---

# Identity and device access prerequisites for password hash synchronization in your Microsoft 365 test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

[Identity and device access configurations](../security/office-365-security/microsoft-365-policies-configurations.md) are a set of configurations and conditional access policies to protect access to all services in Microsoft 365 for enterprise that are integrated with Azure Active Directory (Azure AD).

This article describes how to configure a Microsoft 365 test environment that meets the requirements of the [hybrid with password hash sync authentication prerequisite configuration](../security/office-365-security/identity-access-prerequisites.md#prerequisites) for identity and device access.

There are ten phases to setting up this test environment:

1. Create a simulated enterprise with password hash sync test environment
2. Configure Azure AD seamless single sign-on
3. Configure named locations
4. Configure password writeback
5. Configure self-service password reset for all user accounts
6. Configure multifactor authentication for all user accounts
7. Enable automatic device registration of domain-joined Windows computers
8. Configure Azure AD password protection 
9. Enable Azure AD Identity Protection
10. Enable modern authentication for Exchange Online and Skype for Business Online

## Phase 1: Build out your simulated enterprise with password hash sync Microsoft 365 test environment

Follow the instructions in [the password hash synchronization](password-hash-sync-m365-ent-test-environment.md) Test Lab Guide.
Here is the resulting configuration.

![The simulated enterprise with password hash synchronization test environment](../media/password-hash-sync-m365-ent-test-environment/Phase3.png)
 
## Phase 2: Configure Azure AD seamless single sign-on

Follow the instructions in [Phase 2 of the Azure AD Seamless Single Sign-on Test Lab Guide](single-sign-on-m365-ent-test-environment.md#phase-2-configure-azure-ad-connect-on-app1-for-azure-ad-seamless-sso).

## Phase 3: Configure named locations

First, determine the public IP addresses or address ranges used by your organization.

Next, follow the instructions in [Configure named locations in Azure Active Directory](/azure/active-directory/reports-monitoring/quickstart-configure-named-locations) to add the addresses or address ranges as named locations. 

## Phase 4: Configure password writeback

Follow the instructions in [Phase 2 of the password writeback Test Lab Guide](password-writeback-m365-ent-test-environment.md#phase-2-enable-password-writeback-for-the-testlab-ad-ds-domain).

## Phase 5: Configure self-service password reset

Follow the instructions in [Phase 3 of the password reset Test Lab Guide](password-reset-m365-ent-test-environment.md#phase-3-configure-and-test-password-reset). 

When enabling password reset for the accounts in a specific Azure AD group, add these accounts to the **Password reset** group:

- User 2
- User 3
- User 4
- User 5

Test password reset only for the User 2 account.

## Phase 6: Configure multi-factor authentication

Follow the instructions in [Phase 2 of the multi-factor authentication Test Lab Guide](multi-factor-authentication-microsoft-365-test-environment.md#phase-2-enable-and-test-multi-factor-authentication-for-the-user-2-account) for the following user accounts:

- User 2
- User 3
- User 4
- User 5

Test multi-factor authentication only for the User 2 account.

## Phase 7: Enable automatic device registration of domain-joined Windows computers 

Follow [these instructions](/azure/active-directory/devices/hybrid-azuread-join-plan) to enable automatic device registration of domain-joined Windows computers.

## Phase 8: Configure Azure AD password protection 

Follow [these instructions](/azure/active-directory/authentication/concept-password-ban-bad) to block known weak passwords and their variants.

## Phase 9: Enable Azure AD Identity Protection

Follow the instructions in [Phase 2 of the Azure AD Identity Protection Test Lab Guide](azure-ad-identity-protection-microsoft-365-test-environment.md#phase-2-use-azure-ad-identity-protection). 

## Phase 10: Enable modern authentication for Exchange Online and Skype for Business Online

For Exchange Online, follow [these instructions](/Exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online#enable-or-disable-modern-authentication-in-exchange-online-for-client-connections-in-outlook-2013-or-later). 

For Skype for Business Online:

1. Connect to [Skype for Business Online](/SkypeForBusiness/set-up-your-computer-for-windows-powershell/set-up-your-computer-for-windows-powershell).

2. Run this command.

  ```powershell
  Set-CsOAuthConfiguration -ClientAdalAuthOverride Allowed
  ```

3. Verify that the change was successful with this command.

  ```powershell
  Get-CsOAuthConfiguration
  ```

The result is a test environment that meets the requirements of the [Active Directory with password hash sync prerequisite configuration](../security/office-365-security/identity-access-prerequisites.md#prerequisites) for identity and device access. 

## Next step

Use [Common identity and device access policies](../security/office-365-security/identity-access-policies.md) to configure the policies that build on the prerequisites and protect identities and devices.

## See also

[Additional identity Test Lab Guides](m365-enterprise-test-lab-guides.md#identity)

[Identity roadmap](identity-roadmap-microsoft-365.md)

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)
