---
title: "Fixing problems with directory synchronization for Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: troubleshooting
ms.service: o365-administration
localization_priority: Priority
f1.keywords:
- CSH
ms.custom: Adm_O365
ms.collection:
- Ent_O365
- M365-identity-device-management
search.appverid:
- MET150
- MOE150
- MBS150
ms.assetid: 79c43023-5a47-45ae-8068-d8a26eee6bc2
description: "Describes common causes of problems with directory synchronization in Office 365 and provides a few methods to help troubleshoot and resolve them."
---

# Fixing problems with directory synchronization for Microsoft 365

With directory synchronization, you can continue to manage users and groups on-premises and synchronize additions, deletions, and changes to the cloud. But setup is a little complicated and it can sometimes be difficult to identify the source of problems. We have resources to help you identify potential issues and fix them.
  
## How do I know if something is wrong?

The first indication that something is wrong is when the DirSync Status tile in the Microsoft 365 admin center indicates there is a problem.
  
You will also receive a mail (to the alternate email and to your admin email) from Microsoft 365 that indicates your tenant has encountered directory synchronization errors. For details see [Identify directory synchronization errors in Microsoft 365](identify-directory-synchronization-errors.md).
  
## How do I get Azure Active Directory Connect tool?

In the [Microsoft 365 admin center](https://admin.microsoft.com), navigate to **Users** \> **Active users**. Click the **More** menu (three dots) and select **Directory synchronization**. 
  
Follow the [instructions in the wizard](set-up-directory-synchronization.md) to download Azure AD Connect. 
  
If you are still using Azure Active Directory (Azure AD) Sync (DirSync), take a look at [How to troubleshoot Azure Active Directory Sync Tool installation and Configuration Wizard error messages in Microsoft 365](/troubleshoot/azure/active-directory/installation-configuration-wizard-errors) for information about the system requirements to install dirsync, the permissions you need, and how to troubleshoot common errors. 
  
To update from Azure AD Sync to Azure AD Connect, see [the upgrade instructions](/azure/active-directory/hybrid/how-to-dirsync-upgrade-get-started).
  
## Resolving common causes of problems with directory synchronization in Microsoft 365

### Synchronized objects aren't appearing or updating online, or I'm getting synchronization error reports from the Service.

- [Identity synchronization and duplicate attribute resiliency](/azure/active-directory/hybrid/how-to-connect-syncservice-duplicate-attribute-resiliency)

### I have an alert in the admin center, or am receiving automated emails that there hasn't been a recent synchronization event
- [Troubleshoot connectivity issues with Azure AD Connect](/azure/active-directory/hybrid/tshoot-connect-connectivity)
- [Azure AD Connect Accounts and permissions](/azure/active-directory/hybrid/reference-connect-accounts-permissions)
- [Azure AD Connect sync: How to manage the Azure AD service account](/azure/active-directory/hybrid/how-to-connect-azureadaccount)
- [Directory synchronization to Azure Active Directory stops or you're warned that sync hasn't registered in more than a day](https://support.microsoft.com/help/2882421/directory-synchronization-to-azure-active-directory-stops-or-you-re-warned-that-sync-hasn-t-registered-in-more-than-a-day)

### Password hashes aren't synchronizing, or I'm seeing an alert in the admin center that there hasn't been a recent password hash synchronization
- [Implementing password hash synchronization with Azure AD Connect sync](/azure/active-directory/hybrid/how-to-connect-password-hash-synchronization)

### I'm seeing an alert that Object quota exceeded
- We have a built-in object quota to help protect the service. If you have too many objects in your directory that need to sync to Microsoft 365, you'll have to [Contact support for business products](https://support.office.com/article/32a17ca7-6fa0-4870-8a8d-e25ba4ccfd4b) to increase your quota.

### I need to know which attributes are synchronized
- You can find a list of all the attributes that are synced between on-premises and the cloud [right here](https://go.microsoft.com/fwlink/p/?LinkId=396719).

### I can't manage or remove objects that were synchronized to the cloud
- Are you ready to manage objects in the cloud only? Or is there an object that was deleted on-premises, but is stuck in the cloud? Take a look at this [Troubleshooting Errors during synchronization](/azure/active-directory/hybrid/tshoot-connect-sync-errors) and [support article](/troubleshoot/azure/active-directory/cannot-manage-objects) for guidance on how to resolve these issues.

### I got an error message that my company has exceeded the number of objects that can be synchronized
- You can read more about this issue [here](/troubleshoot/azure/active-directory/exceed-number-objects-synced).
   
## Other resources

- [Script to fix duplicate user principal names](/samples/browse/?redirectedfrom=TechNet-Gallery)
    
- [How to prepare a non-routable domain (such as .local domain) for directory synchronization](prepare-a-non-routable-domain-for-directory-synchronization.md)
    
- [Script to count total synchronized objects](/samples/browse/?redirectedfrom=TechNet-Gallery)
    
- [Troubleshoot AD FS 2.0](https://go.microsoft.com/fwlink/p/?LinkId=396727)
    
- [Use PowerShell to fix empty DisplayName attributes for mail-enabled groups](https://go.microsoft.com/fwlink/p/?LinkId=396728)
    
- [Use PowerShell to fix duplicate UPN](https://go.microsoft.com/fwlink/p/?LinkId=396730)
    
- [Use PowerShell to fix duplicate email addresses](https://go.microsoft.com/fwlink/p/?LinkId=396731)
