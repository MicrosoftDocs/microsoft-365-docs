---
title: "Azure Active Directory setup guides"
ms.author: Kwekua
author: Kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- scotvorg
description: "Learn about setup guides for Azure Active Directory."
---

# Azure Active Directory setup guides

Azure Active Directory (Azure AD) features help you manage and secure your organization. These setup guides will help you integrate those features in a simple way. In the following sections, we’ll briefly describe the setup guides and share links to the guides.

## Who are these setup guides for?

These setup guides are designed for small to medium-sized organizations that typically might not have a dedicated identity team. You don’t need to be an identity expert to use them.

## What to expect and what you’ll need

The setup guides help you configure the core functionality of Azure AD. If you need to set up a more advanced configuration, the setup guide will point you to the appropriate location in the Azure AD portal.

### Required permissions

You must be a member of the following administrative roles:

- Global administrator: allows you to use integrated tools in the setup guides to make changes in your Microsoft 365 organization.

- Global reader: allows you to view the setup guides but not make changes in your tenant.

## Identity security for Teams

Azure Active Directory (Azure AD) is our cloud-based identity and access management service, which helps your employees sign in and access apps and services.
This catalog contains some basic security features you can use to ensure your users are safe and have the most productive time using Teams.

### Licensing

An Azure Active Directory P2 license is required to utilize the security features in this catalog.

[Open the Identity security for Teams catalog](https://portal.office.com/AdminPortal/home?Q=azuredocs#/teamsidentity)

## Identity Governance

This wizard catalog is designed to help customers with Azure Active Directory P2 functionality, including Access Reviews (AR), Privileged Identity Management (PIM) and Entitlement Management (ELM). For PIM and ELM we offer a curated list of docs and a pointer to the Azure Active Directory admin center, where the admin can configure this functionality. For AR, we offer a fully automated experience that allows admins to choose from two templates. These templates include one that allows group owners to approve guest usage in all Microsoft 365 groups. This is a top policy that customers use today.  

Next, we offer a test template, where the admin is the reviewer of guests for a specific group they choose. If the tenant already has a review in place that covers all Microsoft 365 groups guest users, the admin will be pointed to the Azure Active Directory admin center to manage the existing review and there will be no automated experience.

[Open the Identity Governance setup guide](https://admin.microsoft.com/adminportal/home?Q=azuredocs#/modernonboarding/identitygovernance)

> [!NOTE]
> Azure Active Directory P2 license is required to utilize the security features in this catalog.

## Azure Active Directory deployment  

The Azure Active Directory setup guide will help you set up the most common Azure AD features in a recommended order. The setup guide is split into three sections: **Initial**, **Core**, and **Advanced**. Each section recommends a set of features you should turn on.

The setup guides contain a checklist of the tasks you need to complete and you can track your progress as you go through the guides. The guides will also link to the other setup guides when necessary.

[Open the Azure Active Directory setup guide](https://admin.microsoft.com/adminportal/home?Q=azuredocs#/modernonboarding/azureadsetup).

## Add or sync users to your Microsoft account  

This guide helps you set up user accounts setup in Azure and Microsoft 365. Based on your environment and needs, you can choose to add users individually, migrate your on-premises directory with Azure AD cloud sync or Azure AD Connect, or troubleshoot existing sync issues.

### Licensing

Using Azure Active Directory sync tools is free and included with all Microsoft 365 subscriptions.

[Open the Add or Sync users setup guide](https://admin.microsoft.com/adminportal/home?Q=azuredocs#/modernonboarding/identitywizard).

## Secure your cloud apps with Single Sign On (SSO)

This guide is designed to help you add cloud apps to Microsoft 365. In our guide, you can add an application to your tenant, add users to the app, assign roles, and more.  If the app supports Single Sign-On (SSO), we’ll walk you through that configuration as well.

### Licensing

Every paid subscription to Microsoft 365 comes with a free subscription to Azure AD. You can use Azure AD to manage your apps and create and manage user and group accounts.

[Open the Add a cloud app to Microsoft 365 setup guide](https://portal.office.com/AdminPortal/home?Q=azuredocs#/azureadappintegration)

## Azure Self-Service password reset (SSPR) guide

This setup guide is designed to help you enable and configure self service password reset. The setup guide will walk you through recommended options, including password write-back and admin notifications.

### Licensing

SSPR requires one of the following licenses:

- Azure Active Directory P1 or P2

- Microsoft 365 Business Premium

- Microsoft 365 Enterprise E3 or E5  

- Enterprise Mobility and Security E3 or E5

[Open the self-service password reset setup guide](https://admin.microsoft.com/adminportal/home?Q=azuredocs#/modernonboarding/ssprsetup).

## Multi-factor authentication (MFA)

This guide provides the current MFA status and helps IT admins select the best MFA option that meets their organization's requirements. Then we assist with configuring and enforcing the selected MFA method for the org.

### Licensing

Conditional Access requires an Azure Active Directory P1 or P2 license, security defaults and per-user MFA are free and included with all Microsoft 365 subscriptions.

[Open the multi-factor authentication (MFA) guide](https://admin.microsoft.com/adminportal/home?Q=azuredocs#/modernonboarding/mfasetupguide)

## The passwordless setup guide

The passwordless setup guide is designed to help you determine the best passwordless method for your environment. The methods include security keys, Windows Hello for Business, and the Microsoft Authenticator app. If the recommendation is Windows Hello for Business, there's a section to guide you through the different options. The guide asks you questions to help you craft a step-by-step plan.

### Licensing

Every paid subscription to Microsoft 365 comes with a free subscription to Azure AD. You can use Azure AD to manage your apps and create and manage user and group accounts.

[Open the passwordless setup guide](https://admin.microsoft.com/adminportal/home?Q=azuredocs#/modernonboarding/passwordlesssetup).
