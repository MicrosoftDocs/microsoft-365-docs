---
title: Configure Microsoft Defender for Endpoint on iOS features
description: Describes how to deploy Microsoft Defender for Endpoint on iOS features.
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, configure, features, ios
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Configure Microsoft Defender for Endpoint on iOS features

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> Defender for Endpoint on iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Conditional Access with Defender for Endpoint on iOS

Microsoft Defender for Endpoint on iOS along with Microsoft Intune and Azure Active Directory enables enforcing Device compliance and Conditional Access policies based on device risk score. Defender for Endpoint is a Mobile Threat Defense (MTD) solution that you can deploy to leverage this capability via Intune.

For more information about how to set up Conditional Access with Defender for Endpoint on iOS, see [Defender for Endpoint and Intune](/mem/intune/protect/advanced-threat-protection).

### Jailbreak detection by Microsoft Defender for Endpoint

Microsoft Defender for Endpoint has the capability of detecting unmanaged and managed devices that are jailbroken. If a device is detected to be jailbroken, a **High**-risk alert will be reported to the Microsoft 365 Defender portal and if Conditional Access is setup based on device risk score, then the device will be blocked from accessing corporate data.

## Web Protection and VPN

By default, Defender for Endpoint on iOS includes and enables the web protection feature. [Web protection](web-protection-overview.md) helps to secure devices against web threats and protect users from phishing attacks. Note that Anti-phishing and custom indicators (URL and IP addresses) are supported as part of Web Protection. Web Content Filtering is currently not supported on iOS.

Defender for Endpoint on iOS uses a VPN in order to provide this capability. Please note this is a local VPN and unlike traditional VPN, network traffic is not sent outside the device.

While enabled by default, there might be some cases that require you to disable VPN. For example, you want to run some apps that do not work when a VPN is configured. In such cases, you can choose to disable VPN from the app on the device by following the steps below:

1. On your iOS device, open the **Settings** app, click or tap **General** and then **VPN**.
1. Click or tap the "i" button for Microsoft Defender for Endpoint.
1. Toggle off **Connect On Demand** to disable VPN.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/ios-vpn-config.png" alt-text="The toggle button for the VPN config Connect on demand option" lightbox="images/ios-vpn-config.png":::

> [!NOTE]
> Web Protection will not be available when VPN is disabled. To re-enable Web Protection, open the Microsoft Defender for Endpoint app on the device and click or tap **Start VPN**.

## Co-existence of multiple VPN profiles

Apple iOS does not support multiple device-wide VPNs to be active simultaneously. While multiple VPN profiles can exist on the device, only one VPN can be active at a time.

## Configure Microsoft Defender for Endpoint risk signal in app protection policy (MAM)

Microsoft Defender for Endpoint can be configured to send threat signals to be used in App Protection Policies (APP, also known as MAM) on iOS/iPadOS. With this capability, you can use Microsoft Defender for Endpoint to protect access to corporate data from unenrolled devices as well.

Steps to setup app protection policies with Microsoft Defender for Endpoint are as below:

1. Set up the connection from your Microsoft Endpoint Manager tenant to Microsoft Defender for Endpoint. In [Microsoft Endpoint manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Tenant Administration** \> **Connectors and tokens** \> **Microsoft Defender for Endpoint** (under Cross platform) or **Endpoint Security** \> **Microsoft Defender for Endpoint** (under Setup) and turn on the toggles under **App Protection Policy Settings for iOS**.
1. Select Save. You should see **Connection status** is now set to **Enabled**.
1. Create app protection policy: After your Microsoft Defender for Endpoint connector setup is complete, navigate to **Apps** \> **App protection policies** (under Policy) to create a new policy or update an existing one.
1. Select the platform, **Apps, Data protection, Access requirements** settings that your organization requires for your policy.
1. Under **Conditional launch** \> **Device conditions**, you will find the setting **Max allowed device threat level**. This will need to be configured to either Low, Medium, High, or Secured. The actions available to you will be **Block access** or **Wipe data**. You may see an informational dialog to make sure you have your connector set up prior to this setting take effect. If your connector is already set up, you may ignore this dialog.
1. Finish with Assignments and save your policy.

For more details on MAM or app protection policy, see [iOS app protection policy settings](/mem/intune/apps/app-protection-policy-settings-ios).

### Deploying Microsoft Defender for Endpoint for MAM or on unenrolled devices

Microsoft Defender for Endpoint on iOS enables the App Protection Policy scenario and is available in the Apple app store.

End-users should install the latest version of the app directly from the Apple app store.

## Privacy Controls

> [!IMPORTANT]
> Privacy Controls for Microsoft Defender for Endpoint on iOS is in preview. The following information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

### Configure privacy in phish alert report

Customers can now enable privacy control for the phish report sent by Microsoft Defender for Endpoint on iOS. This will ensure that the domain name is not sent as part of the phish alert whenever a phish website is detected and blocked by Microsoft Defender for Endpoint.

Use the following steps to enable privacy and not collect the domain name as part of the phish alert report.

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.
1. Give the policy a name, **Platform > iOS/iPadOS**, select the profile type.
1. Select **Microsoft Defender for Endpoint** as the target app.
1. In Settings page, select **Use configuration designer** and add **DefenderExcludeURLInReport** as the key and value type as **Boolean**
   - To enable privacy and not collect the domain name, enter value as `true` and assign this policy to users. By default, this value is set to `false`.
   - For users with key set as `true`, the phish alert will not contain the domain name information whenever a malicious site is detected and blocked by Defender for Endpoint.
1. Click **Next** and assign this profile to targeted devices/users.

Turning the above privacy controls on or off will not impact the device compliance check or conditional access.

## Configure compliance policy against jailbroken devices

To protect corporate data from being accessed on jailbroken iOS devices, we recommend that you set up the following compliance policy on Intune.

> [!NOTE]
> Jailbreak detection is a capability provided by Microsoft Defender for Endpoint on iOS. However, we recommend that you setup this policy as an additional layer of defense against jailbreak scenarios.

Follow the steps below to create a compliance policy against jailbroken devices.

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** -> **Compliance policies** -> **Create Policy**. Select "iOS/iPadOS" as platform and click **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/ios-jb-policy.png" alt-text="The Create Policy tab" lightbox="images/ios-jb-policy.png":::

2. Specify a name of the policy, for example "Compliance Policy for Jailbreak".
3. In the compliance settings page, click to expand **Device Health** section and click **Block** for **Jailbroken devices** field.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/ios-jb-settings.png" alt-text="The Compliance settings tab" lightbox="images/ios-jb-settings.png":::

4. In the **Actions for noncompliance** section, select the actions as per your requirements and select **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/ios-jb-actions.png" alt-text="The Actions for noncompliance tab" lightbox="images/ios-jb-actions.png":::

5. In the **Assignments** section, select the user groups that you want to include for this policy and then select **Next**.
6. In the **Review+Create** section, verify that all the information entered is correct and then select **Create**.

## Configure custom indicators

Defender for Endpoint on iOS enables admins to configure custom indicators on iOS devices as well. For more information on how to configure custom indicators, see [Manage indicators](/microsoft-365/security/defender-endpoint/manage-indicators).

> [!NOTE]
> Defender for Endpoint on iOS supports creating custom indicators only for IP addresses and URLs/domains.

## Configure option to send in-app feedback 

Customers now have the option to configure the ability to send feedback data to Microsoft within the Defender for Endpoint app. Feedback data helps Microsoft improve  products and troubleshoot issues.

> [!NOTE]
> For US Government cloud customers, feedback data collection is **disabled** by default. 

Use the following steps to configure the option to send feedback data to Microsoft:

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.
1. Give the policy a name, **Platform > iOS/iPadOS**, select the profile type.
1. Select **Microsoft Defender for Endpoint** as the target app.
1. In Settings page, select **Use configuration designer** and add **DefenderSendFeedback** as the key and value type as **Boolean**
   - To remove the ability of end-users to provide feedback, set the value as `false` and assign this policy to users. By default, this value is set to `true`. For US Government customers, the default value is set to 'false'.
   - For users with key set as `true`, there will be an option to send Feedback data to Microsoft within the app (Menu > Help & Feedback > Send Feedback to Microsoft)
1. Click **Next** and assign this profile to targeted devices/users.


## Report unsafe site

Phishing websites impersonate trustworthy websites for the purpose of obtaining your personal or financial information. Visit the [Provide feedback about network protection](https://www.microsoft.com/wdsi/filesubmission/exploitguard/networkprotection) page if you want to report a website that could be a phishing site.
