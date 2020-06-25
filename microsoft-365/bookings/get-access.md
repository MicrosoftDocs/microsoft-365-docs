---
title: "Get Access to Microsoft Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: 5382dc07-aaa5-45c9-8767-502333b214ce
description: "Learn how to get access to the Bookings feature in Microsoft 365."
---

# Get access to Microsoft Bookings

This topic describes how to enable and disable Microsoft Bookings in your organization. It also explains how you can assign licenses to your users so they can use Bookings.

## Access Microsoft Bookings

The Microsoft Bookings app is available to use by default for Office 365 Education A3, Office 365 A5, and Microsoft 365 Business Standard subscriptions. If your IT administrator has granted you access to Bookings, you can access the app via Office online.

In Office online, you can access the Bookings web app from the app launcher or from office.com. Follow the steps in the [Set up Microsoft Bookings](set-up.md) topic for next steps.

## Turn Microsoft Bookings on or off

Bookings can be turned on or off for employees in your organization, both for your entire organization and specific users. When you turn on Bookings for users, they can create a Bookings page, create a calendar, and allow other people to book time with them.

> [!NOTE]
> The admin controls described in these sections are not available for Office 365 Operated by 21Vianet (China) customers.

### Turn Bookings on or off for your organization using the Microsoft 365 admin center

1. Sign in to the Microsoft 365 admin center as a global admin.

2. In the admin center, go to **Settings** \> **Settings** and select **Bookings**.

3. Select the checkbox for **Allow your organization to use Bookings** to enable or disable Bookings for your organization.

   > [!NOTE]
   > Turning off Bookings will disable all access to the service including creation and management of Bookings pages.

4. Select **Save Changes**.

### Turn Bookings on or off for your organization using PowerShell

To turn Bookings on or off for your organization using the PowerShell cmdlet [Set-OrganizationConfig](https://docs.microsoft.com/powershell/module/exchange/set-organizationconfig), [Connect to Exchange Online PowerShell]() and run the following command:

```PowerShell
   Set-OrganizationConfig -BookingsEnabled $false
```

### Turn Bookings on or off for individual users

You can disable Bookings for individual users.

1. Go to the Microsoft 365 admin center, then select **Users** \> **Active users**.

1. Select the desired user, then select **Licenses and Apps**.

1. Expand **Apps** and clear the checkbox for Microsoft Bookings.

## Require staff approvals before sharing free/busy information

Admins can require employees in their organization to opt-in before their availability information is shared through Bookings and before they can be bookable through a booking page. This setting is available in the Microsoft 365 admin center under **Settings** \> **Settings** \> **Bookings**.

When this setting is enabled, employees added as staff in booking calendars will find an Approve/Reject link in the email notification they receive.

This feature is gradually rolling out world wide to Microsoft 365 customers. If you don't see this option in the Microsoft 365 admin center, check back soon.

## Block social sharing options

Admins can control how booking pages are shared on social networks. This setting is available in the Microsoft 365 admin center under **Settings** \> **Settings** \> **Bookings**.

This feature is gradually rolling out world wide to Microsoft 365 customers. If you don't see this option in the Microsoft 365 admin center, check back soon.

## Allow only selected users to create Bookings calendars

By using policy restrictions, you can restrict licensed users from being able to create Bookings calendars. You must first enable Bookings for your entire organization. All users in you organization will have Bookings licenses, but only those included in the policy can create Bookings calendars and have full control over who can access the calendars they create.

Users who are included in this policy can create new Bookings calendars and can be added as staff in any capacity (including the administrator role) to existing Bookings calendars. Users who aren't included in this policy won't be able to create new Bookings calendars and will receive an error message if they try to do so.

You'll need to run the following commands using Exchange Online PowerShell. For more information on running Exchange Online cmdlets, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

> [!IMPORTANT]
> The steps below assume that no other Outlook Web App (OWA) mailbox policies have been created in your organization.

1. Create a new mailbox policy for users that should be allowed to create Bookings calendars. (Bookings calendar creation is allowed by default by new mailbox policies.)

   ```PowerShell
   New-OwaMailboxPolicy -Name "BookingsCreators"
   ```

   For more information, see [New-OwaMailboxPolicy](https://docs.microsoft.com/powershell/module/exchange/new-owamailboxpolicy).

2. Assign this policy to the relevant users by running this command for each user you want to grant permission to create Bookings calendars.

   ```PowerShell
   Set-CASMailbox -Identity <someCreator@emailaddress> -OwaMailboxPolicy "BookingsCreators"
   ```

   For more information, see [Set-CASMailbox](https://docs.microsoft.com/powershell/module/exchange/set-casmailbox).

3. Optional: Run this command if you want to disable Bookings for all other users in your organization.

   ```PowerShell
   Set-OwaMailboxPolicy "OwaMailboxPolicy-Default" -BookingsMailboxCreationEnabled:$false
   ```

   For more information, see [Set-OwaMailboxPolicy](https://docs.microsoft.com/powershell/module/exchange/set-owamailboxpolicy).

For more information on OWA mailbox policies, check out the following topics:

- [Create an Outlook on the web mailbox policy in Exchange Online](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)

- [Apply or remove an Outlook on the web mailbox policy on a mailbox in Exchange Online](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy)

**-**
**-**
**What follows might be obsolete and should be vetted before publishing**
**-**
**-**

## Get the free Bookings add-on for Microsoft Enterprise Agreement or volume licensing subscriptions

If you purchased Office 365 Enterprise E3/Office 365 Enterprise E5 through a Microsoft Enterprise agreement or through volume licensing, you must get the Microsoft Bookings add-on through the Volume Licensing Service Center (VLSC). Once you get the free add-on, you you can assign licenses to users in your organization. Work with your channel partner or reseller to place a zero dollar purchase order for the add-on. Once you've purchased the add-on in Volume Licensing Service Center, follow these steps to get licenses and assign to your users in the Microsoft 365 admin center.

Check out the following topics for more information on VLSC:

- [Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx)
- [Microsoft Volume Licensing Service Center training and resources](https://www.microsoft.com/licensing/existing-customer/vlsc-training-and-resources)

1. Sign in to the Microsoft 365 admin center as a global admin.

1. In the admin center, go to **Billing** \> **Purchase services**.

1. On the **Purchase services** page, press **CTRL + F** on your keyboard to open your browser's **Find** function, and then search for **Business Apps (free)**.

1. When you find the Business Apps (free) card, hover your mouse or click anywhere on the card to display the **Buy now** button, and then select **Buy now**. (Don't worry, this add-on really is free.)

1. Use the **+** (plus) and **-** (minus) icons to select the number of licenses you'll need, and then select **Check out now**.

1. On the Checkout page, review your order and then select **Next**.

1. Select **Invoice** as the **Payment method** if you don't want to provide your credit card information at this time. You will get email notifications reminding you that your subscription will renew and it will look like a billing statement, but you will owe $0.00.

1. Select **Place order**.

1. On the **You're all set** page, you have the option of assigning the license to your users or going to the Admin center home page.

1. Follow the instructions in [Assign licenses to users](https://docs.microsoft.com/microsoft-365/admin/manage/assign-licenses-to-users).

1. Follow the steps in the [Set up Microsoft Bookings](set-up.md) topic for next steps.

## Get the free Business Apps (free) add-on for cloud solution provider (CSP) subscriptions

If you purchased Office 365 Enterprise E3 or Office 365 Enterprise E5 through a cloud solution provider, you'll have to work with your partner to get access to Microsoft Bookings.

## Get the free Bookings add-on for Enterprise subscriptions for Office 365 operated by 21Vianet (China)

Microsoft Bookings is now available to Office 365 Enterprise E3/Office 365 Enterprise E5 subscriptions where Office 365 is operated by 21Vianet (China). Follow these steps to access Bookings for your organization.

1. Sign in to admin center for Office 365 operated by 21Vianet (China). You must be a global admin.

1. In the admin center, go to **Billing** \> **Purchase services**.

1. On the **Purchase services** page, select press CTRL + F on your keyboard to open your browser's Find function, and then search for **Business Apps (free)**.

1. When you find the **Business Apps (free)** card, hover your mouse or click anywhere on the card to display the **Buy now** button, and then select **Buy now**. (Don't worry, this add-on really is free.)

1. Use the **+** (plus) and **-** (minus) icons to select the number of licenses you'll need, and then select **Check out now**.

1. On the **Checkout** page, review your order and then select **Next**.

1. Select **Invoice** as the **Payment method** if you don't want to provide your credit card information at this time. You will get email notifications reminding you that your subscription will renew and it will look like a billing statement, but you will owe $0.00.

1. Select **Place order**.

1. On the **You're all set** page, you have the option of assigning the license to your users or going to the Admin center home page.

1. Follow the instructions in [Assign licenses to users](https://docs.microsoft.com/microsoft-365/admin/manage/assign-licenses-to-users).

1. Follow the steps in the [Set up Microsoft Bookings](set-up.md) topic for next steps.
