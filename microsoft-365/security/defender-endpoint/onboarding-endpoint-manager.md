---
title: Onboarding using Microsoft Endpoint Manager
description: Learn how to onboard to Microsoft Defender for Endpoint using Microsoft Endpoint Manager
keywords: onboarding, configuration, deploy, deployment, endpoint manager, Microsoft Defender for Endpoint, collection creation, endpoint detection response, next generation protection, attack surface reduction, microsoft endpoint manager
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
  - M365-security-compliance
  - m365solution-endpointprotect
  - m365solution-scenario
ms.topic: article
ms.technology: mde
---

# Onboarding using Microsoft Endpoint Manager

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This article is part of the Deployment guide and acts as an example onboarding method.

In the [Planning](deployment-strategy.md) topic, there were several methods provided to onboard devices to the service. This topic covers the cloud-native architecture.

:::image type="content" source="images/cloud-native-architecture.png" alt-text="The cloud-native architecture" lightbox="images/cloud-native-architecture.png":::
*Diagram of environment architectures*

While Defender for Endpoint supports onboarding of various endpoints and tools, this article does not cover them. For information on general onboarding using other supported deployment tools and methods, see [Onboarding overview](onboarding.md).

[Microsoft Endpoint Manager](/mem/endpoint-manager-overview) is a solution platform that unifies several services. It includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune)-based device management.

This topic guides users in:

- Step 1: Onboarding devices to the service by creating a group in Microsoft Endpoint Manager (MEM) to assign configurations on
- Step 2: Configuring Defender for Endpoint capabilities using Microsoft Endpoint Manager

This onboarding guidance will walk you through the following basic steps that you need to take when using Microsoft Endpoint Manager:

- [Identifying target devices or users](#identify-target-devices-or-users)
  - Creating an Azure Active Directory group (User or Device)
- [Creating a Configuration Profile](#step-2-create-configuration-policies-to-configure-microsoft-defender-for-endpoint-capabilities)
  - In Microsoft Endpoint Manager, we'll guide you in creating a separate policy for each capability.

## Resources

Here are the links you'll need for the rest of the process:

- [MEM portal](https://aka.ms/memac)
- [Microsoft 365 Defender](https://security.microsoft.com)
- [Intune Security baselines](/mem/intune/protect/security-baseline-settings-defender-atp#microsoft-defender)

For more information about Microsoft Endpoint Manager, check out these resources:

- [Microsoft Endpoint Manager page](/mem/)
- [Blog post on convergence of Intune and ConfigMgr](https://www.microsoft.com/microsoft-365/blog/2019/11/04/use-the-power-of-cloud-intelligence-to-simplify-and-accelerate-it-and-the-move-to-a-modern-workplace/)
- [Introduction video on MEM](https://www.microsoft.com/microsoft-365/blog/2019/11/04/use-the-power-of-cloud-intelligence-to-simplify-and-accelerate-it-and-the-move-to-a-modern-workplace)

## Step 1: Onboard devices by creating a group in MEM to assign configurations on

### Identify target devices or users

In this section, we will create a test group to assign your configurations on.

> [!NOTE]
> Intune uses Azure Active Directory (Azure AD) groups to manage devices and users. As an Intune admin, you can set up groups to suit your organizational needs.
>
> For more information, see [Add groups to organize users and devices](/mem/intune/fundamentals/groups-add).

### Create a group

1. Open the MEM portal.

2. Open **Groups > New Group**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/66f724598d9c3319cba27f79dd4617a4.png" alt-text="The Microsoft Endpoint Manager portal1" lightbox="images/66f724598d9c3319cba27f79dd4617a4.png":::

3. Enter details and create a new group.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/b1e0206d675ad07db218b63cd9b9abc3.png" alt-text="The Microsoft Endpoint Manager portal2" lightbox="images/b1e0206d675ad07db218b63cd9b9abc3.png":::

4. Add your test user or device.

5. From the **Groups > All groups** pane, open your new group.

6. Select  **Members > Add members**.

7. Find your test user or device and select it.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/149cbfdf221cdbde8159d0ab72644cd0.png" alt-text="The Microsoft Endpoint Manager portal3" lightbox="images/149cbfdf221cdbde8159d0ab72644cd0.png":::

8. Your testing group now has a member to test.

## Step 2: Create configuration policies to configure Microsoft Defender for Endpoint capabilities

In the following section, you'll create a number of configuration policies.

First is a configuration policy to select which groups of users or devices will be onboarded to Defender for Endpoint:

- [Endpoint detection and response](#endpoint-detection-and-response)

Then you will continue by creating several different types of endpoint security policies:

- [Next-generation protection](#next-generation-protection)
- [Attack surface reduction](#attack-surface-reduction---attack-surface-reduction-rules)

### Endpoint detection and response

1. Open the MEM portal.

2. Navigate to **Endpoint security > Endpoint detection and response**. Click on **Create Profile**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/58dcd48811147feb4ddc17212b7fe840.png" alt-text="The Microsoft Endpoint Manager portal4" lightbox="images/58dcd48811147feb4ddc17212b7fe840.png":::

3. Under **Platform, select Windows 10 and Later, Profile - Endpoint detection
    and response > Create**.

4. Enter a name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/a5b2d23bdd50b160fef4afd25dda28d4.png" alt-text="The Microsoft Endpoint Manager portal5" lightbox="images/a5b2d23bdd50b160fef4afd25dda28d4.png":::

5. Select settings as required, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/cea7e288b5d42a9baf1aef0754ade910.png" alt-text="The Microsoft Endpoint Manager portal6" lightbox="images/cea7e288b5d42a9baf1aef0754ade910.png":::

    > [!NOTE]
    > In this instance, this has been auto populated as Defender for Endpoint has already been integrated with Intune. For more information on the integration, see [Enable Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure#to-enable-microsoft-defender-atp).
    >
    > The following image is an example of what you'll see when Microsoft Defender for Endpoint is NOT integrated with Intune:
    >
    > :::image type="content" source="images/2466460812371ffae2d19a10c347d6f4.png" alt-text="The Microsoft Endpoint Manager portal7" lightbox="images/2466460812371ffae2d19a10c347d6f4.png":::

6. Add scope tags if necessary, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/ef844f52ec2c0d737ce793f68b5e8408.png" alt-text="The Microsoft Endpoint Manager portal8" lightbox="images/ef844f52ec2c0d737ce793f68b5e8408.png":::

7. Add test group by clicking on **Select groups to include** and choose your group, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/fc3525e20752da026ec9f46ab4fec64f.png" alt-text="The Microsoft Endpoint Manager portal9" lightbox="images/fc3525e20752da026ec9f46ab4fec64f.png":::

8. Review and accept, then select  **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/289172dbd7bd34d55d24810d9d4d8158.png" alt-text="The Microsoft Endpoint Manager portal10" lightbox="images/289172dbd7bd34d55d24810d9d4d8158.png":::

9. You can view your completed policy.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/5a568b6878be8243ea2b9d82d41ed297.png" alt-text="The Microsoft Endpoint Manager portal11" lightbox="images/5a568b6878be8243ea2b9d82d41ed297.png":::

### Next-generation protection

1. Open the MEM portal.

2. Navigate to **Endpoint security > Antivirus > Create Policy**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/6b728d6e0d71108d768e368b416ff8ba.png" alt-text="The Microsoft Endpoint Manager portal12" lightbox="images/6b728d6e0d71108d768e368b416ff8ba.png":::

3. Select **Platform - Windows 10 and Later - Windows and Profile - Microsoft Defender Antivirus > Create**.

4. Enter name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/a7d738dd4509d65407b7d12beaa3e917.png" alt-text="The Microsoft Endpoint Manager portal13" lightbox="images/a7d738dd4509d65407b7d12beaa3e917.png":::

5. In the **Configuration settings page**: Set the configurations you require for Microsoft Defender Antivirus (Cloud Protection, Exclusions, Real-Time Protection, and Remediation).

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/3840b1576d6f79a1d72eb14760ef5e8c.png" alt-text="The Microsoft Endpoint Manager portal14" lightbox="images/3840b1576d6f79a1d72eb14760ef5e8c.png":::

6. Add scope tags if necessary, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/2055e4f9b9141525c0eb681e7ba19381.png" alt-text="The Microsoft Endpoint Manager portal15" lightbox="images/2055e4f9b9141525c0eb681e7ba19381.png":::

7. Select groups to include, assign to your test group, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/48318a51adee06bff3908e8ad4944dc9.png" alt-text="The Microsoft Endpoint Manager portal16" lightbox="images/48318a51adee06bff3908e8ad4944dc9.png":::

8. Review and create, then select  **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/dfdadab79112d61bd3693d957084b0ec.png" alt-text="The Microsoft Endpoint Manager portal17" lightbox="images/dfdadab79112d61bd3693d957084b0ec.png":::

9. You'll see the configuration policy you created.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/38180219e632d6e4ec7bd25a46398da8.png" alt-text="The Microsoft Endpoint Manager portal18" lightbox="images/38180219e632d6e4ec7bd25a46398da8.png":::

### Attack Surface Reduction - Attack surface reduction rules

1. Open the MEM portal.

2. Navigate to **Endpoint security > Attack surface reduction**.

3. Select  **Create Policy**.

4. Select **Platform - Windows 10 and Later - Profile - Attack surface reduction
    rules > Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/522d9bb4288dc9c1a957392b51384fdd.png" alt-text="The Microsoft Endpoint Manager portal19" lightbox="images/522d9bb4288dc9c1a957392b51384fdd.png":::

5. Enter a name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/a5a71fd73ec389f3cdce6d1a6bd1ff31.png" alt-text="The Microsoft Endpoint Manager portal20" lightbox="images/a5a71fd73ec389f3cdce6d1a6bd1ff31.png":::

6. In the **Configuration settings page**: Set the configurations you require for
    Attack surface reduction rules, then select  **Next**.

    > [!NOTE]
    > We will be configuring all of the Attack surface reduction rules to Audit.
    >
    > For more information, see [Attack surface reduction rules](attack-surface-reduction.md).

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/dd0c00efe615a64a4a368f54257777d0.png" alt-text="The Microsoft Endpoint Manager portal21" lightbox="images/dd0c00efe615a64a4a368f54257777d0.png":::

7. Add Scope Tags as required, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/6daa8d347c98fe94a0d9c22797ff6f28.png" alt-text="The Microsoft Endpoint Manager portal22" lightbox="images/6daa8d347c98fe94a0d9c22797ff6f28.png":::

8. Select groups to include and assign to test group, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/45cefc8e4e474321b4d47b4626346597.png" alt-text="The Microsoft Endpoint Manager portal23" lightbox="images/45cefc8e4e474321b4d47b4626346597.png":::

9. Review the details, then select  **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/2c2e87c5fedc87eba17be0cdeffdb17f.png" alt-text="The Microsoft Endpoint Manager portal24" lightbox="images/2c2e87c5fedc87eba17be0cdeffdb17f.png":::

10. View the policy.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/7a631d17cc42500dacad4e995823ffef.png" alt-text="The Microsoft Endpoint Manager portal25" lightbox="images/7a631d17cc42500dacad4e995823ffef.png":::

### Attack Surface Reduction - Web Protection

1. Open the MEM portal.

2. Navigate to **Endpoint security > Attack surface reduction**.

3. Select  **Create Policy**.

4. Select **Windows 10 and Later - Web protection > Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/cd7b5a1cbc16cc05f878cdc99ba4c27f.png" alt-text="The Microsoft Endpoint Manager portal26" lightbox="images/cd7b5a1cbc16cc05f878cdc99ba4c27f.png":::

5. Enter a name and description, then select  **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/5be573a60cd4fa56a86a6668b62dd808.png" alt-text="The Microsoft Endpoint Manager portal27" lightbox="images/5be573a60cd4fa56a86a6668b62dd808.png":::

6. In the **Configuration settings page**: Set the configurations you require for
   Web Protection, then select  **Next**.

    > [!NOTE]
    > We are configuring Web Protection to Block.
    >
    > For more information, see [Web Protection](web-protection-overview.md).

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/6104aa33a56fab750cf30ecabef9f5b6.png" alt-text="The Microsoft Endpoint Manager portal28" lightbox="images/6104aa33a56fab750cf30ecabef9f5b6.png":::

7. Add **Scope Tags as required > Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/6daa8d347c98fe94a0d9c22797ff6f28.png" alt-text="The Microsoft Endpoint Manager portal29" lightbox="images/6daa8d347c98fe94a0d9c22797ff6f28.png":::

8. Select **Assign to test group > Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/45cefc8e4e474321b4d47b4626346597.png" alt-text="The Microsoft Endpoint Manager portal30" lightbox="images/45cefc8e4e474321b4d47b4626346597.png":::

9. Select **Review and Create > Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/8ee0405f1a96c23d2eb6f737f11c1ae5.png" alt-text="The Microsoft Endpoint Manager portal31" lightbox="images/8ee0405f1a96c23d2eb6f737f11c1ae5.png":::

10. View the policy.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/e74f6f6c150d017a286e6ed3dffb7757.png" alt-text="The Microsoft Endpoint Manager portal32" lightbox="images/e74f6f6c150d017a286e6ed3dffb7757.png":::

## Validate configuration settings

### Confirm policies have been applied

Once the Configuration policy has been assigned, it will take some time to apply.

For information on timing, see [Intune configuration information](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).

To confirm that the configuration policy has been applied to your test device, follow the following process for each configuration policy.

1. Open the MEM portal and navigate to the relevant policy as shown in the
    steps above. The following example shows the next generation protection settings.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Endpoint Manager portal33.](images/43ab6aa74471ee2977e154a4a5ef2d39.png)](images/43ab6aa74471ee2977e154a4a5ef2d39.png#lightbox) 

2. Select  the **Configuration Policy** to view the policy status.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Endpoint Manager portal34.](images/55ecaca0e4a022f0e29d45aeed724e6c.png)](images/55ecaca0e4a022f0e29d45aeed724e6c.png#lightbox)

3. Select  **Device Status** to see the status.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Endpoint Manager portal35.](images/18a50df62cc38749000dbfb48e9a4c9b.png)](images/18a50df62cc38749000dbfb48e9a4c9b.png#lightbox)

4. Select  **User Status** to see the status.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Endpoint Manager portal36.](images/4e965749ff71178af8873bc91f9fe525.png)](images/4e965749ff71178af8873bc91f9fe525.png#lightbox)

5. Select  **Per-setting status** to see the status.

    > [!TIP]
    > This view is very useful to identify any settings that conflict with another policy.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft Endpoint Manager portal37.](images/42acc69d0128ed09804010bdbdf0a43c.png)](images/42acc69d0128ed09804010bdbdf0a43c.png#lightbox)

### Confirm endpoint detection and response

1. Before applying the configuration, the Defender for Endpoint Protection service should not be started.

    > [!div class="mx-imgBorder"]
    > [![Image of Services panel1.](images/b418a232a12b3d0a65fc98248dbb0e31.png)](images/b418a232a12b3d0a65fc98248dbb0e31.png#lightbox)

2. After the configuration has been applied, the Defender for Endpoint Protection Service should be started.

    > [!div class="mx-imgBorder"]
    > [![Image of Services panel2.](images/a621b699899f1b41db211170074ea59e.png)](images/a621b699899f1b41db211170074ea59e.png#lightbox)

3. After the services are running on the device, the device appears in Microsoft 365 Defender portal.

    > [!div class="mx-imgBorder"]
    > [![Image of Microsoft 365 Defender portal.](images/df0c64001b9219cfbd10f8f81a273190.png)](images/df0c64001b9219cfbd10f8f81a273190.png#lightbox)

### Confirm next-generation protection

1. Before applying the policy on a test device, you should be able to manually
    manage the settings as shown below.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/88efb4c3710493a53f2840c3eac3e3d3.png" alt-text="The settings page-1" lightbox="images/88efb4c3710493a53f2840c3eac3e3d3.png":::

2. After the policy has been applied, you should not be able to manually manage
    the settings.

    > [!NOTE]
    > In the following image **Turn on cloud-delivered protection** and
    > **Turn on real-time protection** are being shown as managed.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/9341428b2d3164ca63d7d4eaa5cff642.png" alt-text="The settings page-2" lightbox="images/9341428b2d3164ca63d7d4eaa5cff642.png":::

### Confirm Attack Surface Reduction - Attack surface reduction rules

1. Before applying the policy on a test device, pen a PowerShell Window and type `Get-MpPreference`.

2. This should respond with the following lines with no content:

    > AttackSurfaceReductionOnlyExclusions:
    >
    > AttackSurfaceReductionRules_Actions:
    >
    > AttackSurfaceReductionRules_Ids:

    :::image type="content" source="images/cb0260d4b2636814e37eee427211fe71.png" alt-text="The command line-1" lightbox="images/cb0260d4b2636814e37eee427211fe71.png":::

3. After applying the policy on a test device, open a PowerShell Windows and type `Get-MpPreference`.

4. This should respond with the following lines with content as shown below:

   :::image type="content" source="images/619fb877791b1fc8bc7dfae1a579043d.png" alt-text="The command line-2" lightbox="images/619fb877791b1fc8bc7dfae1a579043d.png":::

### Confirm Attack Surface Reduction - Web Protection

1. On the test device, open a PowerShell Windows and type
    `(Get-MpPreference).EnableNetworkProtection`.

2. This should respond with a 0 as shown below.

   :::image type="content" source="images/196a8e194ac99d84221f405d0f684f8c.png" alt-text="The command line-3" lightbox="images/196a8e194ac99d84221f405d0f684f8c.png":::

3. After applying the policy, open a PowerShell Windows and type
    `(Get-MpPreference).EnableNetworkProtection`.

4. This should respond with a 1 as shown below.

   :::image type="content" source="images/c06fa3bbc2f70d59dfe1e106cd9a4683.png" alt-text="The command line-4" lightbox="images/c06fa3bbc2f70d59dfe1e106cd9a4683.png":::
