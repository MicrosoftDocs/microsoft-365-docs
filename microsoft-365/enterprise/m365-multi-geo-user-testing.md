---
title: User Testing in Multi-Geo
description: User Testing in Multi-Geo
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 10/5/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# User Testing in Multi-Geo

### Tip

We recommend that you begin validations with a test user or small group of users before rolling out multi-geo to your broader organization.

In Azure Active Directory (Azure AD) there are two types of user objects: cloud only users and synchronized users. Please follow the appropriate instructions for your type of user.

### Synchronize user's Preferred Data Location using Azure AD Connect

If your company's users are synchronized from an on-premises Active Directory system to Azure AD, their PreferredDataLocation must be populated in 
AD and synchronized to Azure AD.

Follow the process in <a href="https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-sync-feature-preferreddatalocation" target="_blank">Azure Active Directory Connect sync: Configure preferred data location for Microsoft 365 resources</a> to configure Preferred Data Location sync from your on-premises Active Directory Domain Services (AD DS) to Azure AD.

We recommend that you include setting the user's Preferred Data Location as a part of your standard user creation workflow.

### Important

For new users with no OneDrive provisioned, license the account and wait at least 48 hours after a user's PDL is synchronized to Azure AD for the changes to propagate before the user logs in to OneDrive for Business. (Setting the preferred data location before the user logs in to provision their OneDrive for Business ensures that the user's new OneDrive will be provisioned in the correct location.)

### Setting Preferred Data Location for cloud only users

If your company's users are not synchronized from an on-premises Active Directory system to Azure AD, meaning they are created in Microsoft 365 or Azure AD, then the PDL must be set using the Microsoft Azure Active Directory Module for Windows PowerShell.

The procedures in this section require the <a href="https://www.powershellgallery.com/packages/MSOnline/1.1.166.0" target="_blank">Microsoft Azure Active Directory Module for Windows PowerShell Module</a>. If you already have this module installed, please ensure you update to the latest version.

<a href="https://docs.microsoft.com/en-us/connect-to-microsoft-365-powershell?view=o365-worldwide#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell&preserve-view=true" target="_blank">Connect and sign in</a> with a set of global administrator credentials for your tenant.

Use the <a href="https://docs.microsoft.com/en-us/powershell/module/msonline/set-msoluser?view=azureadps-1.0&preserve-view=true" target="_blank">Set-MsolUser</a> cmdlet to set the preferred data location for each of your users. For example:

PowerShellCopy

Set-MsolUser -UserPrincipalName Robyn.Buckley@Contoso.com -PreferredDatalocation EUR

You can check to confirm that the preferred data location was updated properly by using the Get-MsolUser cmdlet. For example:

PowerShellCopy

(Get-MsolUser -UserPrincipalName Robyn.Buckley@Contoso.com).PreferredDatalocation

We recommend that you include setting the user's Preferred Data Location as a part of your standard user creation workflow.

### Important

For new users with no OneDrive provisioned, license the account and wait at least 48 hours after a user's PDL is set for the changes to propagate before the user logs in to OneDrive. (Setting the preferred data location before the user logs in to provision their OneDrive for Business ensures that the user's new OneDrive will be provisioned in the correct location.)

### OneDrive for Business Provisioning and the effect of PDL

If the user already has a OneDrive for Business site created in the tenant, setting their PDL will not automatically move their existing OneDrive. To move a user's OneDrive, see <a href="https://docs.microsoft.com/en-us/microsoft-365/enterprise/move-onedrive-between-geo-locations?view=o365-worldwide" target="_blank">OneDrive for Business Geo Move</a>.

> [!NOTE]
> Exchange Online automatically relocates the user's mailbox if the PLD changes and the MailboxRegion no longer matches the Mailbox Database Geo Location code. For more information, see <a href="https://docs.microsoft.com/en-us/microsoft-365/enterprise/administering-exchange-online-multi-geo?view=o365-worldwide" target="_blank">Administering Exchange Online mailboxes in a multi-geo environment</a>.

If the user does not have a OneDrive for Business site within the tenant, OneDrive for Business will be provisioned for them in accordance to their PDL value, assuming the PDL for the user matches one of the company's satellite locations.
