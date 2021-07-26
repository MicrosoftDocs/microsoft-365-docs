---
title: Cloud-delivered protection Microsoft Defender Antivirus sample submission
description: Learn about cloud-delivered protection and Microsoft Defender Antivirus
keywords: Microsoft Defender Antivirus, next-generation technologies, antivirus sample submission, next-generation av, machine learning, antimalware, security, defender, cloud, cloud-delivered protection
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: jweston-1
ms.author: v-jweston
ms.reviewer: shwjha
manager: dansimp
ms.custom: nextgen
ms.technology: mde
ms.topic: article
ms.date: 07/22/2021
---

# Cloud-delivered protection antivirus sample submission

Microsoft Defender for Endpoint Antivirus (Defender for Endpoint antivirus) uses many intelligent mechanisms for detecting malware. One of the most powerful capabilities is the ability to apply the power of the cloud to detect malware. Defender for Endpoint antivirus Cloud Protection works with Defender for Endpoint antivirus on the endpoint to make decisions and protect endpoints from new and emerging threats.

## Microsoft Defender for Endpoint Antivirus cloud protection overview

Cloud protection is enabled by default in Defender for Endpoint Antivirus. It is recommended that customers do not disable Cloud protection in Defender for Endpoint Antivirus.  When cloud protection is enabled, you have the option of configuring what information Defender for Endpoint antivirus will provide to the cloud (including sample submission). Cloud-protection-enabled is useful when a high-confidence determination cannot be made based on other characteristics.
Configuring Sample Submission raises questions about how it works; for example, how the data is stored and used. The three cloud protection sample submission options that raise the most questions are:

- “Send safe samples automatically,”  (the default behavior)
- “Send all samples automatically,”  
- “Do not send samples.”  

For information about configuration options using Intune, Configuration Manager, GPO, or PowerShell, see [Turn on cloud-delivered protection in Microsoft Defender Antivirus](/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus).  

## Customer data, cloud protection, and sample submission

When onboarding to Defender for Endpoint, Defender for Endpoint treats all file samples as customer data, honoring both the geo and data retention choices the customer selected. Geo and data retention choices are described here: [Microsoft Defender for Endpoint data storage and privacy](/security/defender-endpoint/data-storage-privacy#data-storage-location).
The product has received multiple compliance certifications, demonstrating continued adherence to a sophisticated set of compliance controls:

- ISO 27001
- ISO 27018
- SOC I, II, III
- and PCI

[Azure Compliance Offerings](https://docs.microsoft.com/azure/compliance/#compliance-offerings) provides more information on these certifications. All certification artifacts for Microsoft Defender for Endpoint can be found on Microsoft’s [Service Trust Portal](https://servicetrust.microsoft.com/) within each of the associated Azure Certification Reports.

## Cloud Protection Mechanisms

The Microsoft Intelligent Security Graph monitors threat data from a vast network of sensors. We layer cloud-based machine learning models that can make an assessment based on signals from the client and the vast network of sensors and data in the Intelligent Security Graph. This model gives Defender for Endpoint the ability to block many never-before seen threats.

Defender for Endpoint antivirus and cloud protection automatically blocks most new, never-before-seen threats at first sight using the following methods:

1. Lightweight client-based machine learning models, blocking new and unknown malware
2. Local behavioral analysis, stopping file-based and file-less attacks
3. High-precision antivirus, detecting common malware through generic and heuristic techniques
4. Advanced cloud-based protection is provided for cases when Defender for Endpoint antivirus running on the endpoint needs more intelligence to verify the intent of a suspicious file.
   1. In the event Microsoft Defender for Endpoint antivirus cannot make a clear determination, file metadata is sent to the cloud protection service. Usually, the cloud protection service can determine whether the file is safe or malicious, within milliseconds.  
      - The cloud query of file metadata can be a result of behavior, mark of the web, or other characteristics where a clear verdict is not determined.
      - A small metadata payload is sent, with the goal of reaching a clean vs malware verdict
      - Metadata can include PE attributes, static file attributes, dynamic and contextual attributes, and more (Figure 1).
      - Does not include personally identifiable information (PII). Information such as filenames, are hashed
      - Can be synchronous or asynchronous. For synchronous, the file will not open until the cloud renders a verdict. For asynchronous, the file will open while the cloud performs its analysis.
   2. After examining the metadata, if Defender for Endpoint antivirus cloud protection cannot reach a conclusive verdict, it can request a sample of the file for further inspection. This request honors the settings configuration for sample submission:
      1. **Send safe samples automatically** (default)
         - Safe samples are samples considered to not commonly contain PII data like: .bat, .scr, .dll, .exe.
         - If file is likely to contain PII, the user will get a request to allow file sample submission.
         - This is the default on Windows, MacOS and Linux.
      2. **Always Prompt**
         - If configured, the user will always be prompted for consent before file submission
         - This setting isn't available in MacOS cloud protection
      3. **Send all samples automatically**
         - If configured, all samples will be sent automatically
         - If you would like sample submission to include macros embedded in Word docs, you must choose “Send all samples automatically”  
         - This setting isn't available on MacOS cloud protection
      4. **Do not send**
         - Prevents “block at first sight” based on file sample analysis
         - "Do not send" is the equivalent to the “Disabled” setting in MacOS policy
         - Metadata is sent for detections even when sample submission is disabled
   3. After metadata and/or files are submitted to the Defender for Endpoint cloud, you can use **samples**, **detonation**, or **big data analysis** machine learning models to reach a verdict. This model is illustrated in Figure 3. Turning off Cloud-delivered Protection will limit analysis to only what the client can provide through local machine learning models, and similar functions.

Figure 1  - Examples of Metadata Sent to Microsoft Defender Cloud Protection

:::image type="content" source="images/cloud-protection-metadata-sample.png" alt-text="Figure 1. Examples of metadata sent to Microsoft Defender Cloud Protection":::

:::image type="content" source="images/cloud-protection-flow.png" alt-text="Figure 2. Cloud-delivered protection flow":::

:::image type="content" source="images/cloud-protection-detection-layered-machine-learning.png" alt-text="Figure 3. Cloud-delivered protection and layered machine learning":::

> [!Note]
>
> You may also have heard the phrase “Block at first sight (BAFS).” BAFS” refers to the more extensive analysis that the cloud can provide, including things like detonation to provide a more accurate verdict. This can also include delaying the opening of a file that is under interrogation by cloud protection until a verdict is reached. If you disable “Sample Submission,” BAFS is disabled, and you cannot do the more extensive analysis and are limited to analyzing file metadata only.

## Cloud Delivered Protection Levels

Malware detection requires striking a balance between providing the strongest possible protection, while minimizing the number of false positives. Different environments may have tolerance for protection versus risk of false positive. Cloud-delivered protection levels allow the customer to define the tolerance level appropriate for the specific environment. When you enable Cloud Delivered Protection, the protection level is automatically configured to provide strong detection without increasing the risk of detecting legitimate files. If you want to configure a different protection level, see [Specify the cloud-delivered protection level for Microsoft Defender Antivirus - Windows security](/security/threat-protection/microsoft-defender-antivirus/specify-cloud-protection-level-microsoft-defender-antivirus).  

> [!Note]
>
> Changing the protection level can result in a higher level of false positives and should be carefully evaluated before changing.

## Other File Sample Submission Scenarios

There are two more scenarios where Defender for Endpoint may request a file sample not related to the cloud protection settings discussed above.  

### Manual File Sample Collection by Security Admin from Defender for Endpoint Management Portal

When onboarding devices to Microsoft Defender for Endpoint EDR there is a setting to enable sample collections from the device, which can be confused with the settings discussed above. This setting controls file sample collection from devices when requested through the Defender for Endpoint administrative portal; it is subject to the roles and permissions already established. This setting can allow or block file collection from the endpoint for features such as deep analysis in the Defender for Endpoint portal. If this setting is not configured, the default is to enable sample collection.

[Additional Defender for Endpoint Configuration Settings](/configure-endpoints#additional-defender-for-endpoint-configuration-settings)

### Automated Investigation and Response Content Analysis

When Automated Investigations are running on devices (when configured to run automatically in response to an alert or manually run), files that are identified as suspicious can be collected from the endpoints for further inspection. The file content analysis feature for Automated Investigations can be disabled in the Defender for Endpoint portal. The file extension names can also be modified to add or remove extensions for other file types that will be automatically submitted during an automated investigation.

[Manage automation file uploads](/manage-automation-file-uploads)
