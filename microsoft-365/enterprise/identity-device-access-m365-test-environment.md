---
title: "Identity and device access for your Microsoft 365 test environment"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 04/23/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:
description: Create a Microsoft 365 environment to test identity and device access.
---

# Identity and device access for your Microsoft 365 test environment

*This Test Lab Guide can only be used for Microsoft 365 Enterprise test environments.*

[Identity and device access configurations](microsoft-365-policies-configurations.md) are a set of features and conditional access policies to protect access to all services that are integrated with Azure Active Directory (Azure AD), including Office 365 and Microsoft Intune in Microsoft 365 Enterprise.

To create a test environment that has these policies in place:

1. Configure your test environment with the prerequisite identity and security features based on your choice of identity model and authentication method:

  - [Cloud only](cloud-only-prereqs-m365-test-environment.md)
  - [Password hash sync (PHS)](phs-prereqs-m365-test-environment.md)
  - [Pass-through authentication (PTA)](pta-prereqs-m365-test-environment.md)

2. Use [Common identity and device access policies](identity-access-policies.md) to configure the policies that build on the prerequisites and test protection for identities and devices.

## See also

[Additional identity Test Lab Guides](m365-enterprise-test-lab-guides.md#identity)

[Phase 2: Identity](identity-infrastructure.md)

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 Enterprise deployment](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
