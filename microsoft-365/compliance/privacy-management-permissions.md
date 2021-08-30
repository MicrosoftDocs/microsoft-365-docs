---
title: "Set user permissions and assign roles in privacy management (preview)"
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
description: "Learn how to set up privacy management permissions and assign users to role groups."
---

# Set user permissions and assign roles in privacy management (preview)

To give members of your organization permissions to use privacy management, assign them to the appropriate role groups in the Microsoft 365 compliance center. Note that roles specific to privacy management will not appear in Azure Active Directory.

## Sign in and set permissions

1. Go to the [Microsoft 365 compliance center](https://compliance.microsoft.com/) and select **Permissions** in the left navigation.  
2. Under the **Compliance center** dropdown, select **Roles**. The full list of role groups will appear.
3. Find the role group to which you want to add one or more users, and check the box to the left of the group name. See below for a list of privacy management roles.  
4. On the flyout pane for that group, select **Edit** under the **Members** header.  
5. Select **Choose members**. Another flyout window will appear.
6. Select **+ Add** to choose one or more users to add to the group.  
7. Select the checkbox next to the names you want to add, then select the **Add** button at the bottom.  
8. When you’re done assigning users, select **Done**, then **Save**, then **Close**.

## Role groups and roles

Members should be assigned to role groups depending on what tasks they need to accomplish and what level of file access is appropriate. Each role group includes one or more roles. These roles may pertain to specific privacy management tasks or key functions that are enabled or restricted for that group’s members.  

Role groups can be customized if needed. To avoid accidental loss of access, we recommend creating a copy of the existing role group you wish to customize, giving the copy an identifiable name, making and verifying your changes to the new group, and assigning people to it as appropriate.

## Privacy Management role group

This group contains all the privacy management permission roles in a single group. This role group may be a good fit for organizations where the same individual may perform all duties within the privacy management solution. Providing membership in this role group will grant that account full access to all features of the privacy management solution.

Roles include:

- Case Management  
- Data Classification Content Viewer  
- Data Classification List Viewer  
- Privacy Management Admin  
- Privacy Management Analysis  
- Privacy Management Investigation  
- Privacy Management Permanent Contribution  
- Privacy Management Temporary Contribution  
- Privacy Management Viewer  
- Subject Rights Request Admin  
- View-Only Case

## Privacy Management Administrators role group

Members of this role group have broad access to privacy management functions, including creating, reading, updating, and deleting privacy management policies, subject rights requests, privacy management permissions, and privacy management settings.

Roles include:

- Case Management  
- Privacy Management Admin  
- View-Only Case

## Privacy Management Analysts role group

Members of this role group act as privacy management case analysts. They can investigate policy matches, view file metadata, and take remediation actions. This group cannot access full files through the Content Explorer.

Roles include:

- Case Management  
- Data Classification List Viewer  
- Privacy Management Analysis  
- View-Only Case

### Privacy Management Investigators role group

Members of this group act as privacy management data investigators. They can investigate policy matches, view the associated file content, and take remediation actions. This group can access files through the Content Explorer.

Roles include:

- Case Management  
- Data Classification Content Viewer  
- Data Classification List Viewer  
- Privacy Management Investigation  
- View-Only Case

## Privacy Management Viewer role group

Members of this group can view analytical information in privacy management, like the overview, data profile, and subject request reports.

Roles include:

- Privacy Management Viewer

## Subject Rights Request Administrators role group

Members of this group have full access to administer and create subject rights requests.

Roles include:

- Subject Rights Request Admin

## Privacy Management Contributors role group

Members of this group have contributor access to subject rights requests.  

Roles include:

- Privacy Management Temporary Contribution  
- Privacy Management Permanent Contribution
