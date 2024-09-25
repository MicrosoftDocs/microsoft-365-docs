---
title: "Sign up for Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
ms.date: 08/29/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-get-started
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse   
- intro-get-started                      
search.appverid: MET150
description: "For Managed Service Providers (MSPs), learn how to sign up for Microsoft 365 Lighthouse."
---

# Sign up for Microsoft 365 Lighthouse

This article provides instructions for how to sign up for Microsoft 365 Lighthouse. Microsoft 365 Lighthouse is an admin portal that provides advanced capabilities for Managed Service Providers (MSPs) to manage customers at scale through proactive account management, simplified onboarding, efficient tenant configuration, device protection, and alerts. Lighthouse provides insights into customer acquisition, retention, and growth opportunities, as well as multi-tenant views across customer devices, data, and users to help customers get the most value from Microsoft 365. 

## Before you begin

Microsoft 365 Lighthouse is deployed in the partner tenant only&mdash;not in the customer tenants, but make sure you and your tenants meet the requirements listed in [Microsoft 365 Lighthouse requirements](m365-lighthouse-requirements.md).

## Sign up for Microsoft 365 Lighthouse

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">https://lighthouse.microsoft.com</a>.

    If your partner tenant is eligible to use Microsoft 365 Lighthouse, you'll see a welcome message and your managed tenants will begin loading. After this initial loading process completes (which may take a couple minutes), you can start using Lighthouse to manage your customers.

    > [!NOTE]
    > If you see the message, "You must be an indirect reseller or direct-bill partner to use this service," see [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) for eligibility details.

2. If you see the message, "You need to sign up for Microsoft 365 Lighthouse in the Microsoft 365 admin center," reach out to an admin in your partner tenant and ask them to follow these steps:     

    1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a> and sign in using your partner tenant credentials. 

    2. In the left navigation pane, select **Billing** > **Purchase services** > **Microsoft 365**.
 
        > [!NOTE]
        > Instead of **Billing**, some partners may need to go to **Marketplace** > **All products**, and then search for **Microsoft 365 Lighthouse**. 
   
    3. Under **Microsoft 365 Lighthouse**, select **Details**. 

    4. Select **Buy**.

        > [!NOTE]
        > Lighthouse requires one license for the partner tenant only. No additional per-user licenses are required for the partner, and no Lighthouse licenses are required in any customer tenant. 

        To verify that Lighthouse was successfully added to your tenant, look for Microsoft 365 Lighthouse under **Billing** > **Your products** in the Microsoft 365 admin center.

    5. If you aren't redirected to the Lighthouse portal, go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">https://lighthouse.microsoft.com</a>.

3. If you see the message, "Microsoft 365 Lighthouse was removed for your organization," it means your partner tenant settings need to be modified to allow the use of Lighthouse. Reach out to an admin in your partner tenant and ask them to follow these steps:

    1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a> and sign in using your partner tenant credentials.
    
    2. In the left navigation pane, select **Settings** > **Org settings**.

    3. On the **Services** tab, select **Microsoft 365 Lighthouse** from the list of services, and then select the option to allow the use of Microsoft 365 Lighthouse customer management experiences in your tenant.

    4. Select **Save**.

> [!NOTE]
> After you complete sign-up, it can take up to 48 hours for customer data to appear in Lighthouse. 

## Next steps

Lighthouse comes with both required and optional capabilities to help you configure Lighthouse portal security. For more information, see [Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md).

To access the Sales Advisor feature in Lighthouse, you must set up additional roles in Partner Center. For more information, see [Get access to Sales Advisor](m365-lighthouse-get-access-to-sales-advisor.md).  

## Related content

[Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md) (article)\
[Overview of Sales Advisor](m365-lighthouse-sales-advisor-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Microsoft 365 Lighthouse and Microsoft Defender for Business](../security/defender-business/mdb-lighthouse-integration.md) (article)
