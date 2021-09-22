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
localization_priority: None
description: "Learn how to configure Saba as a learning content source for Microsoft Viva Learning (Preview)."
---

# Configure Saba as a learning content source for Microsoft Viva Learning (Preview)

This article will show you how to configure Saba as a third-party content source for Microsoft Viva Learning. You'll need to be a Saba System Admin or Super User to perform these steps.

## Client’s Host URL

This is your primary Saba Cloud URL (e.g. "customer".sabacloud.com). If your API dashboard URL is <!--https://customer-api.sabacloud.com-->, the Client’s Host URL will be customer.sabacloud.com). The API Dashboard URL can be found by going to **Saba Cloud** > **Admin** > **System Admin** > **Manage Integrations** > **API Dashboard**. See the API Dashboard URL. Remove ‘https://’ and ‘-api’ to get Client’s Host URL.

<!-- image 1-->

## Client Id and Client Secret

In the same screen where you fot the host URL, copy the Client Id and secret if they've already been generated. If the Client secret is not present, select the **GENERATE** button to generate it.

<!-- image 2-->

## Username and Password

Provide the username and password of an administrative account that will be used by Microsoft Viva to pull Courses, Completions and related information from Saba Cloud via REST API. This user must ideally be a Super user. If they are not a super user, they must at least have “Learning Admin - Catalog Builder” and “Human Capital Admin” roles (or equivalent custom security roles) in Saba.

## Last steps

Post the required configuration details on your M365 admin center under the Saba Cloud learning source option.  

<!-- image 3-->

Please note:  For Saba Cloud integration, only sabacloud.com domain in Client's Host URL is allowed, if you have domain other than this, please raise support ticket for allowing your domain name.

Data residency: Tenant metadata is stored centrally in our data stores & not stored in geo specific data stores.

Roles & Permissions:  Today, all the users within an organization will be able to discover all the tenant specific courses but they will only be able to access/ consume the courses that they have access to. User specific content discovery (based on roles & permissions) is part of our future roadmap.
