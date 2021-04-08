---
title: "Centralized Deployment FAQ"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Review the answers to frequent questions about Centralized Deployment from the Microsoft 365 admin center."
---

# Centralized Deployment FAQ

Centralized Deployment is the recommended way for an Office 365 admin to deploy Office add-ins (Word, Excel, PowerPoint, and Outlook) to users and groups within an organization, provided the organization meets all requirements for using Centralized Deployment as outlined in this article.   
  
## How do I know if my organization is set up for Centralized Deployment?  

Centralized deployment of add-ins requires that users are using Microsoft 365 Apps for enterprise (and are signed into Office using their organizational log-in credentials) and have Exchange Online mailboxes. Your subscription directory must either be in, or federated to, Azure Active Directory.  
 
Centralized Deployment is only supported for online mailboxes. It does not support deployment to on-premises Exchange mailboxes.

You can use the [Centralized Deployment Compatibility Checker](centralized-deployment-of-add-ins.md#centralized-deployment-compatibility-checker) to determine if your subscription is eligible. 
  
## How do you target add-in user assignments with Centralized Deployment?  

Centralized Deployment supports assignments to individual users, groups, and everyone in the tenant. Centralized Deployment can be used for users in top-level groups or groups without parent groups, but not for users in nested groups or groups that have parent groups. Centralized Deployment is also part of most Azure Active Directory groups, including Office 365 Groups, distribution lists, and security groups.  

It is better to use groups assignments instead of individual user assignment for easier management.
 
For more details, see [User and Group assignments](./centralized-deployment-of-add-ins.md?view=o365-worldwide#user-and-group-assignments).  
   
## How long does it take for add-ins to show up for all users?  

It can take up to 24 hours for an add-in to show up for all users. It can take the same amount of time for add-in updates, changes from turn on or turn off, or add-in removals. 
  
## As an administrator, how do I manage the user access to add-ins for my organization?

For easy deployment of add-ins to users, groups, or to your entire organization, we recommend administrators use Centralized Deployment.

For more information about managing user access, see:
 - [Prevent add-in downloads by turning off the Office Store across all clients (Except Outlook)](./manage-addins-in-the-admin-center.md#prevent-add-in-downloads-by-turning-off-the-office-store-across-all-clients-except-outlook)
 - [Specify the administrators and users who can install and manage add-ins for Outlook](/Exchange/specify-who-can-install-and-manage-add-ins-2013-help)

## Will Centralized Deployment provide admins the flexibility to choose the deployment method for Outlook add-ins?  

Yes. Centralized Deployment provides admins the flexibility to choose one of three deployment methods for Outlook add-ins during add-in deployment:

**Fixed (Default)**  
The add-in is deployed automatically to the assigned users, and they cannot remove it.  
 
**Available**
Users can install the add-in in Outlook by choosing **Home > Get More add-ins > Admin-managed**.
 
**Optional**
The add-in is deployed automatically to the assigned users, but they can choose to remove it.  
    
## Can admins update Line-of-Business (LOB) add-ins?  

Yes. Admins can upload a new manifest file to support metadata changes for admin-deployed LOB add-ins. The add-in updates the next time the Office applications starts. The web application can change at any time.  
 
For more information, see [line-of-business add-in](./manage-addins-in-the-admin-center.md).  

## Can admins turn off add-ins?  

Yes. Admins can turn on or off the add-ins they deploy for all users from the Microsoft admin center.

For more information, see [Add-in states](./manage-addins-in-the-admin-center.md#add-in-states).  

##  Can admins delete or remove add-ins?

Yes. Admins can delete add-ins they deployed for all users from the Microsoft admin center.

For more information, see [Delete an add-in](./manage-addins-in-the-admin-center.md#delete-an-add-in). 
  
## Can admins deploy paid add-ins from the Office Store using Centralized Deployment? 

No. You can't deploy paid add-ins from the Office Store using Centralized Deployment at this time.  
 
We suggest reaching out to the ISV Developer for the paid add-in to request a manifest file or a URL. The tenant admin can then deploy the add-in as a LOB add-in using Centralized Deployment.
    
## Which admin role do I need to manage add-ins for my organization?  

Global Admin is the recommended role with complete access to add-in management lifecycle. Other Admin roles have a limited access to add-in deployment lifecycle. If you're the person who purchased your Microsoft 365 for business subscription, you are the Global admin. 
 
Your subscription comes with a set of admin roles that you can assign to other users in your organization. Each admin role maps to common business functions and gives people in your organization permissions to perform specific tasks in the Microsoft 365 admin center.  
 
For more information, see [Assign admin roles](../add-users/assign-admin-roles.md?view=o365-worldwide). 