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

Azure Active Directory (Azure AD) Identity Protection allows you to detect potential vulnerabilities affecting your organization’s identities, configure automated responses, and investigate incidents. This article describes how to use Azure AD Identity Protection to view the analysis of your test environment accounts.

There are two phases to setting up Azure AD Identity Protection in your Microsoft 365 for enterprise test environment:

1. Create the Microsoft 365 for enterprise test environment.
2. Use Azure AD Identity Protection.

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png) 
    
> [!TIP]
> Click [here](../media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you just want to test Azure AD Identity Protection in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to test Azure AD Identity Protection in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing Azure AD Identity Protection does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test Azure AD Identity Protection and experiment with it in an environment that represents a typical organization. 
  
## Phase 2: Use Azure AD Identity Protection

1. Open a private instance of your browser and sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com) with the global administrator account of your Microsoft 365 for enterprise test environment.
2. In the Azure portal, type **identity protection** in the search box, and then click **Azure AD Identity Protection**.
3. In the **Identity Protection - Overview** blade, click on each of the reports to see what they are reporting.
4. Under **Notify**, click **Users at risk detected alerts**.
5. In the **Users at risk detected alerts** pane, select **Medium**.
6. For **Emails are sent to the following users**, click **Included** and verify that your global admin account is in the list of selected members.
7. Click **Save**.

Click through the different policies under **Protect** to see how to configure them. If you create and activate a policy, make sure it is not blocking access for too wide a scope of conditions, or you might not be able to sign in, even as the global admin.

For further testing and experimentation, see [Simulating risk events](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection-playbook).

## Next step

Explore additional [identity](m365-enterprise-test-lab-guides.md#identity) features and capabilities in your test environment.

## See also

[Identity roadmap](identity-roadmap-microsoft-365.md)

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
