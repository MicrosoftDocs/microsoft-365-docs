---
title: Onboarding using Microsoft Intune
description: Learn how to onboard to Microsoft Defender for Endpoint using Microsoft Intune.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-endpointprotect
  - m365solution-scenario
  - highpri
  - tier1
ms.topic: conceptual
ms.subservice: onboard
search.appverid: met150
ms.date: 12/18/2020
---

# Onboarding using Microsoft Intune

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This article acts as an example onboarding method.

In the [Planning](deployment-strategy.md) article, there were several methods provided to onboard devices to the service. This article covers the cloud-native architecture.

:::image type="content" source="media/cloud-native-architecture.png" alt-text="The cloud-native architecture" lightbox="media/cloud-native-architecture.png":::
*Diagram of environment architectures*

While Defender for Endpoint supports onboarding of various endpoints and tools, this article doesn't cover them. For information on general onboarding using other supported deployment tools and methods, see [Onboarding overview](onboarding.md).

The Microsoft Intune family of products is a solution platform that unifies several services. It includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Configuration Manager](/mem/configmgr).

This article guides users in:

- Step 1: Onboarding devices to the service by creating a group in Microsoft Intune to assign configurations on
- Step 2: Configuring Defender for Endpoint capabilities using Microsoft Intune

This onboarding guidance walks you through the following basic steps that you need to take when using Microsoft Intune:

- [Identifying target devices or users](#identify-target-devices-or-users)
  - Creating a Microsoft Entra group (User or Device)
- [Creating a Configuration Profile](#step-2-create-configuration-policies-to-configure-microsoft-defender-for-endpoint-capabilities)
  - In Microsoft Intune, we guide you in creating a separate policy for each capability.

## Resources

Here are the links you need for the rest of the process:

- [Intune admin center](https://aka.ms/memac)
- [Microsoft Defender XDR](https://security.microsoft.com)
- [Intune Security baselines](/mem/intune/protect/security-baseline-settings-defender-atp#microsoft-defender)

For more information about Microsoft Intune, go to [Microsoft Intune securely manages identities, manages apps, and manages devices](/mem/intune/fundamentals/what-is-intune).

## Step 1: Onboard devices by creating a group in Intune to assign configurations on

### Identify target devices or users

In this section, we create a test group to assign your configurations on.

> [!NOTE]
> Intune uses Microsoft Entra groups to manage devices and users. As an Intune admin, you can set up groups to suit your organizational needs.
>
> For more information, see [Add groups to organize users and devices](/mem/intune/fundamentals/groups-add).

### Create a group

1. Open the Microsoft Intune admin center.

2. Open **Groups > New Group**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/66f724598d9c3319cba27f79dd4617a4.png" alt-text="The Microsoft Intune admin center1" lightbox="media/66f724598d9c3319cba27f79dd4617a4.png":::

3. Enter details and create a new group.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/b1e0206d675ad07db218b63cd9b9abc3.png" alt-text="The Microsoft Intune admin center2" lightbox="media/b1e0206d675ad07db218b63cd9b9abc3.png":::

4. Add your test user or device.

5. From the **Groups > All groups** pane, open your new group.

6. Select  **Members > Add members**.

7. Find your test user or device and select it.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/149cbfdf221cdbde8159d0ab72644cd0.png" alt-text="The Microsoft Intune admin center3" lightbox="media/149cbfdf221cdbde8159d0ab72644cd0.png":::

8. Your testing group now has a member to test.

## Step 2: Create configuration policies to configure Microsoft Defender for Endpoint capabilities

In the following section, you create several configuration policies.

First is a configuration policy to select which groups of users or devices are onboarded to Defender for Endpoint:

- [Endpoint detection and response](#endpoint-detection-and-response)

Then, you continue by creating several different types of endpoint security policies:

- [Next-generation protection](#next-generation-protection)
- [Attack surface reduction](#attack-surface-reduction---attack-surface-reduction-rules)

### Endpoint detection and response

1. Open the Intune admin center.

2. Navigate to **Endpoint security > Endpoint detection and response**. Select on **Create Policy**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/58dcd48811147feb4ddc17212b7fe840.png" alt-text="The Microsoft Intune admin center4" lightbox="media/58dcd48811147feb4ddc17212b7fe840.png":::

3. Under **Platform, select Windows 10, Windows 11, and Windows Server, Profile - Endpoint detection
    and response > Create**.

4. Enter a name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/a5b2d23bdd50b160fef4afd25dda28d4.png" alt-text="The Microsoft Intune admin center5" lightbox="media/a5b2d23bdd50b160fef4afd25dda28d4.png":::

5. Select settings as required, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/cea7e288b5d42a9baf1aef0754ade910.png" alt-text="The Microsoft Intune admin center6" lightbox="media/cea7e288b5d42a9baf1aef0754ade910.png":::

    > [!NOTE]
    > In this instance, this has been auto populated as Defender for Endpoint has already been integrated with Intune. For more information on the integration, see [Enable Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure#to-enable-microsoft-defender-atp).
    >
    > The following image is an example of what you'll see when Microsoft Defender for Endpoint is NOT integrated with Intune:
    >
    > :::image type="content" source="media/2466460812371ffae2d19a10c347d6f4.png" alt-text="The Microsoft Intune admin center7" lightbox="media/2466460812371ffae2d19a10c347d6f4.png":::

6. Add scope tags if necessary, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/ef844f52ec2c0d737ce793f68b5e8408.png" alt-text="The Microsoft Intune admin center8" lightbox="media/ef844f52ec2c0d737ce793f68b5e8408.png":::

7. Add test group by clicking on **Select groups to include** and choose your group, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/fc3525e20752da026ec9f46ab4fec64f.png" alt-text="The Microsoft Intune admin center9" lightbox="images/fc3525e20752da026ec9f46ab4fec64f.png":::

8. Review and accept, then select  **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/289172dbd7bd34d55d24810d9d4d8158.png" alt-text="The Microsoft Intune admin center10" lightbox="media/289172dbd7bd34d55d24810d9d4d8158.png":::

9. You can view your completed policy.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/5a568b6878be8243ea2b9d82d41ed297.png" alt-text="The Microsoft Intune admin center11" lightbox="media/5a568b6878be8243ea2b9d82d41ed297.png":::

### Next-generation protection

1. Open the Intune admin center.

2. Navigate to **Endpoint security > Antivirus > Create Policy**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/6b728d6e0d71108d768e368b416ff8ba.png" alt-text="The Microsoft Intune admin center12" lightbox="media/6b728d6e0d71108d768e368b416ff8ba.png":::

3. Select **Platform - Windows 10 and Later - Windows and Profile - Microsoft Defender Antivirus > Create**.

4. Enter name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/a7d738dd4509d65407b7d12beaa3e917.png" alt-text="The Microsoft Intune admin center13" lightbox="media/a7d738dd4509d65407b7d12beaa3e917.png":::

5. In the **Configuration settings page**: Set the configurations you require for Microsoft Defender Antivirus (Cloud Protection, Exclusions, Real-Time Protection, and Remediation).

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/3840b1576d6f79a1d72eb14760ef5e8c.png" alt-text="The Microsoft Intune admin center14" lightbox="media/3840b1576d6f79a1d72eb14760ef5e8c.png":::

6. Add scope tags if necessary, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/2055e4f9b9141525c0eb681e7ba19381.png" alt-text="The Microsoft Intune admin center15" lightbox="media/2055e4f9b9141525c0eb681e7ba19381.png":::

7. Select groups to include, assign to your test group, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/48318a51adee06bff3908e8ad4944dc9.png" alt-text="The Microsoft Intune admin center16" lightbox="media/48318a51adee06bff3908e8ad4944dc9.png":::

8. Review and create, then select  **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/dfdadab79112d61bd3693d957084b0ec.png" alt-text="The Microsoft Intune admin center17" lightbox="media/dfdadab79112d61bd3693d957084b0ec.png":::

9. You see the configuration policy you created.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/38180219e632d6e4ec7bd25a46398da8.png" alt-text="The Microsoft Intune admin center18" lightbox="media/38180219e632d6e4ec7bd25a46398da8.png":::

### Attack Surface Reduction - Attack surface reduction rules

1. Open the Intune admin center.

2. Navigate to **Endpoint security > Attack surface reduction**.

3. Select  **Create Policy**.

4. Select **Platform - Windows 10 and Later - Profile - Attack surface reduction
    rules > Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/522d9bb4288dc9c1a957392b51384fdd.png" alt-text="The Microsoft Intune admin center19" lightbox="media/522d9bb4288dc9c1a957392b51384fdd.png":::

5. Enter a name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/a5a71fd73ec389f3cdce6d1a6bd1ff31.png" alt-text="The Microsoft Intune admin center20" lightbox="media/a5a71fd73ec389f3cdce6d1a6bd1ff31.png":::

6. In the **Configuration settings page**: Set the configurations you require for Attack surface reduction rules, then select  **Next**.

    > [!NOTE]
    > We will be configuring all of the Attack surface reduction rules to Audit.
    >
    > For more information, see [Attack surface reduction rules](attack-surface-reduction.md).

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/dd0c00efe615a64a4a368f54257777d0.png" alt-text="The Microsoft Intune admin center21" lightbox="media/dd0c00efe615a64a4a368f54257777d0.png":::

7. Add Scope Tags as required, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/6daa8d347c98fe94a0d9c22797ff6f28.png" alt-text="The Microsoft Intune admin center22" lightbox="media/6daa8d347c98fe94a0d9c22797ff6f28.png":::

8. Select groups to include and assign to test group, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/45cefc8e4e474321b4d47b4626346597.png" alt-text="The Microsoft Intune admin center23" lightbox="media/45cefc8e4e474321b4d47b4626346597.png":::

9. Review the details, then select  **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/2c2e87c5fedc87eba17be0cdeffdb17f.png" alt-text="The Microsoft Intune admin center24" lightbox="media/2c2e87c5fedc87eba17be0cdeffdb17f.png":::

10. View the policy.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/7a631d17cc42500dacad4e995823ffef.png" alt-text="The Microsoft Intune admin center25" lightbox="media/7a631d17cc42500dacad4e995823ffef.png":::

### Attack Surface Reduction - Web Protection

1. Open the Intune admin center.

2. Navigate to **Endpoint security > Attack surface reduction**.

3. Select  **Create Policy**.

4. Select **Windows 10 and Later - Web protection > Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/cd7b5a1cbc16cc05f878cdc99ba4c27f.png" alt-text="The Microsoft Intune admin center26" lightbox="media/cd7b5a1cbc16cc05f878cdc99ba4c27f.png":::

5. Enter a name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/5be573a60cd4fa56a86a6668b62dd808.png" alt-text="The Microsoft Intune admin center27" lightbox="media/5be573a60cd4fa56a86a6668b62dd808.png":::

6. In the **Configuration settings page**: Set the configurations you require for
   Web Protection, then select  **Next**.

    > [!NOTE]
    > We are configuring Web Protection to Block.
    >
    > For more information, see [Web Protection](web-protection-overview.md).

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/6104aa33a56fab750cf30ecabef9f5b6.png" alt-text="The Microsoft Intune admin center28" lightbox="media/6104aa33a56fab750cf30ecabef9f5b6.png":::

7. Add **Scope Tags as required > Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/6daa8d347c98fe94a0d9c22797ff6f28.png" alt-text="The Microsoft Intune admin center29" lightbox="media/6daa8d347c98fe94a0d9c22797ff6f28.png":::

8. Select **Assign to test group > Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/45cefc8e4e474321b4d47b4626346597.png" alt-text="The Microsoft Intune admin center30" lightbox="media/45cefc8e4e474321b4d47b4626346597.png":::

9. Select **Review and Create > Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/8ee0405f1a96c23d2eb6f737f11c1ae5.png" alt-text="The Microsoft Intune admin center31" lightbox="media/8ee0405f1a96c23d2eb6f737f11c1ae5.png":::

10. View the policy.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/e74f6f6c150d017a286e6ed3dffb7757.png" alt-text="The Microsoft Intune admin center32" lightbox="media/e74f6f6c150d017a286e6ed3dffb7757.png":::

## Validate configuration settings

### Confirm policies have been applied

Once the Configuration policy has been assigned, it takes some time to apply.

For information on timing, see [Intune configuration information](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).

To confirm that the configuration policy is applied to your test device, follow the following process for each configuration policy.

1. Open the Intune admin center and navigate to the relevant policy as shown in the
    preceding section. The following example shows the next generation protection settings.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Intune admin center33.](media/43ab6aa74471ee2977e154a4a5ef2d39.png)](media/43ab6aa74471ee2977e154a4a5ef2d39.png#lightbox) 

2. Select  the **Configuration Policy** to view the policy status.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Intune admin center34.](media/55ecaca0e4a022f0e29d45aeed724e6c.png)](media/55ecaca0e4a022f0e29d45aeed724e6c.png#lightbox)

3. Select  **Device Status** to see the status.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Intune admin center35.](media/18a50df62cc38749000dbfb48e9a4c9b.png)](media/18a50df62cc38749000dbfb48e9a4c9b.png#lightbox)

4. Select  **User Status** to see the status.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Intune admin center36.](media/4e965749ff71178af8873bc91f9fe525.png)](media/4e965749ff71178af8873bc91f9fe525.png#lightbox)

5. Select  **Per-setting status** to see the status.

    > [!TIP]
    > This view is very useful to identify any settings that conflict with another policy.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Intune admin center37.](media/42acc69d0128ed09804010bdbdf0a43c.png)](media/42acc69d0128ed09804010bdbdf0a43c.png#lightbox)

### Confirm endpoint detection and response

1. Before applying the configuration, the Defender for Endpoint Protection service shouldn't be started.

    > [!div class="mx-imgBorder"]
    > [![Image of Services panel1.](media/b418a232a12b3d0a65fc98248dbb0e31.png)](media/b418a232a12b3d0a65fc98248dbb0e31.png#lightbox)

2. After the configuration is applied, the Defender for Endpoint Protection service should be started.

    > [!div class="mx-imgBorder"]
    > [![Image of Services panel2.](media/a621b699899f1b41db211170074ea59e.png)](media/a621b699899f1b41db211170074ea59e.png#lightbox)

3. After the services are running on the device, the device appears in Microsoft Defender portal.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Defender portal.](media/df0c64001b9219cfbd10f8f81a273190.png)](media/df0c64001b9219cfbd10f8f81a273190.png#lightbox)

### Confirm next-generation protection

1. Before applying the policy on a test device, you should be able to manually
    manage the settings as shown in the following image:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/88efb4c3710493a53f2840c3eac3e3d3.png" alt-text="The settings page-1" lightbox="media/88efb4c3710493a53f2840c3eac3e3d3.png":::

2. After the policy is applied, you shouldn't be able to manually manage
    the settings.

    > [!NOTE]
    > In the following image **Turn on cloud-delivered protection** and
    > **Turn on real-time protection** are being shown as managed.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/9341428b2d3164ca63d7d4eaa5cff642.png" alt-text="The settings page-2" lightbox="media/9341428b2d3164ca63d7d4eaa5cff642.png":::

### Confirm Attack Surface Reduction - Attack surface reduction rules

1. Before applying the policy on a test device, open a PowerShell Window and type `Get-MpPreference`.

2. You should see the following lines with no content:

    > AttackSurfaceReductionOnlyExclusions:
    >
    > AttackSurfaceReductionRules_Actions:
    >
    > AttackSurfaceReductionRules_Ids:

    :::image type="content" source="media/cb0260d4b2636814e37eee427211fe71.png" alt-text="The command line-1" lightbox="media/cb0260d4b2636814e37eee427211fe71.png":::

3. After applying the policy on a test device, open a PowerShell Windows and type `Get-MpPreference`.

4. You should see the following lines with content, as shown in the following image:

   :::image type="content" source="media/619fb877791b1fc8bc7dfae1a579043d.png" alt-text="The command line-2" lightbox="media/619fb877791b1fc8bc7dfae1a579043d.png":::

### Confirm Attack Surface Reduction - Web Protection

1. On the test device, open a PowerShell Windows and type
    `(Get-MpPreference).EnableNetworkProtection`.

2. This should respond with a 0 as shown in the following image:

   :::image type="content" source="media/196a8e194ac99d84221f405d0f684f8c.png" alt-text="The command line-3" lightbox="media/196a8e194ac99d84221f405d0f684f8c.png":::

3. After applying the policy, open a PowerShell Windows and type
    `(Get-MpPreference).EnableNetworkProtection`.

4. You should see a response with a 1 as shown in the following image:

   :::image type="content" source="media/c06fa3bbc2f70d59dfe1e106cd9a4683.png" alt-text="The command line-4" lightbox="media/c06fa3bbc2f70d59dfe1e106cd9a4683.png":::
   
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
