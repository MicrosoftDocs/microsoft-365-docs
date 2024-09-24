---
title: "Custom domain support in Shared Bookings"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 06/14/2024
audience: Admin
ms.topic: how-to
ms.service: bookings
ms.custom: admindeeplinkMAC
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
description: "Learn how to configure custom domain support in Shared Bookings."
---

# Custom domain support in Shared Bookings

Microsoft allows organizations to own more than one domain. The default domain is onmicrosoft.com. You can read more about domains and how to create them at [Add a domain to Microsoft 365](/microsoft-365/admin/setup/add-domain).

You can specify which domain will be used from the domain list for Bookings using [OWA mailbox policy](/powershell/module/exchange/set-owamailboxpolicy?view=exchange-ps&preserve-view=true). Once the default domain policy is configured and deployed, any new booking calendars created will have the configured domain in the SMTP address.

For example: Shared Booking pages can be created with a domain “contoso.com” instead of “contoso.onmicrosoft.com”

You can also configure a domain for specific users. When users with the custom OWA policy create a shared booking page, it will be created with the custom domain, and not the default domain.

To use these features, you'll need to run commands using Exchange Online PowerShell with Global admin access. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps&preserve-view=true).

>[!NOTE]
> This change will not impact shared booking pages that have already been created. Only new shared booking pages will be created using the configured domain.

## Specify default domain for entire organization

You'll need to run the following commands using Exchange Online PowerShell.

>[!IMPORTANT]
> The steps below assume that no other Outlook Web App (OWA) mailbox policies have been created in your organization.

1. Sign in to the Microsoft 365 admin center as a global admin.

1. In the admin center, go to **Settings** > **Domains** to check current domains.

1. Join into remote PowerShell command with the admin account and complete the steps, such as install module and import module. Learn more at [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps&preserve-view=true).

1. Check the current default domain using the command below:

   ```PowerShell
   Get-OwaMailboxPolicy -Identity OwaMailboxPolicy-Default | Fl BookingsMailboxDomain
   ```

5. Change current default domain to new domain.

   ```PowerShell
   Set-OwaMailboxPolicy -Identity OwaMailboxPolicy-Default -BookingsMailboxDomain "<newdomain>"
   ```

This would change the default policy of all users and allow them to create a shared booking page with the new domain.

> [!NOTE]
> The OWA Mailbox policy can only be assigned by an admin account.

## Configure custom domain for specific users

To configure a custom domain for a specific user, follow the steps below after joining into remote PowerShell.

1. Create a new OWA mailbox policy.

   ```PowerShell
   New-OwaMailboxPolicy -Name “<custom-policy-name>”
   ```

   For more information, see [New-OwaMailboxPolicy](/powershell/module/exchange/new-owamailboxpolicy?view=exchange-ps0&preserve-view=true).

2. Configure the policy with a custom domain.

   ```PowerShell
   Set-OwaMailboxPolicy -Identity “<custom-policy-name>” -BookingsMailboxDomain “<Custom-domain-name>"
   ```

3. Set the new policy to specific users in the organization.

   ```PowerShell
   Set-CASMailbox -Identity <User-email-address>-OwaMailboxPolicy “<custom-policy-name>”
   ```

   For more information, see [Set-CASMailbox](/powershell/module/exchange/set-casmailbox?view=exchange-ps&preserve-view=true).

When users with the custom OWA policy create a shared booking page, it will be created with the custom domain, and not the default domain.
