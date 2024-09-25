---
title: "Turn off Personal Bookings page"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 07/30/2024
audience: Admin
ms.topic: how-to
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- essentials-overview
- essentials-get-started
- essentials-manage
- must-keep
description: "Steps to turn off Personal Bookings."
---

# Turn off Personal Bookings

Personal Bookings and Bookings share the same licensing model. However, Bookings doesn't have to be turned on for the organization using tenant settings for users to access Personal Bookings. The Bookings app must be enabled for users to have access to Personal Bookings.

To turn on Personal Bookings without access to Bookings, block access to Microsoft Bookings using the [OWA Mailbox policy PowerShell command](/powershell/module/exchange/set-owamailboxpolicy) or follow the instructions here: [Turn Microsoft Bookings on or off](turn-bookings-on-or-off.md).

## Turn Personal Bookings on or off

Personal Bookings can be turned on or off for your entire organization or specific users. When Personal Bookings is turned on, users can create a Personal Bookings page and share links with others inside or outside your organization.

### Turn Personal Bookings on or off for your organization using PowerShell

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To turn Personal Bookings on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following commands.

Use the **Get-OrganizationConfig** and **Set-OrganizationConfig** commands to find out the status and turn Bookings with me on or off for your organization.

> [!NOTE]
> It usually takes about 4 hours for Set-OrganizationConfig commands to take effect for your users.

1. Check EWS control access by running the following command.

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsEnabled
   ```

    If the command returns "EwsEnabled: **$true**" then proceed to Step 2.

    If the command returns "EwsEnabled:" (empty is default), no further changes are needed, proceed to Step 2.

    If the command returns "EwsEnabled: **$false**" then run the following command and proceed to Step 2.
  
   ```PowerShell
   Set-OrganizationConfig -EwsEnabled: $true
   ```

1. Check your EwsApplicationAccessPolicy by running the following command:

   ```PowerShell
   Get-OrganizationConfig | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    **A**. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in **EwsAllowList** are allowed to access EWS and REST.

    - To turn off Personal Bookings for your organization, remove **MicrosoftOWSPersonalBookings**, if present, from **EwsAllowList** by running the following command:  

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceAllowList -EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    - To turn on Personal Bookings for your organization, you must set the **EwsApplicationAccessPolicy** to **EnforceAllowList** and add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:  

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceAllowList -EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    **B**. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList**, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.

    - To turn off Personal Bookings for your organization, add **MicrosoftOWSPersonalBookings** by running the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    - To turn on Personal Bookings if blocked, remove **MicrosoftOWSPersonalBookings** by running the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    **C**. If the value of **EwsApplicationAccessPolicy** is empty, all applications are allowed to access EWS and REST.

    - To turn off Personal Bookings for your organization set the **EnforceBlockList** policy and add **MicrosoftOWSPersonalBookings** to the blocklist by running the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy EnforceBlockList -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```
  
    - If you want to revert the value of **EwsApplicationAccessPolicy** to empty to allow all applications to access EWS and REST, run the following command:

      ```PowerShell
      Set-OrganizationConfig -EwsApplicationAccessPolicy $null
      ```
  
  > [!NOTE]
  > The EwsApplicationAccessPolicy parameter defines which applications other than Entourage, Outlook, and Outlook for Mac can access EWS.

### Turn Personal Bookings off or on for individual users

Use the **Get-CASMailbox** and **Set-CASMailbox** commands to check user status and turn Bookings with me on or off for individual users in your organization.

1. Check the individual's EWS control access by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsEnabled
   ```

    **A**. If the command returns "**EwsEnabled: $true**", then proceed to Step 2.

1. Check the individual's **EwsApplicationAccessPolicy** by running the following command:

   ```PowerShell
   Get-CASMailbox -Identity adam@contoso.com | Format-List EwsApplicationAccessPolicy,Ews*List
   ```

    **A**. If the value of **EwsApplicationAccessPolicy** is **EnforceAllowList**, only the applications specified in EwsAllowList are allowed to access EWS and REST.

    - To turn off Personal Bookings for this user, remove **MicrosoftOWSPersonalBookings**, if present from **EwsAllowList** by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsAllowList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    - Turn on Personal Bookings for this user, add **MicrosoftOWSPersonalBookings** to **EwsAllowList** by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsAllowList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    **B**. If the value of **EwsApplicationAccessPolicy** is **EnforceBlockList**, all applications are allowed to access EWS and REST, except those specified in **EwsBlockList**.  

    - To turn off Personal Bookings for this user, add **MicrosoftOWSPersonalBookings** to **EnforceBlockList** by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```

    - To turn on Personal Bookings for this user, remove **MicrosoftOWSPersonalBookings**, if present from EnforceBlockList by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsBlockList @{Remove="MicrosoftOWSPersonalBookings"}
      ```

    **C**. If the value of EwsApplicationAccessPolicy is empty, all applications are allowed to access EWS and REST.

    - To turn off Personal Bookings for this user, set the **EnforceBlockList** policy and add **MicrosoftOWSPersonalBookings** to EWSBlockList by running the following command:

      ```PowerShell
      Set-CASMailbox -Identity adam@contoso.com -EwsApplicationAccessPolicy EnforceBlockList -EWSBlockList @{Add="MicrosoftOWSPersonalBookings"}
      ```
