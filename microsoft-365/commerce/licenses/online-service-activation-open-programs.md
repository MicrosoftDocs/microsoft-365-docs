---
title: "Online service activation for Open programs"
f1.keywords: NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: aasthatiwari, atuldubey
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
description: "Learn how to activate online services for Open and Open Value Subscription programs for volume licensing."
ms.date: 07/22/2025
---

# Online service activation for Open programs (volume licensing)

Microsoft Open Value and Open Value Subscription offer the ability to add online services subscriptions purchased per seat and available as digitally distributed online service activation (OSA) keys. An OSA key is a 25-character alphanumeric code that can be used to [extend the expiration date of an existing subscription](../enter-your-product-key.md#extend-the-expiration-date-for-an-existing-subscription), or to [add more licenses to your subscription](buy-licenses.md#add-licenses-to-a-prepaid-subscription-by-using-a-product-key).

> [!NOTE]
> This article only applies to online service activation for Open License, Open Value, and Open Value Subscription licensing programs.

> [!IMPORTANT]
> **Why does the activation portal log me out after I activate an online service?** When you activate online services under the Open License program, each agreement is activated in a separate session to ensure that licenses aren't activated on the wrong tenant.

## Before you begin

- You must have a volume licensing (VL) role to access the VL pages in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
- You must have the Global Administrator role on the organization's online services tenant to activate online service activation (OSA) keys.

## Activate services from the online service activation email

After you order your online services through an Open program, the *Primary Contact* listed on the licensing contract receives an email titled "Sign in and activate your online services" that contains a link and instructions to activate your services. The primary contact can choose to complete the service activation themselves or can forward the email to an individual who has global administrator permissions.

1. Go to [https://microsoft365.com/setupbusiness](https://microsoft365.com/setupbusiness).
2. On the **Let's Redeem Your Product Key** page, enter your OSA product key, then select **Next**.
3. Enter your name, work email address, business phone number, company name, and country/region, then select **Next**.
4. Enter a phone number to receive either a text or call to verify your identity.
5. You can use a domain name you already own, get a new domain, or add a domain later. The steps can vary, depending on which option you choose.
6. When you're finished, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a> to manage your subscription.

## Activate services in the Microsoft 365 admin center

You can also activate your online services directly in the admin center.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**, then select the License ID you want to manage.
3. Select the **Manage activation** link, then select **Start Activation**. A product activation window opens, prepopulated with the OSA product key.
4. Select the checkbox to confirm you're the right person to activate the service for your organization.
5. If prompted, enter the OSA product key. You can also add another product key to apply at the same time. Select **Next**.
6. Review the number of licenses and the subscription end date, then select **Redeem**.
7. The number and end date of your existing subscriptions is displayed, and you're prompted to choose one of the following two options to redeem the OSA product key.
   - Add more users and keep the existing subscriptions' end date<br/>or
   - Renew the existing subscriptions to give them a new end date (+ 12 months)
8. To complete the OSA activation process, select **Next**.

> [!NOTE]
> Any newly added licenses are immediately available to the Global Administrator to assign to users by going to **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>. However, it can take up to 24 hours for the OSA status to update in the VL pages in the admin center.

## Activate Azure prepayment credits in the Microsoft 365 admin center

Azure prepayment credits bought via an Open Licensing program are also activated by using OSA product keys in the Microsoft 365 admin center.

To view the Azure in Open OSA keys, use the following steps:

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">**Your products**</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Product and services** section, select **View downloads and keys**.
3. On the **Products and services** page, select the Azure product name.
4. In the details panel, select the **Keys** tab.
5. Find the License ID you want to activate, then select **Manage activations**.
6. On the **Volume Licensing Online Service Activation** page, find the order you want to activate, then select **Start Activation**.
7. A new page opens where you can use the Azure OSA key to either **Activate a New Subscription** or **Add more Azure credits** to an existing subscription.

The credits can be used against any pay-as-you-go (PAYG) Azure service for 12 months from the OSA activation date. Azure pricing is specific to the services consumed.

For information about activating Microsoft Azure, see [Get Started with Azure in Open Licensing](https://azure.microsoft.com/pricing/offers/ms-azr-0111p/).

## Contact volume licensing support

For help locating or activating OSA keys, submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you can't access the admin center, see [Contact volume licensing support](contact-vl-support.md).

For help with Azure OSA, sign in to the <a href="https://portal.azure.com" target="_blank">Microsoft Azure portal</a> and submit a support case online.
