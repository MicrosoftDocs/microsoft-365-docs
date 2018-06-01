---
title: Prepare your organization for Windows 10 Enterprise
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: JoeDavies-MSFT
localization_priority: Normal
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 06/01/2018
ms.author: josephd
---

# Step 1: Prepare your organization for Windows 10 Enterprise

*This article applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)

Before upgrading your devices to Windows 10 Enterprise, consider the following:

- **Your domains must be added and verified** <br>
  With a Microsoft 365 subscription, you get a default domain name that ends in onmicrosoft.com (for example, contoso.onmicrosoft.com). Most organizations prefer to use one or more of the domains they own so their email addresses end in their own domain name (like username@contoso.com). To use your own domain, you need to add it to Microsoft 365 and verify that you own it. We recommend that you add and verify your domains now so they're ready to go whenever you set up Microsoft 365 services, like email and Skype for Business.
- **You don't need to add users at this time** <br>
  To use Microsoft 365 services or install Microsoft 365 products, users need accounts in Microsoft 365 and they need product licenses. How you add users to Microsoft 365 depends on the number of users and whether you currently have Active Directory on-premises. If you don’t have Active Directory (or you have Active Directory but don’t want to synchronize it to Microsoft 365), you can add users directly to Microsoft 365 and assign licenses, either individually or in bulk. <br>
  If you have Active Directory on-premises, you can [sync it with Microsoft 365](identity-azure-ad-connect-health.md) to create user accounts in Azure AD, the cloud directory used by Microsoft 365. With this method, you can create accounts for users and for security groups you use to manage permissions to resources (like SharePoint Online site collections or documents). Synchronizing your Active Directory with Microsoft 365 won’t assign licenses to the users.
- **You don't need to license users at this time** <br>
  Before users can use Microsoft 365 services or install software from the Microsoft 365 portal, they need product licenses. As a global or user management admin, you can directly assign products licenses in Microsoft 365 either individually or in bulk. You can also use [group-based licensing](identity-group-based-licensing.md) to automatically assign licenses when users are added to a particular group. 
- **You install Office 365 ProPlus separately** <br>
  Obtaining a Microsoft 365 license does not automatically install Office 365 ProPlus on your client computers. See [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md) for more information. 

As an interim checkpoint, you can see the [exit criteria](windows10-exit-criteria.md#crit-windows10-step1) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step2.png)| [Deploy Windows 10 Enterprise for existing devices as an in-place upgrade](windows10-deploy-inplaceupgrade.md) |






