---
title: "Manage mail users in standalone EOP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 4bfaf2ab-e633-4227-8bde-effefb41a3db
description: "Defining mail users is an important part of managing the Exchange Online Protection (EOP) service."
---

# Manage mail users in standalone EOP

In standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, mail users are similar to mail contacts. Both have external email addresses and both contain information about people outside your organization. However, unlike a mail contact, a mail user has account credentials and can access resources. For more information about mail contacts and mail users, see [Manage recipients in standalone EOP](manage-recipients-in-eop.md).

> [!NOTE]
> When you create a mail user, the corresponding user account is available in the Microsoft 365 admin center. When you create a user account in the Microsoft 365 admin center, you can't use that account to create a mail user.

The methods that are available to create and manage mail users in standalone EOP are virtually identical to the methods that are available in Exchange Online organizations:

- **Use directory synchronization to manage mail users (Recommended)**: If your company has existing user accounts in an on-premises Active Directory environment, you can synchronize those accounts to Azure Active Directory (Azure AD), where copies of the accounts are stored in the cloud. When you synchronize your existing user accounts to Azure Active Directory, you can view those users in the **Recipients** pane of the Exchange admin center (EAC) or in standalone EOP PowerShell. For instructions, see [Use directory synchronization to manage mail users](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-users#use-directory-synchronization-to-manage-mail-users).

- **Use the EAC to manage mail users**: Add and manage mail users directly in the EAC. This is the easiest way to add mail users and is useful for adding one user at a time. For more information, see [Use the Exchange admin center to manage mail users](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-users#use-the-exchange-admin-center-to-manage-mail-users).

- **Use PowerShell to manage mail users**: Add and manage mail users in standalone EOP PowerShell. This method is useful for adding multiple records and creating scripts. Note that most mail user cmdlets in Exchange Online PowerShell have replacement cmdlets in standalone EOP PowerShell. For instructions, see [Use PowerShell to manage mail users](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-users#use-powershell-to-manage-mail-users).
