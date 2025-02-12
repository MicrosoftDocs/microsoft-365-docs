---
title: "Manage License Reservations for volume licensing"
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: roryh, racheg
audience: Admin
ms.topic: how-to 
ms.service: microsoft-365-business
ms.subservice: m365-commerce-volume-licensing
ms.collection:
- Tier1
- scotvorg
ms.custom: 
- commerce_vl
- AdminTemplateSet
search.appverid: MET150
ms.localizationpriority: medium
description: "Learn how to manage License Reservations in the Microsoft 365 admin center."
ms.date: 02/05/2025
---

# Manage License Reservations for volume licensing

A *License Reservation* lets a customer get started immediately with online services, without going through the standard order submission process, first.

This article explains reservation restrictions, the online services available for reservation, and how reservations are invoiced. It also includes steps for how to make, cancel, and view your License Reservations in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

## Before you begin

- You must have the Administrator or the Online Service Manager volume licensing (VL) role for the corresponding volume licensing ID to create and manage online reservations in the Microsoft 365 admin center.
- You must have an agreement type of Enterprise, Enterprise Subscription, or Enterprise Agreement (EA) for Government Partners.
- If you're a Licensing Solution Partner, you must be added as a VL external user and be granted the Online Service Manager role by a customer VL administrator before you can make reservations on behalf of that customer.

> [!NOTE]
> Placing a volume licensing reservation is a different action from assigning the licenses to users. You must contact your Global Administrator for seat assignment.

## License Reservation restrictions

License Reservations have the following restrictions:

- Only online services are eligible for License Reservation orders.
- A reservation order is a financial obligation that's realized during the annual true-up order process, based on the reservation usage date and the quantity of licenses reserved.
- You can place a reservation order for the current date or for a date that is no more than six months in the future.
- You can cancel reservation orders up to 72 hours from the start of the usage date (weekends and holidays included).
- Reservations can't be made if the enrollment is expired or is in the last 30 days of the agreement anniversary. Instead, consult your Microsoft Reseller about ordering options.

> [!NOTE]
> You don’t need to place an online reservation to renew services you already use. Instead, contact your Microsoft partner or seller to renew your existing seats before they expire. Renewals don't add more seats or more services.

## Online services available for License Reservations

To reduce the risk that customers unintentionally order incorrect or incompatible services, not all Microsoft services are available to reserve in the Microsoft 365 admin center. The following list explains the three types of available services:

1. Standard online services are available to EA customers on the Microsoft 365 admin center volume licensing reservations page.
2. A second category of services is only available if customers have either a prior purchase or preagreed pricing for that service.
3. A third category of more complex services isn't configured for online reservation and must be ordered via your Microsoft partner or seller.

If you want to use a Microsoft online service not listed on the Microsoft 365 admin center reservations page, contact your Microsoft Seller or Licensing Solution Partner for help with placing the necessary purchase order.

> [!IMPORTANT]
> If you want to subscribe to the Microsoft Azure cloud platform, contact your Microsoft seller or licensing solution partner. You can't reserve seats for Azure in the VL section of the Microsoft 365 admin center.

## Invoicing License Reservation orders

As part of your VL agreement's annual order process, your Microsoft partner or seller submits purchase orders to invoice you based on the reservation usage date and the quantity of licenses reserved.

All the licenses committed to in the License Reservation are invoiced, even if some of the licenses aren't in use.

> [!NOTE]
> When your partner places an order to reconcile the License Reservation, the reservation status changes from "active" to "canceled" in the Microsoft 365 admin center.

Reservations canceled more than 72 hours before the usage date aren't invoiced.

If you have any questions that relate to invoices resulting from the reconciliation of reserved licenses into VL orders, contact your Microsoft partner or seller.

## Make a License Reservation order

> [!IMPORTANT]
> A License Reservation order is a financial commitment to purchase reserved items. If you don't have the authority to accept this commitment, work with the person in your organization who is authorized to do so.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> and sign in with your credentials.
2. In the **Navigation** menu, select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a>, then select the **Volume licensing** tab.
3. Select **Make reservations**.
4. From your list of Enterprise Agreement **contracts available for reservation**, select an active agreement, then select **Confirm** to proceed with the online reservation.
5. For **Usage Date**, select the first date when the reserved licenses will be used and then select **View services**.

> [!NOTE]
>
> - Selecting a usage date within 60 days of your anniversary date might affect your ability to step-up to higher edition licenses. Speak with your Microsoft partner or seller first.
> - You can’t place a reservation within 30 days of the agreement's anniversary date.
> - After you make a reservation, you can't edit it. However, you can [cancel a reservation](#cancel-a-license-reservation-order) up to 72 hours from the start of the usage date (weekends and holidays included).

6. Select **Add services** to see a list of online services available for reserving online.
7. Select the online services that you want to reserve, then select **Add services**.
8. A list of selected line services is displayed. For each service, select **add usage** in the **Actions** column. Then, select the usage country/region and the **number of licenses** you want to reserve and **confirm**.
9. Review the reservation for accuracy, use **Add services** or **Remove services**, if needed, then select **Reserve services**.
10. The **Reservation Confirmation** pop-up window displays. You must first **accept and agree** to the terms of services before you can select **Place Reservation**. Your online reservation is complete.

## Cancel a License Reservation order

You can cancel a previously submitted reservation within 72 hours of the usage date.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, select the **Volume licensing** tab, then select **View Reservation**.
2. In the search bar, search for the reservation order that you want to cancel. You can search by Reservation ID, Licensing Contract ID, or organization.
3. **Copy** the reservation ID and then select the **Cancel** button under the **Action** column.
4. A side panel titled **Cancel Reservation** opens. Select the text box to confirm the reservation number and paste it in the **Reservation ID** field. Enter the reason for cancellation.
5. Select **OK** to cancel the reservation.

## View your License Reservation history

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, select the **Volume licensing** tab, then select **View Reservation**.
2. In the search bar, search for the reservation order that you want to view details for. You can search by Reservation ID, Licensing Contract ID, or organization.
3. In the **Action** column, select the **Details** button to the view details.

## Contact volume licensing support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you’re unable to access the admin center, see [Contacting volume licensing support](/licensing/contact-us).
