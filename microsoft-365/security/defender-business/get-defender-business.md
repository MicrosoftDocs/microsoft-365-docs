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
ms.date: 05/01/2023
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Get Microsoft Defender for Business

[Microsoft Defender for Business](mdb-overview.md) is an endpoint security solution designed especially for small and medium-sized businesses (up to 300 employees). This article describes how to get Defender for Business.

:::image type="content" source="media/mdb-setup-step1.png" alt-text="Visual aid depicting step 1 - Get Defender for Business.":::

Sections include:

- **[How to get Defender for Business](#how-to-get-microsoft-defender-for-business)** to protect client devices, such as computers, tablets, and phones
- **[How get Microsoft Defender for Business servers](#how-to-get-microsoft-defender-for-business-servers)**, an add-on that enables you to onboard and protect Windows and Linux servers
- **[Portals that you'll use](#portals-youll-use-for-setup-and-management)** to set up, configure, and manage Defender for Business
- **[Next steps](#next-step)**, such as adding users and assigning licenses.

> [!IMPORTANT]
> You should be a global administrator to complete the tasks described in this article. The person who signs your company up for Microsoft 365 is a global administrator. [Learn more about admin roles in the Microsoft 365 admin center](../../admin/add-users/about-admin-roles.md).

## How to get Microsoft Defender for Business

To get Defender for Business, you can choose from several options:

- Try or buy the standalone version of Defender for Business.
- Get Microsoft 365 Business Premium, which includes Defender for Business.
- Work with a Microsoft partner who can help you get everything set up and configured.

Use the following tabs to learn more about each option.

## [Get Defender for Business (standalone)](#tab/getmdb)

Defender for Business provides advanced security protection for your company's devices. For more information, see [What is Microsoft Defender for Business](mdb-overview.md)?

1. Go to the [Microsoft Defender for Business](https://www.microsoft.com/security/business/threat-protection/microsoft-defender-business) web page, and select an option to try or buy Defender for Business. Fill in the requested information.

   If you're starting a trial, look for your acceptance email, which contains your promo code and a link to sign in. And be sure to see the [Trial user guide for Defender for Business](trial-playbook-defender-business.md).

2. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and either sign in using your existing work or school account, or follow the prompts to create a new account. 

3. In the [Microsoft 365 Defender portal](https://security.microsoft.com), in the navigation bar, go to **Assets** > **Devices**. This action initiates the provisioning of Defender for Business for your tenant. You'll know this process has started when you see a message like what's displayed in the following screenshot:

   :::image type="content" source="media/mdb-hangon-provisioning.png" alt-text="Screenshot of provisioning message in Defender for Business.":::

   It might take a few hours for your tenant to finish provisioning before you can onboard devices or complete the setup and configuration process.

> [!NOTE]
> If you have Microsoft 365 Business Premium and you haven't set it up yet, see [Microsoft 365 Business Premium – productivity and cybersecurity for small business](../../business-premium/index.md). This guidance walks you through how to set up and configure all of your productivity and security capabilities, including Defender for Business.

## [Get Microsoft 365 Business Premium](#tab/getpremium)

Microsoft 365 Business Premium includes Defender for Business, Microsoft Defender for Office 365 Plan 1, and Microsoft 365 Apps (formerly referred to as Office apps). For more information, see [Productivity and security for small and medium-sized businesses](../../business-premium/why-choose-microsoft-365-business-premium.md).

1. Visit the [Microsoft 365 Business Premium product page](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium?activetab=pivot%3aoverviewtab).

2. Choose to try or buy your subscription. See [Try or buy a Microsoft 365 for business subscription](../../commerce/try-or-buy-microsoft-365.md). On the [Microsoft 365 Products site](https://www.aka.ms/office365signup), choose **Microsoft 365 Business Premium**.

3. After you've signed up for Microsoft 365 Business Premium, you'll receive an email with a link to sign in and get started. Proceed to [Set up Microsoft 365 Business Premium](../../business-premium/m365-business-premium-setup.md).

4. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), where you'll view and manage security settings and devices for your organization. In the navigation bar, go to **Assets** > **Devices**. This action initiates the provisioning of Defender for Business for your tenant. 

5. Follow the guidance in [Boost your security protection](../../business-premium/m365bp-security-overview.md) to set up your security capabilities.

> [!IMPORTANT]
> Make sure to complete all the steps described in [Microsoft 365 Business Premium – productivity and cybersecurity for small business](../../business-premium/index.md).

## [Work with a Microsoft partner](#tab/findpartner)

Microsoft has a list of solution providers who are authorized to sell offerings, including Microsoft 365 Business Premium and Microsoft Defender for Business. If you'd prefer to work with a Microsoft partner, you can follow these steps to find a solution provider in your area:

1. Go to the [Browse Partners](https://appsource.microsoft.com/marketplace/partner-dir).

2. In the **Filters** pane, specify search criteria, such as:

   - Your location
   - Your organization's size
   - **Focus areas**, such as **Security** and/or **Threat Protection** 
   - **Services**, such as **Licensing** or **Managed Services (MSP)**

   As soon as you select one or more criteria, the list of partners updates.

3. Review the list of results. Select a provider to learn more about their expertise and the services they provide.

---

## How to get Microsoft Defender for Business servers

Microsoft Defender for Business servers is an add-on to Defender for Business that enables you to secure your server operating systems with the same protection that you get for client devices in Defender for Business. 

1. Go to the Microsoft 365 admin center ([https://admin.microsoft.com/](https://admin.microsoft.com/)), and sign in.

2. In the navigation pane, choose **Billing** > **Purchase services**.

3. In the list of results, select the **Details** box for **Microsoft Defender for Business servers**.

4. Review the information, and complete the purchase process. You'll need one Microsoft Defender for Business servers license for each instance of Windows Server or Linux, and you won't assign that license to users or devices. 

> [!IMPORTANT]
> - In order to add on Microsoft Defender for Business servers, you'll need at least one paid license for [Defender for Business](mdb-overview.md) (standalone) or [Microsoft 365 Business Premium](../../business-premium/index.md). 
> - There's a limit of 60 Microsoft Defender for Business servers licenses per subscription to Microsoft 365 Business Premium or Defender for Business.
> - If preferred, you could use [Microsoft Defender for Servers Plan 1 or Plan 2](/azure/defender-for-cloud/plan-defender-for-servers) instead to onboard your servers. To learn more, see [What happens if I have a mix of Microsoft endpoint security subscriptions](mdb-faq.yml#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions)?
   

## Portals you'll use for setup and management

When you use Defender for Business, you'll work with two main portals: the Microsoft 365 admin center, and the Microsoft 365 Defender portal. If your subscription also includes Microsoft Intune, you'll use the Intune admin center as well. The following table summarizes these portals and how you'll use them.

|Portal  |Description  |
|---------|---------|
| The Microsoft 365 admin center ([https://admin.microsoft.com/](https://admin.microsoft.com/))      | Use the Microsoft 365 admin center to activate your trial and sign in for the first time. You'll also use the Microsoft 365 admin center to: <br/>- Add or remove users.<br/>- Assign user licenses.<br/>- View your products and services.<br/>- Complete setup tasks for your Microsoft 365 subscription.<br/><br/>To learn more, see [Overview of the Microsoft 365 admin center](../../admin/admin-overview/admin-center-overview.md).      |
| The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))     | Use the Microsoft 365 Defender portal to set up and configure Defender for Business, and to monitor your devices and threat detections. You'll use the Microsoft 365 Defender portal to: <br/>- View your devices and device protection policies.<br/>- View detected threats and take action.<br/>- View security recommendations and manage your security settings.<br/><br/>To learn more, see [Get started using the Microsoft 365 Defender portal](mdb-get-started.md).        |
| The Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com/)) | Use the Intune admin center to set up multifactor authentication (MFA), onboard iOS and Android devices, and configure certain capabilities, such as [attack surface reduction rules](mdb-asr.md).<br/><br/>To learn more about Intune, see [Microsoft Intune is an MDM and MAM provider for your devices](/mem/intune/fundamentals/what-is-intune). |

## Next step

- Proceed to [Step 2: Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md).