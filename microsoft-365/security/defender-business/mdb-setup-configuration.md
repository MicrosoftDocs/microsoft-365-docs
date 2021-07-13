---
title: Set up and configure Microsoft Defender for business
description: See how to set up and configure Microsoft Defender for business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 07/13/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Set up and configure Microsoft Defender for business

As a preview customer, you likely have assistance in setting up and configuring Microsoft Defender for business. As reference information, this article provides guidance on how to plan, configure, and onboard to the service. This information might be helpful if you are interested in the resources and information that are available to you.

## Review the requirements

The following table lists the basic requirements for Microsoft Defender for business.

| Requirement | Description |
|:---|:---|
| Licensing requirements | Microsoft Defender for business |
| Users | User accounts created <br/> Microsoft Defender for business licenses assigned <p>(See [Add users and assign licenses](../../admin/add-users/add-users.md)) |
| Browser requirements | Microsoft Edge <br/> Internet Explorer version 11 <br/> Google Chrome |
| Operating system | Windows 10 |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |

> [!TIP]
> To learn more, see [Minimum requirements for Defender for Endpoint](../defender-endpoint/minimum-requirements.md).

## Get Microsoft Defender for business

If you don’t already have Microsoft Defender for business, you can choose from several options:

- [Work with a Microsoft solution provider](#work-with-a-microsoft-solution-provider)
- [Get Microsoft Defender for business on your own](#get-microsoft-defender-for-business-on-your-own) by signing up for a free trial or purchasing a subscription

### Work with a Microsoft Solution Provider

Microsoft has a list of solution providers who are authorized to sell offerings, such as Microsoft Defender for business. 

To find a solution provider in your area, take the following steps:

1. Go to the Microsoft Solution Providers page ([https://www.microsoft.com/solution-providers](https://www.microsoft.com/solution-providers)).
 
2. In the search box, fill in your location and company size. In the Search for products, services, skills, industries box, put `Microsoft 365`, and then select **Go**.

3. Review the list of results. Select a provider to learn more about their expertise and the services they provide.

> [!TIP]
> If you decide to purchase Microsoft Defender for business through a solution provider, the provider can help with all of your setup and configuration steps.

### Get Microsoft Defender for business on your own 

If you prefer to get Microsoft Defender for business directly, the first person to sign your company up is a global administrator (also referred as the global admin). The global admin can purchase licenses, upgrade services, set up user accounts, and configure settings for your organization. 

1. Go to the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), and sign in.

2. In the navigation bar, go to **Billing**. 

3. To view your current subscription(s), select **Your products**.

4. To add a subscription, such as Microsoft Defender for business, choose **Purchase services**. Search for *Microsoft Defender for business*, and then complete the purchase or trial process.

> [!TIP]
> To learn more about the process of purchasing a Microsoft 365 subscription, see [Try or buy a Microsoft 365 for business subscription](../../commerce/try-or-buy-microsoft-365.md).

## Assign roles and permissions

In order for your security team to perform tasks in the Microsoft 365 Defender portal, such as configuring Microsoft Defender for business, or taking response actions on detected threats, appropriate permissions must be assigned. Microsoft recommends granting people access to only what they need to perform their tasks. We call this the concept of least privileges for permissions. 

The following table describes roles to consider as you plan for Microsoft Defender for business. [Learn more about admin roles](../../admin/add-users/about-admin-roles.md). 

| Permission level | Description |
|:---|:---|
| Global administrators (also referred to as global admins) <p> *As a best practice, limit the number of global administrators.* | Global admins can perform all kinds of tasks. The person who signed your company up for Microsoft 365 or for Microsoft Defender for business is a global administrator by default. <p> Global admins are able to access/change settings across all Microsoft 365 portals, including: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) <br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))  |
| Security administrators (also referred to as security admins) | Security admins can perform security operator tasks plus the following tasks: <br/>- Monitor security-related policies across Microsoft 365 services <br/>- Manage security threats and alerts <br/>- View reports |
| Security operator | Security operators can perform security reader tasks plus the following tasks: <br/>- View, investigate, and respond to security threats alerts  |
| Security reader | Security readers can perform the following tasks: <br/>- View security-related policies across Microsoft 365 services <br/>- View security threats and alerts <br/>- View reports  |

## Choose where to manage your policies and settings

You can manage your security policies and settings in Microsoft Defender for business using one of two methods/locations:

- (*Recommended*) The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))
- Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). Endpoint Manager now includes Microsoft Intune.

When you begin to use Microsoft Defender for business, you will be asked whether you want to use Endpoint Manager or your Microsoft 365 Defender portal. We recommend using the Microsoft 365 Defender portal and its wizard-like experience for managing your devices and security settings. 

### Why we recommend using the Microsoft 365 Defender portal to manage your security solution

Microsoft Defender for business is designed to provide strong protection while saving you time and effort in configuring your security settings. The streamlined experience in the Microsoft 365 Defender portal makes it simple to onboard devices and manage them. In addition, default policies are included so that your company's devices are protected as soon as they are onboarded. You can keep your default settings as they are, or make changes to suit your business needs. You can also add new policies to manage devices.

> [!NOTE]
> The procedures included in this article assume that you are using the Microsoft 365 Defender portal to manage your company’s security settings.



## Next step

[Get started with Microsoft Defender for business](mdb-get-started.md)