---
title: "Understand the Microsoft proposal workflow"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: demorr, jobailey
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-business
ms.subservice: m365-commerce-marketplace
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
description: "Learn about the proposal workflow used when you buy Microsoft business products and services. Discover how to review and approve proposals."
ROBOTS: NOINDEX
ms.date: 09/19/2024
---

# Understand the Microsoft proposal workflow

A proposal is a formal offer from Microsoft for your organization to buy Microsoft business products and services. Proposals represent large orders that your organization's procurement or IT department place with Microsoft.

Before the proposal workflow begins, your procurement department works directly with a designated Microsoft representative to determine the specific products and services your organization needs. Next, your Microsoft representative drafts a proposal and sends your procurement department an email with a link to accept the proposal in the Azure Marketplace portal. The site contains the proposal prepared specifically for you and your organization.

After you follow the link and sign in to the proposal site, you can start the proposal review process. After you complete the proposal review and check out, you receive an invoice for the purchased products as per the billing plan you selected. To learn how billing works for proposals, see [Understand invoicing](#understand-invoicing) later in this article.

## Prerequisites for buying items with a proposal

Before you can buy items for a proposal, you must have a billing account and an agreement with Microsoft.

### Billing account

You use a billing account to manage your account settings, invoices, billing profiles, and products and services. If you don't already have a billing account, your Microsoft representative creates one for you. Otherwise, they use an existing billing account for your organization, so long as you have permission to use that billing account.

Billing account permissions are managed by the Billing account owner. Global Administrators can assign themselves to the Billing account owner role, and then make other people Billing account owners.

[!INCLUDE [ga-roles-limitation](../includes/ga-roles-limitation.md)]

For more information about billing accounts, see [Understand your Microsoft business billing account](manage-billing-accounts.md).

### Microsoft Customer Agreement

The Microsoft Customer Agreement (MCA) lets an organization buy Microsoft products and services. For more information, see [Microsoft Customer Agreement](https://www.microsoft.com/Licensing/how-to-buy/microsoft-customer-agreement).

## Permissions needed to sign an agreement or pay for items

You must be a billing account owner or billing account contributor to successfully sign an agreement or buy products and services. If you're a Global Administrator but don't have one of those roles, you can assign the roles to yourself. If you're not a Global Administrator, ask your Global Administrator or Billing account owner to assign one of the roles to you.

The Billing account owner and Billing account contributor roles are assigned by using either of the following methods.

### Assign roles in the Microsoft 365 admin center

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page.
2. On the **Billing accounts** page, in the **Billing account roles** section, select **Assign roles**.
3. In the **Assign roles** pane, search for the name of the person to whom you want to assign a role.
4. Select the box for the role name you want the person to have, then select **Assign**.

### Assign roles in the Azure portal

1. In the Azure portal, go to the <a href="https://portal.azure.com/#blade/Microsoft_Azure_GTM/ModernBillingMenuBlade/Overview" target="_blank">Access control (IAM)</a> page.
2. On the **Access control (IAM)** page, select **Add**.
3. In the **Add permission** pane, select the **Role** to assign to the user.
4. Select the user, then select **Save**.

For more information about billing account roles, see [What are billing account roles?](manage-billing-accounts.md#what-are-billing-account-roles).

If this is a new billing account, and no one has accepted an agreement, you automatically become the billing account owner, provided you:

- Are the person named in the proposal
  or
- Are already a [Microsoft Entra global admin](/azure/active-directory/roles/permissions-reference#global-administrator) for your organization

## What is the overall workflow?

The overall proposal workflow looks like this:

- Your Microsoft representative creates a proposal and sends a link to you in an email.
- You use the link to go to the proposal sign-in page.
- You review your organization's information.
- You review the proposal, accept the MCA if needed, and finish the checkout process.
  > [!IMPORTANT]
  > You must have the authority to sign an MCA on behalf of your organization. If you don't have that authority, then someone who does must do this step.
- After checkout is finished, you're given more links to set up your products and services.

## Proposal terms

The following table contains terms and definitions that appear in your proposal and on the proposal site.

| Term | Definition |
|---|---|
| Billing account | An account used to manage your account settings, invoices, payment methods, and products. |
| Billing profile | Information about your organization that lets you customize what items are included on your invoice, and how you pay for your invoices. The billing profile includes the billing account name, the payment methods used for the specific billing profile, contact information, invoice settings, and permissions that let you change the billing profile, pay bills, and buy products and services. |
| Existing agreements | Any agreement that your organization already has in place with Microsoft. The agreements can include, but aren't limited to, an Enterprise Agreement, Microsoft Product & Services Agreement, or Microsoft Customer Agreement. |
| Microsoft Customer Agreement (MCA) | An agreement that outlines the terms and conditions of the account held by your organization with Microsoft. |
| Microsoft representative | An authorized Microsoft representative who prepares a proposal for you and your organization. |
| Organization | A legal entity that uses Microsoft products, technologies, or services. |
| Prepared by | The email address of the Microsoft representative who prepared the proposal. |
| Supplemental terms | Amendments to the MCA that contain terms specific to your organization. To accept supplemental terms, you must use DocuSign to record an electronic signature. |

## Step 1: Review organization information

After you sign in, the first thing you do is review your organization's information.

### Your organization

The **Your organization** section displays the billing account associated with it. The billing account information is either pulled from an existing billing account or created for you by the Microsoft representative. If your organization is an affiliate of another organization, you also see a **Lead organization** section with the name and address of that organization.

If this order is the first time your organization is establishing a commercial relationship with Microsoft, and you haven't signed an MCA, if the information under **Your organization** or **Lead organization** is incorrect, contact the representative to make changes for you. After you accept an MCA, you can review and change your organization's address and contact information on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page in the Microsoft 365 admin center. If your organization name changes, open a support request to update it. [Learn how to open a support request](../admin/get-help-support.md).

### Your information

If you're a new customer, enter your name, email address, and phone number under **Your information**, then select **Save**. If you're an existing customer, verify that your information is correct. To make any corrections, select **Edit**, make the necessary changes, then select
**Save**.

When you're ready, select **Continue** to move to the next step.

## Step 2: Review proposal

The proposal contains the details of the items you discussed with your Microsoft representative. You can forward the email with the proposal link to share it with other stakeholders in your organization. Anyone else who uses the link has a read-only view of the proposal.

If you want to make any changes to the proposal after review, contact your Microsoft representative.

### Proposal contents

The proposal contains the following information:

| Section | Description |
|---|---|
| Organization name | The name of the organization for whom the proposal was prepared. |
| Valid until date | The date on which the proposal offer expires. If you miss this expiration date, contact your Microsoft representative to let them know that you're still interested in the proposal. |
| Currency | The currency used to calculate the cost of items in the proposal. |
| Prepared for | The billing account name, address, contact email address, and phone number of the person who requested the proposal. |
| Prepared by | The email address of the Microsoft representative who prepared the proposal. |
| Summary | Shows the subtotal associated with the proposal. If necessary, it also shows the foreign exchange (FX) rate that is used to calculate costs. |
| Proposal line items | This section contains the quantity, unit price, and subtotal of all items included in the proposal. |
| Next step | This section indicates the necessary action you must take. |

To sign an MCA, select the button under **Next Step**. If you must sign supplemental terms, a link takes you to the DocuSign site, where you follow the steps to sign the document.

After you sign any necessary agreements or supplemental terms, select **Go to checkout**.

### Understand invoicing for future start dates

Sales proposals might include subscriptions that start on a future date. A future start date aligns the start date of a new subscription with the end date of a previous subscription. If your proposal contains subscriptions that start on a future date, you receive an invoice for those subscriptions only when the future start date arrives. Using a future start date ensures that you aren't billed for items that you don't own yet. New subscriptions start on the future start date specified in the proposal. On the start date of the new subscription, we send you an email to let you know that your new subscription is now active and your billing for this subscription begins immediately. Your next invoice reflects the new charges plus applicable taxes for the new subscription.

## Step 3: Checkout

The checkout page contains the following sections:

### Sold to

This section shows the billing account used for the proposal. If you need to change any information, select the **Edit** link. You can also use the **Edit** link to add your organization's Tax ID. The Tax ID must be related to the country/region listed in the **Sold to** section. If you have a tax exemption, you must open a support ticket to request tax-exempt status.

To learn more about Tax IDs, and how to apply for tax-exempt status, see
[Microsoft 365 tax information](billing-and-payments/tax-information.md).

### Billed to

This section shows the billing profile used to determine what items are included on your invoice, and how you pay your invoices. Each billing cycle, you receive a separate invoice for each billing profile. You pay for invoices by using either check or wire transfer, or Azure prepayment. If you don't already have a billing profile, your Microsoft representative creates one for you. During checkout, you can select a different billing profile, if you have one, change the name of the billing profile, or add a P.O. number. You can also create a new billing profile.

For information about billing profiles, see [Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md).

### Proposal items in this order

This section shows a list of all items included in the proposal, which can include one or more of the following categories:

- **Supplemental terms** A list of any amendments to the MCA that contain terms for your organization. For example, this list might include HIPAA or GDPR terms.
- **Purchase now** A list of items that you pay for during checkout at the end of the proposal acceptance workflow.
- **Discounts (applied to future charges)** A list of discounts that you receive as part of the proposal.
- **Included** A list of items included as part of the proposal package at no extra charge. Some of these items might have a cost associated with them in the future.

> [!NOTE]
> Your proposal might include subscriptions with a future start date. For more information, see [Understand invoicing for future start dates](#understand-invoicing-for-future-start-dates).

### Summary

This section shows the number of items being paid for, the subtotal, estimated taxes, and the total amount for the order.

To place the order, select **Place order** or **Accept agreement &amp; place order**.

After you place the order, you receive a confirmation with next steps to take. If you bought an Azure plan, your next step is to set up your billing account in the Azure portal.

## Step 4: Set up your new billing account (Azure customers only)

If you're a new customer and bought Azure products as part of the proposal, your next step is to set up your new billing account. To learn how, see [Set up your billing account for a Microsoft Customer Agreement](/azure/cost-management-billing/manage/mca-setup-account).

If you're an existing Azure customer with an Enterprise Agreement, and you're signing an MCA for the first time, your next step is to learn about the changes between the agreements and how to complete tasks with your new billing account. To learn more, see [Complete Enterprise Agreement tasks in your billing account for a Microsoft Customer Agreement](/azure/cost-management-billing/manage/mca-enterprise-operations).

## Understand invoicing

After you check out and complete your order, an initial invoice is sent within 24-48 hours. After that, you receive invoices around the fifth of every month. The monthly invoice contains charges from the previous month. If you have any credits for your account, they're deducted from your billing profile's monetary credits, and applied to your invoice balance. The remaining balance after credits are applied is the balance due. You have 30 days from the billing date to pay the invoice.

Payment instructions for where to send check or wire transfers are included in the PDF copy of your invoice. To view or download your invoice, see [View your bill or invoice](billing-and-payments/view-your-bill-or-invoice.md).

## Accessing your proposals

You can access a list of currently active and completed proposals in the Microsoft 365 admin center. To see a list of your proposals, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2253461" target="_blank">Proposals</a> tab. From there, you can see a list of all your active and completed proposals, filter by proposal state, and search for proposals by name. Select a proposal to open the proposal and accept it, if active, or review it, if completed.
