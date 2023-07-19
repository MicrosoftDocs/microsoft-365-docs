---
title: Migrate to Microsoft Defender for Endpoint from non-Microsoft endpoint protection
description: Move to Microsoft Defender for Endpoint, which includes Microsoft Defender Antivirus for your endpoint protection solution.
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
ms.date: 01/12/2023
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.subservice: mde
search.appverid: met150
---

# Migrate to Microsoft Defender for Endpoint from non-Microsoft endpoint protection

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

If you are ready to move from a non-Microsoft endpoint protection solution to [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md), or you're just interested in what all is involved in the process, use this article as a guide. This article describes the overall process of moving to [Defender for Endpoint Plan 1 or Plan 2](defender-endpoint-plan-1-2.md). The following image depicts the migration process at a high level:

:::image type="content" source="images/nonms-mde-migration.png" alt-text="Diagram depicting the process of migrating to Defender for Endpoint" lightbox="images/nonms-mde-migration.png":::

When you migrate to Defender for Endpoint, you begin with your non-Microsoft antivirus/antimalware protection in active mode. Then, you configure Microsoft Defender Antivirus in passive mode, and configure Defender for Endpoint features. Then, you onboard your organization's devices, and verify that everything is working correctly. Finally, you remove the non-Microsoft solution from your devices.

## The migration process

:::image type="content" source="images/phase-diagrams/migration-phases.png" alt-text="The MDE migration process" lightbox="images/phase-diagrams/migration-phases.png":::

The process of migrating to Defender for Endpoint can be divided into three phases, as described in the following table:

|Phase|Description|
|--|--|
|[Prepare for your migration](switch-to-mde-phase-1.md)|During [the **Prepare** phase](switch-to-mde-phase-1.md): <br/>1. Update your organization's devices.<br/>2. Get Defender for Endpoint Plan 1 or Plan 2.<br/>3. Plan roles and permissions for your security team, and grant them access to the Microsoft 365 Defender portal.<br/>4. Configure your device proxy and internet settings to enable communication between your organization's devices and Defender for Endpoint. |
|[Set up Defender for Endpoint](switch-to-mde-phase-2.md)|During [the **Setup** phase](switch-to-mde-phase-2.md): <br/>1. Enable/reinstall Microsoft Defender Antivirus, and make sure it's in passive mode on devices.<br/>2. Configure your Defender for Endpoint Plan 1 or Plan 2 capabilities.<br/>3. Add Defender for Endpoint to the exclusion list for your existing solution.<br/>4. Add your existing solution to the exclusion list for Microsoft Defender Antivirus.<br/>5. Set up your device groups, collections, and organizational units.|
|[Onboard to Defender for Endpoint](switch-to-mde-phase-3.md)|During [the **Onboard** phase](switch-to-mde-phase-3.md): <br/>1. Onboard your devices to Defender for Endpoint.<br/>2. Run a detection test to confirm that onboarding was successful.<br/>3. Confirm that Microsoft Defender Antivirus is running in passive mode.<br/>4. Get updates for Microsoft Defender Antivirus.<br/>5. Uninstall your existing endpoint protection solution.<br/>6. Make sure that Defender for Endpoint working correctly.|

## Next step

- Proceed to [Prepare for your migration](switch-to-mde-phase-1.md).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
