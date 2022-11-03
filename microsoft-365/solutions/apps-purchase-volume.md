---
title: "Purchase apps in volume for a managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Purchase apps in volume for a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase apps in volume for a managed environment

<!--
## Types of volume purchased apps 
## Volume purchased apps by platform
-->

Before you can distribute apps to your workforce, you must add them to Intune. Many of the apps that you use with Microsoft Intune can be added to Intune and and deployed to user's devices for free. Some apps are free for your workforce to use, while other apps require either a license and/or an account for each user to use the app. For instance, Microsoft Outlook requires both a license and an account to use the app. 

Each device platform has a method to purchase apps for your organization in bulk:
- Apple provides the Apple Business Manager
- Google provides Managed Google Play
- Microsoft provide the Microsoft Store for Business

## Apple Business Manager<!-- What is it? -->

Apple lets you purchase multiple licenses for an app that you want to use in your organization on iOS/iPadOS and macOS devices using [Apple Business Manager](https://business.apple.com/). Apple Business Manager is web-based portals. Once you set up Apple Business Manager, you can purchase the apps needed to support your organization's Apple devices. Once you purchases apps, you can synchronize your purchase information with Intune.

> [!NOTE]
> If your organization is a school, you can use [Apple School Manager](https://school.apple.com/) to purchase apps. Once the apps are purchased, you can sync Apple School Manager with Microsoft Intune, where you can manage those apps. For Apple School Manager set up details, see [Set up Apple School Manager](https://support.apple.com/guide/deployment-education/set-up-apple-school-manager-edu42181fe4b/1/web/1.0).

### Set up Apple Business Manager<!-- How to set up? -->

Before you use Microsoft Intune to manage the iOS/iPadOS and macOS apps that your organization would like to use, you must sign up for Apple Business Manager. However, first make sure you meet the [requirements](https://support.apple.com/guide/apple-business-manager/program-requirements-axm6d9dc7acf/web) to use Apple Business Manager, then you can [sign up for Apple Business Manager](https://support.apple.com/guide/apple-business-manager/sign-up-axm402206497/web). 

> [!NOTE]
> Once you have signed up to use Apple Business Manager, you can sync from Microsoft Intune to manage your Apple apps on your organization's Apple devices. Managing apps includes setting the app configuration policies and the protection policies.

### Purchase apps using Apple Business Manager<!-- How do you buy apps? -->

Using Apple Business Manager, you can purchase standard apps, custom apps, and unlisted apps. Custom and unlisted apps are apps that have been tailored specifically for your organization by apps developers that you, or your organization, have worked with directly.

> [!IMPORTANT]
> Before you can purchase app using Apple Business Manager, you must [add a payment method to Apple Business Manager](https://support.apple.com/guide/apple-business-manager/review-content-payment-billing-information-axm746a59fa2/web). You must have a payment method set up to purchase any app, including free apps.

You can purchase app licenses from Apple Business Manager in volume. Before purchasing licenses, first determine the number of licenses you need. Once you have purchased the app licenses, you can then synchronize your volume purchase information with Intune and track your volume-purchased app use. Purchasing app licenses helps you efficiently manage apps within your company and retain ownership and control of purchased apps.

For related information about purchasing apps, see [Select and purchase content in Apple Business Manager](https://support.apple.com/guide/apple-business-manager/select-and-purchase-content-axmc21817890/web).

### Integrate Apple apps with Intune<!-- What does sync mean (certs)? How to sync? -->

Microsoft Intune helps you manage apps you purchased from Apple by synchronizing location tokens you download from Apple Business Manager. Location tokens are volume purchase licenses that were commonly known as Volume Purchase Program (VPP) tokens. These location tokens are used to assign and manage licenses purchased using Apple Business Manager. Content Managers can purchase and associate licenses with location tokens they have permissions to in Apple Business Manager. These location tokens are then downloaded from Apple Business Manager and uploaded in Microsoft Intune. Microsoft Intune supports uploading multiple location tokens per tenant. Each token is valid for one year.

In addition to synchronizing location tokens, Intune help you track how many licenses are available and have been used for purchased apps, and helps you install apps up to the number of licenses you own.

> [!NOTE]
> Additionally, you can synchronize, manage, and assign books you purchased from Apple Business Manager with Intune to iOS/iPadOS devices. 

#### Upload an Apple Business Manager location token

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Tenant administration** > **Connectors and tokens** > **Apple VPP tokens**.
3. On the list of VPP tokens pane, select **Create**. The **Create VPP token** process is displayed. There are four pages used when creating a VPP token. The first is **Basics**.
4. On the **Basics** page, specify the following information:
   - **Token Name** - An administrative field for setting the token name.
   - **Apple ID** - Enter the Managed Apple ID of the account associated with the uploaded token.
   - **VPP token file** - If you haven't already, sign up for Apple Business Manager or Apple School Manager. After you sign up, download the Apple Business Manager location token (Apple VPP token) for your account and select it here.
5. Click **Next** to display the **Settings** page.
6. On the **Settings** page, specify the following information:
   - **Take control of token from another MDM** - Setting this option to **yes** allows the token to be reassigned to Intune from another MDM solution.
   - **Country/Region** - Select the VPP country/region store.  Intune synchronizes VPP apps for all locales from the specified VPP country/region store.

        > [!WARNING]  
        > Changing the country/region will update the apps metadata and App Store URL on next sync with the Apple service for apps created with this token. The app will not be updated if it does not exist in the new country/region store.

   - **Type of VPP account** - Choose from **Business** or **Education**.
   - **Automatic app updates** - Choose from **Yes** or **No** to enable automatic updates. When enabled, Intune detects the VPP app updates inside the app store and automatically pushes them to the device when the device checks in.

        > [!NOTE]
        > Automatic app updates for Apple VPP apps will automatically update for both **Required** and **Available** install intents. For apps deployed with **Available** install intent, the automatic update generates a status message for the IT admin informing that a new version of the app is available. This status message is viewable by selecting the app, selecting Device Install Status, and checking the Status Details. 
        >
        > When updating a VPP app, it can take up to 24 hours for the device to receive the updated VPP app. The device must be unlocked and available to install the update successfully.

    - **I grant Microsoft permission to send both user and device information to Apple.** - You must select **I agree** to proceed. To review what data Microsoft sends to Apple, see [Data Intune sends to Apple](../protect/data-intune-sends-to-apple.md).
7. Click **Next** to display the **Scope tags** page.
8. Click **Select scope tags** to optionally add scope tags for the app. For more information, see [Use role-based access control (RBAC) and scope tags for distributed IT](../fundamentals/scope-tags.md).
9. Click **Next** to display the **Review + create** page. Review the values and settings you entered for the VPP token.
10. When you are done, click **Create**. The token is displayed in the list of tokens pane.

#### Synchronize an Apple VPP token

You can synchronize the app names, metadata and license information for your purchased apps in Intune by choosing **Sync** for a selected token.

Where can I find additional information?
[Apple Business Manager User Guide](https://support.apple.com/guide/apple-business-manager/welcome/web)

## Managed Google Play<!-- What is it? -->

Apple lets you purchase multiple licenses for an app that you want to use in your organization on iOS/iPadOS and macOS devices using [Apple Business Manager](https://business.apple.com/). Apple Business Manager is web-based portals. Once you set up Apple Business Manager, you can purchase the apps needed to support your organization's Apple devices. Once you purchases apps, you can synchronize your purchase information with Intune.

> [!NOTE]
> If your organization is a school, you can use [Apple School Manager](https://school.apple.com/) to purchase apps. Once the apps are purchased, you can sync Apple School Manager with Microsoft Intune, where you can manage those apps. For Apple School Manager set up details, see [Set up Apple School Manager](https://support.apple.com/guide/deployment-education/set-up-apple-school-manager-edu42181fe4b/1/web/1.0).

### Set up Apple Business Manager<!-- How to set up? -->

Before you use Microsoft Intune to manage the iOS/iPadOS and macOS apps that your organization would like to use, you must sign up for Apple Business Manager. However, first make sure you meet the [requirements](https://support.apple.com/guide/apple-business-manager/program-requirements-axm6d9dc7acf/web) to use Apple Business Manager, then you can [sign up for Apple Business Manager](https://support.apple.com/guide/apple-business-manager/sign-up-axm402206497/web). 

> [!NOTE]
> Once you have signed up to use Apple Business Manager, you can sync from Microsoft Intune to manage your Apple apps on your organization's Apple devices. Managing apps includes setting the app configuration policies and the protection policies.

### Purchase apps using Managed Google Play<!-- How do you buy apps? -->

Using Managed Google Play, you can purchase standard apps, custom apps, and unlisted apps. Custom and unlisted apps are apps that have been tailored specifically for your organization by apps developers that you, or your organization, have worked with directly.

> [!IMPORTANT]
> Before you can purchase app using Apple Business Manager, you must [add a payment method to Apple Business Manager](https://support.apple.com/guide/apple-business-manager/review-content-payment-billing-information-axm746a59fa2/web). You must have a payment method set up to purchase any app, including free apps.

You can purchase app licenses from Apple Business Manager in volume. Before purchasing licenses, first determine the number of licenses you need. Once you have purchased the app licenses, you can then synchronize your volume purchase information with Intune and track your volume-purchased app use. Purchasing app licenses helps you efficiently manage apps within your company and retain ownership and control of purchased apps.

For related information about purchasing apps, see [Select and purchase content in Apple Business Manager](https://support.apple.com/guide/apple-business-manager/select-and-purchase-content-axmc21817890/web).

### Integrate Managed Google Play apps with Intune<!-- What does sync mean (certs)? How to sync? -->

Microsoft Intune helps you manage apps you purchased from Apple by synchronizing location tokens you download from Apple Business Manager. Location tokens are volume purchase licenses that were commonly known as Volume Purchase Program (VPP) tokens. These location tokens are used to assign and manage licenses purchased using Apple Business Manager. Content Managers can purchase and associate licenses with location tokens they have permissions to in Apple Business Manager. These location tokens are then downloaded from Apple Business Manager and uploaded in Microsoft Intune. Microsoft Intune supports uploading multiple location tokens per tenant. Each token is valid for one year.

In addition to synchronizing location tokens, Intune help you track how many licenses are available and have been used for purchased apps, and helps you install apps up to the number of licenses you own.

> [!NOTE]
> Additionally, you can synchronize, manage, and assign books you purchased from Apple Business Manager with Intune to iOS/iPadOS devices. 

#### Upload an Managed Google Play location token

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Tenant administration** > **Connectors and tokens** > **Apple VPP tokens**.
3. On the list of VPP tokens pane, select **Create**. The **Create VPP token** process is displayed. There are four pages used when creating a VPP token. The first is **Basics**.
4. On the **Basics** page, specify the following information:
   - **Token Name** - An administrative field for setting the token name.
   - **Apple ID** - Enter the Managed Apple ID of the account associated with the uploaded token.
   - **VPP token file** - If you haven't already, sign up for Apple Business Manager or Apple School Manager. After you sign up, download the Apple Business Manager location token (Apple VPP token) for your account and select it here.
5. Click **Next** to display the **Settings** page.
6. On the **Settings** page, specify the following information:
   - **Take control of token from another MDM** - Setting this option to **yes** allows the token to be reassigned to Intune from another MDM solution.
   - **Country/Region** - Select the VPP country/region store.  Intune synchronizes VPP apps for all locales from the specified VPP country/region store.

        > [!WARNING]  
        > Changing the country/region will update the apps metadata and App Store URL on next sync with the Apple service for apps created with this token. The app will not be updated if it does not exist in the new country/region store.

   - **Type of VPP account** - Choose from **Business** or **Education**.
   - **Automatic app updates** - Choose from **Yes** or **No** to enable automatic updates. When enabled, Intune detects the VPP app updates inside the app store and automatically pushes them to the device when the device checks in.

        > [!NOTE]
        > Automatic app updates for Apple VPP apps will automatically update for both **Required** and **Available** install intents. For apps deployed with **Available** install intent, the automatic update generates a status message for the IT admin informing that a new version of the app is available. This status message is viewable by selecting the app, selecting Device Install Status, and checking the Status Details. 
        >
        > When updating a VPP app, it can take up to 24 hours for the device to receive the updated VPP app. The device must be unlocked and available to install the update successfully.

    - **I grant Microsoft permission to send both user and device information to Apple.** - You must select **I agree** to proceed. To review what data Microsoft sends to Apple, see [Data Intune sends to Apple](../protect/data-intune-sends-to-apple.md).
7. Click **Next** to display the **Scope tags** page.
8. Click **Select scope tags** to optionally add scope tags for the app. For more information, see [Use role-based access control (RBAC) and scope tags for distributed IT](../fundamentals/scope-tags.md).
9. Click **Next** to display the **Review + create** page. Review the values and settings you entered for the VPP token.
10. When you are done, click **Create**. The token is displayed in the list of tokens pane.

#### Synchronize a Managed Google Play VPP token

You can synchronize the app names, metadata and license information for your purchased apps in Intune by choosing **Sync** for a selected token.

Where can I find additional information?
[Apple Business Manager User Guide](https://support.apple.com/guide/apple-business-manager/welcome/web)



## Microsoft Store for Business<!-- What is it? -->
### Set up Microsoft Store for Business<!-- How to set up? -->
### Purchase apps using Microsoft Store for Business<!-- How do you buy apps? -->
### Integrate Microsoft Store for Business apps with Intune<!-- What does sync mean (certs)? How to sync? -->
#### Upload an Microsoft Store for Business location token
#### Synchronize an Microsoft Store for Business VPP token

