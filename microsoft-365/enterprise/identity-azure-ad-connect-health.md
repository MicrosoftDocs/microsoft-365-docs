---
title: "Step 4: Azure AD Connect Health"
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
description: Understand and configure Azure AD Connect Health.
---

# Step 4: Azure AD Connect Health

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

Azure AD Connect Health is an agent installed on each of your on-premises identity servers that provides ongoing monitoring and analysis of your on-premises identity infrastructure and the synchronization services provided by Azure AD Connect. The monitoring information is made available in an Azure AD Connect Health portal, from which you can view alerts, performance monitoring, usage analytics, and other information.

![Components of Azure AD Connect Health](./media/identity-azure-ad-connect-health/identity-azure-ad-connect-health.png)

To keep the common identity access between your on-premises resources and your cloud services that rely on Azure AD working properly, you install an agent on each of your on-premises identity provider servers.

The key design decision of how to use Azure AD Connect Health is based on how you are using Azure AD Connect:

- If you are using a managed authentication option, start with [Using Azure AD Connect Health with sync](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health-sync) to understand and configure Azure AD Connect Health.
 -If you are synchronizing just the names of the accounts and groups using federated authentication with AD FS, start with [Using Azure AD Connect Health with AD FS](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health-adfs) to understand and configure Azure AD Connect Health.

The results of this step are:

- The Azure AD Connect Health agent is installed on your on-premises identity provider servers
- The Azure AD Connect Health portal displays the current state of your on-premises infrastructure and synchronization activities with the Azure AD tenant for your Office 365 and EMS subscriptions.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step4)
 corresponding to this step.


## Next step

[Step 5: Designate and protect administrator accounts](identity-designate-protect-admin-accounts.md)
