---
title: "Step 1: Plan for users and groups"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/06/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:
description: Plan for the set of users and groups that will work for your organization.
---

# Step 1: Plan for users and groups

*This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/identity_icon-small.png)

In this step, you'll create your identity infrastructure that combines users, groups, and group membership with security features in the correct configuration. This allows you to:

- Maintain control over who has access to resources in your environment.
- Secure access with controls that ensure strong assurances of identity (users are who they say they are) and access from safe devices.
- Provision resources in your environment with appropriate permissions to reduce the potential for harm and data leakage. 
- Monitor your environment for anomalous user behavior and automatically acting.

## Plan your primary identity provider

To create your identity infrastructure, you'll designate a primary identity provider. This service stores user accounts and their attributes, groups and their memberships, and supports their ongoing administration.

When your organization adopts Microsoft 365 Enterprise, your primary identity provider is either:

- **Active Directory Domain Services (AD DS)**, an intranet identity provider hosted on computers running Windows Server. This is typically used by organizations that have an existing on-premises identity provider.
- **Azure Active Directory (Azure AD)**, a cloud-based Identity as a Service (IDaaS) that provides a broad range of capabilities for managing and protecting your environment. This is typically used by organizations that have no existing on-premises infrastructure.

If your organization has an existing on-premises identity provider, you need to synchronize your user accounts and groups from AD DS to Azure AD to provide more seamless access to the cloud-based services of Microsoft 365 Enterprise. You can also use Azure AD to create and manage groups that exist only in the Microsoft cloud.

After you have your users and groups in Azure AD, you can:

- Manage all the Azure AD accounts for all your cloud applications. 
- Use the same set of controls to protect access to applications across your environment.
- Collaborate with external partners.
- Monitor anomalous account behavior, such as suspicious sign-in attempts, and automatically act.

Follow the instructions in the next two sections to plan for and implement your user accounts and groups.

## Categorize your users
Users in organizations can be categorized in a number of ways. For example, some are employees and have a permanent status. Some are vendors, contractors, or partners that have a temporary status. Some are external users that have no user accounts but must still be granted access to specific services and resources to support interaction and collaboration. For example:

- Tenant accounts represent users within your organization that you license for cloud services
- Business to Business (B2B) accounts represent users outside your organization that you invite to participate in collaboration

Take stock of the types of users to your organization. What are the groupings? For example, you can group users by high-level function or purpose to your organization.

Additionally, some cloud services can be shared with users outside your organization without any user accounts. You'll need to identify these groups of users as well.

## Plan for AD DS and Azure AD groups

You can use groups in Azure AD for several purposes that simplify management of your cloud environment. For example, for Azure AD groups, you can:

- Use group-based licensing to assign licenses to your user accounts automatically as soon as they are added in Azure AD or synchronized from AD DS. 
- Add user accounts to specific groups dynamically based on user account attributes, such as Department.  
- Automatically provision users for Software as a Service (SaaS) applications and to protect access to those applications with multi-factor authentication and other conditional access rules.
- Provision permissions and levels of access for SharePoint Online team sites. Azure AD groups can also be used with sensitivity or Azure Information Protection labels to protect files with encryption and permissions. 

## Results

When you complete this step, you’ll have:

- A list of user accounts in Azure AD that correspond to the employees in your organization and the vendors, contractors, and external partners that work for or with your organization.
- A set of groups and their membership in Azure AD that reflect logical sets of user accounts and other groups for automatic licensing provisioning of security settings for Microsoft cloud services.

Once your Azure AD users and groups are created, you can start assigning licenses and using productivity workloads such as OneDrive for Business or Exchange Online.

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step2.png)| [Secure your privileged identities](identity-designate-protect-admin-accounts.md) |

