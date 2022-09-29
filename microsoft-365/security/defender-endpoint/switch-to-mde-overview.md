---
title: Make the switch from non-Microsoft endpoint protection to Microsoft Defender for Endpoint
description: Make the switch to Microsoft Defender for Endpoint, which includes Microsoft Defender Antivirus for your endpoint protection solution.
keywords: migration, windows defender, advanced endpoint protection, antivirus, antimalware, passive mode, active mode
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- m365solution-migratetomdatp
- m365solution-overview
- m365initiative-defender-endpoint
- highpri
- tier1
ms.topic: overview
ms.custom: migrationguides
ms.date: 11/29/2021
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.subservice: mde
search.appverid: met150
---

# Make the switch from non-Microsoft endpoint protection to Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


If you are considering switching from a non-Microsoft endpoint protection solution to [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) (Defender for Endpoint), or you are in the planning phase, use this article as a guide. This article describes the overall process of moving to Defender for Endpoint.

:::image type="content" source="images/nonms-mde-migration.png" alt-text="The migration process to switch your endpoint protection solution to Defender for Endpoint" lightbox="images/nonms-mde-migration.png":::

When you make the switch to Defender for Endpoint, you begin with your non-Microsoft antivirus/antimalware protection in active mode. Then, you configure Microsoft Defender Antivirus in passive mode, and onboard your devices to Defender for Endpoint. Next, you configure your endpoint protection features, set Microsoft Defender Antivirus to active mode, and verify that everything is working correctly. Finally, you remove the non-Microsoft solution.

## The migration process

The process of migrating to Defender for Endpoint can be divided into three phases, as described in the following table:

:::image type="content" source="images/phase-diagrams/migration-phases.png" alt-text="The MDE migration process" lightbox="images/phase-diagrams/migration-phases.png":::


<br/><br/>

|Phase|Description|
|--|--|
|[Prepare for your migration](switch-to-mde-phase-1.md)|During [the **Prepare** phase](switch-to-mde-phase-1.md): <br/>1. Update your organization's devices.<br/>2. Get Defender for Endpoint.<br/>3. Plan roles and permissions, and grant access to the Microsoft 365 Defender portal.<br/>4. Configure your device proxy and internet settings to enable communication between your organization's devices and Defender for Endpoint. |
|[Set up Defender for Endpoint](switch-to-mde-phase-2.md)|During [the **Setup** phase](switch-to-mde-phase-2.md): <br/>1. Enable/reinstall Microsoft Defender Antivirus, and set it to passive mode.<br/>2. Configure Defender for Endpoint.<br/>3. Add Defender for Endpoint to the exclusion list for your existing solution.<br/>4. Add your existing solution to the exclusion list for Microsoft Defender Antivirus.<br/>5. Set up your device groups, collections, and organizational units.<br/>6. Configure your antimalware policies and real-time protection settings.|
|[Onboard to Defender for Endpoint](switch-to-mde-phase-3.md)|During [the **Onboard** phase](switch-to-mde-phase-3.md): <br/>1. Onboard your devices to Defender for Endpoint.<br/>2. Run a detection test.<br/>3. Confirm that Microsoft Defender Antivirus is running in passive mode.<br/>4. Get updates for Microsoft Defender Antivirus.<br/>5. Uninstall your existing endpoint protection solution.<br/>6. Make sure that Defender for Endpoint working correctly.|

## What's included in Microsoft Defender for Endpoint?

In this migration guide, we focus on [next-generation protection](microsoft-defender-antivirus-in-windows-10.md) and [endpoint detection and response](overview-endpoint-detection-response.md) capabilities as a starting point for moving to Defender for Endpoint. However, Defender for Endpoint includes much more than antivirus and endpoint protection. Defender for Endpoint is a unified platform for preventative protection, post-breach detection, automated investigation, and response. The following table summarizes features and capabilities in Defender for Endpoint.

<br/><br/>

|Feature/Capability|Description|
|---|---|
|[Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md)|Defender Vulnerability Management capabilities help identify, assess, and remediate weaknesses across your endpoints (such as devices).|
|[Attack surface reduction](overview-attack-surface-reduction.md)|Attack surface reduction rules help protect your organization's devices and applications from cyberthreats and attacks.|
|[Next-generation protection](microsoft-defender-antivirus-in-windows-10.md)|Next-generation protection includes Microsoft Defender Antivirus to help block threats and malware.|
|[Endpoint detection and response](overview-endpoint-detection-response.md)|Endpoint detection and response capabilities detect, investigate, and respond to intrusion attempts and active breaches.|
|[Advanced hunting](advanced-hunting-overview.md)|Advanced hunting capabilities enable your security operations team to locate indicators and entities of known or potential threats.|
|[Behavioral blocking and containment](behavioral-blocking-containment.md)|Behavioral blocking and containment capabilities help identify and stop threats, based on their behaviors and process trees even when the threat has started execution.|
|[Automated investigation and remediation](automated-investigations.md)|Automated investigation and response capabilities examine alerts and take immediate remediation action to resolve breaches.|
|[Threat hunting service](microsoft-threat-experts.md) (Microsoft Threat Experts)|Threat hunting services provide security operations teams with expert level monitoring and analysis, and to help ensure that critical threats aren't missed.|

**Want to learn more? See [Defender for Endpoint](microsoft-defender-endpoint.md).**

## Next step

- Proceed to [Prepare for your migration](switch-to-mde-phase-1.md).
