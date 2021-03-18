---
title: "Azure AD Identity Protection for your Microsoft 365 for enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/10/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-identity-device-management
ms.custom: 
- TLG
- Ent_TLGs
description: "Configure Azure AD Identity Protection and analyze the current accounts in your Microsoft 365 for enterprise test environment."
---

# Azure AD Identity Protection for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

You can use Azure Active Directory (Azure AD) Identity Protection to detect potential vulnerabilities that affect your organization’s identities, configure automated responses, and investigate incidents. This article describes how to use Azure AD Identity Protection to view the analysis of your test environment accounts.

Setting up Azure AD Identity Protection in your Microsoft 365 for enterprise test environment involves two phases:

- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Use Azure AD Identity Protection](#phase-2-use-azure-ad-identity-protection)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to only test Azure AD Identity Protection in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test Azure AD Identity Protection in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing Azure AD Identity Protection doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test Azure AD Identity Protection and experiment with it in an environment that represents a typical organization.
  
## Phase 2: Use Azure AD Identity Protection

1. Open a private instance of your browser and sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com) with the global administrator account of your Microsoft 365 for enterprise test environment.
2. In the Azure portal, type **identity protection** in the search box, and then select **Azure AD Identity Protection**.
3. In the **Identity Protection - Overview** blade, select each report to see what it's reporting.
4. Under **Notify**, select **Users at risk detected alerts**.
5. In the **Users at risk detected alerts** pane, select **Medium**.
6. For **Emails are sent to the following users**, select **Included** and verify that your global admin account is in the list of selected members.
7. Select **Save**.

Under **Protect**, select various polices to see how to configure them. If you create and activate a policy, make sure that it's not blocking access for all users, or you might not be able to sign in. To prevent this, exclude specific user accounts, such as global admins.

For further testing and experimentation, see [Simulating risk events](/azure/active-directory/active-directory-identityprotection-playbook).

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Identity roadmap](identity-roadmap-microsoft-365.md)

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)