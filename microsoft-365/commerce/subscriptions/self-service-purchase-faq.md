---
title: Self-service purchase FAQ
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: mijeffer, pablom
audience: Admin
ms.topic: article
ms.service: o365-administration 
localization_priority: Normal
ms.collection: M365-subscription-management
ms.custom: 
- AdminSurgePortfolio
- aka.ms/self-service-purchase-faq
- commerce_ssp
search.appverid:
- MET150
description: "Find answers to commonly asked questions about self-service purchases."
ms.date: 09/15/2020
---

# Self-service purchase FAQ

Self-service purchase gives users a chance to try out new technologies and develop solutions that ultimately benefit their larger organizations. Central procurement and IT teams have visibility to all users who buy and deploy self-service purchase solutions through the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Admins can turn off self-service purchasing on a per product basis via PowerShell. To learn more, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

Self-service purchase is available for Power Platform (Power BI, Power Apps, and Power Automate), Project, and Visio.

> [!NOTE]
> Self-service purchase isn’t available in India or for government or education customers. Project and Visio are not available for self-service purchase in Brazil and the Democratic Republic of Congo.

## Making a self-service purchase

### How does a customer make a self-service purchase?

Customers can make a self-service purchase online from the product websites or from in-app purchase prompts. Customers are first asked to enter an email address to ensure that they're a user in an existing Azure Active Directory (AD) tenant. Next, they're directed to sign in by using their Azure AD credentials. After signing in, the customer is asked to select how many subscriptions they want to buy, and to provide credit card payment. When the purchase is complete, they can start using their subscription. The purchaser has access to a limited view of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> where they can assign licenses to the product to other people in their organization.

### What are the payment options for self-service purchases?

Currently, credit card is the only available payment method. Payment through invoicing isn't supported.

### Who can buy through self-service purchase?

Any user with a non-guest user account in a managed Azure AD tenant can make a self-service purchase. Self-service purchasing isn’t available to tenants that are government or education organizations. If this applies to your organization, then no additional action is required to control self-service purchase.

Users in organizations or markets who aren’t eligible for self-service purchase see a message asking them to contact their IT admin.

### Can guest users buy through self-service purchase?

No, guest users can’t complete a self-service purchase in a tenant in which they're a guest.

### Can users synced from an on-premises Active Directory buy through self-service purchase?

If a user has an active user account in an eligible Azure AD tenant, they can complete a self-service purchase.

### Who can self-service purchasers assign licenses to?

Self-service purchasers can only assign licenses to users in the same Azure AD tenant. The purchaser has access to a limited view of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> to assign licenses. Purchasers can assign licenses to those products that they've bought through self-service purchase, and can only assign those licenses to users in the same Azure AD tenant.

### Where does the self-service purchaser see and manage their purchases?

Self-service purchasers can manage their purchases in the limited view of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Purchasers can always get to the admin center from the **Admin** tile in the app launcher built into all Microsoft 365 and Dynamics online apps. Purchasers can view the purchases they've made, buy additional subscriptions to the same service, and assign licenses for those subscriptions to other users in their organization. Additionally, purchasers can view and pay their bill, update their payment method, and cancel their subscription.

## Pricing

### What is the pricing for self-service purchases?

Pricing for each of the products for self-service purchase is available on the Microsoft website. Prices are also displayed as part of the checkout experience when users make a self-service purchase. These prices may differ from the prices an organization pays when making central purchases or prices offered through a partner.

### Who is responsible for payment?

The person who buys the subscription through self-service purchase is the person who is billed and who is responsible for payment based on the terms and pricing of the purchase.

## Admin capabilities

### What capabilities does an admin have for self-service purchases?

Admins can view all self-service purchases made in their organization in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. They can see the product, purchaser name, subscriptions purchased, expiry date, order history, purchase price, and assigned users for each self-service purchase. In the Power Platform Admin Center, admins can also view self-service purchases capacity. If required for their organization, admins can turn off self-service purchasing on a per product basis via PowerShell. Admins have the same data management and access policies over products bought through self-service purchase or centrally.

Admins can also control whether users in their organization can make self-service purchases. For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

### How is Microsoft respecting data governance and compliance by enabling self-service purchase?

Admins maintain control over what services and products are available within their tenant based on their data governance and compliance requirements. All data management and access policies that your organization turned on apply to available self-service purchased services.

### Who owns the product data created from self-service purchases?

Data created from products bought through self-service purchase is owned and controlled by the organization.

### How do I centralize the purchases made through self-service purchase?

Admins can assign existing licenses or buy additional subscriptions of self-service purchase products through existing agreements and pricing for users assigned to self-service purchases. After assigning these centrally purchased licenses, admins can then request that the purchasers cancel their existing subscriptions.

### Where does the admin see self-service purchases?

Global and billing admins can see subscriptions bought through self-service purchase in **Billing** > **Your products** in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. They can filter the products list to only show the subscriptions purchased through central procurement, or to include subscriptions bought through self-service purchase.

Admins can see the product, purchaser name, subscription purchased, expiry date, order history, the purchase price, and assigned users.

## Support and training

### Are customers' IT departments or partners expected to support products bought through self-service purchase?

IT departments and partners aren't expected to provide support for products bought through self-service purchase. Microsoft provides standard support for self-service purchasers.

### If a self-service purchaser calls support, does that use the customer's Premier Support incidents?

Self-service purchasers won't use a customer's Premier Support incidents for receiving support for their self-service purchases.

### How are users expected to receive training on the products they buy through self-service purchase?

Extensive training for users is provided on the product websites. The products have guided learning, documentation, samples, and strong communities to get answers and tips directly from other users.

### What happens to a self-service purchase if a user leaves the organization?

If the person who originally bought the self-service purchase product leaves the organization, valid users continue to have full use of the product for the duration of the subscription. The subscription remains active until the purchaser directly cancels it or an admin requests cancellation of the subscription through customer support. Admins may also choose to assign a centrally purchased license to users of the canceled subscription.

## Partners

### What's the role of Microsoft's partners in self-service purchases?

Partners who have delegated administration privileges can see self-service purchases in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, just like an admin. Partners can help support an organization that wants to centralize products bought through self-service purchases. Additionally, partners may offer solutions to extend the capabilities of a self-service purchase.