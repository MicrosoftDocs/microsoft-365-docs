---
title: "Configure Go1 as a learning content source for Microsoft Viva Learning (Preview)"
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
description: "Learn how to configure Go1 as a learning content source for Microsoft Viva Learning (Preview)."
---

# Configure Go1 as a learning content source for Microsoft Viva Learning (Preview)

Go1 provides access to thousands of courses from top content providers. [Learn more about Go1](https://www.go1.com/go1-microsoft-viva). Follow these steps so add Go1 as a content source in Viva Learning.

## Create a developer's app in Go1

First, you'll need to follow these steps to create an app in your Go1 Portal. This app will generate your API keys, which you can use to authenticate with Go1 and make requests to the API.

1. Sign in to your Go1 Portal as an administrator.
2. Select **Integrations** from the menu options.
3. Select **Developers**.

    ![Image of the Developers option in the Integrations menu](media/go1-1.png)

4. Select the **Create App** button.

    ![Image of the Create App button](media/go1-2.png)

5. Enter a name for the app, for example, "My-go1-viva-integration".
6. Enter a call back URL, for example, "Mycompany.mygo1.com".

    ![Image of the field where you enter the name and callback URL](media/go1-3.png)

7. Save the information you entered.
8. Your information will display with the Secret hidden. Select the ellipses (**...**), then select **View Secret** to display the Secret.
9. Copy the following values.
    1. **Client's Host URL:** This is your Go1 Portal URL. It will look like "https://mycompany.mygo1.com".
    2. **Client ID:** You can find your ID in your Go1 Portal under the **Integrations/Developer** menu options.
    3. **Secret:** You can find your Secret in your Go1 Portal under the **Integrations/Developer** menu options.

## Complete configuration in the Microsoft 365 admin center

Copy and paste the values that you've retrieved from your Go1 Portal into the Go1 setup screen in your Microsoft 365 Admin center.

Learn more about creating a private developer's app for Go1 [here].
