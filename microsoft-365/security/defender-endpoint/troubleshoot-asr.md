---
title: Troubleshoot problems with attack surface reduction rules
description: Resources and sample code to troubleshoot issues with attack surface reduction rules in Microsoft Defender for Endpoint.
keywords: troubleshoot, error, fix, windows defender eg, asr, rules, hips, troubleshoot, audit, exclusion, false positive, broken, blocking, Microsoft Defender for Endpoint
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
author: Dansimp
ms.author: dansimp
ms.date: 07/28/2023
ms.reviewer:
manager: dansimp
ms.custom: asr
ms.subservice: mde
ms.topic: how-to
ms.collection: 
- m365-security
- tier3
search.appverid: met150
---

# Troubleshoot attack surface reduction rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

When you use [attack surface reduction rules](attack-surface-reduction.md) you may run into issues, such as:

- A rule blocks a file, process, or performs some other action that it shouldn't (false positive)
- A rule doesn't work as described, or doesn't block a file or process that it should (false negative)

There are four steps to troubleshooting these problems:

1. [Confirm prerequisites](#confirm-prerequisites)
2. [Use audit mode to test the rule](#use-audit-mode-to-test-the-rule)
3. [Add exclusions for the specified rule](#add-exclusions-for-a-false-positive) (for false positives)
4. [Submit support logs](#collect-diagnostic-data-for-file-submissions)

## Confirm prerequisites

Attack surface reduction rules only work on devices with the following conditions:

- Endpoints are running Windows 10 Enterprise or later.

- Endpoints are using Microsoft Defender Antivirus as the sole antivirus protection app. [Using any other antivirus app will cause Microsoft Defender Antivirus to disable itself](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).

- [Real-time protection](/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus) is enabled.

- Audit mode isn't enabled. Use Group Policy to set the rule to **Disabled** (value: **0**) as described in [Enable attack surface reduction rules](enable-attack-surface-reduction.md).

If these prerequisites have all been met, proceed to the next step to test the rule in audit mode.

## Use audit mode to test the rule

Follow these instructions in [Use the demo tool to see how attack surface reduction rules work](evaluate-attack-surface-reduction.md) to test the specific rule you're encountering problems with.

1. Enable audit mode for the specific rule you want to test. Use Group Policy to set the rule to **Audit mode** (value: **2**) as described in [Enable attack surface reduction rules](enable-attack-surface-reduction.md). Audit mode allows the rule to report the file or process, but will still allow it to run.

2. Perform the activity that is causing an issue (for example, open or execute the file or process that should be blocked but is being allowed).

3. [Review the attack surface reduction rule event logs](attack-surface-reduction.md) to see if the rule would have blocked the file or process if the rule had been set to **Enabled**.

If a rule isn't blocking a file or process that you're expecting it should block, first check if audit mode is enabled.

Audit mode may have been enabled for testing another feature, or by an automated PowerShell script, and may not have been disabled after the tests were completed.

If you've tested the rule with the demo tool and with audit mode, and attack surface reduction rules are working on preconfigured scenarios, but the rule isn't working as expected, proceed to either of the following sections based on your situation:

1. If the attack surface reduction rule is blocking something that it shouldn't block (also known as a false positive), you can [first add an attack surface reduction rule exclusion](#add-exclusions-for-a-false-positive).

2. If the attack surface reduction rule isn't blocking something that it should block (also known as a false negative), you can proceed immediately to the last step, [collecting diagnostic data and submitting the issue to us](#collect-diagnostic-data-for-file-submissions).

## Add exclusions for a false positive

If the attack surface reduction rule is blocking something that it shouldn't block (also known as a false positive), you can add exclusions to prevent attack surface reduction rules from evaluating the excluded files or folders.

To add an exclusion, see [Customize Attack surface reduction](attack-surface-reduction-rules-deployment-implement.md#customize-attack-surface-reduction-rules).

> [!IMPORTANT]
> You can specify individual files and folders to be excluded, but you cannot specify individual rules.
> This means any files or folders that are excluded will be excluded from all ASR rules.

## Report a false positive or false negative

Use the [Microsoft Security Intelligence web-based submission form](https://www.microsoft.com/wdsi/support/report-exploit-guard) to report a false negative or false positive for network protection. With a Windows E5 subscription, you can also [provide a link to any associated alert](alerts-queue.md).

## Collect diagnostic data for file submissions

When you report a problem with attack surface reduction rules, you're asked to collect and submit diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues.

1. Open an elevated command prompt and change to the Windows Defender directory:

   ```console
   cd "c:\program files\Windows Defender"
   ```

2. Run this command to generate the diagnostic logs:

   ```console
   mpcmdrun -getfiles
   ```

3. By default, they're saved to `C:\ProgramData\Microsoft\Windows Defender\Support\MpSupportFiles.cab`. Attach the file to the submission form.

## Related articles

- [Attack surface reduction rules](attack-surface-reduction.md)
- [Enable attack surface reduction rules](enable-attack-surface-reduction.md)
- [Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
