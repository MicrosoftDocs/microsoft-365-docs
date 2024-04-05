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

# Microsoft Defender for Endpoint on Linux and SAP Support

As an admin, it's essential to understand the compatibility and support between Microsoft Defender for Endpoint on Linux with EDR and SAP applications. This article helps you understand the support provided by SAP for endpoint protection security solutions like Microsoft Defender for Endpoint with EDR and how it interacts with SAP applications.

## SAP Support for Conventional Antivirus Solutions

SAP provides basic documentation for conventional file scan antivirus solutions. These solutions compare file signatures against a database of known threats and alert or quarantine infected files. SAP can offer a basic level of support for their applications interacting with conventional file scan antivirus software, as their mechanisms and behavior are well known and predictable.

## Endpoint protection Security Solutions

Traditional antivirus security solutions aren't sufficient to stop modern threats such as fileless malware, highly polymorphic threats, and human-operated attacks. Artificial intelligence (AI) and machine learning (ML) backed capabilities, like behavioral blocking and containment, are required. Microsoft Defender for Endpoint with EDR offers ATP features to mitigate these modern threats.

## Microsoft Defender for Endpoint EDR and SAP Applications

Defender for Endpoint EDR continuously monitors operating system calls such as file read, file write, and other process-level operations. The EDR sensor acquires Opportunistic Locks on local NTFS file systems, making it unlikely to impact applications. However, Opportunistic Locks aren't possible on remote network file systems, and in rare cases, a lock can cause general nonspecific errors in SAP applications, such as "Access Denied."

## SAP Support for EDR/XDR Software

SAP is unable to provide support for EDR/XDR software, as their adaptive mechanisms aren't predictable or reproducible. If problems arise on systems running advanced security solutions like Defender for Endpoint, SAP recommends disabling the security software and attempting to reproduce the problem. A support case can then be raised with the security software vendor. SAP Support's policy is documented in [3356389 - Antivirus or other security software affecting SAP operations](https://launchpad.support.sap.com/#/notes/3356389).

