---
title: "View volume licensing contracts in the Microsoft 365 admin center"
f1.keywords:
- CSH
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
description: "Learn how to find and get detailed information about your volume licensing contracts in the Microsoft 365 admin center."
ms.date: 04/22/2025
---

# View volume licensing contracts in the Microsoft 365 admin center

If you're a named volume licensing (VL) contact or have a VL role, you can view the Contracts page in the Microsoft 365 admin center. This page lists VL contracts you have permission for, with links to view license summaries, order details, and product keys. You can also see which users have roles for each License ID.

> [!NOTE]
> Each signed VL agreement has a unique License ID associated with it. Microsoft uses the License ID to identify a specific VL agreement for reference and support purposes.

## Before you begin

To see the VL **Contracts** page you must meet either of the following requirements:

- You're a named contact (sometimes referred to as "legal participant") on the VL agreement at the time of contract creation.
- You were assigned a VL role in the Microsoft 365 admin center.

> [!IMPORTANT]
> If you're a VL Administrator of a Parent Agreement or Microsoft Business and Services Agreement (MBSA), due to the principle of administrator inheritance, you see all License IDs under that parent or MBSA.

## View the Contracts page

The **Contracts** page displays License IDs and other information. This information is typically available within 10 hours after Microsoft receives an order from your Microsoft partner or seller. You can sort by the agreement end date, change the default filters settings, create a license summary, and export the list as a downloadable .CSV file.

The default list view on the **Contracts** page displays all License IDs you have access to, sorted by the closest agreement coverage **End date**.

1. Go to the Microsoft 365 admin center.
2. In the **Navigation** pane, select **Billing** > **Your products**, then select the **Volume licensing** tab.
3. In the **Contracts** section, select **View contracts**.

> [!TIP]
> If you don't see License IDs or related license entitlement data on the **Contracts** page, go to the **Your products** page and select the **Volume licenses** tab. In the **Preferences** section, select **Edit preferences**, then select **Sync Permissions**.

The following table describes the columns displayed on the **Contracts** page:

|Column name  |Description  |
|---------|---------|
|License ID   |The ID of the contract-level agreement where products and services, like Enterprise Enrollment, are ordered, or the parent-level contract, like Enterprise Agreement, that it's part of is ordered. |
|Organization    |The licensed customer organization named on the contract. |
|Location     |The combination of city and country/region of the licensed organization. |
|Parent Program  |The higher-level agreement that your License ID is linked to, like an Enterprise Agreement, a Select Plus Agreement, or a Microsoft Business and Services Agreement (MBSA). |
|End date     |The end date of the license and any Software Assurance (SA) coverage. |
|Status     |The status of the License ID and any SA benefits or subscriptions.         |
|Volume licensing roles     |The VL roles with access to the contracts. |

## View the license summary

The **License summary** page displays real-time VL entitlements grouped by Microsoft product family and version for all License IDs you have permission to view. The page includes purchase information related to traditional Microsoft VL programs including Open License, Open Value, Open Value Subscription, Select, Select Plus, Enterprise, and Enterprise Subscription.

Licenses display in the license summary at the start of the licensed coverage period stated on the order.

> [!NOTE]
> Licenses purchased under the Microsoft Products and Services Agreement (MPSA) program aren't included in a license summary.

1. Go to the admin center.
2. In the **Navigation** pane, select **Billing** > **Your products**, then select the **Volume licensing** tab.
3. In the **Contracts** section, select **View contracts**.
4. On the **Contracts** page, select the check boxes next to the License IDs you want to include in the summary.
5. At the top of the page, select **Create License Summary**, or select the three dots (**More actions** button) next to a License ID and select **View license summary**.  

   > [!NOTE]
   > It can take a few minutes to create the license summary, but you can go to other parts of the admin center while you wait.

6. When the summary is ready, you see a message that says "Your license summary is ready. Please click on the button to view the summary." To view the summary, select the **License Summary** button.

## View orders

The **Order details** page displays a list of purchase orders for the selected License IDs. The orders list can be exported to a CSV downloadable file, sorted by clicking column headers, or filtered using predefined filters to narrow your search.

1. Go to the admin center.
2. In the **Navigation** pane, select **Billing** > **Your products**, then select the **Volume licensing** tab.
3. In the **Contracts** section, select **View contracts**.
4. On the **Contracts** page, next to a License ID, select the three dots (**More actions** button), then select **View orders**.

The following table describes the columns displayed on the **Orders details** page:

|Column name  |Description  |
|---------|---------|
|Reseller order number     |The purchase order number used by your reseller when placing the order. |
|Customer order number     |The order number, if one was provided, to Microsoft. |
|Ordered on    |The date the seller submitted the order to Microsoft, which might be a different date from when the customer placed the order with the seller. |
|Usage start date     |The date from when you can use the products or services you ordered. |
|Reseller   |The name of the reseller who placed the order. |

For a deeper view into the order details select any item in an order to see the following information:

|Column name  |Description  |
|---------|---------|
|Part number     |The number for the product or service. This number might not match the seller's part number, |
|Product description     |A description of the product or service. |
|Quantity  |The number of licenses ordered. |
|Country    |The country/region where users of the service or product are based. |
|Up for Renewal*    |The due date to renew the offering. Select Plus only. |
|Step-up*     |Indicates if the product or service can be "stepped up" to higher editions. Select Plus only. |

*There's no action that the VL user can perform in the Microsoft 365 admin center that relates to renewal or step -up orders. Instead, customers should speak with their Microsoft Partner or seller.

### View order information for multiple license IDs

1. Go to the admin center.
2. In the **Navigation** pane, select **Billing** > **Your products**, then select the **Volume licensing** tab.
3. In the **Transactions** section, select **View orders**. Each order line item includes the License ID the order belongs to.

## View product keys

The **Product keys** panel displays the available product keys for a particular contract. For each product, you see the following information:

- The product name.
- The product key or a link to **Manage activations**.
- The type of licensing key.
- The number of used and available activations or seats.
- The status of the product key (Redeemed or Available).

For more information, see [Find and use product keys for volume licensing | Microsoft Learn](product-keys-for-vl.md).

1. Go to the admin center.
2. In the **Navigation** pane, select **Billing** > **Your product**s, then select the **Volume licensing** tab.
3. In the **Contracts** section, select **View contracts**.
4. On the **Contracts** page, next to a License ID, select the three dots (**More actions** button), then select **View product keys**.

## View contract details

The **Contract details** panel displays information about your License ID contract, like license type, agreement type, start date, and renewal end date. The panel also includes tabs with detailed information about **Offerings**, **Contacts**, and **Tenants** related to the contract.

1. Go to the admin center.
2. In the **Navigation** pane, select **Billing** > **Your products**, then select the **Volume licensing** tab.
3. In the **Contracts** section, select **View contracts**.
4. On the **Contracts** page, next to a License ID, select the three dots (**More actions** button), then select **View contract details**.

The tabs on **Contract details** panel contain detailed information for the following areas:

|Tab name  |Description  |
|---------|---------|
|Offerings     |Lists the types of products and services, including SA, available for purchase under the specific contract. |
|Contacts     |The agreement participants (sometimes referred to as legal participants) submitted by your Microsoft Partner or seller at the time of contract creation. To make any changes to these contacts, contact your Microsoft Partner or seller.<br/><br/>**NOTE**<br/>VL users who are given access after the contract creation aren't included in the contacts list. For more information, see [Manage volume licensing user roles \| Microsoft Learn](manage-user-roles-vl.md). |
|Tenants     |The list of tenants where online services are activated or if the services need to be activated This only applies to Enterprise, Enterprise Subscription, Campus, Schools, and US Gov (USG). |

## Find the Licensing Solution Partner for a volume licensing contract

You can find your Licensing Solution Partner on the **Contacts** tab of the **Contract details** panel. You might have different License Solution Partners for different License IDs.

If you want to find a new partner, go to [https://aka.ms/pinpoint](https://aka.ms/pinpoint), provide your location and organization size, and then search for either "volume licensing" or for a service or product you want a solution for.

1. Go to the admin center.
2. In the **Navigation** pane, select **Billing** > ****Your products**, then select the Volume licensing** tab.
3. In the **Contracts** section, select **View contracts**.
4. On the **Contracts** page, select a specific License ID.
5. In the **Contract details** panel, select the **Contacts** tab. Your partner or seller is displayed in the list of contacts.

> [!NOTE]
> The contact details displayed might only include the partner's organization name, so you might need to search for the organization's "contact us" details. Alternatively, your IT or Procurement departments might have specific contacts you can work with.

## View license grants in contracts

Occasionally, Microsoft Volume Licensing offers a promotion where the purchase of a specific product entitles the customer to the use of another product. This promotion is called a *license grant*. License grants appear in the **Contract details** panel and on the **Products and services** page. Products received from license grants have an asterisk (*) to indicate that they weren't part of the original purchase.

## View MPSA licenses

MPSA license information is displayed separately from other VL information in a site called the Microsoft Business Center. If you register an MPSA Purchase Account with the same account you use to access the Microsoft 365 admin center, you can view MPSA licenses, software downloads and keys, and other MPSA licensing functions on the admin center > **Billing** > **Your products** > **MPSA products** tab.  

## Understand the License summary page

The **License summary** page displays the list of software your organization is entitled to install and use. However, the summary doesn't show product deployment details or status. The following table describes the columns displayed on the **License summary** page.

|Column name  |Description  |
|---------|---------|
|Product family     |A group of related Microsoft products categorized together based on their functionality or purpose. |
|Version     |The product version refers to a specific iteration or release of a product within a product family. For example, the Windows product family includes different versions like Windows 10, Windows 11, and Windows Server 2022.<br/><br/>The version is distinct from the term *edition*, which refers to different functional offerings within a product family that are usually released at the same time. For example, Windows Server 2022 has different editions like Standard, Datacenter, and Datacenter: Azure Edition. |
|Product pool    |Microsoft organizes products purchased via VL into three pools. These pools are used to determine volume discounts, help with VL key assignment, and activation rules and processes. These rules and processes can vary by product pool. A product pool can be one of the following:<br/><ul><li>Applications, like editions of Microsoft 365</li><li>Systems, like versions of the Windows operating system</li><li>Servers, like Exchange Server, Microsoft SQL Server, and Windows Server</li></ul> |
|Type    |License types include the following:<br/><ul><li>On-premise software</li><li>Online services and subscriptions</li><li>Subscriptions such as Visual Studio</li></ul> |
|Effective quantity    |The number of license entitlements per product and version with upgrades. This number is used to determine whether your organization has license shortfalls or surpluses by product and version. |
|Active SA quantity    |The number of licenses covered by all types of SA (version upgrade protection) across all Microsoft VL programs, including:<br/><ul><li>License and Software Assurance (L&SA)</li><li>Software Assurance (SA)</li><li>SA Step-Up</li></ul> |

## Troubleshooting

This section contains information about how to resolve common issues with VL contracts.

### The License ID for your organization isn't displayed on the Contracts page

- You might not be the VL Administrator on all your organization's License IDs. VL contracts might have been in place before you took on your VL Administrator role, or a different part of your organization might have its own License IDs under the one parent agreement. Ask an active VL Administrator of any such License IDs to add you as a VL Administrator.
- You might have registered under a different account for some License IDs. For example, your work email address changed, or you previously signed in to the VL area of the admin center with a different account used just for volume licensing. For more information, see [Sign in to the Microsoft 365 admin center (volume licensing)](vl-sign-in.md).
- The **Show inherited contracts** toggle in your preferences is set to not include all License IDs under a Parent agreement you administer. For more information, see [Manage volume licensing user roles | Microsoft Learn](manage-user-roles-vl.md).
- Licenses purchased via a Microsoft Product and Services Agreement (MPSA), Cloud Service Provider (CSP), Modern Customer Agreement (MCA), Original Equipment Manufacturer (OEM), or retail purchases aren't included in VL contracts.

### Organization not approved

If you see the message "Organization not approved," it means your organization isn't yet ready to use Microsoft products and services because the review is incomplete. Until the review is complete, the License ID isn't displayed on the **Contracts** page, and you can't access software downloads or VL keys, or manage user access to the contract. To contact our support team, see [Contact volume licensing support](#contact-volume-licensing-support).

### The Effective Quantity or Active SA Quantity is zero

- If the Effective Quantity is zero, it means that your organization isn't entitled to use the license under the terms of the set of License IDs selected for the generated license summary.
- If the Active SA Quantity is zero, it means that the licenses under the set of License IDs used to generate the license summary don't have any valid or active SA coverage.

> [!NOTE]
> Online services don't have SA, so the Active SA Quantity is always zero.

### There are more upgrade licenses than the number of qualifying full licenses

If you have more upgrade license than underlying base licenses displayed in the License summary, this can happen for several reasons:

- Full licenses acquired through OEM or Retail purchases aren't visible in the VL pages of the Microsoft 365 admin center.
- Licenses might have been ordered separately from their underlying base license, like Maintenance, Upgrade Advantage, or Software Assurance.
- You might not have a complete list of License IDs. You might have acquired full licenses under License IDs you don't have permission to view.
- Licenses purchased in a recent order with your Microsoft partner might not yet be processed by the Microsoft Partner.

### Contact volume licensing support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you're unable to access the admin center, see [Contact volume licensing support](contact-vl-support.md).

## Related content

[Sign in to the Microsoft 365 admin center (volume licensing)](vl-sign-in.md)<br/>
[Manage volume licensing user roles | Microsoft Learn](manage-user-roles-vl.md)<br/>
[Find and use product keys for volume licensing | Microsoft Learn](product-keys-for-vl.md)
