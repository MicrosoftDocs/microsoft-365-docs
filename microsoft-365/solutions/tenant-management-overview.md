---
title: Tenant management for Microsoft 365 for enterprise
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
- m365solution-tenantmanagement
ms.custom:
- Ent_Solutions
description: "Description."
---

# Tenant management for Microsoft 365 for enterprise

A Microsoft 365 tenant is a dedicated instance of the services of Microsoft 365 and your organization data stored within a specific default location, such as Europe or North America. This location is specified when you create the tenant for your organization. Each Microsoft 365 tenant is distinct, unique, and separate from all other Microsoft 365 tenants. You create a Microsoft 365 tenant when you purchase one or more services from Microsoft, such as Microsoft 365 E3 or E5, and a set of licenses for each.

Your Microsoft 365 tenant also includes an Azure Active Directory (AD) tenant, which is a dedicated instance of Azure AD for the user accounts, groups, and other objects. Each Azure AD tenant is distinct, unique, and separate from all other Azure AD tenants. While your organization can have multiple Azure AD tenants that you can set up with Azure subscriptions, Microsoft 365 tenants can only use a single Azure AD tenant, the one that was created when you created the tenant. 

Here is an example:

![An example Microsoft 365 tenant with its Azure AD tenant](../media/tenant-management-overview/tenant-management-example-tenant.png)

*Tenant management* is the planning, deployment, and ongoing operation of your Microsoft 365 tenants. 

## Attributes of a well-designed and operating tenancy

Beyond choosing the right name and location for your tenancy, there are additional elements to plan, deploy, and manage to ensure that your users can use the cloud productivity apps of your tenants, such as Microsoft Teams and Exchange Online, can operated effectively, securely, and performant.
Here are the elements:

- You have the correct set of services (subscriptions) and licenses
  - The set of services match your business, IT, and security needs
  - There is an adequate number of licenses for your users and anticipated changes in staffing
- For networking:
  - You have configured the correct DNS domain names
  - For enterprise networks, you have optimized network traffic to the Microsoft network on the internet for onsite workers
  - You have optimized network traffic for remote workers who are using a VPN client
- You have synchronized your Active Directory Domain Services (AD DS) accounts, groups, and other objects
  - Your Azure AD tenant accounts are mapped to Exchange Online mailboxes with the correct DNS domains for email addresses
  - Your user accounts have been assigned the correct licenses from the correct purchased services (such as Microsoft 365 E3 or E5)
- You have configured strong identity and access management
  - You are requiring secure user sign-in with passwordless or multi-factor authentication (MFA)
  - You have Conditional Access policies that enforce sign-in requirements and restrictions for higher levels of security
- On-premises Office servers and their data have been migrated to cloud apps or are being used in a hybrid configuration
- You are doing device management with Intune or Basic Mobility and Security built into Microsoft 365
  - Your organization-owned devices are enrolled and managed
  - The apps for personal devices are managed

## Next steps

Use these steps to secure and optimize access to your organization's servers and cloud services and maximize your remote worker's productivity.

1. [Determine your tenancies](tenant-management-tenancies.md)
2. [Optimize your networking](tenant-management-networking.md)
3. [Synchronize your identities and enforce secure sign-ins](tenant-management-identity.md)
4. [Migrate your on-premises Office servers and data](tenant-management-migration.md)
5. [Deploy device and app management](tenant-management-device-management.md)

[![The steps to deploy and manage a Microsoft 365 for enteprise tenancy](../media/tenant-management-overview/tenant-management-step-grid.png)](tenant-management-tenancies.md)

To understand how a fictional but representative multi-national organization deployed the elements of their Microsoft 365 tenancy, see [Microsoft 365for the Contoso Corporation](../enterprise/contoso-case-study.md).
