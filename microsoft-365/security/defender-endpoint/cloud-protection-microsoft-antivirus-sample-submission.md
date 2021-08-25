---
title: Cloud protection and sample submission in Microsoft Defender Antivirus
description: Learn about cloud-delivered protection and Microsoft Defender Antivirus
keywords: Microsoft Defender Antivirus, next-generation technologies, antivirus sample submission, next-generation av, machine learning, antimalware, security, defender, cloud, cloud-delivered protection
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: jweston-1
ms.author: v-jweston
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.technology: mde
ms.topic: article
ms.date: 08/25/2021
---

# Cloud protection and sample submission in Microsoft Defender Antivirus

Microsoft Defender Antivirus uses many intelligent mechanisms for detecting malware. One of the most powerful capabilities is the ability to apply the power of the cloud to detect malware and perform rapid analysis. Cloud protection and automatic sample submission work together with Microsoft Defender Antivirus on endpoints to help protect against new and emerging threats. If a suspicious or malicious file is detected, a sample is sent to the cloud service for analysis while Microsoft Defender Antivirus blocks the file. As soon as a determination is made, which happens quickly, the file is either released or blocked by Microsoft Defender Antivirus. 

This article provides an overview of cloud protection and automatic sample submission in Microsoft Defender Antivirus. To learn more about cloud protection, see [Cloud protection and Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md).

## Sample submission settings in cloud protection

Cloud protection is enabled by default in Microsoft Defender Antivirus. We recommend that you keep cloud protection enabled. You can configure sample submission settings as follows: 

- **Send safe samples automatically**  (the default behavior)
- **Send all samples automatically**  
- **Do not send samples**  

For information about configuration options using Intune, Configuration Manager, GPO, or PowerShell, see [Turn on cloud protection in Microsoft Defender Antivirus](enable-cloud-protection-microsoft-defender-antivirus.md).

## Customer data, cloud protection, and sample submission

Defender for Endpoint treats all file samples as customer data, honoring both the geographical and data retention choices your organization selected when onboarding to Defender for Endpoint. TO learn more, see [Microsoft Defender for Endpoint data storage and privacy](data-storage-privacy.md#data-storage-location).

Defender for Endpoint has received multiple compliance certifications, demonstrating continued adherence to a sophisticated set of compliance controls:

- ISO 27001
- ISO 27018
- SOC I, II, III
- and PCI

For more information, see the following resources:

- [Azure Compliance Offerings](/azure/storage/common/storage-compliance-offerings) 
- [Service Trust Portal](https://servicetrust.microsoft.com)

## Cloud protection mechanisms

The Microsoft Intelligent Security Graph monitors threat data from a vast network of sensors. Microsoft layers cloud-based machine learning models that can assess files based on signals from the client and the vast network of sensors and data in the Intelligent Security Graph. This model gives Defender for Endpoint the ability to block many never-before seen threats.

*Figure 1. The cloud protection flow*

:::image type="content" source="images/cloud-protection-flow.png" alt-text="Figure 1. Cloud-delivered protection flow":::

Microsoft Defender Antivirus and cloud protection automatically block most new, never-before-seen threats at first sight by using the following methods:

1. Lightweight client-based machine learning models, blocking new and unknown malware.

2. Local behavioral analysis, stopping file-based and file-less attacks.

3. High-precision antivirus, detecting common malware through generic and heuristic techniques.

4. Advanced cloud-based protection is provided for cases when Microsoft Defender Antivirus running on the endpoint needs more intelligence to verify the intent of a suspicious file.

   1. In the event Microsoft Defender Antivirus cannot make a clear determination, file metadata is sent to the cloud protection service. Usually, the cloud protection service can determine whether the file is malicious or not a threat within milliseconds.  
      - The cloud query of file metadata can be a result of behavior, mark of the web, or other characteristics where a clear verdict is not determined.
      - A small metadata payload is sent, with the goal of reaching a verdict of malware or not a threat. The metadata does not include personally identifiable information (PII). Information such as filenames, are hashed.
      - Can be synchronous or asynchronous. For synchronous, the file will not open until the cloud renders a verdict. For asynchronous, the file will open while the cloud performs its analysis.
      - Metadata can include PE attributes, static file attributes, dynamic and contextual attributes, and more (as depicted in figure 2).

      *Figure 2: Examples of metadata sent to Microsoft Defender Antivirus cloud protection*
       :::image type="content" source="images/cloud-protection-metadata-sample.png" alt-text="Figure 2. Examples of metadata sent to Microsoft Defender Cloud Protection":::

   2. After examining the metadata, if Microsoft Defender Antivirus cloud protection cannot reach a conclusive verdict, it can request a sample of the file for further inspection. This request honors the settings configuration for sample submission:

      1. **Send safe samples automatically** (default)
         - Safe samples are samples considered to not commonly contain PII data like: .bat, .scr, .dll, .exe.
         - If file is likely to contain PII, the user will get a request to allow file sample submission.
         - This is the default on Windows, macOS, and Linux.

      2. **Always Prompt**
         - If configured, the user will always be prompted for consent before file submission
         - This setting isn't available in macOS cloud protection

      3. **Send all samples automatically**
         - If configured, all samples will be sent automatically
         - If you would like sample submission to include macros embedded in Word docs, you must choose "Send all samples automatically"
         - This setting isn't available on macOS cloud protection

      4. **Do not send**
         - Prevents "block at first sight" based on file sample analysis
         - "Do not send" is the equivalent to the "Disabled" setting in macOS policy
         - Metadata is sent for detections even when sample submission is disabled

   3. After metadata and/or files are submitted to cloud protection, you can use **samples**, **detonation**, or **big data analysis** machine learning models to reach a verdict. This model is illustrated in figure 3. Turning off cloud-delivered protection will limit analysis to only what the client can provide through local machine learning models, and similar functions.

   *Figure 3. Cloud-delivered protection and layered machine learning*
   :::image type="content" source="images/cloud-protection-detection-layered-machine-learning.png" lightbox="images/cloud-protection-detection-layered-machine-learning.png" alt-text="Figure 3. Cloud-delivered protection and layered machine learning":::

> [!IMPORTANT]
> [Block at first sight (BAFS)](configure-block-at-first-sight-microsoft-defender-antivirus.md) provides detonation and analysis to determine whether a file or process is safe. BAFS can delay the opening of a file momentarily until a verdict is reached. If you disable sample submission, BAFS is also disabled, and file analysis is limited to metadata only. We recommend keeping sample submission and BAFS enabled. To learn more, see [What is "block at first sight"?](configure-block-at-first-sight-microsoft-defender-antivirus.md#what-is-block-at-first-sight).

## Cloud protection levels

Malware detection requires striking a balance between providing the strongest possible protection, while minimizing the number of false positives. Different environments may have tolerance for protection versus risk of false positive. Cloud-delivered protection levels allow the customer to define the tolerance level appropriate for the specific environment. When you enable Cloud Delivered Protection, the protection level is automatically configured to provide strong detection without increasing the risk of detecting legitimate files. If you want to configure a different protection level, see [Specify the cloud-delivered protection level for Microsoft Defender Antivirus](specify-cloud-protection-level-microsoft-defender-antivirus.md).

> [!Note]
> Changing the protection level can result in a higher level of false positives and should be carefully evaluated before changing.

## Other file sample submission scenarios

There are two more scenarios where Defender for Endpoint might request a file sample that is not related to the cloud protection in Microsoft Defender Antivirus. These scenarios include:

- Manual file sample submission
- Content analysis during automated investigations  

### Manual file sample collection in the Microsoft 365 Defender portal

When onboarding devices to Defender for Endpoint, you can configure settings for [endpoint detection and response (EDR)](overview-endpoint-detection-response.md). For example, there is a setting to enable sample collections from the device, which can easily be confused with the sample submission settings described in this article. The EDR setting controls file sample collection from devices when requested through the Microsoft 365 Defender portal, and is subject to the roles and permissions already established. This setting can allow or block file collection from the endpoint for features such as deep analysis in the Microsoft 365 Defender portal. If this setting is not configured, the default is to enable sample collection.

Learn about Defender for Endpoint configuration settings, see: [Onboarding tools and methods for Windows 10 devices in Defender for Endpoint](configure-endpoints.md)

### Automated investigation and response content analysis

When [automated investigations](automated-investigations.md) are running on devices (when configured to run automatically in response to an alert or manually run), files that are identified as suspicious can be collected from the endpoints for further inspection. If necessary, the file content analysis feature for automated investigations can be disabled in the Microsoft 365 Defender portal. The file extension names can also be modified to add or remove extensions for other file types that will be automatically submitted during an automated investigation.

To learn more, see [Manage automation file uploads](manage-automation-file-uploads.md).
