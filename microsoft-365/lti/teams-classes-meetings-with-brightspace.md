---
title: Integrate Microsoft Teams classes and meetings LTI apps with Desire2Learn Brightspace LMS
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
ms.date: 07/06/2022
audience: admin
ms.topic: article
ms.service: microsoft-365-business
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
ms.localizationpriority: medium
description: Create and manage Teams classes and meetings with Microsoft Learning Tools Interoperability (LTI) for the Desire2Learn (D2L) Brightspace LMS.
---

# Integrate Microsoft Teams classes and meetings LTI apps within Desire2Learn Brightspace LMS

This guide provides the IT admin steps for registering both Teams Classes and Teams Meetings LTI apps for the Desire2Learn (D2L) Brightspace LMS.

For details on managing all LTI apps for any LMS, see [Manage Microsoft LMS Gateway for any LMS](manage-microsoft-one-lti.md).

The basic steps to integrate Teams LTI apps and Brightspace are:

1. [Prerequisites before integration](#prerequisites-before-integration).
1. [Register Microsoft LTI for use in Brightspace](#register-microsoft-teams-lti-for-use-in-brightspace).
1. [Deploy the Microsoft LTI apps to Brightspace](#deploy-the-microsoft-lti-apps-to-brightspace).
1. [Add Teams LTI app links to educators' Brightspace](#add-teams-lti-app-links-to-educators-brightspace).

## Prerequisites before integration

For the integration between D2L Brightspace and Teams to function correctly, Brightspace and Teams must be set up to communicate with one another.

1. For Teams Classes to work, you need to have **Brightspace Course Connector** installed and configured correctly. Follow [these steps to install the connector on your Brightspace account](https://community.brightspace.com/s/article/Getting-started-with-Brightspace-Course-Connector-for-Microsoft-Teams).

   > [!NOTE]
   > Select **Class Team** for **Integration type** when setting up the connector to ensure compatibility with Teams LTI tools.

2. Teams Meetings will work without the course connector. However, certain features such as **Add entire class** won't be available. We recommend installing **Brightspace Course Connector** for the Teams Meetings LTI app.

## Register Microsoft Teams LTI for use in Brightspace

1. Visit [Microsoft LMS Gateway](https://lti.microsoft.com/) and select the **Go to Registration Portal** button.

2. Sign in with a *Microsoft 365 administrator account*.

3. After signing in, select **Add new registration**.

4. Select either **Teams Meetings LTI** or **Teams Classes LTI** to register and then select **Next**.

5. Enter in an easily identifiable **Registration** name and select **D2L Brightspace** as the LMS platform. Select **Next**.

6. You'll be given a list of keys that need to be added to your Brightspace LMS site.

7. Open the Brightspace site in another tab. Don't close the Microsoft LMS Gateway tab.

8. On the Brightspace site, navigate to **Admin** > **Manage Extensibility** and select **LTI Advantage** then **Register Tool**.

9. Select **Standard registration** and copy the keys from **Microsoft LTI keys** to the corresponding tool inputs.
    1. Microsoft's **Target link URL** key goes into Brightspace's **Target Link URI** field.
    1. Microsoft's **Open ID connection URL** key goes into Brightspace's **OpenID Connect Login URL** field.
    1. Microsoft's **Redirect URL** key goes into Brightspace's **Redirect URLs** field.

10. In the **Domain** field, enter `https://teams.microsoft.com`.

11. Select the **Register** button.

12. A modal will display the Brightspace registration details. These values need to be added on Microsoft LMS Gateway.

13. On the **Microsoft LMS gateway** tab, select **LMS provided registration keys**.

14. Copy and paste the values from Brightspace's configuration details to Microsoft's **LMS provided registration keys** step.

    Paste the values as follows:

    | On Brightspace                         | On Microsoft LTI registration portal |
    | -------------------------------------- | ------------------------------------ |
    | Issuer                                 | Issuer ID URL                        |
    | Client ID                              | Client ID                            |
    | Brightspace Keyset URL                 | Keyset URL                           |
    | OpenID Connect Authentication Endpoint | Platform authentication URL          |

    Select **Next**.

15. Review the **Review and add** page. If there are no errors, select **Save and exit**. You should see a message indicating successful registration.

You've completed registration of either the Teams Classes or Teams Meetings LTI app.

If you would like to add the other app too, repeat the steps above, selecting the other Teams LTI app in step 4.

## Deploy the Microsoft LTI apps to Brightspace

After registering your Microsoft LTI apps, you need to deploy the apps on your Brightspace site.

Here's the procedure to create a new deployment:

1. On the Brightspace site, select the tool that you created.
2. Enter a deployment name.
3. Select all security settings except **Classlist** and **Anonymous**.
4. Don't set configuration settings.
5. Select **Create Deployment**.

Choose the **Org Units** you would like to use the new LTI app. Select the **root org** or select individual org unit children.

## Add Teams LTI app links to educators' Brightspace

After creating a deployment, you'll create a new link. This link will add the Microsoft LTI app to educators' Brightspace experience.

1. On the Brightspace site, select the deployment you created.
2. Scroll down and select **View Links**.
3. Select **New link**.
4. Fill in these required details:
    1. Paste the **Redirect URL** from *Microsoft LMS gateway* into the **URL** field. This URL can be accessed by viewing the registration on the gateway.
    1. Set the type to **Basic Launch**.
5. Select **Save and Close**.

The educator can now add the Microsoft LTI app by selecting it in the Brightspace **Existing Content** dropdown.
