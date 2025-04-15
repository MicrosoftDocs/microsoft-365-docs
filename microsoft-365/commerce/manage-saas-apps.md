---
title: Manage third-party app subscriptions in the Microsoft 365 admin center
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: armanv, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_subscriptions
- AdminSurgePortfolio
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150 
description: "Learn how to activate and manage third-party apps in the Microsoft 365 admin center."
ms.date: 01/07/2025
---

# Manage third-party app subscriptions in the Microsoft 365 admin center

You can manage licenses and billing for third-party apps in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

> [!IMPORTANT]
> As of April 1, 2023, we no longer accept checks as a payment method for subscriptions paid by invoice.

## Before you begin

- [Find out what type of billing account you have](manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a Billing account owner or contributor to do the tasks in this article. For more information about billing account and billing profile roles, see [Understand your Microsoft business billing account](manage-billing-accounts.md) and [Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md).
- If you have a Microsoft Online Services Agreement (MOSA) billing account type, you must be at least a Billing Administrator to do the tasks in this article. For more information, see [About admin roles in the Microsoft 365 admin center](../admin/add-users/about-admin-roles.md).

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Billing account owner.

## How to get software-as-a-service apps

There are a few ways to buy third-party apps.

- **Direct purchase** – Customers can directly buy subscriptions from [Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/), or [AppSource](https://appsource.microsoft.com/).
- **Partner purchase** –  Work with a partner through Partner Center to buy subscriptions.
- **Microsoft proposal** – Respond to a proposal from Microsoft Sales that includes third-party apps.

After you buy the apps and accept the Microsoft Customer Agreement, you can manage them in Microsoft 365 admin center.

App providers sell their apps either at a flat rate, or by buying licenses for users.

- **Flat rate** – Also called site-based pricing, apps are priced with a monthly or annual price. On the app page, license quantity is listed at Unlimited.
- **Licenses** – Apps are priced by license. Customers assign licenses to each user in their organization.

## Activate third-party apps

As an admin, you must activate third-party apps before you can assign them to users. These apps are activated in the third-party publisher's portal.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app that you want to manage.
3. Under **Settings & actions**, select **Manage in publisher's portal**.

You're directed to the app publisher's site where you can activate the app.

## Manage third-party apps

Admins can manage third-party apps in two locations: the Microsoft 365 admin center, and the third-party app provider's portal.

The tasks that you can do depend on which portal you use. The following table lists the tasks available in each portal.

| Microsoft 365 admin center           | App publisher portal           |
| ------------------------------------ | ------------------------------ |
| Change license quantity              | Set up app (once for each app) |
| Manage how you pay your bill         | Assign licenses to users       |
| Change payment method (credit card)  |  Technical support             |
| View invoice                         |  |
| Cancel app subscription              |  |

After you activate an app, it remains active until it's canceled, expires, or if payment isn't kept current. These events change the app status to disabled. After an app is disabled, it can't be reactivated. To continue using the app, buy another copy of it.

## Assign licenses for a third-party app

You must activate third-party apps before you can assign them to users. The apps are activated in the third-party publisher's portal.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app that you want to manage.
3. Under **Settings & actions**, select the link to **Manage in publisher's portal**.

## Change the license quantity for a third-party app

You can change the number of licenses owned by your organization.

> [!NOTE]
> Changing the number of licenses that you own only applies to apps bought with seat-based pricing.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Select **Change license quantity**.

## Manage payment methods for a third-party app

Third-party apps each have a billing profile assigned to them. Billing profiles let you customize what products are included on your invoice, and how you pay your invoices. They include:

- **Payment methods** – Credit cards or wire transfer
- **Contact information** –  Billing address and a contact name
- **Roles** – Roles that allow you to change the billing profile, pay bills, or use the payment method on the billing profile to make purchase.

For more information about billing profiles, see [Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md).

### Edit the billing profile on a third-party app subscription

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Next to **Billing profile**, select **Edit**.

For more information about invoices, see [Understand your invoice for your Microsoft MCA billing account](billing-and-payments/understand-your-invoice.md).

## Cancel a third-party app subscription

You can cancel a software-as-a-service app from the app page.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Under **Settings & actions**, select **Cancel subscription**.

## Supported geographic locations

Customers can buy commercial marketplace offerings in 141 geographies as defined by the customer's billing address. Transactions can be completed in 17 currencies. The following table lists each supported geographic location, its [ISO 3166 two-digit alpha code](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes), and the assigned currency.

A CSP can buy an offer in the Partner Center in their customer's currency so that they can bill them in that same currency. For additional information on this, refer to [these FAQs](https://partner.microsoft.com/resources/detail/eu-efta-change-of-partner-billing-currency-faq-pdf).

|   Country/Region Name               |   ISO-2   |   Currency</br>(All offer types)  |    Currency</br>(Consulting service offers only)    |
|-------------------------------------|-----------|--------------|---------------------------------------------|
| Afghanistan                         | AF        | USD          | AFN, EUR, USD |
| Albania                             | AL        | USD          | ALL, EUR, USD |
| Algeria                             | DZ        | USD          | DZD, EUR, USD |
| Andorra                             | AD        | EUR          | EUR, USD |
| Angola                              | AO        | USD          | AOA, EUR, USD |
| Argentina                           | AR        | USD          | ARS, EUR, USD |
| Armenia                             | AM        | USD          | AMD, EUR, USD |
| Australia                           | AU        | AUD          | AUD, EUR, USD |
| Austria                             | AT        | EUR          | EUR, USD  |
| Azerbaijan                          | AZ        | USD          | AZN, EUR, USD |
| Bahrain                             | BH        | USD          | BHD, EUR, USD |
| Bangladesh                          | BD        | USD          | BDT, EUR, USD |
| Barbados                            | BB        | USD          | BBD, EUR, USD |
| Belarus                             | BY        | USD          | BYN, EUR, USD |
| Belgium                             | BE        | EUR          | EUR, USD  |
| Belize                              | BZ        | USD          | BZD, EUR, USD |
| Bermuda                             | BM        | USD          | BMD, EUR, USD |
| Bolivia                             | BO        | USD          | BOB, EUR, USD |
| Bosnia and Herzegovina              | BA        | USD          | BAM, EUR, USD |
| Botswana                            | BW        | USD          | BWP, EUR, USD |
| Brazil                              | BR        | BRL\*        | BRL, EUR, USD |
| Brunei                              | BN        | USD          | BND, EUR, SGD, USD |
| Bulgaria                            | BG        | EUR          | BGN, EUR, USD |
| Cabo Verde                          | CV        | USD          | CVE, EUR, USD |
| Cameroon                            | CM        | USD          | EUR, USD, XAF |
| Canada                              | CA        | CAD          | CAD, EUR, USD |
| Cayman Islands                      | KY        | USD          | EUR, KYD, USD |
| Chile                               | CL        | USD          | CLP, EUR, USD |
| China\**                            | CN        | N/A          | N/A |
| Colombia                            | CO        | USD          | COP, EUR, USD |
| Costa Rica                          | CR        | USD          | CRC, EUR, USD |
| Côte d'Ivoire                       | CI        | USD          | EUR, USD, XOF |
| Croatia                             | HR        | EUR          | EUR, HRK, USD |
| Curaçao                             | CW        | USD          | ANG, EUR, USD |
| Cyprus                              | CY        | EUR          | EUR, USD  |
| Czechia                             | CZ        | EUR          | CZK, EUR, USD |
| Denmark                             | DK        | DKK          | DKK, EUR, USD |
| Dominican Republic                  | DO        | USD          | DOP, EUR, USD |
| Ecuador                             | EC        | USD          | EUR, USD |
| Egypt                               | EG        | USD          | EGP, EUR, USD |
| El Salvador                         | SV        | USD          | EUR, USD |
| Estonia                             | EE        | EUR          | EUR, USD |
| Ethiopia                            | ET        | USD          | ETB, EUR, USD |
| Faroe Islands                       | FO        | DKK          | DKK, EUR, USD |
| Fiji                                | FJ        | AUD          | AUD, EUR, FJD, USD |
| Finland                             | FI        | EUR          | EUR, USD |
| France                              | FR        | EUR          | EUR, USD |
| Georgia                             | GE        | USD          | EUR, GEL, USD |
| Germany                             | DE        | EUR          | EUR, USD |
| Ghana                               | GH        | USD          | EUR, GHS, USD |
| Greece                              | GR        | EUR          | EUR, USD |
| Guatemala                           | GT        | USD          | EUR, GTQ, USD |
| Honduras                            | HN        | USD          | EUR, HNL, USD |
| Hong Kong SAR                       | HK        | USD          | EUR, HKD, USD |
| Hungary                             | HU        | EUR          | EUR, HUF, USD |
| Iceland                             | IS        | EUR          | EUR, ISK, USD |
| India                               | IN        | INR          | EUR, INR, USD |
| Indonesia                           | ID        | USD          | EUR, IDR, USD |
| Iraq                                | IQ        | USD          | EUR, IQD, USD |
| Ireland                             | IE        | EUR          | EUR, USD  |
| Israel                              | IL        | USD          | EUR, ILS, USD |
| Italy                               | IT        | EUR          | EUR, USD |
| Jamaica                             | JM        | USD          | EUR, JMD, USD |
| Japan                               | JP        | JPY          | EUR, JPY, USD |
| Jordan                              | JO        | USD          | EUR, JOD, USD |
| Kazakhstan                          | KZ        | USD          | EUR, KZT, USD |
| Kenya                               | KE        | USD          | EUR, KES, USD |
| Korea (South)                       | KR        | KRW          | EUR, KRW, USD |
| Kuwait                              | KW        | USD          | EUR, KWD, USD |
| Kyrgyzstan                          | KG        | USD          | EUR, KGS, USD |
| Latvia                              | LV        | EUR          | EUR, USD |
| Lebanon                             | LB        | USD          | EUR, LBP, USD |
| Libya                               | LY        | USD          | EUR, LYD, USD |
| Liechtenstein                       | LI        | EUR          | CHF, EUR, USD |
| Lithuania                           | LT        | EUR          | EUR, USD |
| Luxembourg                          | LU        | EUR          | EUR, USD |
| Macao SAR                           | MO        | USD          | EUR, MOP, USD |
| Malaysia                            | MY        | USD          | EUR, MYR, USD |
| Malta                               | MT        | EUR          | EUR, USD |
| Mauritius                           | MU        | USD          | EUR, MUR, USD |
| Mexico                              | MX        | USD          | EUR, MXN, USD |
| Moldova                             | MD        | USD          | EUR, MDL, USD |
| Monaco                              | MC        | EUR          | EUR, USD |
| Mongolia                            | MN        | USD          | EUR, MNT, USD |
| Montenegro                          | ME        | USD          | EUR, USD |
| Morocco                             | MA        | USD          | EUR, MAD, USD |
| Namibia                             | NA        | USD          | EUR, NAD, USD, ZAR |
| Nepal                               | NP        | USD          | EUR, NPR, USD |
| Netherlands                         | NL        | EUR          | EUR, USD |
| New Zealand                         | NZ        | NZD          | EUR, NZD, USD |
| Nicaragua                           | NI        | USD          | EUR, NIO, USD |
| Nigeria                             | NG        | USD          | EUR, NGN, USD |
| North Macedonia                     | MK        | USD          | EUR, MKD, USD |
| Norway                              | NO        | NOK          | EUR, NOK, USD |
| Oman                                | OM        | USD          | EUR, OMR, USD |
| Pakistan                            | PK        | USD          | EUR, PKR, USD |
| Palestinian Authority               | PS        | USD          | EUR, ILS, JOD, USD |
| Panama                              | PA        | USD          | EUR, PAB, USD |
| Paraguay                            | PY        | USD          | EUR, PYG, USD |
| Peru                                | PE        | USD          | EUR, PEN, USD |
| Philippines                         | PH        | USD          | EUR, PHP, USD |
| Poland                              | PL        | EUR          | EUR, PLN, USD |
| Portugal                            | PT        | EUR          | EUR, USD |
| Puerto Rico                         | PR        | USD          | EUR, USD |
| Qatar                               | QA        | USD          | EUR, QAR, USD |
| Romania                             | RO        | EUR          | EUR, RON, USD |
| Russia                              | RU        | RUB          | EUR, RUB, USD |
| Rwanda                              | RW        | USD          | EUR, RWF, USD |
| Saint Kitts and Nevis               | KN        | USD          | EUR, USD, XCD |
| Saudi Arabia                        | SA        | USD          | EUR, SAR, USD |
| Senegal                             | SN        | USD          | EUR, USD, XOF |
| Serbia                              | RS        | USD          | EUR, RSD, USD |
| Singapore                           | SG        | USD          | BND, EUR, SGD, USD |
| Slovakia                            | SK        | EUR          | EUR, USD |
| Slovenia                            | SI        | EUR          | EUR, USD |
| South Africa                        | ZA        | USD          | EUR, USD, ZAR |
| Spain                               | ES        | EUR          | EUR, USD |
| Sri Lanka                           | LK        | USD          | EUR, LKR, USD |
| Sweden                              | SE        | SEK          | EUR, SEK, USD  |
| Switzerland                         | CH        | CHF          | CHF, EUR, USD |
| Taiwan                              | TW        | TWD          | EUR, TWD, USD |
| Tajikistan                          | TJ        | USD          | EUR, TJS, USD |
| Tanzania                            | TZ        | USD          | EUR, TZS, USD |
| Thailand                            | TH        | USD          | EUR, THB, USD |
| Trinidad and Tobago                 | TT        | USD          | EUR, TTD, USD |
| Tunisia                             | TN        | USD          | EUR, TND, USD |
| Türkiye                             | TR        | USD          | EUR, TRY, USD |
| Turkmenistan                        | TM        | USD          | EUR, TMT, USD |
| Uganda                              | UG        | USD          | EUR, UGX, USD |
| Ukraine                             | UA        | USD          | EUR, RUB, UAH, USD |
| United Arab Emirates                | AE        | USD          | AED, EUR, USD |
| United Kingdom                      | GB        | GBP          | EUR, GBP, USD |
| United States                       | US        | USD          | EUR, USD |
| U.S. Virgin Islands                 | VI        | USD          | EUR, USD|
| Uruguay                             | UY        | USD          | EUR, USD, UYU |
| Uzbekistan                          | UZ        | USD          | EUR, USD, UZS |
| Vatican City (Holy See)             | VA        | EUR          | EUR, USD |
| Venezuela                           | VE        | USD          | EUR, USD, VES |
| Vietnam                             | VN        | USD          | EUR, USD, VND |
| Yemen                               | YE        | USD          | EUR, USD, YER |
| Zambia                              | ZM        | USD          | EUR, USD, ZMW |
| Zimbabwe                            | ZW        | USD          | EUR, USD |

\* For customers in Brazil, the commercial marketplace through Cloud Solution Providers (CSP) uses USD.

\** Free and BYOL VM images only.

## Related content

[Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md) (article)\
