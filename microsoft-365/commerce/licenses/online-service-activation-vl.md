---
title: "Activate online services in volume licensing"
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
description: "Learn how to activate online services obtained via volume licensing."
ms.date: 04/10/2025
---

# Activate online services in volume licensing

This article describes how to activate non-Azure Microsoft online services obtained via the following volume licensing (VL) agreement types: Enterprise, Enterprise Subscription, Enterprise Agreement (EA) for Government Partners (USG), and Campus and Schools.

## Before you begin

To view or activate Microsoft online services obtained via volume licensing, you must have one of the following VL roles:

- VL Administrator, also known as online admin (OLA)
- Online Services Manager (OSM)

For more information about VL roles in the Microsoft 365 admin center, see [Understand volume licensing roles](manage-user-roles-vl.md#understand-volume-licensing-roles).

## Definitions of key terms

To help you understand this article, this section contains a list of key terms and their definitions.

### License ID

Each signed VL agreement has a unique License ID associated with it. Microsoft uses the License ID to identify a specific VL agreement for reference and support purposes.

### Microsoft Entra tenant

Every organization that subscribes to Microsoft online services must have a Microsoft Entra tenant. For more information, see [Quickstart - Access and create new tenant - Microsoft Entra | Microsoft Learn](/entra/fundamentals/create-new-tenant).

### Global administrator

By default, the person who sets up the Microsoft Entra tenant becomes the Global Administrator and can add other Global Administrators. The Global Administrator assigns subscription licenses to users and administers Microsoft online services in the tenant.

> [!CAUTION]
> Global Administrators have almost unlimited access to your organization's settings and most of its data. To help keep your organization secure, we recommend that you limit the number of Global Administrators as much as possible.

### Online Services Manager

The Online Services Manager (OSM) is a VL user with permission to view orders for online services. The OSM is the person invited to assign those services to a Microsoft Entra tenant.

When you assign the OSM role to someone who also has the Global Administrator role, you enable them to see what online services were ordered. This view is in addition to their Global Admin view of end user subscription assignment.

> [!IMPORTANT]
> Microsoft Entra tenant roles are separate from VL roles in the Microsoft 365 admin center. By default, Global Administrators don't have VL access or roles. For more information, see [Assign roles to volume licensing users](manage-user-roles-vl.md#understand-volume-licensing-roles).

### Public Customer Number

Every organization with a VL agreement with Microsoft has at least one Public Customer Number (PCN). Some organizations have multiple unique PCNs for different VL agreements.

## Subscribe to Microsoft online services via volume licensing

If there are no licenses for any Microsoft online services under your License ID, ask your Microsoft seller or partner to order the services for you.

Alternatively, Enterprise, Enterprise Subscription, and US Government (USG) customers can get started immediately for many online services by placing a VL reservation. To learn more about VL reservations, see[Manage License Reservations for volume licensing](manage-license-reservations-vl.md).

After the first online services order or a reservation is processed for a License ID, Microsoft either automatically assigns the services to your organization's tenant or invites the OSM to sign up for an online services account profile.  

## Automatic assignment of online services via volume licensing

Online services ordered via VL are automatically provisioned to an organization's Microsoft Entra tenant if one or more of the following conditions are met:

- The OSM email address associated with the License ID is either a Global Administrator or Billing Administrator of an existing tenant.
- Online services previously ordered on the License ID are already activated.
- The PCN provided on a renewal contract previously had online services assigned.

## Find the Microsoft Entra tenant your services are activated on

VL users can see what tenant their License ID contains activated online services by going to the Microsoft 365 admin center > **Billing** > **Your products** > **Volume licensing** > **Contracts** > **View contract details** page.

- If the License ID is activated on a tenant, the tenant domain is displayed.
- If the License ID isn't activated on a tenant, a message indicates that online services aren't activated.

## Invitation to activate an online service profile

If no Microsoft Entra tenant is detected and automatic assignment isn't possible, Microsoft sends an online service activation email to ask you to complete an online services account profile. The email contains the subject line "Complete your profile to set up your services." The email is sent to the OSM on the License ID when the first order or reservation for an online service is placed. For contracts without an OSM, the invitation is sent to the Notice Contact or Online Administrator.

You're presented with two options:

1. Create a new online services profile (Microsoft Entra tenant) to assign the services to.\
OR\
2. Sign into an existing tenant and assign the services there.

For troubleshooting help, see [Common reasons why you might not receive an activation email](#common-reasons-why-you-might-not-receive-an-activation-email).

## Sign up to create an online services account for your organization

If your organization has no Microsoft online service subscriptions, or if you need to associate the subscriptions to a new Microsoft Entra ID, use the following steps:

1. Have the OSM locate the online services activation email from Microsoft that contains the subject line "Action required: Complete your profile to set up your services."

   > [!NOTE]
   > OSMs might prefer to forward the online services activation email to their IT administrator to complete the sign-up process and become the organization's online services Global Administrator.  

2. To avoid unintentionally assigning services to a Microsoft online service account that's already in use, we recommend that you take the following steps before selecting any links in the email:

   - Sign out of other Microsoft services (like Microsoft 365 email) that you use.
   - Close all your open browser windows.
   - Copy and paste the link from the email into a private browser window.  

3. In the activation email, go to the option "My organization does not use any Microsoft services" and select **Register for a new work or school account**.
4. Provide the information required to create a new account profile (Microsoft Entra tenant) for your organization.  
5. After you save the new account profile, all online services ordered under this License ID are automatically assigned to the tenant (see assignment section). For more information, see [Assign online services to volume licensing users](#assign-online-services-to-volume-licensing-users).

## Your organization already uses Microsoft online services

If your organization already uses Microsoft online services from a paid or trial subscription, it already has a Microsoft Entra tenant. The Global Administrator can sign in and activate online services ordered under this License ID.

> [!NOTE]
> OSMs without Global Administrator permissions must forward the online services activation email to their Global Administrator.

1. Read the instructions in the activation email for option 1, "My organization already uses Microsoft services."
2. To avoid unintentionally assigning services to a Microsoft online service account that's already in use, we recommend that you take the following steps before selecting any links in the email:

   - Sign out of other Microsoft services (like Microsoft 365 email) that you use.
   - Close all your open browser windows.
   - Copy and paste the link from the email into a private browser window.

3. To assign the online subscriptions and any future orders under this License ID to the Microsoft Entra tenant, sign in with your existing Microsoft Entra ID account.

## Common reasons why you might not receive an activation email

This section contains information about why you might not receive an activation email.

### The service activation email was sent, but not received

- You aren't the OSM for the License ID.
- The email was blocked by your inbox settings or went to your junk mail folder.

### No service activation email could be sent

- The OSM contact information isn't configured to receive emails. For example, user\@contoso.onmicrosoft.com has no email subscription.  
- The OSM email address is in a public domain like outlook.com or gmail.com, not an organization's email domain.  
- It's more than 48 hours before the licensed usage period start date. To see the usage date, in the Microsoft 365 admin center, go to the **Billing** > **Your products** > **Volume licensing** > **Contracts** > **View order details** page.
- Your Microsoft partner or seller hasn't yet placed an order. To check the order status, in the Microsoft 365 admin center, go to **Billing** > **Your products** > **Volume licensing** > **Contracts** > **View Orders** or **View license summary**.
- Your OSM hasn't yet placed a License Reservation. To check reservations, in the Microsoft 365 admin center, go to **Billing** > **Your products** > **Volume licensing** > **View reservations**.

### Online services were automatically assigned

- The OSM email address is on record as an existing Global Administrator or Billing Administrator.
- Service activation was already completed following a previous order. No other emails are sent.

## Assign online services to volume licensing users

After online services obtained via VL are activated on your organization's Microsoft Entra tenant, the Global Administrator must assign the newly purchased licenses to individual users. OSMs without Global Administrator permission must inform the Global Administrator that newly purchased services are now available and can be assigned.  

> [!NOTE]
> License assignment permissions are separate from VL permissions and are managed on different pages in the Microsoft 365 admin center.

- VL users can view VL orders or license reservations in the **Billing** > **Your products** > **Volume licensing** area.
- Licenses are assigned to individual users by Global Administrators or Billing Administrators on the  **Billing** > **Licenses** page. For more information, see [Assign or unassign licenses for users in the Microsoft 365 admin center](../../admin/manage/assign-licenses-to-users.md).

### Subscription licenses aren't available to Global Administrators to assign

The following list contains some common reasons why you might not see licenses available to assign:

- It can take up to 24 hours from the start of the licensed usage date on the order or license reservation for services to become available.
- Add-on subscriptions don't display if they aren't ordered on the same License ID as the base subscription. To resolve this scenario, contact your Microsoft partner or seller.
- There are subscriptions on the existing account which aren't compatible with the subscriptions you now want to activate. For assistance, [contact volume licensing support](/licensing/contact-us).
- The licenses were activated on the wrong Microsoft Entra tenant account. For assistance, [contact volume licensing support](/licensing/contact-us).
- The service isn't available in the location where the Microsoft Entra ID account is set up. To resolve this scenario, contact your Microsoft partner or seller.

## Renew online services via volume licensing

This section contains information about what happens when you renew online services.

### Activating services after volume licensing renewal

For most renewals, online services are automatically assigned to the Microsoft Entra tenant, and no service activation email is sent.  

Auto assignments happen when your Microsoft partner or seller uses the same Public Customer Number (PCN) on your renewal contracts. If a different PCN was used, auto assignment isn't possible, and a service activation email is sent to the OSM.

VL admins can verify the PCN on a particular licensing ID by going to Microsoft 365 admin center > **Your products** > **Volume licensing** > **Contracts** > **View contract details**.

### Assign services to users when licenses are renewed

After a VL contract is renewed, the Global Administrator must sign in to the admin center to verify the licenses are available to assign.

- If you renewed with the same subscriptions, the licenses are automatically assigned to their users.
- If you switched subscriptions when you renewed (like from E3 to E5), the Global Administrator must assign the licenses for the new subscription to users. If licenses aren't assigned to users, they'll lose access to their services after the grace period expires.

## Upon renewal, the number of services is temporarily doubled  

The renewal process can cause temporary discrepancies between the number of licenses ordered and the number of licenses available to assign in the Microsoft 365 admin center.

When online subscriptions ordered under one License ID are renewed on another License ID, subscriptions ordered on the original License ID display with a status of **In Grace**, while the subscriptions ordered under the new license ID display with a status of **Active**. Only licenses with the **Active** status are relevant to your licensed quantity.

After a certain period, subscriptions with the **In Grace** status are automatically removed from the account and the data is deleted. For detailed information about status durations, see "Lifecycle status durations for volume licensing customers" in [Lifecycle status durations for volume licensing customers](../subscriptions/what-if-my-subscription-expires.md#lifecycle-status-durations-for-volume-licensing-customers).

## Map License IDs to tenants

This section contains information about mapping License IDs to tenants, how to assign licenses to multiple tenants, and what to do if you activated licenses on the wrong tenant.

### Assign multiple License IDs to the same Microsoft Entra tenant

You can assign multiple License IDs to one tenant, but you can't associate one License ID to more than one tenant.

For example, you can assign License ID 1234 and License ID 56789 to tenant contoso.com. However, you can't assign License ID 12345 to both contoso.com and fabrikam.com if they belong to separate tenants.

### Separate License IDs and PCNs required to assign licenses to multiple tenants

To determine if the necessary VL agreement structure is in place, contact your Microsoft partner or seller.

### Licenses were activated on the wrong online services account (tenant)

If you clicked an activation link in the service activation email while signed in to an existing Microsoft service, the licenses might be activated on the wrong tenant. This activation can also happen if you didn't realize the licenses would meet the criteria for automatic licenses assignment.

Global Administrators can't move licenses from one Microsoft Entra tenant to another. [Contact support](/licensing/contact-us) to get help with a *tenant remap*. A tenant remap involves moving all subscriptions and License IDs associated with a PCN to a new organizational account that you provide. When a tenant remap occurs, no user data is migrated. Global Administrators might have to complete subscription management tasks after the licenses become available on the correct tenant.

To ensure that support can quickly solve the incorrect activation issue, when you open the case, you must provide the following information:

- License ID or enrollment number
- Incorrect Organizational Account (xxx.onmicrosoft.com)
- Correct Organizational Account (xxx.onmicrosoft.com)
- If possible, contact details of the Global Administrators from both Organizational Accounts

## Contact volume licensing support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you can't access the admin center, see [Contacting volume licensing support](/licensing/contact-us).

## Other resources

For activation of Azure purchased in Enterprise volume licensing, see [EA Billing administration on the Azure portal - Microsoft Cost Management | Microsoft Learn](/azure/cost-management-billing/manage/direct-ea-administration).

For more information about assigning licenses to end users, see [Microsoft 365 admin center - Overview - Microsoft 365 admin | Microsoft Learn](/microsoft-365/admin/admin-overview/admin-center-overview).
