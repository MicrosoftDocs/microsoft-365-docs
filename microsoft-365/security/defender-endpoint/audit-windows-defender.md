---
title: Test how Microsoft Defender for Endpoint features work in audit mode
description: Audit mode helps you see how Microsoft Defender for Endpoint would protect your devices if it was enabled.
keywords: exploit guard, audit, auditing, mode, enabled, disabled, test, demo, evaluate, lab
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
audience: ITPro
author: denisebmsft
ms.author: deniseb
ms.reviewer:
manager: dansimp
ms.topic: article
ms.technology: mde
ms.date: 06/02/2021
---

# Test attack surface reduction in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

As part of your organization's security team, you can configure attack surface reduction capabilities to run in audit mode to see how they'll work. In audit mode, you can enable:

- Attack surface reduction rules
- Exploit protection
- Network protection
- And controlled folder access in audit mode

Audit mode lets you see a record of what *would* have happened if you had enabled the feature.

You can enable audit mode when testing how the features will work. This will help make sure your line-of-business apps aren't affected. You can also get an idea of how many suspicious file modification attempts occur over a certain period of time.

The features won't block or prevent apps, scripts, or files from being modified. However, the Windows Event Log will record events as if the features were fully enabled. With audit mode, you can review the event log to see what affect the feature would have had if it was enabled.

To find the audited entries, go to **Applications and Services** \> **Microsoft** \> **Windows** \> **Windows Defender** \> **Operational**.

Use Defender for Endpoint to get greater details for each event, especially for investigating attack surface reduction rules. Using the Defender for Endpoint console lets you [investigate issues as part of the alert timeline and investigation scenarios](investigate-alerts.md).

You can enable audit mode using Group Policy, PowerShell, and configuration service providers (CSPs).

> [!TIP]
> You can also visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the features are working and see how they work.

|Audit options|How to enable audit mode|How to view events|
|---|---|---|
|Audit applies to all events|[Enable controlled folder access](enable-controlled-folders.md)|[Controlled folder access events](evaluate-controlled-folder-access.md#review-controlled-folder-access-events-in-windows-event-viewer)
|Audit applies to individual rules|[Enable attack surface reduction rules](enable-attack-surface-reduction.md)|[Attack surface reduction rule events](evaluate-attack-surface-reduction.md#review-attack-surface-reduction-events-in-windows-event-viewer)
|Audit applies to all events|[Enable network protection](enable-network-protection.md)|[Network protection events](evaluate-network-protection.md#review-network-protection-events-in-windows-event-viewer)
|Audit applies to individual mitigations|[Enable exploit protection](enable-exploit-protection.md)|[Exploit protection events](exploit-protection.md#review-exploit-protection-events-in-windows-event-viewer)
