---
title: "Microsoft Entra setup guides"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier3
- scotvorg
ms.custom: 
- admindeeplinkMAC
description: "Learn about setup guides for Microsoft Entra ID."
---

# Microsoft Entra setup guides

Microsoft Entra features help you manage and secure your organization. These setup guides will help you integrate those features in a simple way. In the following sections, we’ll briefly describe the setup guides and share links to the guides.

## Who are these setup guides for?

These setup guides are designed for small to medium-sized organizations that typically might not have a dedicated identity team. You don’t need to be an identity expert to use them.

## What to expect and what you’ll need

The setup guides help you configure the core functionality of Microsoft Entra ID. If you need to set up a more advanced configuration, the setup guide will point you to the appropriate location in the Microsoft Entra admin center.

### Required permissions

You must be a member of the following administrative roles:

- Global administrator: allows you to use integrated tools in the setup guides to make changes in your Microsoft 365 organization.

- Global reader: allows you to view the setup guides but not make changes in your tenant.

## Identity security for Teams

Microsoft Entra ID is our cloud-based identity and access management service, which helps your employees sign in and access apps and services.
This catalog contains some basic security features you can use to ensure your users are safe and have the most productive time using Teams.

### Licensing

Using features in this catalog requires either Microsoft Entra ID Governance or Microsoft Entra ID P2 license. To find the right license for your requirements, see [Compare generally available features of Microsoft Entra ID](https://www.microsoft.com/security/business/identity-access-management/azure-ad-pricing).

[Open the Identity security for Teams catalog.](https://portal.office.com/AdminPortal/home?Q=azuredocs#/teamsidentity)

## Identity Governance

This catalog is designed to help customers with Microsoft Entra ID Governance or Microsoft Entra ID P2 functionality, including access reviews, PIM, entitlement management (ELM), Access Reviews, HR-driven user provisioning, and life cycle workflows.

### PIM

Manage users’ time-bound admin access with our automated system that allows eligible users to complete privileged tasks through an approval workflow without risking exposure of sensitive data or critical configuration settings.

### ELM

We offer a curated list of docs and a pointer to the Microsoft Entra admin center, where the admin can configure entitlement management.

### Access reviews

We offer a fully automated experience that allows you to first test and then enable the most common access review settings. This allows group owners to approve guest usage in all Microsoft 365 groups.

### HR-driven user provisioning

Respond faster to identity changes in your HR app and eliminate manual provisioning. Sync worker profile changes with your business apps. This includes the ability to writeback managed attributes directly from the app, whether it's a hire, name, title, manager change, or termination.

### Lifecycle workflows

Easily manage your users' lifecycle in Microsoft Entra ID by creating custom workflows to automate repetitive onboarding and offboarding tasks, eliminating the need for manual processes. Lifecycle workflows automatically execute configured tasks when users join or leave your org and provide insights for easy troubleshooting.

<a href="https://go.microsoft.com/fwlink/p/?linkid=386330" target="_blank">Open the Identity Governance setup guide.</a>

> [!NOTE]
> A Microsoft Entra ID Governance or Microsoft Entra ID P2 license is required to utilize the security features in this catalog.

<a name='azure-active-directory-deployment'></a>

## Microsoft Entra deployment  

The Microsoft Entra setup guide will help you set up the most common Microsoft Entra features in a recommended order. The setup guide is split into three sections: **Initial**, **Core**, and **Advanced**. Each section recommends a set of features you should turn on.

The setup guides contain a checklist of the tasks you need to complete, and you can track your progress as you go through the guides. The guides will also link to the other setup guides when necessary.

<a href="https://go.microsoft.com/fwlink/p/?linkid=2134390
" target="_blank">Open the Microsoft Entra setup guide.</a>

## Add or sync users to Microsoft Entra ID  

This guide helps you set up user accounts setup in Microsoft Entra ID and Microsoft 365. Based on your environment and needs, you can choose to add users individually, migrate your on-premises directory with Microsoft Entra Connect Cloud Sync or Microsoft Entra Connect, or troubleshoot existing sync issues.

### Licensing

Using Microsoft Entra ID Sync tools is free and included with all Microsoft 365 subscriptions.

<a href="https://go.microsoft.com/fwlink/p/?linkid=2264742" target="_blank">Open the Add or Sync users setup guide.</a>

## Secure your cloud apps with Single Sign On (SSO)

This guide is designed to help you add cloud apps to Microsoft 365. In our guide, you can add an application to your tenant, add users to the app, assign roles, and more. If the app supports single sign-on (SSO), we’ll walk you through that configuration.

### Licensing

Every paid subscription to Microsoft 365 comes with a free subscription to Microsoft Entra ID. You can use Microsoft Entra ID to manage your apps and create and manage user and group accounts.

<a href="https://go.microsoft.com/fwlink/p/?linkid=2204974" target="_blank">Open the Add a cloud app to Microsoft 365 setup guide.</a>

## Azure Self-Service password reset (SSPR) guide

This setup guide is designed to help you enable and configure self service password reset. The setup guide will walk you through recommended options, including password write-back and admin notifications.

### Licensing

SSPR requires one of the following licenses:

- Microsoft Entra ID Governance

- Microsoft Entra ID P1 or P2

- Microsoft 365 Business Premium

- Microsoft 365 Enterprise E3 or E5  

- Enterprise Mobility and Security E3 or E5

<a href="https://go.microsoft.com/fwlink/p/?linkid=2264852" target="_blank">Open the self-service password reset setup guide.</a>

## Configure multifactor authentication (MFA)

The Configure multifactor authentication (MFA) guide provides customers who have the Microsoft Entra ID P1 or Microsoft Entra ID P2 license with customizable Conditional Access templates that include the most common and least intrusive security standards. Customers with the P2 license can also use risk-based Conditional Access policies. 

Customers without a P1 or P2 license can use a one-click solution to enable security defaults, a baseline protection policy for all users. They can also enable legacy (per-user) MFA.

### Licensing

Conditional Access requires Microsoft Entra ID Governance or a Microsoft Entra ID P1 or P2 license. Security defaults and per-user MFA are included with all Microsoft 365 subscriptions.

<a href="https://go.microsoft.com/fwlink/p/?linkid=2264944" target=")_blank">Open the multifactor authentication (MFA) guide.</a>

## Plan your passwordless setup guide

Upgrade to an alternative sign-in approach that allows users to access their devices securely with one of the following passwordless authentication methods:

- Windows Hello for Business

- The Microsoft Authenticator app

- Security keys

- Temporary Access Pass (TAP)

Use the passwordless deployment guide to discover the best authentication methods to use and receive guidance on how to deploy them.

### Licensing

Every paid subscription to Microsoft 365 comes with a free subscription to Microsoft Entra ID. You can use Microsoft Entra ID to manage your apps and create and manage user and group accounts.

<a href="https://go.microsoft.com/fwlink/p/?linkid=2204974" target="_blank">Open the passwordless setup guide.</a>

<a name='migrate-from-adfs-to-azure-ad'></a>

## Migrate from ADFS to Microsoft Entra ID

We offer custom guidance for migrating from ADFS to Microsoft Entra ID. Answer a few questions about your Active Directory Federation Services (AD FS) infrastructure and then implement either pass-through authentication (PTA) or password hash sync (PHS) to give users a streamlined experience while accessing your org's apps.

<a href="https://go.microsoft.com/fwlink/p/?linkid=2264847
" target="_blank">Open the Migrate from ADFS to Microsoft Entra ID guide.</a>
