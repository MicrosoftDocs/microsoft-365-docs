---  
title: "Microsoft Defender Endpoint for SAP Applications on Windows Server"  
description: Understand how Microsoft Defender for Endpoint with EDR and other advanced security capabilities interacts with SAP applications.
author: denisebmsft
ms.author: deniseb  
manager: dansimp
ms.date: 04/04/2024
ms.topic: overview
ms.service: defender-endpoint  
ms.subservice: linux  
ms.localizationpriority: normal
ms.collection:  
ms.custom: 
- QuickDraft  
- partner-contribution
ms.reviewer: cgardin; deniseb; siosulli; shlomiakirav  
search.appverid: MET150  
f1.keywords: NOCSH 
audience: ITPro
ai-usage:  
- ai-assisted  
---  

Customer Intent for this Article: 
Article:
\`\`\`html

# Microsoft Defender for Endpoint on Linux and SAP Support

As an admin, it's essential to understand the compatibility and support between Microsoft Defender for Endpoint on Linux with EDR and SAP applications. This article will help you understand the support provided by SAP for advanced threat protection (ATP) security solutions like Microsoft Defender for Endpoint with EDR and how it interacts with SAP applications.

## SAP Support for Conventional Antivirus Solutions

SAP provides basic documentation for conventional file scan antivirus solutions. These solutions compare file signatures against a database of known threats and alert or quarantine infected files. SAP can offer a basic level of support for their applications interacting with conventional file scan antivirus software, as their mechanisms and behavior are well known and predictable.

## Advanced Threat Protection (ATP) Security Solutions

Traditional antivirus security solutions are not sufficient to stop modern threats such as fileless malware, highly polymorphic threats, and human-operated attacks. Artificial intelligence (AI) and machine learning (ML) backed capabilities, like behavioral blocking and containment, are required. Microsoft Defender for Endpoint with EDR offers ATP features to mitigate these modern threats.

## Microsoft Defender for Endpoint EDR and SAP Applications

Defender for Endpoint EDR continuously monitors operating system calls such as file read, file write, and other process-level operations. The EDR sensor acquires Opportunistic Locks on local NTFS file systems, making it unlikely to impact applications. However, Opportunistic Locks are not possible on remote network file systems, and in rare cases, a lock may cause general non-specific errors in SAP applications, such as "Access Denied."

## SAP Support for EDR/XDR Software

SAP is unable to provide support for EDR/XDR software, as their adaptive mechanisms are not predictable or reproducible. If problems arise on systems running advanced security solutions like Defender for Endpoint, SAP recommends disabling the security software and attempting to reproduce the problem. A support case can then be raised with the security software vendor. SAP Support's policy is documented in [3356389 - Antivirus or other security software affecting SAP operations](https://launchpad.support.sap.com/#/notes/3356389).

\`\`\`
Recommendations:
\| SEO Keywords \| Suggested Additions \| Microsoft Articles to Update \| Possible Issues and Concerns \|
\|------------------------------------------\|---------------------\|-------------------------------\|-------------------------------------------\|
\| Microsoft Defender for Endpoint on Linux \| \| \| \|
\| EDR \| \| \| \|
\| SAP Support \| \| \| \|
\| Advanced Threat Protection (ATP) \| \| \| Limited support from SAP for EDR/XDR \|
\| Antivirus Solutions \| \| \| Potential for non-specific errors in SAP \|

------------------------------------------------------------------------

**Acrolinx score**: **82**

**Acrolinx correctness score**: 100

**Acrolinx scorecard** (Acrolinx account required): https://microsoft-ce-csi-qa.acrolinx.cloud/api/v1/checking/scorecards/3e9817e9-35fa-4a47-a78d-b0f9da90f6d9

------------------------------------------------------------------------

**Reviewers**: cgardin; deniseb; siosulli; shlomiakirav

**Key dates**:

------------------------------------------------------------------------

**Audience**: Admin

**Product**: Microsoft Defender for Endpoint on Linux

**Article should cover the following**: Summarize this information:\n\nSAP Support Statement on Microsoft Defender EDR and Other Advanced Threat Protection (ATP) Security Solutions\nSAP provide basic documentation for conventional file scan antivirus solutions. Conventional file scan antivirus solutions compare file signatures against a database of known threats. When an infected file is identified, the antivirus software typically alerts and quarantines the file. The mechanisms and behavior of file scan antivirus solutions are reasonably well known and are predictable, therefore SAP support can provide a basic level of support for SAP applications interacting with file scan antivirus software. \n\nFile based threats are now only one possible vector for malicious software. Fileless malware and that lives off the land, highly polymorphic threats that mutate faster than traditional solutions can keep up with, and human-operated attacks that adapt to what adversaries find on compromised devices. Traditional antivirus security solutions are not sufficient to stop such attacks. Artificial intelligence (AI) and device learning (ML) backed capabilities, such as behavioral blocking and containment are required. Security software such as Defender for Endpoint EDR has advanced threat protection (ATP) features to mitigate modern threats. \nATP security software is continuously monitoring Operating System calls such as file read, file write, create socket and other process level operations. The Defender for Endpoint EDR sensor acquires Opportunistic Locks on local NTFS files systems and is therefore very unlikely to impact applications. Opportunistic locks are not possible on remote network file systems and in rare cases a lock may cause general non-specific errors in SAP applications such as "Access Denied". \n \nSAP is not able to provide any level of support for EDR/XDR software as the mechanisms are adaptive; therefore, the mechanisms are not predictable and potentially are not reproducible. When problems are identified on systems running Advanced Security solutions, SAP recommends disabling the security software and trying to reproduce the problem. A support case can then be raised with the security software vendor. \nSAP Support policy is documented in 3356389 - Antivirus or other security software affecting SAP operations\n\n

**How this article will help customers**: Help customers understand how Defender for Endpoint with EDR and other advanced security capabilities works with SAP.

**Submitted by**: deniseb@microsoft.com

**Spec**: SAP Support Statement on Microsoft Defender EDR and Other Advanced Threat Protection (ATP) Security Solutions\nSAP provide basic documentation for conventional file scan antivirus solutions. Conventional file scan antivirus solutions compare file signatures against a database of known threats. When an infected file is identified, the antivirus software typically alerts and quarantines the file. The mechanisms and behavior of file scan antivirus solutions are reasonably well known and are predictable, therefore SAP support can provide a basic level of support for SAP applications interacting with file scan antivirus software. \n\nFile based threats are now only one possible vector for malicious software. Fileless malware and that lives off the land, highly polymorphic threats that mutate faster than traditional solutions can keep up with, and human-operated attacks that adapt to what adversaries find on compromised devices. Traditional antivirus security solutions are not sufficient to stop such attacks. Artificial intelligence (AI) and device learning (ML) backed capabilities, such as behavioral blocking and containment are required. Security software such as Defender for Endpoint EDR has advanced threat protection (ATP) features to mitigate modern threats. \nATP security software is continuously monitoring Operating System calls such as file read, file write, create socket and other process level operations. The Defender for Endpoint EDR sensor acquires Opportunistic Locks on local NTFS files systems and is therefore very unlikely to impact applications. Opportunistic locks are not possible on remote network file systems and in rare cases a lock may cause general non-specific errors in SAP applications such as "Access Denied". \n \nSAP is not able to provide any level of support for EDR/XDR software as the mechanisms are adaptive; therefore, the mechanisms are not predictable and potentially are not reproducible. When problems are identified on systems running Advanced Security solutions, SAP recommends disabling the security software and trying to reproduce the problem. A support case can then be raised with the security software vendor. \nSAP Support policy is documented in 3356389 - Antivirus or other security software affecting SAP operations\n\n

**Run ID**: 78310884-90bf-427b-b7fe-7bc7f4895766

**Session ID**: 984b6cad-7956-498f-afd6-dd99ebae6645
