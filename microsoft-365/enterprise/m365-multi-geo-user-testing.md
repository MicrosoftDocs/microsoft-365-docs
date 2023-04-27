---
title: User Testing in Multi-Geo
description: Learn about user testing in Multi-Geo
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.reviewer: dmwmsft
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# User Testing in Multi-Geo

In Azure Active Directory (Azure AD) there are two types of user objects: cloud only users and synchronized users. Please follow the appropriate instructions for your type of user.

>[!TIP]
>We recommend that you begin validations with a test user or small group of users before rolling out multi-geo to your broader organization.

## Synchronize user's Preferred Data Location using Azure AD Connect

If your company's users are synchronized from an on-premises Active Directory system to Azure AD, their PreferredDataLocation must be populated in AD and synchronized to Azure AD.

Follow the process in <a href="/azure/active-directory/hybrid/how-to-connect-sync-feature-preferreddatalocation" target="_blank">Azure Active Directory Connect sync: Configure preferred data location for Microsoft 365 resources</a> to configure Preferred Data Location sync from your on-premises Active Directory Domain Services (AD DS) to Azure AD.

We recommend that you include setting the user's Preferred Data Location as a part of your standard user creation workflow.

>[!IMPORTANT]
>For new users with no OneDrive provisioned, license the account and wait at least 48 hours after a user's PDL is synchronized to Azure AD for the changes to propagate before the user logs in to OneDrive for Business. (Setting the preferred data location before the user logs in to provision their OneDrive for Business ensures that the user's new OneDrive will be provisioned in the correct location.)

## Setting Preferred Data Location for cloud only users

If your company's users are not synchronized from an on-premises Active Directory system to Azure AD, meaning they are created in Microsoft 365 or Azure AD, then the PDL must be set using the Microsoft Azure Active Directory Module for Windows PowerShell.

The procedures in this section require the <a href="https://www.powershellgallery.com/packages/MSOnline/1.1.166.0" target="_blank">Microsoft Azure Active Directory Module for Windows PowerShell Module</a>. If you already have this module installed, please ensure you update to the latest version.

[Connect and sign in](connect-to-microsoft-365-powershell.md) with a set of global administrator credentials for your _Tenant_.

Use the [Set-MsolUser](/powershell/module/msonline/set-msoluser) cmdlet to set the preferred data location for each of your users. For example:

```PowerShell
Set-MsolUser -UserPrincipalName Robyn.Buckley@Contoso.com -PreferredDatalocation EUR
```

You can check to confirm that the preferred data location was updated properly by using the Get-MsolUser cmdlet. For example:

```PowerShell
Get-MsolUser -UserPrincipalName Robyn.Buckley@Contoso.com.PreferredDatalocation
```

We recommend that you include setting the user's Preferred Data Location as a part of your standard user creation workflow.

>[!IMPORTANT]
>or new users with no OneDrive provisioned, license the account and wait at least 48 hours after a user's PDL is set for the changes to propagate before the user logs in to OneDrive. (Setting the preferred data location before the user logs in to provision their OneDrive for Business ensures that the user's new OneDrive will be provisioned in the correct location.)

## OneDrive for Business Provisioning and the effect of PDL

If the user already has a OneDrive for Business site created in the _Tenant_, setting their PDL will not automatically move their existing OneDrive. To move a user's OneDrive, see [OneDrive for Business Geo Move](move-onedrive-between-geo-locations.md).

> [!NOTE]
> Exchange Online automatically relocates the user's mailbox if the PLD changes and the MailboxRegion no longer matches the Mailbox Database Geo Location code. For more information, see [Administering Exchange Online mailboxes in a multi-geo environment](administering-exchange-online-multi-geo.md).

If the user does not have a OneDrive for Business site within the _Tenant_, OneDrive for Business will be provisioned for them in accordance to their PDL value, assuming the PDL for the user matches one of the company's satellite locations.
