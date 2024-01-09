---
title: Integrate Microsoft Reflect LTI with D2L Brightspace
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: eladgr
ms.date: 11/28/2023
audience: admin
ms.topic: article
ms.service: o365-administration
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
- tier2
ms.localizationpriority: medium
description: Create impactful check-ins to gain wellbeing insights and build a happier, healthier learning community with the Microsoft Reflect Learning Tools Interoperability App for D2L Brightspace.
---

# Integrate Microsoft Reflect LTI with D2L Brightspace

[Microsoft Reflect](https://reflect.microsoft.com) is a wellbeing app designed to foster connection, expression, and learning by promoting self-awareness, empathy, and emotional growth.
    
Reflect LTI integration with D2L Brightspace is designed in compliance with the latest Learning Tools Interoperability (LTI) standards, ensuring strong security and straightforward installation within your D2L Brightspace environment.

Integrate Reflect into D2L Brightspace to create impactful check-ins, gain wellbeing insights, and build a happier, healthier learning community.

> [!NOTE]
> This guide provides IT admins steps for registering the Reflect LTI app for Brightspace by D2L.
> 
> The person who performs this integration should be an administrator of Brightspace and Microsoft 365 tenant.

## One-time setup by administrator

> [!IMPORTANT]
> To access the Reflect LTI app in your D2L Brightspace environment, you should complete **all** three steps detailed in this section: register Microsoft Reflect LTI for use in your D2L Brightspace, then deploy it, and finally add a link to it in your course navigation.

### 1. Register Microsoft Reflect LTI for use in your D2L Brightspace
1. Sign in with a *Microsoft 365 administrator account* to the [Microsoft LTI Registration Portal](https://lti.microsoft.com/registration). 
1. Select **Add new registration**.
1. Select **Microsoft Reflect** and then select **Next**.
1. Enter a friendly **Registration** name like *Reflect for D2L Brightspace* and select **D2L Brightspace** as the LMS platform. Select **Next**.
1. You're given a list of keys that need to be added to your Brightspace LMS site.
1. Open your D2L Brightspace environment in another tab. ***Don't*** close the Microsoft LTI portal tab.
1. On D2L Brightspace, navigate to **Admin Tools** > **Manage Extensibility** and select **LTI Advantage** then **Register Tool**.
1. Select **Standard** registration and enter the values listed in the table:

    | Field on Brightspace form              | Value                                |
    | -------------------------------------- | ------------------------------------ |
    | Name                                   | Microsoft Reflect                    |   
    | Domain                                 | https://reflect.microsoft.com        |
    | Redirect URLs                          | Copy the **Redirect URL** value from Microsoft LTI keys.|
    | OpenID Connect Login URL               | Copy the **Open ID connection URL** value from Microsoft LTI keys.                           |
    | Target Link URI                        | https://reflect.microsoft.com/app   |
1. Select the **Register** button.
1. A modal with Brightspace registration details appears. Add these values on the Microsoft LTI portal.
1. On the **Microsoft LTI portal** tab, select **Next** to navigate to **LMS provided registration keys**. Enter the values listed in the table:

    | Field on Microsoft LTI registration portal | Value                            |
    | -------------------------------------- | ------------------------------------ |
    | Issuer ID URL                          | Copy the **Issuer** value from Brightspace Registration Details.                                   |
    | Client ID                              | Copy the **Client Id** value from Brightspace Registration Details.                                |
    | Keyset URL                             | Copy the **Brightspace Keyset URL** value from Brightspace Registration Details.                   |
    | Platform authentication URL            | Copy the **OpenID Connect Authentication Endpoint** value from Brightspace Registration Details.   |
1. Select **Done** in Brightspace Registration Details tab, and **Next** in the Microsoft LTI registration portal tab.
1. In the Microsoft LTI registration portal tab, review the **Review and save** page. If there are no errors, select **Save and exit**. You should see a message indicating successful registration.

### 2. Deploy Microsoft Reflect LTI to your D2L Brightspace
1. On D2L Brightspace, navigate to **Admin Tools** > **External Learning Tools**.
1. Select **New Deployment**.
1. Select **Microsoft Reflect** as the **Tool**, and enter **Microsoft Reflect** as the **Name** as well.
1. Select ***all*** security settings ***except*** **Anonymous** and **Classlist** (including Org Unit information, User Information, Link Information).
1. Don't set configuration settings.
1. Select **Add Org Units**, and then the **root org** or **all** units to deploy Microsoft Reflect for them.
1. Select **Create Deployment** and confirm the deployment.
1. Select **Microsoft Reflect** deployment, scroll down to **Deployment Id**, and copy its value.
1. Open the [Microsoft LTI Registration Portal](https://lti.microsoft.com/registration).
1. Select **edit** in the actions column of your *Reflect for D2L Brightspace* registration.
1. Select **Connect LTI credentials**, and then **LMS provided registration keys**.
1. Scroll down to **Deployment ID** and paste the value you copied from the **Brightspace Deployment Details**.
1. Select **Next**, review the **Review and save** page, and then select **Save and exit** to complete the update.

### 3. Add a link to Microsoft Reflect in your D2L Brightspace courses
1. On D2L Brightspace, navigate to **Admin Tools** > **External Learning Tools**.
1. Select **Microsoft Reflect**.
1. Scroll down to select **View Links**.
1. Select **New Link**.
1. Enter **Microsoft Reflect** as the **Name**.
1. For the **URL**, access the [Microsoft LTI Registration Portal](https://lti.microsoft.com/registration) and copy the **Redirect URL** from your *Reflect for D2L Brightspace* registration.
1. Select **Save and Close** to create the link.
1. Navigate to **Admin Tools** > **Navigation & Themes**.
1. Select **Standard Course Navigation**, and then **Add Links**.
1. Select **Create Custom Link**.
1. Enter **Microsoft Reflect** as the **Name**.
1. For the **URL**, select **Insert Quicklink**, and then **Microsoft Reflect**.
1. Select **Same window** for **Behavior**.
1. Select **Create**.
1. Ensure that the **Microsoft Reflect** checkbox is selected, and then select **Add**.
1. Drag the Microsoft Reflect link to your preferred location in the course navigation.
1. Select **Save and Close**. 

Reflect is now installed and ready to use in any course in your D2L Brightspace environment.

## Ongoing use by course owners and members

1. After the initial setup, course owners and members will find a link to Reflect in every course navigation.
1. On their first access, they need to sign in using their Microsoft account to get started.
1. Course owners can [create and share check-ins](https://support.microsoft.com/topic/c6cbbacc-5655-450e-bca9-988ddc506017).
1. Once check-ins are created, course members can access and respond to them in their Reflect tab.

> [!TIP]
> [Explore the Educator Toolkit](https://reflect.microsoft.com/home/resources) for resources that can help educators bring the magic of Reflect to students and share it with peers. 

## Recommended browser settings

- Cookies should be allowed for Microsoft Reflect.
- Popups shouldn't be blocked for Microsoft Reflect.

> [!NOTE]
> Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
>
> Microsoft Reflect LTI works in the private mode in Microsoft Edge browser. Ensure that you haven't blocked cookies, which are allowed by default.
