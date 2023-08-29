---
title: Onboard Windows devices using a local script
description: Use a local script to deploy the configuration package on devices to enable onboarding of the devices to the service.
keywords: configure devices using a local script, device management, configure Microsoft Defender for Endpoint devices
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Onboard Windows devices using a local script

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

You can also manually onboard individual devices to Defender for Endpoint. You might want to do this first when testing the service before you commit to onboarding all devices in your network.

> [!IMPORTANT]
> This script has been optimized for use on up to ten devices.
> Local scripting is a special onboarding method for evaluating Microsoft Defender for Endpoint.
> The data reporting frequency is set higher than with other onboarding methods when onboarding using a local script.
> This setting is for evaluation purposes and is not normally used in production deployments. For this reason, there are concerns about environmental impact, so we recommend limiting the number of deployments using local scripts to ten.
> If you are deploying to a production environment as previously described, use [other deployment options](configure-endpoints.md) like  Group Policy or Microsoft Endpoint Configuration Manager.

Check out [Identify Defender for Endpoint architecture and deployment method](deployment-strategy.md) to see the various paths in deploying Defender for Endpoint.

## Onboard devices

1. Open the GP configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:
    1. In the navigation pane, select **Settings** \> **Endpoints** \> **Device management** \> **Onboarding**.
    2. Select Windows 10 or Windows 11 as the operating system.
    3. In the **Deployment method** field, select **Local Script**.
    4. Click **Download package** and save the .zip file.

2. Extract the contents of the configuration package to a location on the device you want to onboard (for example, the Desktop). You should have a file named *WindowsDefenderATPLocalOnboardingScript.cmd*.

3. Open an elevated command-line prompt on the device and run the script:
   1. Go to **Start** and type **cmd**.
   2. Right-click **Command prompt** and select **Run as administrator**.

    :::image type="content" source="images/run-as-admin.png" alt-text="The Window Start menu pointing to Run as administrator" lightbox="images/run-as-admin.png":::

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd*

5.  Press the **Enter** key or click **OK**.

For information on how you can manually validate that the device is compliant and correctly reports sensor data see, [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md).

> [!TIP]
> After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint endpoint](run-detection-test.md).

## Configure sample collection settings

For each device, you can set a configuration value to state whether samples can be collected from the device when a request is made through Microsoft 365 Defender to submit a file for deep analysis.

You can manually configure the sample sharing setting on the device by using *regedit* or creating and running a *.reg* file.

The configuration is set through the following registry key entry:

```console
Path: "HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection"
Name: "AllowSampleCollection"
Value: 0 or 1
```

Where Name type is a D-WORD. Possible values are:

- 0 - doesn't allow sample sharing  from this device
- 1 - allows sharing of all file types from this device

The default value in case the registry key doesn't exist is 1.

## Run a detection test to verify onboarding

After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).

## Offboard devices using a local script

For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:
    1. In the navigation pane, select **Settings** \> **Endpoints** \> **Device management** \> **Offboarding**.
    2. Select Windows 10 or Windows 11 as the operating system.
    3. In the **Deployment method** field, select **Local Script**.
    4. Click **Download package** and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the devices. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3. Open an elevated command-line prompt on the device and run the script:
   1. Go to **Start** and type **cmd**.
   2. Right-click **Command prompt** and select **Run as administrator**.

      :::image type="content" source="images/run-as-admin.png" alt-text="The Windows Start menu pointing to the Run as administrator option" lightbox="images/run-as-admin.png":::

4. Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*

5. Press the **Enter** key or click **OK**.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

## Monitor device configuration

You can follow the different verification steps in the [Troubleshoot onboarding issues](troubleshoot-onboarding.md) to verify that the script completed successfully and the agent is running.

Monitoring can also be done directly on the portal, or by using the different deployment tools.

### Monitor devices using the portal

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.
2. Click **Devices inventory**.
3. Verify that devices are appearing.

## Related topics
- [Onboard Windows devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows devices using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows devices using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
