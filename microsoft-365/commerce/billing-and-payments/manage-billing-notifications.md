---
title: "Manage billing notifications and invoice attachment settings in the Microsoft 365 admin center"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: emmasheridan, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- commerce_billing
- okr_SMB
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Learn how to manage who receives billing notification emails and invoice attachments in the Microsoft 365 admin center."
ms.date: 03/17/2021
---

# Manage billing notifications and invoice attachment settings in the Microsoft 365 admin center

You can manage who receives billing notification emails for your organization on the **Billing notifications** page in the Microsoft 365 admin center. The page also provides the option to [receive your organization's invoices as email attachments](#receive-your-organizations-invoices-as-email-attachments).

## Before you begin

You must be a Global admin to do the steps described in this article. Billing admins can make some of these changes, as noted in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Global admin.

## Change the language you receive email in

Billing notification emails are sent in your organization's preferred language. To change the preferred language, use the following steps.

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Billing notification settings** section, select **Edit notification settings**.
3. In the **Billing notification settings** pane, under **Preferred language** select the language you want to use, then select **Save**.

## Change who receives billing notifications

Billing notifications are sent to the primary and alternate email address of every Global and Billing admin in your organization. To change which users have the Global or Billing admin role, use the following steps.

### Assign admin roles by using the Billing notifications page

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Admins receiving Billing notifications** section, select **Change Billing administrator** or **Change Global administrator**. You can also choose to add a new account and assign one of the roles to it.
3. In the details pane, on the **Assigned** tab, select **Add users**.
4. In the **Add users** pane, type the user's display name or username, and then select the user from the list of suggestions.
5. Add multiple users until you're done.
6. Select **Add**, then close the pane.

### Remove admin roles by using the Billing notifications page

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Admins receiving billing notifications** section, select the **Change Billing administrator** or **Change Global administrator** link in the description text.
3. In the details pane, on the **Assigned** tab, select the users to remove from the role, and then select **Remove**.
4. In the confirmation box, select **Remove**, then close the pane.

## Change the email addresses for admins

You can change the primary email address of other admins in your organization. However, you can only change your own alternate email address, you can't change email addresses for other admins.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. In the **Admins receiving billing notifications** section, select a name.
3. In the right pane, add or update the primary and alternate email address as needed, then select **Save**.

## Change your organization's contact email

In addition to your Global and Billing admins, we send billing notifications to your organization's contact email address.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. Under **Organization contact receiving billing notifications**, select the organization contact.
3. In the organization details pane, type the email address that you want to use, then select **Save**.

## Receive your organization's invoices as email attachments

> [!NOTE]
> Billing admins can also do the steps in this section.

You can have a copy of your organization's invoice attached as a PDF file to invoice notification emails when a new invoice is ready.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=853212" target="_blank">Billing notifications</a> page.
2. Under **Billing notification settings**, select **Edit notification settings**.
3. In the **Billing notification settings** pane, under **Invoice PDF**, select the **Attach a PDF to your invoice emails** checkbox, then select **Save**.

To stop receiving the invoice attachment at any time, follow the steps in this procedure and clear the **Attach a PDF to your invoice  emails** checkbox in step 3.

## What if I have a billing profile?

If you have a Microsoft Customer Agreement (MCA) billing account type, you pay for your subscription with a billing profile. Because you have a billing profile, some of the steps described in this article might be slightly different for some of your subscriptions. This section describes those differences. [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).

### Who receives billing notifications?

Billing notification emails are sent to the primary and alternate email addresses for users who are assigned one of the following roles:

- Billing profile owner
- Billing profile contributor
- Invoice manager

To learn more about billing profile roles and how to manage them, see [Understand Microsoft Customer Agreement administrative roles in Azure](/azure/cost-management-billing/manage/understand-mca-roles).

To change who receives your organization's billing notifications, use the following steps to change the roles assigned to users.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. On the **Billing profile** tab, select a billing profile.
3. In the **Billing profile roles** section, assign or remove roles for **Billing profile owner**, **Billing profile contributor**, or **Invoice manager**.

### Receive invoices as email attachments

You can receive your invoice as an attachment to your invoice notification emails. To turn on this setting for a specific billing profile, use the following steps.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. Select the **Billing profiles** tab, then select a billing profile from the list.
3. On the billing profile details page, under **Get invoices in email attachments**, switch the toggle to **On**.

## Related content

[View your invoice in the Microsoft 365 admin center](view-your-bill-or-invoice.md) (article)\
[Billing information for Microsoft 365 for business in Mexico](mexico-billing-info.md) (article)\
[Understand your invoice for your Microsoft MCA billing account](understand-your-invoice.md) (article)\
[Understand your invoice for your Microsoft MOSA billing account](understand-your-invoice2.md) (article)
