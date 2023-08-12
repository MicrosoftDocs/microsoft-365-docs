---
title:  Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer
description: Troubleshoot sensor health on devices to identify potential configuration, environment, connectivity, or telemetry issue affecting sensor data or capability.
keywords: sensor, sensor health, misconfigured, inactive, no sensor data, sensor data, impaired communications, communication
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/23/2021
---

# Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The Microsoft Defender for Endpoint Client Analyzer (MDECA) can be useful when diagnosing sensor health or reliability issues on [onboarded devices](/microsoft-365/security/defender-endpoint/onboard-configure) running either Windows, Linux, or macOS. For example, you may want to run the analyzer on a machine that appears to be unhealthy according to the displayed [sensor health status](/microsoft-365/security/defender-endpoint/fix-unhealthy-sensors) (Inactive, No Sensor Data or Impaired Communications) in the security portal.

Besides obvious sensor health issues, MDECA can collect other traces, logs, and diagnostic information for troubleshooting complex scenarios such as:

- Application compatibility (AppCompat), performance, network connectivity, or
- Unexpected behavior related to [Endpoint Data Loss Prevention](/microsoft-365/compliance/endpoint-dlp-learn-about).

## Privacy notice

- The Microsoft Defender for Endpoint Client Analyzer tool is regularly used by Microsoft Customer Support Services (CSS) to collect information that will help troubleshoot issues you may be experiencing with Microsoft Defender for Endpoint.

- The collected data may contain Personally Identifiable Information (PII) and/or sensitive data, such as (but not limited to) IP addresses, PC names, and usernames.

- Once data collection is complete, the tool saves the data locally on the machine within a subfolder and compressed zip file.

- No data is automatically sent to Microsoft. If you are using the tool during collaboration on a support issue, you may be asked to send the compressed data to Microsoft CSS using Secure File Exchange to facilitate the investigation of the issue.

For more information about Secure File Exchange, see [How to use Secure File Exchange to exchange files with Microsoft Support](/troubleshoot/azure/general/secure-file-exchange-transfer-files)

For more information about our privacy statement, see [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).

## Requirements

- Before running the analyzer, we recommend ensuring your proxy or firewall configuration allows access to [Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server).

- The analyzer can run on supported editions of [Windows](minimum-requirements.md#supported-windows-versions), [Linux](microsoft-defender-endpoint-linux.md#system-requirements), or [macOS](microsoft-defender-endpoint-mac.md#system-requirements) either before of after onboarding to Microsoft Defender for Endpoint.

- For Windows devices, if you are running the analyzer directly on specific machines and not remotely via [Live Response](/microsoft-365/security/defender-endpoint/troubleshoot-collect-support-log), then SysInternals [PsExec.exe](/sysinternals/downloads/psexec) should be allowed (at least temporarily) to run. The analyzer calls into PsExec.exe tool to run cloud connectivity checks as Local System and emulate the behavior of the SENSE service.

    > [!NOTE]
    > On Windows devices, if you use Attack Surface Reduction (ASR) rule [Block process creations originating from PSExec and WMI commands](attack-surface-reduction-rules-reference.md#block-process-creations-originating-from-psexec-and-wmi-commands), then may want to temporarily disable the rule or [configure an exclusion to the ASR rule](enable-attack-surface-reduction.md#exclude-files-and-folders-from-asr-rules) to allow the analyzer to run connectivity checks to cloud as expected.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
