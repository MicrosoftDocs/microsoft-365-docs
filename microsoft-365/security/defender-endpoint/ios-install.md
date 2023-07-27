---
title: Deploy Microsoft Defender for Endpoint on iOS with Microsoft Intune
ms.reviewer:
description: Describes how to deploy Microsoft Defender for Endpoint on iOS using an app.
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, app, installation, deploy, uninstallation, intune
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Deploy Microsoft Defender for Endpoint on iOS with Microsoft Intune

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This topic describes deploying Defender for Endpoint on iOS on Microsoft Intune Company Portal enrolled devices. For more information about Microsoft Intune device enrollment, see [Enroll iOS/iPadOS devices in Intune](/mem/intune/enrollment/ios-enroll).

## Before you begin

- Ensure you have access to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

- Ensure iOS enrollment is done for your users. Users need to have a Defender for Endpoint license assigned in order to use Defender for Endpoint on iOS. Refer to [Assign licenses to users](/azure/active-directory/users-groups-roles/licensing-groups-assign) for instructions on how to assign licenses.

- Ensure the end users have company portal app installed, signed in and enrollment completed.

> [!NOTE]
> Microsoft Defender for Endpoint on iOS is available in the [Apple App Store](https://aka.ms/mdatpiosappstore).

This section covers:

1. **Deployment steps** (applicable for both **Supervised** and **Unsupervised** devices)- Admins can deploy Defender for Endpoint on iOS via Microsoft Intune Company Portal. This step is not needed for VPP (volume purchase) apps.

1. **Complete deployment** (only for Supervised devices)- Admins can select to deploy any one of the given profiles.
    1. **Zero touch (Silent) Control Filter** - Provides Web Protection without the local loopback VPN and also enables silent onboarding for users. App is automatically installed  and activated without the need for user to open the app.
    1. **Control Filter** - Provides Web Protection without the local loopback VPN.
  
1. **Automated Onboarding setup** (only for **Unsupervised** devices) - Admins can automate the Defender for Endpoint onboarding for users in two different ways:
    1. **Zero touch (Silent) Onboarding** - App is automatically installed and activated without the need for users to open the app.
    1. **Auto Onboarding of VPN** - Defender for Endpoint VPN profile is automatically setup without having the user to do so during onboarding. This step is not recommended in Zero touch configurations.

## Deployment steps (applicable for both Supervised and Unsupervised devices)

Deploy Defender for Endpoint on iOS via Microsoft Intune Company Portal.

### Add iOS store app

1. In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Apps** > **iOS/iPadOS** > **Add** > **iOS store app** and click **Select**.

   :::image type="content" source="images/ios-deploy-1.png" alt-text="The Add applications tab in the Microsoft Intune admin center" lightbox="images/ios-deploy-1.png":::

1. On the **Add app** page, click on **Search the App Store** and type **Microsoft Defender** in the search bar. In the search results section, click on *Microsoft Defender* and click **Select**.

1. Select **iOS 14.0** as the Minimum operating system. Review the rest of information about the app and click **Next**.

1. In the **Assignments** section, go to the **Required** section and select **Add group**. You can then choose the user group(s) that you would like to target Defender for Endpoint on iOS app. Click **Select** and then **Next**.

    > [!NOTE]
    > The selected user group should consist of Microsoft Intune enrolled users.

   :::image type="content" source="images/ios-deploy-2.png" alt-text="The Add group tab in the Microsoft Intune admin center" lightbox="images/ios-deploy-2.png":::

1. In the *Review + Create* section, verify that all the information entered is correct and then select **Create**. In a few moments, the Defender for Endpoint app should be created successfully, and a notification should show up at the top-right corner of the page.

1. In the app information page that is displayed, in the **Monitor** section, select **Device install status** to verify that the device installation has completed successfully.

   :::image type="content" source="images/ios-deploy-3.png" alt-text="The Device install status page" lightbox="images/ios-deploy-3.png":::

## Complete deployment for supervised devices

The Microsoft Defender for Endpoint on iOS app has specialized ability on supervised iOS/iPadOS devices, given the increased management capabilities provided by the platform on these types of devices. It can also provide Web Protection **without setting up a local VPN on the device**. This gives end-users a seamless experience while still being protected from phishing and other web-based attacks.

Admins can use the following steps to configure supervised devices.

### Configure Supervised Mode via Microsoft Intune

Configure the supervised mode for Defender for Endpoint app through an App configuration policy and Device configuration profile.

#### App configuration policy

> [!NOTE]
> This app configuration policy for supervised devices is applicable only to managed devices and should be targeted for ALL managed iOS devices as a best practice.

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and go to **Apps** \> **App configuration policies** \> **Add**. Select **Managed devices**.

   :::image type="content" source="images/ios-deploy-4.png" alt-text="Image of Microsoft Intune admin center4." lightbox="images/ios-deploy-4.png":::

1. In the *Create app configuration policy* page, provide the following information:
    - Policy Name
    - Platform: Select iOS/iPadOS
    - Targeted app: Select **Microsoft Defender for Endpoint** from the list

    :::image type="content" source="images/ios-deploy-5.png" alt-text="Image of Microsoft Intune admin center5." lightbox="images/ios-deploy-5.png":::

1. In the next screen, select **Use configuration designer** as the format. Specify the following properties:
    - Configuration Key: `issupervised`
    - Value type: String
    - Configuration Value: `true`

    :::image type="content" source="images/ios-deploy-6.png" alt-text="Image of Microsoft Intune admin center6." lightbox="images/ios-deploy-6.png":::

1. Select **Next** to open the **Scope tags** page. Scope tags are optional. Select **Next** to continue.

1. On the **Assignments** page, select the groups that will receive this profile. For this scenario, it is best practice to target **All Devices**. For more information on assigning profiles, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign).

   When deploying to user groups, a user must sign in to a device before the policy applies.

   Click **Next**.

1. On the **Review + create** page, when you're done, choose **Create**. The new profile is displayed in the list of configuration profiles.

#### Device configuration profile (Control Filter)

> [!NOTE]
> For devices that run iOS/iPadOS (in Supervised Mode), there is  custom **.mobileconfig** profile, called the **ControlFilter** profile available. This profile enables Web Protection **without setting up the local loopback VPN on the device**. This gives end-users a seamless experience while still being protected from phishing and other web-based attacks.
>
>  However, the **ControlFilter** profile does not work with Always-On VPN (AOVPN) due to platform restrictions.

Admins deploy any one of the given profiles.

1. **Zero touch (Silent) Control Filter** - This profile enables silent onboarding for users. Download the config profile from [ControlFilterZeroTouch](https://aka.ms/mdeiosprofilesupervisedzerotouch)

2. **Control Filter** - Download the config profile from [ControlFilter](https://aka.ms/mdeiosprofilesupervised).

Once the profile has been downloaded, deploy the custom profile. Follow the steps below:

1. Navigate to **Devices** > **iOS/iPadOS** > **Configuration profiles** > **Create Profile**.
1. Select **Profile Type** > **Templates** and **Template name** > **Custom**.

   :::image type="content" source="images/ios-deploy-7.png" alt-text="Image of Microsoft Intune admin center7." lightbox="images/ios-deploy-7.png":::

1. Provide a name of the profile. When prompted to import a Configuration profile file, select the one downloaded from the previous step.
1. In the **Assignment** section, select the device group to which you want to apply this profile. As a best practice, this should be applied to all managed iOS devices. Select **Next**.

   > [!NOTE]
   > Device Group creation is supported in both Defender for Endpoint Plan 1 and Plan 2.

1. On the **Review + create** page, when you're done, choose **Create**. The new profile is displayed in the list of configuration profiles.

## Automated Onboarding setup (only for Unsupervised devices)

Admins can automate the Defender onboarding for users in two different ways with Zero touch(Silent) Onboarding or Auto Onboarding of VPN.

### Zero-touch (Silent) onboarding of Microsoft Defender for Endpoint

> [!NOTE]
> Zero-touch cannot be configured on iOS devices that are enrolled without user affinity (user-less devices or shared devices).

Admins can configure Microsoft Defender for Endpoint to deploy and activate silently. In this flow, the administrator creates a deployment profile and the user is simply notified of the installation. Defender for Endpoint is automatically installed without the need for the user to open the app. Follow the steps below to set up zero-touch or silent deployment of Defender for Endpoint on enrolled iOS devices:

1. In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Configuration Profiles** > **Create Profile**.
1. Choose **Platform** as **iOS/iPadOS**, **Profile type** as **Templates** and **Template name** as **VPN**. Select **Create**.
1. Type a name for the profile and select **Next**.
1. Select **Custom VPN** for Connection Type and in the **Base VPN** section, enter the following:
   - Connection Name = Microsoft Defender for Endpoint
   - VPN server address = 127.0.0.1
   - Auth method = "Username and password"
   - Split Tunneling = Disable
   - VPN identifier = com.microsoft.scmx
   - In the key-value pairs, enter the key **SilentOnboard** and set the value to **True**.
   - Type of Automatic VPN = On-demand VPN
   - Select **Add** for **On Demand Rules** and select **I want to do the following = Connect VPN**, **I want to restrict to = All domains**.

   :::image type="content" source="images/ios-deploy-9.png" alt-text="The VPN profile Configuration page" lightbox="images/ios-deploy-9.png":::

   - To mandate that VPN can't be disabled in users device, Admins can select **Yes** from **Block users from disabling automatic VPN**. By default, it's not configured and users can disable VPN only in the Settings.
   - To allow Users to Change the VPN toggle from within the app, add **EnableVPNToggleInApp = TRUE**, in the key-value pairs. By default, users can't change the toggle from within the app.

1. Select **Next** and assign the profile to targeted users.
1. In the *Review + Create* section, verify that all the information entered is correct and then select **Create**.

Once the above configuration is done and synced with the device, the following actions take place on the targeted iOS device(s):

- Microsoft Defender for Endpoint will be deployed and silently onboarded and the device will be seen in the Defender for Endpoint portal.
- A provisional notification will be sent to the user device.
- Web Protection and other features will be activated.

> [!NOTE]
> For supervised devices, admins can setup Zero touch onboarding with the new [ZeroTouch Control Filter Profile](#device-configuration-profile-control-filter).
Defender for Endpoint VPN Profile will not be installed on the device and Web protection will be provided by the Control Filter Profile.

### Auto-Onboarding of VPN profile (Simplified Onboarding)

> [!NOTE]
> This step simplifies the onboarding process by setting up the VPN profile. If you are using Zero touch, you do not need to perform this step. 

For unsupervised devices, a VPN is used to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

Admins can configure auto-setup of VPN profile. This will automatically set up the Defender for Endpoint VPN profile without having the user to do so while onboarding.

1. In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Configuration Profiles** > **Create Profile**.
1. Choose **Platform** as **iOS/iPadOS** and **Profile type** as **VPN**. Click **Create**.
1. Type a name for the profile and click **Next**.
1. Select **Custom VPN** for Connection Type and in the **Base VPN** section, enter the following:
   - Connection Name = Microsoft Defender for Endpoint
   - VPN server address = 127.0.0.1
   - Auth method = "Username and password"
   - Split Tunneling = Disable
   - VPN identifier = com.microsoft.scmx
   - In the key-value pairs, enter the key **AutoOnboard** and set the value to **True**.
   - Type of Automatic VPN = On-demand VPN
   - Select **Add** for **On Demand Rules** and select **I want to do the following = Connect VPN**, **I want to restrict to = All domains**.

      :::image type="content" source="images/ios-deploy-8.png" alt-text="The VPN profile Configuration settings tab." lightbox="images/ios-deploy-8.png":::

   - To require that VPN cannot be disabled on a users' device, Admins can select **Yes** from **Block users from disabling automatic VPN**. By default, this setting not configured and users can disable VPN only in the Settings.
   - To allow Users to Change the VPN toggle from within the app, add **EnableVPNToggleInApp = TRUE**, in the key-value pairs. By default, users cannot change the toggle from within the app.

1. Click **Next** and assign the profile to targeted users.
1. In the *Review + Create* section, verify that all the information entered is correct and then select **Create**.

## Complete onboarding and check status

1. Once Defender for Endpoint on iOS has been installed on the device, you will see the app icon.

   :::image type="icon" source="images/41627a709700c324849bf7e13510c516.png":::

2. Tap the Defender for Endpoint app icon (MSDefender) and follow the on-screen instructions to complete the onboarding steps. The details include end-user acceptance of iOS permissions required by Defender for Endpoint on iOS.

> [!NOTE] 
> Skip this step if you configure zero touch (silent) onboarding. Manually launching application is not necessary if zero touch (silent) onboarding is configured.

3. Upon successful onboarding, the device will start showing up on the Devices list in the Microsoft 365 Defender portal.

   :::image type="content" source="images/device-inventory-screen.png" alt-text="The Device inventory page." lightbox="images/device-inventory-screen.png":::

## Next Steps

- [Configure app protection policy to include Defender for Endpoint risk signals (MAM)](ios-install-unmanaged.md)
- [Configure Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
