---
title:  Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer
description: Troubleshoot sensor health on devices to identify potential configuration, environment, connectivity, or telemetry issue affecting sensor data or capability.
keywords: sensor, sensor health, misconfigured, inactive, no sensor data, sensor data, impaired communications, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
ms.technology: m365d
---

#  Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

The Microsoft Defender for Endpoint Client Analyzer (MDECA) can be useful when
diagnosing sensor health or reliability issues on [onboarded
devices](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-configure)
running either Windows, Linux or MacOS. For example, you may want to run the
analyzer on a machine which appears to be unhealthy according to the displayed
[sensor health
status](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/fix-unhealthy-sensors)
(Inactive, No Sensor Data or Impaired Communication issues) in the security
portal.

Besides obvious sensor health issues, MDECA can collect additional traces, logs,
and diagnostics information for troubleshooting of more complex scenarios such
as:  
application compatiblity (AppCompat), performance, network connectivity, or
unexpected behavior related to [Endpoint Data Loss
Prevention](https://docs.microsoft.com/microsoft-365/compliance/endpoint-dlp-learn-about?view=o365-worldwide).

## Privacy notice


-   The Microsoft Defender for Endpoint Client Analyzer tool is regularly used
    by Microsoft Customer Support Services (CSS) to collect information that
    will help troubleshoot issues you may be experiencing with Microsoft
    Defender for Endpoint.

-   The collected data may contain Personally Identifiable Information (PII)
    and/or sensitive data, such as (but not limited to) IP addresses, PC names,
    and usernames.

-   Once data collection is completed, the tool saves the data locally on the
    machine within a subfolder and compressed zip file.

-   No data is automatically sent to Microsoft. If you are using the tool during
    collaboration on a support issue, you may be asked to send the compressed
    data to Microsoft CSS using Secure File Exchange. 

For more information about Secure File Exchange, see [How to use Secure File Exchange to exchange files with Microsoft Support](https://support.microsoft.com/help/4012140/how-to-use-secure-file-exchange-to-exchange-files-with-microsoft-suppo>)  

For more information about our privacy statement, see [Privacy at Microsoft](https://privacy.microsoft.com/privacy).

## Requirements

-   Before running the analyzer, we recommend ensuring your proxy or firewall
    configuration allows access to [Microsoft Defender for Endpoint service
    URLs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server).

-   The analyzer can run on supported editions of
    [Windows](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#supported-windows-versions),
    [Linux](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#system-requirements),
    or
    [MacOS](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#system-requirements)
    either before of after onboarding to Microsoft Defender for Endpoint.

-   If you are running the analyzer directly on specific machines and not
    remotely via [Live
    Response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-collect-support-log),
    then SysInternals
    [PsExec.exe](https://docs.microsoft.com/sysinternals/downloads/psexec)
    should be allowed to run.  
    The analyzer calls into PsExec.exe tool to run cloud connectivity checks as
    Local System and emulate the behavior of the actual EDR sensor.

    > [!NOTE]
    > If you use Attack Surface Reduction (ASR) rule [Block process creations
    originating from PSExec and WMI
    commands](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-process-creations-originating-from-psexec-and-wmi-commands),
    then you should temporarily disable the rule or [configure an exclusion to
    the ASR
    rule](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/enable-attack-surface-reduction#exclude-files-and-folders-from-asr-rules)
    to allow the analyzer to run connectivity checks to cloud as expected.
