---
title: Pilot Defender for Endpoint evaluation
description: Enable your Microsoft 365 Defender trial lab or pilot environment.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: v-jweston
author: jweston-1
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

# Pilot MDE Evaluation

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> [!NOTE]
> For the purpose of guiding you through a typical deployment, this scenario will only cover the use of Microsoft Endpoint Configuration Manager. Defender for Endpoint supports the use of other onboarding tools but won't cover those scenarios in the deployment guide. For more information, see [Onboard devices to Microsoft Defender for Endpoint](onboard-configure.md).

## Step 1. Check license state

Checking for the license state and whether it got properly provisioned, can be done through the admin center or through the **Microsoft Azure portal**.

1. To view your licenses, go to the **Microsoft Azure portal** and navigate to the [Microsoft Azure portal license section](https://portal.azure.com/#blade/Microsoft_AAD_IAM/LicensesMenuBlade/Products).

   ![Image of Azure Licensing page.](images/atp-licensing-azure-portal.png)

1. Alternately, in the admin center, navigate to **Billing** \> **Subscriptions**.

    On the screen, you'll see all the provisioned licenses and their current **Status**.

    ![Image of billing licenses.](images/atp-billing-subscriptions.png)

## Step 2. Onboard endpoints using any of the supported management tools

The [Plan deployment](deployment-strategy.md) topic outlines the general steps you need to take to deploy Defender for Endpoint.

Watch this video for a quick overview of the onboarding process and learn about the available tools and methods.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

After identifying your architecture, you'll need to decide which deployment method to use. The deployment tool you choose influences how you onboard endpoints to the service.

### Onboarding tool options

The following table lists the available tools based on the endpoint that you need to onboard.

<br>

****

|Endpoint|Tool options|
|---|---|
|**Windows**|[Local script (up to 10 devices)](../defender-endpoint/configure-endpoints-script.md) <p> [Group Policy](../defender-endpoint/configure-endpoints-gp.md) <p> [Microsoft Endpoint Manager/ Mobile Device Manager](../defender-endpoint/configure-endpoints-mdm.md) <p> [Microsoft Endpoint Configuration Manager](../defender-endpoint/configure-endpoints-sccm.md) <p> [VDI scripts](../defender-endpoint/configure-endpoints-vdi.md) <p> [Integration with Microsoft Defender for Cloud](../defender-endpoint/configure-server-endpoints.md#integration-with-azure-defender)|
|**macOS**|[Local scripts](../defender-endpoint/mac-install-manually.md) <p> [Microsoft Endpoint Manager](../defender-endpoint/mac-install-with-intune.md) <p> [JAMF Pro](../defender-endpoint/mac-install-with-jamf.md) <p> [Mobile Device Management](../defender-endpoint/mac-install-with-other-mdm.md)|
|**Linux Server**|[Local script](../defender-endpoint/linux-install-manually.md) <p> [Puppet](../defender-endpoint/linux-install-with-puppet.md) <p> [Ansible](../defender-endpoint/linux-install-with-ansible.md)|
|**iOS**|[App-based](../defender-endpoint/ios-install.md)|
|**Android**|[Microsoft Endpoint Manager](../defender-endpoint/android-intune.md)|
|
