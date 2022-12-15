---
title: Get Microsoft Defender for Business
description: Find out how to get Microsoft Defender for Business, endpoint protection for small and medium sized businesses.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 12/14/2022
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Get Microsoft Defender for Business

Defender for Business is a new endpoint security solution designed especially for small and medium-sized businesses (up to 300 employees). This article describes how to get and provision Defender for Business.

If you don't already have Microsoft Defender for Business, you can choose from several options:

- [Try or buy the standalone version of Defender for Business](#try-or-buy-microsoft-defender-for-business).
- [Get Microsoft 365 Business Premium](#get-microsoft-365-business-premium), which now includes Defender for Business.
- [Work with a Microsoft partner](#work-with-a-microsoft-partner) who can help you get everything set up and configured.

## Try or buy Microsoft Defender for Business

> [!IMPORTANT]
> The person who signs your company up for Microsoft 365 is a global administrator. You should be a global administrator to complete the following task. [Learn more about admin roles in the Microsoft 365 admin center](../../admin/add-users/about-admin-roles.md).

1. Go to the [Microsoft Defender for Business](https://www.microsoft.com/security/business/threat-protection/microsoft-defender-business) web page, and select an option to try or buy Defender for Business. Fill in the requested information.

   > [!TIP]
   > If you're starting a trial, look for your acceptance email, which contains your promo code. And be sure to see the [Trial user guide for Defender for Business](trial-playbook-defender-business.md).

2. If you're adding Defender for Business to an existing Microsoft 365 subscription, go to the Microsoft 365 admin center ([https://admin.microsoft.com/](https://admin.microsoft.com/)), and then sign in using your existing work or school account. Or, follow the prompts to create a new account, go to the Microsoft 365 admin center ([https://admin.microsoft.com/](https://admin.microsoft.com/)), and then sign in using your new account. 

3. In the Microsoft 365 admin center ([https://admin.microsoft.com/](https://admin.microsoft.com/)), review your recommendations. Then take one of the following next steps, depending on your scenario:

   | Scenario | Next step |
   |:---|:---|
   | Defender for Business is your first Microsoft 365 subscription. | Proceed to step 4 to start provisioning Defender for Business. |
   | You're adding Defender for Business to an existing [Microsoft 365 for business subscription](../../admin/admin-overview/what-is-microsoft-365-for-business.md). | You've probably already [set up your Microsoft 365 subscription](../../admin/setup/setup-business-standard.md), and now you only need to set up and configure Defender for Business. Proceed to step 4.  |
   | You have Microsoft 365 Business Premium, but it's not set up yet. | Follow the guidance in [Microsoft 365 Business Premium – productivity and cybersecurity for small business](../../business-premium/index.md). This guidance walks you through how to set up and configure your subscription, including your security capabilities. |

   > [!TIP]
   > If you're brand new to Microsoft 365, see [Overview of the Microsoft 365 admin center](../../admin/admin-overview/admin-center-overview.md).

4. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and in the navigation bar, go to **Assets** > **Devices**. This action initiates the provisioning of Defender for Business for your tenant. You'll know this process has started when you see a message like what's displayed in the following screenshot:

   :::image type="content" source="media/mdb-hangon-provisioning.png" alt-text="Screenshot of provisioning message in Defender for Business.":::

   > [!NOTE]
   > It might take a few hours for your tenant to finish provisioning before you can onboard devices or complete the setup and configuration process.

## Get Microsoft 365 Business Premium

Microsoft 365 Business Premium includes Defender for Business and Microsoft Defender for Office 365 Plan 1. Microsoft 365 Business Premium also includes Microsoft 365 Apps (formerly referred to as Office apps) and advanced anti-spam, anti-phishing, and anti-malware protection. See [Productivity and security for small and medium-sized businesses](../../business-premium/m365bp-secure-users.md).

1. Visit the [Microsoft 365 Business Premium product page](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium?activetab=pivot%3aoverviewtab).

2. Choose to try or buy your subscription. See [Try or buy a Microsoft 365 for business subscription](../../commerce/try-or-buy-microsoft-365.md). On the [Microsoft 365 Products site](https://www.aka.ms/office365signup), choose **Microsoft 365 Business Premium**.

3. After you've signed up for Microsoft 365 Business Premium, you'll receive an email with a link to sign in and get started. Proceed to [Set up Microsoft 365 Business Premium](../../business-premium/m365bp-setup.md).

4. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), where you'll view and manage security settings and devices for your organization.

5. In the navigation bar, go to **Assets** > **Devices**. This action initiates the provisioning of Defender for Business for your tenant. 

## Work with a Microsoft partner

Microsoft has a list of solution providers who are authorized to sell offerings, including Microsoft 365 Business Premium and Microsoft Defender for Business. If you'd prefer to work with a Microsoft partner, you can follow these steps to find a solution provider in your area:

1. Go to the [Browse Partners](https://appsource.microsoft.com/marketplace/partner-dir).

2. In the **Filters** pane, specify search criteria, such as:

   - Your location
   - Your organization's size
   - **Focus areas**, such as **Security** and/or **Threat Protection** 
   - **Services**, such as **Licensing** or **Managed Services (MSP)**

   As soon as you select one or more criteria, the list of partners updates.

3. Review the list of results. Select a provider to learn more about their expertise and the services they provide.

## Portals you'll use for setup and management

When you use Defender for Business, you'll work with two main portals: the Microsoft 365 admin center, and the Microsoft 365 Defender portal. If your subscription also includes Microsoft Intune, you might use the Intune admin center as well. The following table summarizes these portals and how you'll use them.

|Portal  |Description  |
|---------|---------|
| The Microsoft 365 admin center ([https://admin.microsoft.com/](https://admin.microsoft.com/))      | Use the Microsoft 365 admin center to activate your trial and sign in for the first time.<p> You'll also use the Microsoft 365 admin center to: <ul><li>Add or remove users.</li><li>Assign user licenses.</li><li>View your products and services.</li><li>Complete setup tasks for your Microsoft 365 subscription.</li></ul>To learn more, see [Overview of the Microsoft 365 admin center](../../admin/admin-overview/admin-center-overview.md).      |
| The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))     | Use the Microsoft 365 Defender portal to set up and configure Defender for Business.<p>You'll use the Microsoft 365 Defender portal to: <ul><li>View your devices and device protection policies.</li><li>View detected threats and take action.</li><li>View security recommendations and manage your security settings.</li></ul>To learn more, see [Get started using the Microsoft 365 Defender portal](mdb-get-started.md).        |
| The Intune admin center ([https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)) | We recommend using the Microsoft 365 Defender portal to manage your security settings and devices. However, you can use the Intune admin center instead if you prefer. To learn more about Intune, see [Microsoft Intune is an MDM and MAM provider for your devices](/mem/intune/fundamentals/what-is-intune). |

## Next steps

- Proceed to [Step 2: Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md)