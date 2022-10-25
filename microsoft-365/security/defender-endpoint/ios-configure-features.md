---
title: Configure Microsoft Defender for Endpoint on iOS features
description: Describes how to deploy Microsoft Defender for Endpoint on iOS features.
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, configure, features, ios
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
---

# Configure Microsoft Defender for Endpoint on iOS features

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> Defender for Endpoint on iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Conditional Access with Defender for Endpoint on iOS

Microsoft Defender for Endpoint on iOS along with Microsoft Intune and Azure Active Directory enables enforcing Device compliance and Conditional Access policies based on device risk score. Defender for Endpoint is a Mobile Threat Defense (MTD) solution that you can deploy to leverage this capability via Intune.

For more information about how to set up Conditional Access with Defender for Endpoint on iOS, see [Defender for Endpoint and Intune](/mem/intune/protect/advanced-threat-protection).

### Jailbreak detection by Microsoft Defender for Endpoint

Microsoft Defender for Endpoint has the capability of detecting unmanaged and managed devices that are jailbroken. If a device is detected to be jailbroken, a **High**-risk alert will be reported to the Microsoft 365 Defender portal and if Conditional Access is set up based on device risk score, then the device will be blocked from accessing corporate data.

## Web Protection and VPN

By default, Defender for Endpoint on iOS includes and enables the web protection feature. [Web protection](web-protection-overview.md) helps to secure devices against web threats and protect users from phishing attacks. Note that Anti-phishing and custom indicators (URL and IP addresses) are supported as part of Web Protection. Web Content Filtering is currently not supported on mobile platforms.

Defender for Endpoint on iOS uses a VPN in order to provide this capability. Please note this is a local VPN and unlike traditional VPN, network traffic is not sent outside the device.

While enabled by default, there might be some cases that require you to disable VPN. For example, you want to run some apps that do not work when a VPN is configured. In such cases, you can choose to disable VPN from the app on the device by following the steps below:

1. On your iOS device, open the **Settings** app, click or tap **General** and then **VPN**.

2. Click or tap the "i" button for Microsoft Defender for Endpoint.

3. Toggle off **Connect On Demand** to disable VPN. 

   :::image type="content" source="images/ios-vpn-config.png" alt-text="The toggle button for the VPN config Connect on demand option" lightbox="images/ios-vpn-config.png":::

> [!NOTE]
> Web Protection will not be available when VPN is disabled. To re-enable Web Protection, open the Microsoft Defender for Endpoint app on the device and click or tap **Start VPN**.

## Disable Web Protection

Web Protection is one of the key features of Defender for Endpoint and it requires a VPN to provide that capability. The VPN used is a local/loopback VPN and not a traditional VPN, however there are several reasons for which customers might not prefer the VPN. Customers who do not want to set up a VPN, there is an option to disable **Web Protection** and deploy Defender for Endpoint without that feature. Other Defender for Endpoint features will continue to work.

This configuration is available for both the enrolled (MDM) devices as well as unenrolled (MAM) devices. For customers with MDM, admins can configure the **Web Protection** through Managed devices in the App Config. For customers without enrollment, using MAM, admins can configure the **Web Protection** through Managed apps in the App Config.

### Configure Web Protection

1. **Disable Web Protection(MDM)** Use the following steps to disable **Web Protection** for enrolled devices.

    - In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.
    - Give the policy a name, **Platform > iOS/iPadOS**.
    - Select Microsoft Defender for Endpoint as the target app.
    - In Settings page, select Use configuration designer and add **WebProtection** as the key and value type as **String**.
        - By default, **WebProtection= true**.
        - Admin needs to make **WebProtection = false** to switch off the web protection.
        - Defender will send the heartbeat to the Microsoft 365 Defender portal whenever user opens the app.
        - Click Next and assign this profile to targeted devices/users.

1. **Disable Web Protection(MAM)** Use the following steps to disable **Web Protection** for unenrolled devices.

    - In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Apps** > **App configuration policies** > **Add** > **Managed apps**.
    - Give the policy a name.
    - Under the Select Public Apps, choose Microsoft Defender for Endpoint as the target app.
    - In Settings page, under the General Configuration Settings, add **WebProtection** as the key and value as **false**.
        - By default, **WebProtection= true**.
        - Admin needs to make **WebProtection = false** to switch off the web protection.
        - Defender will send the heartbeat to the Microsoft 365 Defender portal whenever user opens the app.
        - Click Next and assign this profile to targeted devices/users.

## Configure Network Protection

>[!NOTE]
>Network Protection on Microsoft Defender for Endpoint is now in public preview. The following information relates to prerelease of the product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Network protection in Microsoft Defender for endpoint is enabled by default. Admins can use the following steps to configure MAM support for Network protection in iOS devices.

1. In Microsoft Endpoint Manager Admin, navigate to Apps > App configuration policies. Create a new App configuration policy.
   :::image type="content" source="images/addiosconfig.png" alt-text="Add configuration policy." lightbox="images/addiosconfig.png":::

2. Provide a name and description to uniquely identify the policy. Then click on 'Select Public apps' and choose 'Microsoft Defender' for Platform iOS/IPadOS
   :::image type="content" source="images/nameiosconfig.png" alt-text="Name the configuration." lightbox="images/nameiosconfig.png":::

3. In Settings page, add 'DefenderNetworkProtectionEnable' as the key and value as 'false' to disable Network Protection. (Network protection is enabled by default)
   :::image type="content" source="images/addiosconfigvalue.png" alt-text="Add configuration value." lightbox="images/addiosconfigvalue.png":::

4. For other configurations related to Network protection, add the following keys and appropriate corresponding value.

    |Key| Default (true-enable, false-disable)|Description|
    |---|---|---|
    |DefenderEndUserTrustFlowEnable| false | Enable Users to Trust Networks and Certificates|
    |DefenderNetworkProtectionAutoRemediation| true |This setting is used by the IT admin to enable or disable the remediation alerts that are sent when a user performs remediation activities like switching to safer WIFI access points or deleting suspicious certificates detected by Defender|
    |DefenderNetworkProtectionPrivacy| true |This setting is managed by IT admin to enable or disable privacy in network protection|
  
5. In Assignments section, admin can choose groups of users to include and exclude from the policy.
   :::image type="content" source="images/assigniosconfig.png" alt-text="Assign configuration." lightbox="images/assigniosconfig.png":::

6. Review and create the configuration policy.

## Co-existence of multiple VPN profiles

Apple iOS does not support multiple device-wide VPNs to be active simultaneously. While multiple VPN profiles can exist on the device, only one VPN can be active at a time.

## Configure Microsoft Defender for Endpoint risk signal in app protection policy (MAM)

Microsoft Defender for Endpoint can be configured to send threat signals to be used in App Protection Policies (APP, also known as MAM) on iOS/iPadOS. With this capability, you can use Microsoft Defender for Endpoint to protect access to corporate data from unenrolled devices as well.

Steps to set up app protection policies with Microsoft Defender for Endpoint are below:

1. Set up the connection from your Microsoft Endpoint Manager tenant to Microsoft Defender for Endpoint. In [Microsoft Endpoint manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Tenant Administration** \> **Connectors and tokens** \> **Microsoft Defender for Endpoint** (under Cross platform) or **Endpoint Security** \> **Microsoft Defender for Endpoint** (under Setup) and turn on the toggles under **App Protection Policy Settings for iOS**.

2. Select Save. You should see **Connection status** is now set to **Enabled**.

3. Create app protection policy: After your Microsoft Defender for Endpoint connector setup is complete, navigate to **Apps** \> **App protection policies** (under Policy) to create a new policy or update an existing one.

4. Select the platform, **Apps, Data protection, Access requirements** settings that your organization requires for your policy.

5. Under **Conditional launch** \> **Device conditions**, you will find the setting **Max allowed device threat level**. This will need to be configured to either Low, Medium, High, or Secured. The actions available to you will be **Block access** or **Wipe data**. You may see an informational dialog to make sure you have your connector set up prior to this setting take effect. If your connector is already set up, you may ignore this dialog.

6. Finish with Assignments and save your policy.

For more details on MAM or app protection policy, see [iOS app protection policy settings](/mem/intune/apps/app-protection-policy-settings-ios).

### Deploying Microsoft Defender for Endpoint for MAM or on unenrolled devices

Microsoft Defender for Endpoint on iOS enables the App Protection Policy scenario and is available in the Apple app store. End-users should install the latest version of the app directly from the Apple app store.

## Privacy Controls

Microsoft Defender for Endpoint on iOS enables Privacy Controls for both the Admins and the End Users. This includes the controls for enrolled (MDM) as well as unenrolled (MAM) devices.
For Customers with MDM, admins can configure the Privacy Controls through Managed devices in the App Config. For Customers without enrollment, using MAM, admins can configure the Privacy Controls through Managed apps in the App Config. End Users will also have the ability to configure the Privacy Settings from the Defender App settings.

### Configure privacy in phish alert report

Customers can now enable privacy control for the phish report sent by Microsoft Defender for Endpoint on iOS. This will ensure that the domain name is not sent as part of the phish alert whenever a phish website is detected and blocked by Microsoft Defender for Endpoint.

1. **Admin Privacy Controls (MDM)** Use the following steps to enable privacy and not collect the domain name as part of the phish alert report for enrolled devices.

    - In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.

    - Give the policy a name, **Platform > iOS/iPadOS**, select the profile type.

    - Select **Microsoft Defender for Endpoint** as the target app.

    - In Settings page, select **Use configuration designer** and add **DefenderExcludeURLInReport** as the key and value type as **Boolean**.

      - To enable privacy and not collect the domain name, enter value as `true` and assign this policy to users. By default, this value is set to `false`.

      - For users with key set as `true`, the phish alert will not contain the domain name information whenever a malicious site is detected and blocked by Defender for Endpoint.

    - Click **Next** and assign this profile to targeted devices/users.

1. **Admin Privacy Controls (MAM)** Use the following steps to enable privacy and not collect the domain name as part of the phish alert report for unenrolled devices.

    - In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Apps** > **App configuration policies** > **Add** > **Managed apps**.

    - Give the policy a name.

    - Under the Select Public Apps, choose **Microsoft Defender for Endpoint** as the target app.

    - In Settings page, under the  **General Configuration Settings** add **DefenderExcludeURLInReport** as the key and value  as **true**.

      - To enable privacy and not collect the domain name, enter value as `true` and assign this policy to users. By default, this value is set to `false`.

      - For users with key set as `true`, the phish alert will not contain the domain name information whenever a malicious site is detected and blocked by Defender for Endpoint.

    - Click **Next** and assign this profile to targeted devices/users.

1. **End User Privacy Controls** These controls help the end user to configure the information shared to their organization.
    - For Supervised devices, End User controls will not be visible. Admin will decide and controls the settings.
    - However, for Unsupervised devices, the control will be displayed under the **Settings > Privacy**
        - Users will see a toggle for **Unsafe Site Info**.
        - This toggle is only visible if Admin has set **DefenderExcludeURLInReport = true**
        - If enabled by Admin, Users can decide if they want to send the unsafe site info to their Organization or not.
        - By default its set to `true`, the unsafe site information will be sent.
        - If user toggles it to `false`, the unsafe site details will not be sent.

Turning the above privacy controls on or off will not impact the device compliance check or conditional access.

## Optional Permissions

Microsoft Defender for Endpoint on iOS enables **Optional Permissions** in the onboarding flow. Currently the permissions required by Defender for Endpoint are mandatory in the onboarding flow. With this feature, admins can deploy Defender for Endpoint on BYOD devices without enforcing the mandatory **VPN Permission** during onboarding. End users can onboard the app without the mandatory permissions and can later review these permissions. This feature is currently present only for enrolled devices (MDM).

### Configure Optional Permission

1. **Admin flow (MDM)** Use the following steps to enable **Optional VPN** permission for enrolled devices.

    - In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.

    - Give the policy a name, select **Platform > iOS/iPadOS**.

    - Select **Microsoft Defender for Endpoint** as the target app.

    - In Settings page, select **Use configuration designer** and add **DefenderOptionalVPN** as the key and value type as **Boolean**.

      - To enable optional VPN permission, enter value as `true` and assign this policy to users. By default, this value is set to `false`.
      - For users with key set as `true`, the users will be able to onboard the app without giving the VPN permission.

    - Click **Next** and assign this profile to targeted devices/users.
1. **End User flow** - User will install and open the app to start the onboarding.
    - If admin has setup Optional permissions, then user can **Skip** VPN permission and complete onboarding.
    - Even if the user has skipped VPN, the device will be able to onboard, and heartbeat will be sent.
    - Since `VPN` is disabled, `Web Protection` will not be active.
    - Later, User can enable the `Web Protection` from within the App. This will install the VPN configuration on the device.

> [!NOTE]
>**Optional Permission** is different from **Disable Web Protection**. Optional VPN Permission only helps to skip the permission during onboarding but its available for the end user to later review and enable it. While **Disable Web Protection** allows users to onboard the Defender for Endpoint app without the Web Protection. It cannot be enabled later.

## Configure compliance policy against jailbroken devices

To protect corporate data from being accessed on jailbroken iOS devices, we recommend that you set up the following compliance policy on Intune.

> [!NOTE]
> Jailbreak detection is a capability provided by Microsoft Defender for Endpoint on iOS. However, we recommend that you setup this policy as an additional layer of defense against jailbreak scenarios.

Follow the steps below to create a compliance policy against jailbroken devices.

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Compliance policies** > **Create Policy**. Select "iOS/iPadOS" as platform and click **Create**.

   :::image type="content" source="images/ios-jb-policy.png" alt-text="The Create Policy tab" lightbox="images/ios-jb-policy.png":::

1. Specify a name of the policy, for example "Compliance Policy for Jailbreak".

1. In the compliance settings page, click to expand **Device Health** section and click **Block** for **Jailbroken devices** field.

   :::image type="content" source="images/ios-jb-settings.png" alt-text="The Compliance settings tab" lightbox="images/ios-jb-settings.png":::

1. In the **Actions for noncompliance** section, select the actions as per your requirements and select **Next**.

   :::image type="content" source="images/ios-jb-actions.png" alt-text="The Actions for noncompliance tab" lightbox="images/ios-jb-actions.png":::

1. In the **Assignments** section, select the user groups that you want to include for this policy and then select **Next**.

1. In the **Review+Create** section, verify that all the information entered is correct and then select **Create**.

## Configure custom indicators

Defender for Endpoint on iOS enables admins to configure custom indicators on iOS devices as well. For more information on how to configure custom indicators, see [Manage indicators](/microsoft-365/security/defender-endpoint/manage-indicators).

> [!NOTE]
> Defender for Endpoint on iOS supports creating custom indicators only for IP addresses and URLs/domains.

## Configure vulnerability assessment of apps

>[!Note]
>Vulnerability Assessment of apps on Microsoft Defender for Endpoint for iOS is now in public preview. The following information relates to the prerelease of the product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. If you are interested to participate in the preview, please share your Tenant name and id with us on **mdatpmobile@microsoft.com**.

Defender for Endpoint on iOS supports vulnerability assessments of apps only for enrolled (MDM) devices.

Admins can use the following steps to configure the vulnerability assessment of apps.

### On a Supervised Device

1. Ensure the device is configured in the [Supervised mode](ios-install.md#complete-deployment-for-supervised-devices).
1. To enable the feature in [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint Security** > **Microsoft Defender for Endpoint** > **Enable App sync for iOS/iPadOS devices**.

     :::image type="content" source="images/tvm-app-sync-toggle.png" alt-text="App sync toggleSup" lightbox="images/tvm-app-sync-toggle.png":::

### On an Unsupervised Device

1. To enable the feature in [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint Security** > **Microsoft Defender for Endpoint** > **Enable App sync for iOS/iPadOS devices**.

   :::image type="content" source="images/tvm-app-sync-toggle.png" alt-text="App sync toggle" lightbox="images/tvm-app-sync-toggle.png":::

1. To get the list of all the apps including un-managed apps, Enable the toggle **Send full application inventory data on personally owned iOS/iPad OS Devices**.

    :::image type="content" source="images/tvm-full-app-data.png" alt-text="Full App Data" lightbox="images/tvm-full-app-data.png":::

1. Use the following steps to configure the privacy setting.
    - Go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.
    - Give the policy a name, **Platform** > **iOS/iPadOS**.
    - Select **Microsoft Defender for Endpoint** as the target app.
    - In Settings page, select Use configuration designer and add **DefenderTVMPrivacyMode** as the key and value type as **String**
        - To disable privacy and collect the list of apps installed, enter value as `False` and assign this policy to users. 
        - By default, this value is set to `True` for unsupervised devices.
        - For users with key set as `False`, Defender for Endpoint will send the list of apps installed on the device for vulnerability assessment.
    - Click **Next** and assign this profile to targeted devices/users.
    - Turning the above privacy controls on or off will not impact the device compliance check or conditional access.
1. Once the config is applied, end-user will need to open the app to **Approve** the privacy setting.
    - Privacy approval screen will come only for unsupervised devices.
    - Only if end-user approves the privacy, the app information will be sent to the Defender for Endpoint console.

        :::image type="content" source="images/tvm-user-privacy.png" alt-text="TVM Privacy" lightbox="images/tvm-user-privacy.png":::

Once the client versions are deployed to target iOS devices, the processing will start. Vulnerabilities found on those devices will start showing up in the Defender Vulnerability Management dashboard. The processing might take few hours (max 24 hours) to complete. Especially for the entire list of apps to show up in the software inventory.

## Configure option to send in-app feedback

Customers now have the option to configure the ability to send feedback data to Microsoft within the Defender for Endpoint app. Feedback data helps Microsoft improve  products and troubleshoot issues.

> [!NOTE]
> For US Government cloud customers, feedback data collection is **disabled** by default.

Use the following steps to configure the option to send feedback data to Microsoft:

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.

1. Give the policy a name, **Platform > iOS/iPadOS**, select the profile type.

1. Select **Microsoft Defender for Endpoint** as the target app.

1. In Settings page, select **Use configuration designer** and add **DefenderSendFeedback** as the key and value type as **Boolean**.

   - To remove the ability of end-users to provide feedback, set the value as `false` and assign this policy to users. By default, this value is set to `true`. For US Government customers, the default value is set to 'false'.

   - For users with key set as `true`, there will be an option to send Feedback data to Microsoft within the app (Menu > Help & Feedback > Send Feedback to Microsoft)

1. Click **Next** and assign this profile to targeted devices/users.

## Report unsafe site

Phishing websites impersonate trustworthy websites for the purpose of obtaining your personal or financial information. Visit the [Provide feedback about network protection](https://www.microsoft.com/wdsi/filesubmission/exploitguard/networkprotection) page if you want to report a website that could be a phishing site.
