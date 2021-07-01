---
title: Configure Microsoft Defender for Endpoint on iOS features
description: Describes how to deploy Microsoft Defender for Endpoint on iOS features
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, configure, features, ios
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
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
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

> [!NOTE]
> Defender for Endpoint on iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Conditional Access with Defender for Endpoint on iOS  
Microsoft Defender for Endpoint on iOS along with Microsoft Intune and Azure Active Directory enables enforcing Device compliance and Conditional Access policies
based on device risk score. Defender for Endpoint is a Mobile Threat Defense (MTD) solution that you can deploy to leverage this capability via Intune.

For more information about how to set up Conditional Access with Defender for Endpoint on iOS, see [Defender for Endpoint and Intune](/mem/intune/protect/advanced-threat-protection).

### Jailbreak detection by Microsoft Defender for Endpoint
Microsoft Defender for Endpoint has the capability of detecting unmanaged and managed devices that are jailbroken. If a device is detected to be jailbroken, a **High**-risk alert will be reported to Security Center and if Conditional Access is setup based on device risk score, then the device will be blocked from accessing corporate data.

## Web Protection and VPN

By default, Defender for Endpoint on iOS includes and enables the web protection feature. [Web protection](web-protection-overview.md) helps to secure devices against web threats and protect users from phishing attacks. Defender for Endpoint on iOS uses a VPN in order to provide this protection. Please note this is a local VPN and unlike traditional VPN, network traffic is not sent outside the device.

While enabled by default, there might be some cases that require you to disable VPN. For example, you want to run some apps that do not work when a VPN is configured. In such cases, you can choose to disable VPN from the app on the device by following the steps below:

1. On your iOS device, open the **Settings** app, click or tap **General** and then **VPN**.
1. Click or tap the "i" button for Microsoft Defender for Endpoint.
1. Toggle off **Connect On Demand** to disable VPN.

    > [!div class="mx-imgBorder"]
    > ![VPN config connect on demand](images/ios-vpn-config.png)

> [!NOTE]
> Web Protection will not be available when VPN is disabled. To re-enable Web Protection, open the Microsoft Defender for Endpoint app on the device and click or tap **Start VPN**.

## Co-existence of multiple VPN profiles

Apple iOS does not support multiple device-wide VPNs to be active simultaneously. While multiple VPN profiles can exist on the device, only one VPN can be active at a time.

## Configure Microsoft Defender for Endpoint risk signal in app protection policy (MAM)

Microsoft Defender for Endpoint can be configured to send threat signals to be used in App Protection Policies (APP, also known as MAM) on iOS/iPadOS. With this capability, you can use Microsoft Defender for Endpoint to protect access to corporate data from unenrolled devices as well.

Steps to setup app protection policies with Microsoft Defender for Endpoint are as below:

1. Set up the connection from your Microsoft Endpoint Manager tenant to Microsoft Defender for Endpoint. In [Microsoft Endpoint manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Tenant Administration** > **Connectors and tokens** > **Microsoft Defender for Endpoint** (under Cross platform) or **Endpoint Security** > **Microsoft Defender for Endpoint** (under Setup) and turn on the toggles under **App Protection Policy Settings for iOS**.
1. Select Save. You should see **Connection status** is now set to **Enabled**.
1. Create app protection policy: After your Microsoft Defender for Endpoint connector setup is complete, navigate to **Apps** > **App protection policies** (under Policy) to create a new policy or update an existing one.
1. Select the platform, **Apps, Data protection, Access requirements** settings that your organization requires for your policy.
1. Under **Conditional launch** > **Device conditions**, you will find the setting **Max allowed device threat level**. This will need to be configured to either Low, Medium, High, or Secured. The actions available to you will be **Block access** or **Wipe data**. You may see an informational dialog to make sure you have your connector set up prior to this setting take effect. If your connector is already set up, you may ignore this dialog.
1. Finish with Assignments and save your policy.

For more details on MAM or app protection policy, see [iOS app protection policy settings](/mem/intune/apps/app-protection-policy-settings-ios).

### Deploying Microsoft Defender for Endpoint for MAM or on unenrolled devices

Microsoft Defender for Endpoint on iOS enables the App Protection Policy scenario and is available in the Apple app store.

End-users should install the latest version of the app directly from the Apple app store.

## Configure compliance policy against jailbroken devices

To protect corporate data from being accessed on jailbroken iOS devices, we recommend that you set up the following compliance policy on Intune.

> [!NOTE]
> Jailbreak detection is a capability provided by Microsoft Defender for Endpoint on iOS. However, we recommend that you setup this policy as an additional layer of defense against jailbreak scenarios.

Follow the steps below to create a compliance policy against jailbroken devices.

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** -> **Compliance policies** -> **Create Policy**. Select "iOS/iPadOS" as platform and click **Create**.

    > [!div class="mx-imgBorder"]
    > ![Create Policy](images/ios-jb-policy.png)

2. Specify a name of the policy, for example "Compliance Policy for Jailbreak".
3. In the compliance settings page, click to expand **Device Health** section and click **Block** for **Jailbroken devices** field.

    > [!div class="mx-imgBorder"]
    > ![Policy Settings](images/ios-jb-settings.png)

4. In the **Action for noncompliance** section, select the actions as per your requirements and select **Next**.

    > [!div class="mx-imgBorder"]
    > ![Policy Actions](images/ios-jb-actions.png)

5. In the **Assignments** section, select the user groups that you want to include for this policy and then select **Next**.
6. In the **Review+Create** section, verify that all the information entered is correct and then select **Create**.

## Configure custom indicators

Defender for Endpoint on iOS enables admins to configure custom indicators on iOS devices as well. For more information on how to configure custom indicators, see [Manage indicators](/microsoft-365/security/defender-endpoint/manage-indicators).

> [!NOTE]
> Defender for Endpoint on iOS supports creating custom indicators only for IP addresses and URLs/domains.

## Report unsafe site

Phishing websites impersonate trustworthy websites for the purpose of obtaining your personal or financial information. Visit the [Provide feedback about network protection](https://www.microsoft.com/wdsi/filesubmission/exploitguard/networkprotection) page if you want to report a website that could be a phishing site.

