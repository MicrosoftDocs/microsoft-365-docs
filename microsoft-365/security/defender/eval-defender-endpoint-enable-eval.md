---
title: Enable Microsoft Defender for Endpoint evaluation
description: Enable your Microsoft 365 Defender trial lab or pilot environment, including checking license state, and onboarding endpoints
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.date: 09/22/2022
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
---

# Enable Microsoft Defender for Endpoint evaluation environment


This article will guide you through the steps on setting up the evaluation environment for Microsoft Defender for Endpoint using production devices. 


> [!TIP]
> Microsoft Defender for Endpoint also comes with an in-product evaluation lab where you can add pre-configured devices and run simulations to evaluate the capabilities of the platform. The lab comes with a simplified set-up experience that can help quickly demonstrate the value of Microsoft Defender for Endpoint including guidance for many features like advanced hunting and threat analytics. For more information, see [Evaluate capabilities](../defender-endpoint/evaluation-lab.md). <br> The main difference between the guidance provided in this article and the evaluation lab is the evaluation environment uses production devices whereas the evaluation lab uses non-production devices. 

Use the following steps to enable the evaluation for Microsoft Defender for Endpoint.

:::image type="content" source="../../media/defender/m365-defender-endpoint-eval-enable-steps.png" alt-text="The steps to enable Microsoft Defender for Endpoint in the Microsoft Defender evaluation environment" lightbox="../../media/defender/m365-defender-endpoint-eval-enable-steps.png":::

- [Step 1. Check license state](#step-1-check-license-state)
- [Step 2. Onboard endpoints](#step-2-onboard-endpoints-using-any-of-the-supported-management-tools)


## Step 1. Check license state

You'll first need to check the license state to verify that it was properly provisioned. You can do this through the admin center or through the **Microsoft Azure portal**.


1. To view your licenses, go to the **Microsoft Azure portal** and navigate to the [Microsoft Azure portal license section](https://portal.azure.com/#blade/Microsoft_AAD_IAM/LicensesMenuBlade/Products).

   :::image type="content" source="../../media/defender/atp-licensing-azure-portal.png" alt-text="The Azure Licensing page in the Microsoft 365 Defender portal" lightbox="../../media/defender/atp-licensing-azure-portal.png":::

1. Alternately, in the admin center, navigate to **Billing** > **Subscriptions**.

    On the screen, you'll see all the provisioned licenses and their current **Status**.

    :::image type="content" source="../../media/defender/atp-billing-subscriptions.png" alt-text="The Billing licenses page in the Microsoft Azure portal" lightbox="../../media/defender/atp-billing-subscriptions.png":::
    

## Step 2. Onboard endpoints using any of the supported management tools

After verifying that the license state has been provisioned properly, you can start onboarding devices to the service. 

For the purpose of evaluating Microsoft Defender for Endpoint, we recommend choosing a couple of Windows devices to conduct the evaluation on.

You can choose to use any of the supported management tools, but Intune provides optimal integration. For more information, see [Configure Microsoft Defender for Endpoint in Microsoft Intune](/mem/intune/protect/advanced-threat-protection-configure#enable-microsoft-defender-for-endpoint-in-intune).

The [Plan deployment](../defender-endpoint/deployment-strategy.md) topic outlines the general steps you need to take to deploy Defender for Endpoint.  

Watch this video for a quick overview of the onboarding process and learn about the available tools and methods.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

### Onboarding tool options

The following table lists the available tools based on the endpoint that you need to onboard.

| Endpoint | Tool options |
|:---|:---|
| **Windows** |- [Local script (up to 10 devices)](../defender-endpoint/configure-endpoints-script.md)<br/>- [Group Policy](../defender-endpoint/configure-endpoints-gp.md)<br/>- [Microsoft Intune / Mobile Device Manager](../defender-endpoint/configure-endpoints-mdm.md)<br/>- [Microsoft Endpoint Configuration Manager](../defender-endpoint/configure-endpoints-sccm.md)<br/>- [VDI scripts](../defender-endpoint/configure-endpoints-vdi.md) |
| **macOS** | - [Local scripts](../defender-endpoint/mac-install-manually.md)<br/>- [Microsoft Intune](../defender-endpoint/mac-install-with-intune.md)<br/>- [JAMF Pro](../defender-endpoint/mac-install-with-jamf.md)<br/>- [Mobile Device Management](../defender-endpoint/mac-install-with-other-mdm.md) |
| **iOS** | [App-based](../defender-endpoint/ios-install.md) |
| **Android** | [Microsoft Intune](../defender-endpoint/android-intune.md) |



## Next step
[Setup the pilot for Microsoft Defender for Endpoint](eval-defender-endpoint-pilot.md)
 
Return to the overview for [Evaluate Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
