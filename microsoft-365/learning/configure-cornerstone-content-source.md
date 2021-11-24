---
title: Configure Cornerstone OnDemand as a content source for Microsoft Viva Learning
ms.author: daisyfeller
author: daisyfell
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 10/27/2021
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
localization_priority: medium
description: Learn how to configure Cornerstone OnDemand as a learning content source for Microsoft Viva Learning.

---

# Configure Cornerstone OnDemand as a content source for Microsoft Viva Learning

This article shows you how to configure Cornerstone OnDemand as a third-party learning content source in Viva Learning. First you'll need to enable Viva Learning and get your details from your Cornerstone Portal. Then you'll need to complete configuration in your Microsoft 365 admin center.

>[!NOTE]
>Content accessible through Viva Learning is subject to terms other than the Microsoft Product Terms. Cornerstone OnDemand content and any associated services are subject to Cornerstone OnDemand's privacy and service terms.

## Configure in your Cornerstone Portal

1. Log in to your Cornerstone Portal as an admin.

    ![Image of the Cornerstone Portal.](../media/learning/csod-1.png)

2. Choose **Edge**.

    ![Image of the Edge pane.](../media/learning/csod-2.png)

3. Go to **Marketplace** and search for Viva.

    ![Image of the Marketplace.](../media/learning/csod-3.png)

4. Select the Viva Learning tile.

    ![Image of the cursor hovering over the Viva Learning tile in the Marketplace.](../media/learning/csod-4.png)

5. Choose **Install**.

    ![Image of the cursor hovering over the Install button after selecting the Viva Learning tile.](../media/learning/csod-5.png)

6. Check the box to confirm you agree to the Terms and Conditions, and choose **Install**.

    ![Image of the Install screen with the Terms and Conditions box checked.](../media/learning/csod-6.png)

7. Select **Configure Now**.

    ![Image of the installation popup with a button that says Configure Now on the right and one that says Later on the left.](../media/learning/csod-7.png)

8. Copy the Client ID, Secret, Portal name, and base URL. Then go back and search for Viva.

    ![Image of the configuration screen where you can find your Client ID, Client Secret, Portal name, and Base URL.](../media/learning/csod-8.png)

9. Slide the toggle to enable Viva Learning integration.

    ![Image of the Viva Learning integration toggle in the on position.](../media/learning/csod-10.png)

## Configure in your Microsoft 365 admin center

1. Log in to your [Microsoft 365 admin center](https://admin.microsoft.com).
2. Navigate to **Settings**, then **Org settings**. Select Viva Learning, and enable Cornerstone OnDemand in the panel.
3. Fill in the configuration details that you retrieved from your Cornerstone Portal.

    >[!NOTE]
    >The display name is the name of the carousel under which Cornerstone learning content will appear for your organization in Viva Learning. If you don't enter a name, it will display the default name "Cornerstone OnDemand".

4. Select **Save** to activate Cornerstone content in Viva Learning. It may take up to 24 hours for the content to display in the Viva Learning app.

>[!NOTE]
>Currently, all the users within an organization can discover all the tenant-specific courses but they will only be able to consume the courses that they have access to. User-specific content discovery based on roles and permissions is planned for future releases.
