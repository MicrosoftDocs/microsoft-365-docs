---
title: Onboard to the Microsoft Defender for Endpoint service
description: Learn how to onboard endpoints to Microsoft Defender for Endpoint service
keywords: microsoft defender for endpoint, onboard, deploy
search.product: eADQiWindows 10XVcnh
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
  - M365-security-compliance
  - m365solution-endpointprotect
  - m365solution-scenario
ms.topic: article
ms.technology: mde
---

# Onboard to the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

Learn about the various phases of deploying Microsoft Defender for Endpoint and how to configure the capabilities within the solution. 


These are the steps you need to take to deploy Defender for Endpoint:

- Step 1: Onboard endpoints to the service 
- Step 2: Configure capabilities 

![Illustration of the deployment steps](images/deployment-steps.png)



## Step 1: Onboard endpoints using any of the supported management tools
The [Plan deployment](deployment-strategy.md) topic outlines the general steps you need to take to deploy Defender for Endpoint.  


Watch this video for a quick overview of the onboarding process and learn about the available tools and methods.
<br />
<br />

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4bGqr]



After identifying your architecture, you'll need to decide which deployment method to use. The deployment tool you choose influences how you onboard endpoints to the service. 

### Onboarding tool options

The following table lists the available tools based on the endpoint that you need to onboard.

| Endpoint     | Tool options                       |
|--------------|------------------------------------------|
| **Windows**  |  [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br> [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md) <br> [Integration with Azure Defender](azure-server-integration.md) |
| **macOS**    | [Local scripts](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md)|
| **iOS**      | [App-based](ios-install.md)                                |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)               | 


## Step 2: Configure capabilities
After onboarding the endpoints, you'll then configure the capabilities. The following table lists the components that you can configure. Choose the components that you'd like to use and remove the ones that do not apply.

| Capability | Description |
|-|-|
| [Endpoint Detection & Response (EDR)](overview-endpoint-detection-response.md) | Defender for Endpoint endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. |
| [Threat & Vulnerability Management (TVM)](next-gen-threat-and-vuln-mgt.md) | Threat & Vulnerability Management is a component of Microsoft Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including: - Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities - Invaluable device vulnerability context during incident investigations - Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager.  |
| [Next-generation protection (NGP)](microsoft-defender-antivirus-in-windows-10.md) | Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers. Microsoft Defender Antivirus includes:<br> <br>-Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Microsoft Defender Antivirus.<br> <br> - Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection").<br><br> - Dedicated protection updates based on machine-learning, human and automated big-data analysis, and in-depth threat resistance research. |
| [Attack Surface Reduction (ASR)](overview-attack-surface-reduction.md) | Attack surface reduction capabilities in Microsoft Defender for Endpoint help protect the devices and applications in the organization from new and emerging threats. |
| [Auto Investigation & Remediation (AIR)](automated-investigations.md) | Microsoft Defender for Endpoint uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. |
| [Microsoft Threat Experts (MTE)](microsoft-threat-experts.md) | Microsoft Threat Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed.      |


## Example deployments
In this deployment guide, we'll guide you through using two deployment tools to onboard endpoints and how to configure capabilities.

The tools in the example deployments are:
- [Onboarding using Microsoft Endpoint Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Endpoint Manager](onboarding-endpoint-manager.md)

Using the mentioned deployment tools above, you'll then be guided in configuring the following Defender for Endpoint capabilities:
- Endpoint detection and response configuration
- Next-generation protection configuration
- Attack surface reduction configuration

## Related topics
- [Onboarding using Microsoft Endpoint Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Endpoint Manager](onboarding-endpoint-manager.md)
- [Safe Documents in Microsoft 365 E5](../office-365-security/safe-docs.md)
