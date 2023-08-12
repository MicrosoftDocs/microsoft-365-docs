---
title: Cloud protection and sample submission at Microsoft Defender Antivirus
description: Learn about cloud-delivered protection and Microsoft Defender Antivirus
keywords: Microsoft Defender Antivirus, next-generation technologies, antivirus sample submission, next-generation av, machine learning, antimalware, security, defender, cloud, cloud-delivered protection
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.topic: conceptual
ms.date: 02/24/2022
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Cloud protection and sample submission at Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Microsoft Defender Antivirus uses many intelligent mechanisms for detecting malware. One of the most powerful capabilities is the ability to apply the power of the cloud to detect malware and perform rapid analysis. Cloud protection and automatic sample submission work together with Microsoft Defender Antivirus to help protect against new and emerging threats. 

If a suspicious or malicious file is detected, a sample is sent to the cloud service for analysis while Microsoft Defender Antivirus blocks the file. As soon as a determination is made, which happens quickly, the file is either released or blocked by Microsoft Defender Antivirus. 

This article provides an overview of cloud protection and automatic sample submission at Microsoft Defender Antivirus. To learn more about cloud protection, see [Cloud protection and Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md).

## How cloud protection and sample submission work together

To understand how cloud protection works together with sample submission, it can be helpful to understand how Defender for Endpoint protects against threats. The Microsoft Intelligent Security Graph monitors threat data from a vast network of sensors. Microsoft layers cloud-based machine-learning models that can assess files based on signals from the client and the vast network of sensors and data in the Intelligent Security Graph. This approach gives Defender for Endpoint the ability to block many never-before-seen threats. 

The following image depicts the flow of cloud protection and sample submission with Microsoft Defender Antivirus:

:::image type="content" source="images/cloud-protection-flow.png" alt-text="Cloud-delivered protection flow" lightbox="images/cloud-protection-flow.png":::

Microsoft Defender Antivirus and cloud protection automatically block most new, never-before-seen threats at first sight by using the following methods:

1. Lightweight client-based machine-learning models, blocking new and unknown malware.

2. Local behavioral analysis, stopping file-based and file-less attacks.

3. High-precision antivirus, detecting common malware through generic and heuristic techniques.

4. Advanced cloud-based protection is provided for cases when Microsoft Defender Antivirus running on the endpoint needs more intelligence to verify the intent of a suspicious file.

   1. In the event Microsoft Defender Antivirus can't make a clear determination, file metadata is sent to the cloud protection service. Often within milliseconds, the cloud protection service can determine based on the metadata as to whether the file is malicious or not a threat.  

      - The cloud query of file metadata can be a result of behavior, mark of the web, or other characteristics where a clear verdict isn't determined.
      - A small metadata payload is sent, with the goal of reaching a verdict of malware or not a threat. The metadata doesn't include personally identifiable information (PII). Information such as filenames, are hashed.
      - Can be synchronous or asynchronous. For synchronous, the file won't open until the cloud renders a verdict. For asynchronous, the file opens while cloud protection performs its analysis.
      - Metadata can include PE attributes, static file attributes, dynamic and contextual attributes, and more (see [Examples of metadata sent to the cloud protection service](#examples-of-metadata-sent-to-the-cloud-protection-service)).

   2. After examining the metadata, if Microsoft Defender Antivirus cloud protection can't reach a conclusive verdict, it can request a sample of the file for further inspection. This request honors the settings configuration for sample submission:

      1. **Send safe samples automatically** 
         - Safe samples are samples considered to not commonly contain PII data like: .bat, .scr, .dll, .exe.
         - If file is likely to contain PII, the user gets a request to allow file sample submission.
         - This option is the default on Windows, macOS, and Linux.

      2. **Always Prompt**
         - If configured, the user is always prompted for consent before file submission
         - This setting isn't available in macOS cloud protection

      3. **Send all samples automatically**
         - If configured, all samples are sent automatically
         - If you would like sample submission to include macros embedded in Word docs, you must choose "Send all samples automatically"
         - This setting isn't available on macOS cloud protection

      4. **Do not send**
         - Prevents "block at first sight" based on file sample analysis
         - "Don't send" is the equivalent to the "Disabled" setting in macOS policy
         - Metadata is sent for detections even when sample submission is disabled

   3. After metadata and/or files are submitted to cloud protection, you can use **samples**, **detonation**, or **big data analysis** machine-learning models to reach a verdict. Turning off cloud-delivered protection limits analysis to only what the client can provide through local machine-learning models, and similar functions.

> [!IMPORTANT]
> [Block at first sight (BAFS)](configure-block-at-first-sight-microsoft-defender-antivirus.md) provides detonation and analysis to determine whether a file or process is safe. BAFS can delay the opening of a file momentarily until a verdict is reached. If you disable sample submission, BAFS is also disabled, and file analysis is limited to metadata only. We recommend keeping sample submission and BAFS enabled. To learn more, see [What is "block at first sight"?](configure-block-at-first-sight-microsoft-defender-antivirus.md#what-is-block-at-first-sight)

## Cloud protection levels

Cloud protection is enabled by default at Microsoft Defender Antivirus. We recommend that you keep cloud protection enabled, although you can configure the protection level for your organization. See [Specify the cloud-delivered protection level for Microsoft Defender Antivirus](specify-cloud-protection-level-microsoft-defender-antivirus.md).

## Sample submission settings

In addition to configuring your cloud protection level, you can configure your sample submission settings. You can choose from several options:

- **Send safe samples automatically**  (the default behavior)
- **Send all samples automatically**  
- **Do not send samples**  

For information about configuration options using Intune, Configuration Manager, GPO, or PowerShell, see [Turn on cloud protection at Microsoft Defender Antivirus](enable-cloud-protection-microsoft-defender-antivirus.md).

## Examples of metadata sent to the cloud protection service

:::image type="content" source="images/cloud-protection-metadata-sample.png" alt-text="The examples of metadata sent to cloud protection in the Microsoft Defender Antivirus portal" lightbox="images/cloud-protection-metadata-sample.png":::

The following table lists examples of metadata sent for analysis by cloud protection:

| Type | Attribute |
|:---|:---|
| Machine attributes | `OS version` <br/> `Processor` <br/> `Security settings` |
| Dynamic and contextual attributes | **Process and installation** <br/> `ProcessName` <br/> `ParentProcess` <br/> `TriggeringSignature` <br/> `TriggeringFile` <br/> `Download IP and url` <br/> `HashedFullPath` <br/> `Vpath` <br/> `RealPath` <br/> `Parent/child relationships` <br/><br/>**Behavioral** <br/> `Connection IPs` <br/> `System changes` <br/> `API calls` <br/> `Process injection` <br/><br/>**Locale** <br/> `Locale setting` <br/> `Geographical location` |
| Static file attributes | **Partial and full hashes** <br/> `ClusterHash` <br/> `Crc16` <br/> `Ctph` <br/> `ExtendedKcrcs` <br/> `ImpHash` <br/> `Kcrc3n` <br/> `Lshash` <br/> `LsHashs` <br/> `PartialCrc1` <br/> `PartialCrc2` <br/> `PartialCrc3` <br/> `Sha1` <br/> `Sha256` <br/><br/>**File properties** <br/>`FileName` <br/> `FileSize` <br/><br/> **Signer information** <br/> `AuthentiCodeHash` <br/> `Issuer` <br/> `IssuerHash` <br/> `Publisher` <br/> `Signer` <br/> `SignerHash` |

## Samples are treated as customer data

Just in case you're wondering what happens with sample submissions, Defender for Endpoint treats all file samples as customer data. Microsoft honors both the geographical and data retention choices your organization selected when onboarding to Defender for Endpoint. 

In addition, Defender for Endpoint has received multiple compliance certifications, demonstrating continued adherence to a sophisticated set of compliance controls:

- ISO 27001
- ISO 27018
- SOC I, II, III
- PCI

For more information, see the following resources:

- [Azure Compliance Offerings](/azure/storage/common/storage-compliance-offerings) 
- [Service Trust Portal](https://servicetrust.microsoft.com)
- [Microsoft Defender for Endpoint data storage and privacy](data-storage-privacy.md#data-storage-location)

## Other file sample submission scenarios

There are two more scenarios where Defender for Endpoint might request a file sample that isn't related to the cloud protection at Microsoft Defender Antivirus. These scenarios are described in the following table:

| Scenario | Description |
|:---|:---|
|Manual file sample collection in the Microsoft 365 Defender portal | When onboarding devices to Defender for Endpoint, you can configure settings for [endpoint detection and response (EDR)](overview-endpoint-detection-response.md). For example, there's a setting to enable sample collections from the device, which can easily be confused with the sample submission settings described in this article. <br/><br/>The EDR setting controls file sample collection from devices when requested through the Microsoft 365 Defender portal, and is subject to the roles and permissions already established. This setting can allow or block file collection from the endpoint for features such as deep analysis in the Microsoft 365 Defender portal. If this setting isn't configured, the default is to enable sample collection. <br/><br/>Learn about Defender for Endpoint configuration settings, see: [Onboarding tools and methods for Windows 10 devices in Defender for Endpoint](configure-endpoints.md) |
| Automated investigation and response content analysis | When [automated investigations](automated-investigations.md) are running on devices (when configured to run automatically in response to an alert or manually run), files that are identified as suspicious can be collected from the endpoints for further inspection. If necessary, the file content analysis feature for automated investigations can be disabled in the Microsoft 365 Defender portal. <br/><br/> The file extension names can also be modified to add or remove extensions for other file types that will be automatically submitted during an automated investigation. <br/><br/> To learn more, see [Manage automation file uploads](manage-automation-file-uploads.md). |

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

[Next-generation protection overview](next-generation-protection.md)

[Configure remediation for Microsoft Defender Antivirus detections.](configure-remediation-microsoft-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
