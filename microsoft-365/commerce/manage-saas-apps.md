---
title: Manage SAAS apps for your organization
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: jamitche, nicholak
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
- commerce_subscriptions
- AdminSurgePortfolio
- admindeeplinkMAC
search.appverid: MET150 
description: Learn how to activate and manage third-party apps in Microsoft 365 admin center.
ms.date: 03/31/2023
---

# Manage third-party app subscriptions for your organization

You can manage licenses and billing for third-party apps in the new <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Updated features include enhanced subscription management, improved access to billing information, and improved flexibility for managing bills. Subscription management is based on Microsoft's updated commerce platform. This applies to software-as-a-service apps that customers purchase directly, or from a third-party provider.

> [!IMPORTANT]
> As of April 1, 2023, we no longer accept checks as a payment method for subscriptions paid by invoice. Pay by check is no longer available as a payment option, and check payment instructions have been removed from invoices. You can still pay for your invoice by wire transfer. See your invoice for wire transfer payment information. If you're an existing customer who currently pays by check, you have until September 30, 2023 to change to paying by wire transfer, and avoid possible service disruption.

## How to get software-as-a-service apps

There are a few ways to purchase third-party apps.

- **Direct purchase** – Customers can directly purchase subscriptions from [Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/), or [AppSource](https://appsource.microsoft.com/).
- **Partner purchase** –  Work with a partner through Partner Center to purchase subscriptions.
- **Microsoft proposal** – Respond to a proposal from Microsoft Sales that includes third-party apps.

Once customers purchase the apps and accept the Microsoft Customer Agreement, they can manage them in Microsoft 365 admin center.

App providers sell their apps either at a flat rate, or by purchasing licenses for users.

- **Flat rate** – Also called site-based pricing, apps are priced with a monthly or annual price. On the app page, license quantity is listed at Unlimited.
- **Licenses** – Apps are priced by license. Customers assign licenses to each user in their organization

## Supported geographic locations

Commercial marketplace offerings can be purchased in 141 geographies as defined by the customer's billing address, and transactions can be completed in 17 currencies. The following table lists each supported geographic location, its [ISO 3166 two-digit alpha code](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes), and the assigned currency.

A CSP can purchase an offer in Partner Center in their end customer's currency so they can bill them in that same currency. For additional information on this, refer to [these FAQs](https://partner.microsoft.com/resources/detail/eu-efta-change-of-partner-billing-currency-faq-pdf).

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
| Turkey                              | TR        | USD          | EUR, TRY, USD |
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

## Activate third-party apps

Admins must activate third-party apps before assigning them to users. These apps are activated in the third-party publisher's portal.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Under **Settings & actions**, select **Manage in publisher's portal**.

You'll be directed to the app publisher's site where you can activate the app.

## Manage third-party apps

Admins manage third-party apps in two locations: Microsoft 365 admin center, and the third-party app provider's portal.

Here's what you can do in each portal.

| Microsoft 365 admin center | App publisher portal |
| --- | --- |
| Change license quantity <br> Manage how you pay your bill <br> Manage how you pay your bill <br> Change payment method (credit card) <br> View invoice <br> Cancel app subscription | Set up app (once for each app) <br> Assign licenses to users <br> Technical support |

After the app is activated, it remains active unless it's canceled, expires, or if payment isn't kept current. These events change the app status to disabled. Once an app is disabled, it can't be reactivated. To continue using the app, buy another copy of it.

## Assign licenses

Admins need to activate third-party apps before assigning them to users. They're activated in the third-party publisher's portal. On the app page, under **Settings & actions**, select the link to assign licenses.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Under **Settings & actions**, select the link to **Manage in publisher's portal**.

## Change license quantity

Admins can change the number of licenses owned by their organization. This only applies to apps purchased with seat-based pricing.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Select **Change license quantity**.

## Manage payment methods

Software-as-a-service apps each have a billing profile assigned to them. Billing profiles let you customize what products are included on your invoice, and how you pay your invoices. They include:

- **Payment methods** – Credit cards or wire transfer
- **Contact information** –  Billing address and a contact name
- **Roles** – Roles that allow you to change the billing profile, pay bills, or use the payment method on the billing profile to make purchase.

For more information on billing profiles, see [Understand billing profiles](/microsoft-store/billing-profile).

### Change the billing profile on a software-as-a-service app subscription

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Next to **Billing profile**, select **Edit**.

For more information on invoices, see [Understand your bill or invoice](billing-and-payments/understand-your-invoice.md).

## Cancel a software-as-a-service app subscription

You can cancel a software-as-a-service app from the app page.

1. In the admin center, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2125823" target="_blank">Apps</a> page.
2. Find and select the app you want to manage.
3. Under **Settings & actions**, select **Cancel subscription**.
