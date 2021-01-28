---
title: "Manage billing notifications and invoice attachments"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
ms.custom:
- okr_SMB
- AdminSurgePortfolio
- commerce
search.appverid:
- MET150
description: "Learn how to manage who receives billing notification emails and invoice attachments."
---

# Manage billing notifications and invoice attachments

The **Billing notifications** page lets you manage who receives billing notification emails for your organization. The page also provides the option to [receive a copy of your invoice as an email attachment](#receive-a-copy-of-your-invoice-as-an-email-attachment).

## Before you begin

You must be a Global admin to do the steps described in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## Change your organization’s preferred language

Billing notification emails are sent in your organization’s preferred language. To view or change your organization’s preferred language, use the following steps.

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Billing notification settings** section, select **Edit notification settings**.
3. In the **Billing notification settings** pane, under **Preferred language** select the language you want to use, then select **Save**.

## Change who receives billing notifications

Your organization's billing notifications are sent to the primary and alternate email address of every Global and Billing admin. To change which users have the Global or Billing admin role, use the following steps, or follow the steps in [Assign admin roles](../../admin/add-users/assign-admin-roles.md).

### Assign admin roles by using the Billing notifications page

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Admins receiving billing notifications** section, select the **Billing administrator** or **Global administrator** link in the description text.
3. In the right pane, on the **Assigned admins** tab, select **Add**.
4. In the **Add admins** pane, type the user’s display name or username, and then select the user from the list of suggestions.
5. Add multiple users until you’re done.
6. Select **Save**. The user is added to the list of assigned admins.

### Remove admin roles by using the Billing notifications page

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Admins receiving billing notifications** section, select the **Billing administrator** or **Global administrator** link in the description text.
3. In the right pane, on the **Assigned admins** tab, select the users to remove from the role, and then select **Remove**.
4. In the confirmation box, select **Remove**. The user is removed from the list of assigned admins.

## Change the organization contact who receives billing notifications

In addition to your admins, we send billing notifications to your organization contact. To change the email address of your organization contact, use the following steps.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. Under **Organization contact receiving billing notifications**, select the organization contact.
3. In the right pane, type the email address that you want to use, then select **Save**.

## Change the email addresses for admins

To change the primary and alternate email address of other admins in your organization, use the following steps.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Admins receiving billing notifications** section, select a name.
3. In the right pane, add or update the primary and alternate email address as needed, then select **Save**.

## Receive a copy of your invoice as an email attachment

You can choose to receive a copy of your invoice as an attachment to your invoice notification email when your new invoice is ready. Use the following steps to receive your invoice as an attachment.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. Under **Billing notification settings**, select **Edit notification settings**.
3. In the **Billing notification settings** pane, under **Attach an invoice to email notifications**, check the checkbox, then select **Save**.

To stop receiving the invoice attachment at any time, follow the steps above and clear the **Attach an invoice to email notifications** checkbox in step 3.

## What if I have a billing profile?

If you have a billing profile, some of the steps described in this article might be slightly different. This section describes those differences.

### Who receives Billing notifications?

Billing notification emails are sent to the primary and alternate email addresses for users who’re assigned one of the following roles:

- Billing profile owner
- Billing profile contributor
- Invoice manager

To learn more about billing profile roles and how to manage them, see [Understand Microsoft Customer Agreement administrative roles in Azure](https://docs.microsoft.com/azure/cost-management-billing/manage/understand-mca-roles).

To change who receives your organization’s billing notifications, use the following steps to change the roles assigned to users.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. On the **Billing profile** tab, select a billing profile.
3. In the **Billing profile roles** section, assign or remove roles for **Billing profile owner**, **Billing profile contributor**, or **Invoice manager**.

### Receive invoices as email attachments

To receive your invoices as attachments to your invoice notifications, use the following steps to turn on this setting for a specific billing profile.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. Select the **Billing profiles** tab, then select a billing profile from the list.
3. On the billing profile details page, under **Get invoices in email attachments**, switch the toggle to **On**.

## Related content

[View your bill or invoice](view-your-bill-or-invoice.md) (article)\
[Understand your bill or invoice for Microsoft 365 for business](understand-your-invoice2.md) (article)\
[Add users and assign licenses at the same time](../../admin/add-users/add-users.md) (article)