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

Privacy management will be available within the Microsoft 365 compliance center. The public preview of privacy management is available to organizations with E1, E3, and E5 Office 365 and Microsoft 365 enterprise licenses (free of cost during public preview). Upon general availability of privacy management, organizations with E1, E3, and E5 Office 365 and Microsoft 365 enterprise licenses will need to purchase privacy management licenses to access and use the solution.

Note that the public preview of privacy management will not be available to US Government Community (GCC) Moderate, GCC High, or Department of Defense (DoD) customers.

To get started with the public preview, obtain the preview subscription from the admin center. If you do not yet have the license when you first select privacy management in the compliance center, you will be directed to the admin center to get started. We recommend the global admin sign in and set user permissions as outlined below when visiting privacy management for the first time. If you don’t hold the required role to obtain the subscription or consent to the terms of using privacy management, you’ll be prompted to contact your global admin for assistance.

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
  - Note that significantly editing or removing a role group or its key members may interfere with your or your team members’ ability to use privacy management.

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

### Anonymization

### User notification emails

### Teams collaboration

### Power Automate flows

### Data matching

### Data retention periods

### Data review tags

## Get started with policies

## Get data insights
