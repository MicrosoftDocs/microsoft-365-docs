---
title: Configure Cornerstone OnDemand as a learning source for Microsoft Viva Learning
ms.author: daisyfeller
author: daisyfell
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 10/07/2021
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
localization_priority: medium
description: Learn how to configure Cornerstone OnDemand as a learning content source for Microsoft Viva Learning.

---

# Configure Cornerstone OnDemand as a learning source for Microsoft Viva Learning

This article shows you how to configure Cornerstone OnDemand as a third-party learning content source in Viva Learning.

>[!NOTE]
>Content accessible through Viva Learning is subject to terms other than the Microsoft Product Terms. Cornerstone OnDemand content and any associated services are subject to Cornerstone OnDemand’s privacy and service terms.

1. Log in to your Cornerstone Portal, navigate to the Edge Marketplace, and search for Microsoft Viva Learning.  

    <!--image 1-->

2. Select the Microsoft Viva Learning tile.

    <!--image 2-->

3. Select **Install**. Make sure you've selected the following API permissions before installing:

    - **Data Exporter API - training core**: Required for catalog sync
    - **Data Exporter API - training type core**: Required for catalog sync
    - **Data Exporter API - training provider core**: Required for catalog sync
    - **Data Exporter API - training local core**: Required for catalog sync
    - **Data Exporter API - culture core**: Required for catalog sync
    - **Data Exporter API - transcript core**: Required for assignment sync
    - **Data Exporter API - users core**: Required for user sync
    - **Data Exporter API - training availability by user core**: Required for permissions sync

    <!--image 3-->

4. You'll see a success message when the installation has been completed.

    <!--image 4-->

5. Choose **Configure Now**.

    <!--image 5-->

6. See the required configuration details and post the details in the Microsoft 365 admin center under the Cornerstone OnDemand learning source option.  

    <!--image 6-->

<!--Note : Snapshots are temporary, we will have final snapshots from CSOD team once they create Viva Learning tile in CSOD portal.-->

## Data residency

Tenant metadata is stored centrally in our data stores and not stored in geo-specific data stores.

## Roles and permissions

Currently, all the users within an organization can discover all the tenant-specific courses but they will only be able to use the courses that they have access to. User-specific content discovery based on roles and permissions is planned for future releases.
