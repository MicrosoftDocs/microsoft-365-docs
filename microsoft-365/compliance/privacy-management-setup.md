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

In this article: learn how to set up **access to privacy management** for your organization, how to **get started** with evaluating your data, and how to handle important **settings**.

## Sign up

Privacy management is available within the Microsoft 365 compliance center. The public preview of privacy management is available to organizations with E1, E3, and E5 Office 365 and Microsoft 365 enterprise licenses. Upon general availability of privacy management, organizations will need to obtain a new license.

Note that the public preview of privacy management will not be available to US Government Community (GCC) Moderate, GCC High, or Department of Defense (DoD) customers.

To get started with the public preview, obtain the preview subscription from the admin center. If you do not yet have a subscription when you first select privacy management in the compliance center, you will be directed to the admin center to get started. We recommend that the global admin sign in and set user permissions as outlined below when visiting privacy management for the first time. If you don’t hold the required role to obtain the subscription or consent to the terms of using privacy management, you’ll be prompted to contact your global admin for assistance.

Confirming that you would like to start using privacy management signals that you agree to the terms and the personal data evaluation process. You can review the provided links in full before proceeding.

## Set user permissions and assign roles

Privacy management uses a role-based access control (RBAC) permission model. Only users who are assigned a role may access privacy management, and the actions allowed by each user are restricted by role type.

Permissions and role assignments for privacy management can be handled within the Microsoft 365 compliance center, as follows. Note that roles specific to privacy management will not appear in Azure Active Directory.

### In the Microsoft 365 compliance center

- Select Permissions in the left navigation.
- Expand Compliance Center and select Roles. The full list of role groups will appear. 
- Scroll to find the privacy management groups, or search by keyword, for example “privacy.”
- Select the relevant role group to see a description, the assigned roles, and a list of members.
- Use the Edit link beside these sections to add or change users or edit the settings.

### Learn about role groups and roles

This section outlines the role groups and roles relevant to privacy management. Members should be assigned to role groups by the top-level admin depending on what tasks they need to accomplish and what level of file access is appropriate. Each role group includes one or more roles. These roles may pertain to specific privacy management tasks or may correspond to key functions that are enabled or restricted for that group’s members.

Role groups can be customized if needed. To avoid accidental loss of access, we recommend creating a copy of the existing role group you wish to customize, giving the copy an identifiable name, making and verifying your changes to the new group, and assigning people to it as appropriate.

**Privacy Management**: This group contains all the privacy management permission roles in a single group. This is the easiest way to quickly get started with privacy management and manage access control for other groups that will use privacy management. It is also a good fit for organizations that do not need separate permissions defined for separate groups of users.

**Privacy Management Administrators**: Members of this role group focus on configuration and administration tasks, and have broad access to privacy management functions, including creating, reading, updating, and deleting privacy management policies, subject rights requests, privacy management permissions, and privacy management settings.

**Privacy Management Analysts**: Members of this role group act as privacy management case analysts. They can investigate policy matches, view file metadata, and take remediation actions. This group cannot access full files through the Content Explorer.

**Privacy Management Investigators**: Members of this group act as privacy management data investigators. They can investigate policy matches, view the associated file content, and take remediation actions. This group can access files through the Content Explorer.

**Privacy Management Viewer**: Members of this group can view analytical information in privacy management, like the overview, data profile, and subject request reports.

**Subject Rights Request Administrators**: Members of this group have full access to administer and create subject rights requests.

**Privacy Management Contributors**: Members of this group have contributor access to subject rights requests.

To see the specific roles included in each role group, see the following table.

| **Role group**      | **Roles included**                        |
|:-- |:--|
| Privacy Management  | Case Management                           |
|                     | Data Classification Content Viewer        |
|                     | Data Classification List Viewer           |
|                     | Privacy Management Admin                  |
|                     | Privacy Management Analysis               |
|                     | Privacy Management Investigation          |
|                     | Privacy Management Permanent Contribution |
|                     | Privacy Management Temporary Contribution |
|                     | Privacy Management Viewer                 |
|                     | Subject Rights Request Admin              |
|                     | View-Only Case                            |
| Privacy Management Admin | Case Management                      |
|                          | Privacy Management Admin             |
|                          | View-Only Case                       |
| Privacy Management Analysts | Case Management                   |
|                             | Data Classification List Viewer   |
|                             | Privacy Management Analysis       |
|                             | View-Only Case                    |
| Privacy Management Investigators | Case Management              |
|                                  | Data Classification Content Viewer |
|                                  | Data Classification List Viewer    |
|                                  | Privacy Management Investigation   |
|                                  | View-Only Case                     |
| Privacy Management Viewer        | Privacy Management Viewer          |
| Subject Rights Request Administrator | Subject Rights Request Admin   |
|Privacy Management Contributors       | Privacy Management Temporary Contribution |
|                                      | Privacy Management Permanent Contribution |

## Configure settings

The Settings page is accessible via the gear wheel in the upper right corner of privacy management’s main pages. It allows privacy management administrators to configure essential properties across privacy management. Options include the following.

### Anonymization

This feature enables you to show anonymized versions of usernames within privacy management features to users in certain roles. This will replace identifiable display names like “Grace Taylor” with a generic label like “AnonyIS8-988” in order to help mask your users’ identities while reviewing sensitive data. This option does not apply to the subject rights request module.

### User notification emails

When we detect a match for your data handling policies, privacy management can send an email to the affected users with corrective actions to take and a link to privacy training. In Settings, you can enable or disable the email notification capability of privacy management as a whole. You can activate individual notifications, set email frequency, and specify a training URL when you create or edit a policy. If notification capability is turned off in Settings, any policy-level configuration for specific notification mails will be disabled. To learn more about policies, see [Create and manage policies](privacy-management-policies.md).

### Teams collaboration

Integrate Microsoft Teams capabilities with privacy management to enhance collaboration with stakeholders. Every time a subject rights request is created, an associated team will be created. Users can be added to a team from the request’s Collaborators tab. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

### Power Automate flows

Use Power Automate flows to automatically manage privacy-related processes and tasks. You can create flows in the Settings section using built-in privacy management templates, or use the Power Automate console to create custom flows. To learn more about Power Automate, see the [Power Automate](/power-automate/) documentation.

### Data matching

Use this section to upload data schemas that describe attributes of your data subjects, which will help identify the correct data subject when searching for personal data within your Microsoft 365 environment. Schemas and rule packages are created and uploaded in XML format. Under Personal data upload, you can also submit personal data that matches a provided schema. You can create and upload your own file or choose to upload personal data from Azure. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

### Data retention periods

For subject rights requests, choose how long you want to retain the final data collected and report after a request is closed. You can select between 30 or 90 days. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

### Data review tags

Manage the tags you’ll use to mark files retrieved in a subject rights request. In this section, you can edit the names and descriptions for custom tags. You can also edit tag descriptions for the built-in tags provided by the system. Names for system tags cannot be changed. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

## Get initial data insights

After signing into privacy management, you’ll arrive at the **Overview** page. This page provides dynamic insights about the personal data stored in your Microsoft 365 environment in order to help you quickly spot issues, identify risk indicators, and take action to fix issues. Your Overview should populate with initial insights within the first 24 hours of signing up. As you continue to use privacy management, the overview page will refresh to continue to provide current information.

For further insights into your data over time, your **Data profile** page will provide more visualizations and analytics and give you a high-level view of your organization’s data by geographic location and by Microsoft 365 service.

To learn more about these pages, see [Find and visualize your data](privacy-management-data-profile.md).
