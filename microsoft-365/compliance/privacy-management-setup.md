---
title: "Get started with Microsoft privacy management (preview)"
f1.keywords:
- CSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- M365-privacy-management
search.appverid: 
- MOE150
- MET150
description: "Learn how to set up privacy management for your organization, set roles and permissions, and configure important settings."
---

# Get started with privacy management (preview)

Privacy management is currently available in public preview. Learn how to set up access for your organization and get started with evaluating your data.

## Who can access privacy management

The public preview of privacy management is available within the Microsoft 365 compliance center and is available to organizations with E1, E3, and E5 enterprise licenses in Office 365 and Microsoft 365. When privacy management moves to general availability, organizations that used the public preview will need to obtain a new license.

For detailed licensing guidance, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

> [!Note]
> The public preview of privacy management will not be available to US Government Community (GCC) Moderate, GCC High, or Department of Defense (DoD) customers.

## Set up privacy management

To get started with privacy management, first get your free trial license. Then you can sign in, assign permissions for your users, review settings, and start using privacy management's features.

### Get free trial license

To get started with the public preview, your global admin can obtain the free privacy management trial license from the [admin center](https://aka.ms/purchasem365privacy). Select “Start trial” to begin. Your license lasts for one month and you can renew it at no cost as needed during the public preview.

After obtaining your subscription, allow up to 30 minutes for it to activate. Then return to privacy management in the compliance center to get started.

When you first open privacy management, you will be asked to confirm that you agree to the terms and the personal data evaluation process ([learn more](privacy-management.md#where-privacy-management-identifies-personal-data)). You can review the provided links in full before proceeding. Once you agree, it may take up to 24 hours before privacy management starts providing insights about your organization’s data.

If you don’t hold the required role to obtain the subscription or consent to the terms of using privacy management, you’ll be prompted to contact your global admin for assistance.

### Set user permissions and assign roles

Privacy management uses a role-based access control (RBAC) permission model. Only users who are assigned a role may access privacy management, and the actions allowed by each user are restricted by role type.

We recommend that the global admin sign in and set user permissions in the Compliance Center when using privacy management for the first time. For a quick start, the Privacy Management role group has permissions to access all features of privacy management. This group may be a good fit for organizations where the same individual may perform all duties within the privacy management solution. Other privacy roles allow you to take more granular control and assign users to selected features or functions.

To learn more about role groups and how to grant access, see [Set user permissions and assign roles](privacy-management-permissions.md).

### Manage settings

The Settings page is accessible via the gear wheel in the upper right corner of privacy management’s main pages. It allows privacy management administrators to configure essential properties across privacy management, like global settings for anonymization, email notifications, and more.

You may wish to review the default configuration and make any desired adjustments before you begin. To learn more about your options, see [Manage privacy management settings](privacy-management-settings.md).

## Start visualizing your data

After signing into privacy management, you’ll arrive at the **Overview** page. This page provides insights about the personal data stored in your Microsoft 365 environment in order to help you quickly spot issues, identify risk indicators, and take action to fix issues. Your Overview should populate with initial insights within the first 24 hours of signing up. As you continue to use privacy management, the overview page will refresh to continue to provide current information.

For further insights into your data over time, your **Data profile** page will provide more visualizations and analytics and give you a high-level view of your organization's data by geographic location and by Microsoft 365 service.

To learn more about these pages, see [Find and visualize your data](privacy-management-data-profile.md).

## Start managing risks with default policies

Privacy management will kickstart evaluating your data and help give you a look into key risk scenarios by creating three policies with default settings, using the templates for data minimization, data overexposure, and data transfers. These policies will be on by default, but will not automatically trigger notification mails or remediation prompts. After your initial setup, you can proceed to create and customize your own policies. To learn more, see [Create and manage policies](privacy-management-policies.md).

## Get started with subject rights requests

Privacy management's subject rights requests solution can help you handle requests from individuals who want to review or manage the personal data you store about them. To learn more about using these features, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).
