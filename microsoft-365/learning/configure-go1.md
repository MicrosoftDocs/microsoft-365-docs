---
title: Configure Go1 as a learning source for Microsoft Viva Learning
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
description: Learn how to configure Go1 as a learning content source for Microsoft Viva Learning.
---

# Configure Go1 as a learning source for Microsoft Viva Learning


This article shows you how to configure Go1 as a third-party learning content source in Viva Learning. 

>[!NOTE]
>Content accessible through Viva Learning is subject to terms other than the Microsoft Product Terms. Go1 content and any associated services are subject to Go1’s privacy and service terms.

Go1 provides access to thousands of courses from top content providers. [Learn more about Go1](https://www.go1.com/go1-microsoft-viva). Follow these steps to add Go1 as a learning source in Viva Learning.

## Create a developer's app in Go1

First, you'll need to follow these steps to create an app in your Go1 Portal. This app will generate your API keys, which you can use to authenticate with Go1 and make requests to the API.

1. Sign in to your Go1 Portal as an administrator.

2. Select **Integrations** from the menu options.

3. Select **Developers**.

    ![Image of the Developers option in the Integrations menu.](media/go1-1.png)

4. Select the **Create App** button.

    ![Image of the Create App button.](media/go1-2.png)

5. Enter a name for the app, for example, "My-go1-viva-integration".

6. Enter a call back URL, for example, "Mycompany.mygo1.com".

    ![Image of the field where you enter the name and callback URL.](media/go1-3.png)

7. Save the information you entered.

8. Your information will display with the Secret hidden. Select the ellipses (**...**), then select **View Secret** to display the Secret.

9. Copy the following values:

 - **Client's Host URL:** This is your Go1 Portal URL. It will look like "https://mycompany.mygo1.com".
 - **Client ID:** You can find your ID in your Go1 Portal under the **Integrations/Developer** menu options.
 - **Secret:** You can find your Secret in your Go1 Portal under the **Integrations/Developer** menu options.

## Complete configuration in the Microsoft 365 admin center

Copy and paste the values that you've retrieved from your Go1 Portal into the Go1 setup screen in the Microsoft 365 admin center.

Learn more about [how to create a private developer's app for Go1]().
