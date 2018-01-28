---
title: "Step 1: Plan for users and groups"
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
description: Plan for the set of users and groups that will work for your organization.
---

# Step 1: Plan for users and groups

![This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Required-BothSKUs.png)

Combining users, groups, and group membership with security features in the correct configuration allows you to:

- Maintain control over who has access to resources in your environment.
- Secure access with controls that ensure strong assurances of identity (users are who they say they are) and access from safe devices.
- Provision resources in your environment with appropriate permissions to reduce the potential for harm and data leakage. 
- Monitor your environment for anomalous user behavior and automatically taking action.

Identity begins with the designation of a primary identity provider, which is a service that stores the user accounts and their attributes and the groups and their membership, and from which the ongoing administration of users and groups occurs.

For organizations adopting Microsoft 365 Enterprise, the primary identity provider is either:

- Windows Server Active Directory AD, an intranet identity provider hosted on computers running Windows Server. This is the case for organizations that have an existing on-premises identity provider.
- Azure Active Directory (Azure AD), a cloud-based Identity as a Service (IDaaS) that provides a broad range of capabilities for managing and protecting your environment. This is the case for organizations that have no existing on-premises infrastructure.

For organizations that have an existing on-premises identity provider, you need to synchronize your user accounts and groups from Windows Server AD to Azure AD. You can also use Azure AD to create and manage groups that exist only in the Microsoft cloud.

Once you have your users and groups in Azure AD, you can:

- Manage all the Azure AD accounts for all your cloud applications. 
- Use the same set of controls to protect access to applications across your environment.
- Collaborate with partners.
- Monitor anomalous account behavior, such as suspicious sign-in attempts, and automatically act.

Organizations can be made up of users with a variety of purposes. Some are employees and have a permanent status. Some are vendors, contractors, or partners that have a temporary status. Some are external users that have no user accounts but must still be granted access to specific services and resources to facilitate interaction and collaboration.

Here are the steps to plan for and implement your user accounts and groups.

## 1. Categorize your users.
Take stock of the types of users to your organization. What are the logical groupings? Group users by high-level function or purpose to your organization. 

Once the user accounts are in Azure AD, you have flexibility in how they are managed:

- Tenant accounts are users within your organization that you license for cloud services. 
- Business to Business (B2B) accounts are users outside your organization that you invite to participate in collaboration. 
- Additionally, some cloud services can be shared with users outside your organization without any user accounts.

## 2. Decide what types of user accounts to use.

Azure AD lets you manage accounts for business partners (B2B accounts) in addition to accounts for users you manage directly (Azure tenant accounts). Some cloud capabilities extend to users who have no association with your directory (no account management). 

## 3. Plan for Windows Server AD and Azure AD groups.

Groups in Azure AD are used for several purposes that simplify management of your cloud environment. For example, for Azure AD groups, you can:

- Use group-based licensing to assign licenses for Office 365 and EMS to your user accounts automatically as soon as they are added in Azure AD or synchronized from Windows Server AD. 
- Add user accounts to specific groups dynamically based on user account attributes, such as department.  
- Automatically provision users for SaaS applications and to protect access to those applications with multi-factor authentication and other conditional access rules.
- Provision permissions and levels of access for SharePoint Online team sites. Azure AD groups can also be used with scoped Azure Information 

Protection policies to protect files with encryption and permissions. 

## Results

The results of this step are:

- A list of user accounts in Azure AD that correspond to the employees in your organization and the vendors, contractors, and partners that work for or with your organization.
- A set of groups and their membership in Azure AD that reflect logical sets of user accounts and other groups for automatic licensing provisioning of security settings for Microsoft cloud services.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step1)
 corresponding to this step.


## Next step

[Step 2: Azure AD Connect](identity-azure-ad-connect.md)
