---
title: Configure Go1 as a content source for Microsoft Viva Learning
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
description: Learn how to configure Go1 as a learning content source for Microsoft Viva Learning.
---

# Configure Go1 as a content source for Microsoft Viva Learning

This article shows you how to configure Go1 as a third-party learning content source in Viva Learning.

>[!NOTE]
>Content accessible through Viva Learning is subject to terms other than the Microsoft Product Terms. Go1 content and any associated services are subject to Go1's privacy and service terms.

Go1 provides access to thousands of courses from top content providers. [Learn more about Go1](https://www.go1.com/go1-microsoft-viva). Follow these steps to add Go1 as a learning source in Viva Learning.

## Configure in your Go1 portal

>[!NOTE]
>You'll need to have admin permissions in Go1 to complete these steps.

First, you'll need to follow these steps to create an app in your Go1 Portal. This app will generate your API keys, which you can use to authenticate with Go1 and make requests to the API.

1. Sign in to your Go1 Portal as an administrator.

2. Select **Integrations** from the menu options.

3. Select **Developers**.
4. Select the **Create App** button.
5. Enter a name for the app, for example, "My-go1-viva-integration".
6. Enter a call back URL, for example, "Mycompany.mygo1.com".
7. Save the information you entered.
8. Your information will display with the Secret hidden. Select the ellipses (**...**), then select **View Secret** to display the Secret.
9. Copy the following values:

    - **Client's Host URL:** This is your Go1 Portal URL. It will look like "https://mycompany.mygo1.com".
    - **Client ID:** You can find your ID in your Go1 Portal under the **Integrations/Developer** menu options.
    - **Secret:** You can find your Secret in your Go1 Portal under the **Integrations/Developer** menu options.

Learn more about [how to create a private developer's app for Go1](https://help.go1.com/en/articles/4642648-integrate-with-the-go1-api).

## Configure in your Microsoft 365 admin center

>[!NOTE]
>You'll need to have admin permissions in Microsoft 365 to complete these steps.

1. Log in to your [Microsoft 365 admin center](https://admin.microsoft.com).
2. Navigate to **Settings**, then **Org settings**. Select Viva Learning, and enable Go1 in the panel.
3. Fill in the configuration details that you retrieved from your Go1 portal.
4. Select **Save** to activate Go1 content in Viva Learning. It may take up to 24 hours for the content to display in the Viva Learning app.
