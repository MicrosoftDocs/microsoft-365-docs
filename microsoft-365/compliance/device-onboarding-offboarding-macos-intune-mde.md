---
title: Onboard and offboard macOS devices into Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers (preview)
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune (preview)
---

# Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)

> [!IMPORTANT]
> Use this procedure ***if you have*** deployed Microsoft Defender for Endpoint (MDE) to your macOS devices

## Get registered

To get access to this feature, you must register your tenant with Microsoft. See, [get registered for Microsoft 365 macOS support](https://aka.ms/Ignite2021DLP).

**Applies to:**

- Customers who have MDE deployed to their macOS devices.
- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
<!--- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)-->

<!-- DON'T KNOW IF THIS IS NEEDED You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDMs by providing OMA-URIs to create policies to manage devices.-->

## Before you begin

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp) 
- Make sure you have access to the [Microsoft Endpoint Manager center](https://endpoint.microsoft.com/#home)
- This supports macOS version Catalina 10.15 and higher
<!--- Edge browser v93 and higher installed.-->

## Onboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune

Use these steps to onboard a macOS device into Compliance solutions if it already has MDE deployed to it.

<!--1. [Enable kernel extension](#enable-kernel-extension)-->

 
<!--1. Extract the contents of the device onboarding package. In the **Intune** folder you should see these files:
    - accessibility.mobileconfig
    - com.microsoft.autoupdate2.xml
    - com.microsoft.wdav.xml
    - fulldisk.mobileconfig
    - kext.mobileconfig
    - netfilter.mobileconfig
    - notif.mobileconfig
    - sysext.mobileconfig 
-->
### Create system configuration profiles

1. Download the configuration files from [Github > macOS folder](https://github.com/microsoft/endpointdlp).

2. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles**.

3. Choose: **Create profile**. 

4. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Custom**

5. Choose **Create**

6. Choose a name for the profile, like *AccessibilityformacOS* in this example. Choose **Next**.

7. Choose the **accessibility.mobileconfig** file that you downloaded in step 1 as the configuration profile file.

8. Choose **Next**

9. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

10. Review your settings and choose **Create** to deploy the configuration.

11. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

12. In the **Configuration profiles** page, choose the profile that you just created, in this example *AccessibilityformacOS* and choose **Device status** to see a list of devices and the deployment status of the configuration profile.
### Update configuration profiles

1. Update the existing full disk access profile with the **fulldisk.mobileconfig** file.

2. Update exisiting MDE preferences profile with these values
   
```xml
<key>features</key>
<dict>
    <key>systemExtensions</key>
    <string>enabled</string>
    <key>dataLossPrevention</key>
    <string>enabled</string>
</dict>
```

<!--### Get the device onboarding package

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**
 
1. Choose **Download onboarding package**. This contains the onboarding code in the **MDEOnboarding.xml** file

### Deploy the onboarding package

1. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles**.

3. Choose: **Create profile** 

4. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Custom**

5. Choose **Create**

6. Choose a name for the profile, like *OnboardingPackage* in this example. Choose **Next**.

7. Choose the **MDEOnboarding.xml** file as the configuration profile file.

8. Choose **Next**

9. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

10. Review your settings and choose **Create** to deploy the configuration.
-->

<!--### Enable kernel extension

1.  In the **Microsoft Endpoint Manager center** select **Create Profile** under **Configuration Profiles**

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Extensions**

1. Choose **Create**

1. In the **Basics** tab, give this new profile a name.

1. In the **Configuration settings** tab expand **Kernel Extensions**

1. Set the **Team identifier** to **UBF8T346G9**

> [!IMPORTANT]
> Leave **Allow user overrides** set to **Not configured**. 

1. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

1. Choose **Next** to deploy the configuration.
-->

## Offboard macOS devices using Intune

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

1. In **Microsoft Endpoint Manager center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

2. In the **Configuration profiles** page, choose the *wdav.pkg.intunemac* profile.

1. Choose **Device status** to see a list of devices and the deployment status of the configuration profile.

3. Open **Properties** and **Assignments**

4. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.
