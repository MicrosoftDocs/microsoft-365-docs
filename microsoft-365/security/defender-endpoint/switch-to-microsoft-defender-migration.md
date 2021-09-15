---
title: Make the switch from non-Microsoft endpoint protection to Microsoft Defender for Endpoint
description: Make the switch to Microsoft Defender for Endpoint, which includes Microsoft Defender Antivirus for your endpoint protection solution.
keywords: migration, windows defender, advanced endpoint protection, antivirus, antimalware, passive mode, active mode
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-migratetomdatp
  - m365solution-overview
  - m365solution-mcafeemigrate
  - m365solution-symantecmigrate
ms.topic: conceptual
ms.custom: migrationguides
ms.date: 08/16/2021
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.technology: mde
---

# Make the switch from non-Microsoft endpoint protection to Microsoft Defender for Endpoint

If you are thinking about switching from a non-Microsoft endpoint protection solution to [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) (Defender for Endpoint), you're in the right place. Use this article as a guide.

:::image type="content" source="images/nonms-mde-migration.png" alt-text="Switch your endpoint protection solution to Defender for Endpoint.":::

When you make the switch to Defender for Endpoint, you begin with your non-Microsoft antivirus/antimalware protection in active mode. Then, you configure Microsoft Defender Antivirus in passive mode, and onboard your devices to Defender for Endpoint. Next, you configure your endpoint protection features, set Microsoft Defender Antivirus to active mode, and verify that everything is working correctly. Finally, you remove the non-Microsoft solution.

## The migration process

The process of migrating to Defender for Endpoint can be divided into three phases, as described in the following table:

![MDE migration process.](images/phase-diagrams/migration-phases.png)

|Phase|Description|
|--|--|
|[Prepare for your migration](switch-to-microsoft-defender-prepare.md)|During [the **Prepare** phase](switch-to-microsoft-defender-prepare.md): <ol><li>Update your organization's devices.</li><li>Get Defender for Endpoint.</li><li>Plan roles and permissions, and grant access to the Microsoft 365 Defender portal.</li><li>Configure your device proxy and internet settings to enable communication between your organization's devices and Defender for Endpoint.</li></ol>|
|[Set up Defender for Endpoint](switch-to-microsoft-defender-setup.md)|During [the **Setup** phase](switch-to-microsoft-defender-setup.md): <ol><li>Enable/reinstall Microsoft Defender Antivirus, and set it to passive mode.</li><li> Configure Defender for Endpoint.</li><li>Add Defender for Endpoint to the exclusion list for your existing solution.</li><li>Add your existing solution to the exclusion list for Microsoft Defender Antivirus.</li><li>Set up your device groups, collections, and organizational units.</li><li>Configure your antimalware policies and real-time protection settings.</li></ol>|
|[Onboard to Defender for Endpoint](switch-to-microsoft-defender-onboard.md)|During [the **Onboard** phase](switch-to-microsoft-defender-onboard.md): <ol><li>Onboard your devices to Defender for Endpoint.</li><li>Run a detection test.</li><li>Confirm that Microsoft Defender Antivirus is running in passive mode.</li><li>Get updates for Microsoft Defender Antivirus.</li><li>Uninstall your existing endpoint protection solution.</li><li>Make sure that Defender for Endpoint working correctly.</li></ol>|

## What's included in Microsoft Defender for Endpoint?

In this migration guide, we focus on [next-generation protection](microsoft-defender-antivirus-in-windows-10.md) and [endpoint detection and response](overview-endpoint-detection-response.md) capabilities as a starting point for moving to Defender for Endpoint. However, Defender for Endpoint includes much more than antivirus and endpoint protection. Defender for Endpoint is a unified platform for preventative protection, post-breach detection, automated investigation, and response. The following table summarizes features and capabilities in Defender for Endpoint.

<br/><br/>

|Feature/Capability|Description|
|---|---|
|[Threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)|Threat & vulnerability management capabilities help identify, assess, and remediate weaknesses across your endpoints (such as devices).|
|[Attack surface reduction](overview-attack-surface-reduction.md)|Attack surface reduction rules help protect your organization's devices and applications from cyberthreats and attacks.|
|[Next-generation protection](microsoft-defender-antivirus-in-windows-10.md)|Next-generation protection includes Microsoft Defender Antivirus to help block threats and malware.|
|[Endpoint detection and response](overview-endpoint-detection-response.md)|Endpoint detection and response capabilities detect, investigate, and respond to intrusion attempts and active breaches.|
|[Advanced hunting](advanced-hunting-overview.md)|Advanced hunting capabilities enable your security operations team to locate indicators and entities of known or potential threats.|
|[Behavioral blocking and containment](behavioral-blocking-containment.md)|Behavioral blocking and containment capabilities help identify and stop threats, based on their behaviors and process trees even when the threat has started execution.|
|[Automated investigation and remediation](automated-investigations.md)|Automated investigation and response capabilities examine alerts and take immediate remediation action to resolve breaches.|
|[Threat hunting service](microsoft-threat-experts.md) (Microsoft Threat Experts)|Threat hunting services provide security operations teams with expert level monitoring and analysis, and to help ensure that critical threats aren't missed.|

**Want to learn more? See [Defender for Endpoint](microsoft-defender-endpoint.md).**

## Next step

- Proceed to [Prepare for your migration](switch-to-microsoft-defender-prepare.md).
