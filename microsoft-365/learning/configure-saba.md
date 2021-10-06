---
title: "Configure Saba as a learning content source for Microsoft Viva Learning (Preview)"
ms.author: daisyfeller
author: daisyfell
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 9/21/2021
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
localization_priority: Medium
description: "Learn how to configure Saba as a learning content source for Microsoft Viva Learning (Preview)."
---

# Configure Saba as a learning content source for Microsoft Viva Learning (Preview)

This article will show you how to configure Saba as a third-party content source for Microsoft Viva Learning. You'll need to be a Saba System Admin or Super User to perform these steps.

>[!NOTE]
>Content accessible through Viva Learning is subject to terms other than the Microsoft Product Terms. Saba content and any associated services are subject to Saba’s privacy and service terms.

## Client’s Host URL

This is your primary Saba Cloud URL (for example "org".sabacloud.com). If your API dashboard URL is org-api.sabacloud.com, your Host URL will be org.sabacloud.com. The API Dashboard URL can be found by going to **Saba Cloud** > **Admin** > **System Admin** > **Manage Integrations** > **API Dashboard**. Find the API Dashboard URL, then remove "https://" and "-api" to get your Host URL.

![Image of the API dashboard](media/saba-1.png)

## Client ID and Client Secret

In the same screen where you got the host URL, copy the Client ID and secret if they've already been generated. If  the Client secret isn't there yet, select the **GENERATE** button to generate it.

![Image of the button to generate the Client secret](media/saba-2.png)

## Username and Password

Provide the username and password of an administrative account for Microsoft Viva to use to pull Courses, Completions, and related information from Saba Cloud via REST API. This account should ideally be a Super user. If they aren't a super user, they must at least have “Learning Admin - Catalog Builder” and “Human Capital Admin” roles (or equivalent custom security roles) in Saba.

## Last steps

Post the required configuration details on your Microsoft 365 admin center under the Saba Cloud learning source option.  

![Image of where you post configuration details in the admin center](media/saba-3.png)

> [!Note]
> For Saba Cloud integration, you need to have a sabacloud.com domain in your Host URL. If you have a different domain name, you'll need to raise a support ticket for allowing your domain name.

## Data residency

Tenant metadata is stored centrally in our data stores & not stored in geo-specific data stores.

## Roles & Permissions

Currently, all the users within an organization will be able to discover all the tenant-specific courses. However, they'll only be able to access and consume the courses that they have access to. User-specific content discovery (based on roles & permissions) is planned to be rolled out in the future.
