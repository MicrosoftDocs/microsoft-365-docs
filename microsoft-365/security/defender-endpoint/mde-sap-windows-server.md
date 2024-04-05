---  
title: "Microsoft Defender Endpoint on Windows Server with SAP"  
description: Understand how Microsoft Defender for Endpoint with EDR and other advanced security capabilities interacts with SAP applications.
author: denisebmsft
ms.author: deniseb  
manager: dansimp
ms.date: 04/04/2024
ms.topic: overview
ms.service: defender-endpoint  
ms.subservice: ngp
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

# Microsoft Defender for Endpoint on Windows Server with SAP

As an admin, it's essential to understand the compatibility and support between Microsoft Defender for Endpoint on Windows Server with EDR and SAP applications. This article helps you understand the support provided by SAP for endpoint protection security solutions like Microsoft Defender for Endpoint with EDR and how it interacts with SAP applications.

## SAP Support for conventional antivirus solutions

SAP provides basic documentation for conventional file scan antivirus solutions. These solutions compare file signatures against a database of known threats and alert or quarantine infected files. SAP can offer a basic level of support for their applications interacting with conventional file scan antivirus software, as their mechanisms and behavior are well known and predictable.

## Endpoint protection security solutions

Traditional antivirus security solutions aren't sufficient to stop modern threats such as fileless malware, highly polymorphic threats, and human-operated attacks. Artificial intelligence (AI) and machine learning (ML) backed capabilities, like behavioral blocking and containment, are required. Microsoft Defender for Endpoint with EDR offers ATP features to mitigate these modern threats.

## Microsoft Defender for Endpoint EDR and SAP Applications

Defender for Endpoint EDR continuously monitors operating system calls such as file read, file write, and other process-level operations. The EDR sensor acquires Opportunistic Locks on local NTFS file systems, making it unlikely to impact applications. However, Opportunistic Locks aren't possible on remote network file systems, and in rare cases, a lock can cause general nonspecific errors in SAP applications, such as "Access Denied."

## SAP support for EDR/XDR software

SAP is unable to provide support for EDR/XDR software, as their adaptive mechanisms aren't predictable or reproducible. If problems arise on systems running advanced security solutions like Defender for Endpoint, SAP recommends disabling the security software and attempting to reproduce the problem. A support case can then be raised with the security software vendor. SAP Support's policy is documented in [3356389 - Antivirus or other security software affecting SAP operations](https://launchpad.support.sap.com/#/notes/3356389).

## Additional SAP resources

- [3356389 - Antivirus or other security software affecting SAP operations - SAP for Me](https://me.sap.com/notes/3356389)

- [106267 - Virus scanner software on Windows - SAP for Me](https://me.sap.com/notes/106267)

- [690449 - Transport buffer lock file (.LOB) remains blocked on Windows - SAP for Me](https://me.sap.com/notes/690449)

- [2311946 - Filesystem errors on Windows - SAP for Me](https://me.sap.com/notes/2311946)

- [2496239 - Ransomware / malware on Windows - SAP for Me](https://me.sap.com/notes/2496239)

- [1497394 - Which files and directories should be excluded from an antivirus scan for SAP BusinessObjects Business Intelligence Platform products in Windows? - SAP for Me](https://me.sap.com/notes/1497394/E)

- [1984459 - Which files and directories should be excluded from an antivirus scan for SAP Data Services - SAP for Me](https://me.sap.com/notes/1984459/E)

- [2055193 - SUM file access denied due to antivirus - SAP for Me](https://me.sap.com/notes/2055193/E)

- [3049164 - Using antivirus software with SAP HANA STUDIO - SAP for Me](https://me.sap.com/notes/3049164/E)

- [3186509 - How can I enable antivirus scanning for uploaded files? - SAP for Me](https://me.sap.com/notes/3186509/E)

- [1730930 - Using antivirus software in an SAP HANA appliance - SAP for Me](https://me.sap.com/notes/1730930/E)

- [106267 - Virus scanner software on Windows - SAP for Me](https://me.sap.com/notes/106267/E)

- [1730997 - Unrecommended versions of antivirus software - SAP for Me](https://me.sap.com/notes/1730997/E)

- [2543437 - 5 second delay in Enqueue requests with Antivirus software on Windows - SAP for Me](https://me.sap.com/notes/2543437/E)

- [2088726 - Antivirus Software Causing Issues with Application Functionality - Platform - SAP for Me](https://me.sap.com/notes/2088726/E)

- [1600271 - What are the required/recommended Antivirus exceptions for BPC? - BPC MS - SAP for Me](https://me.sap.com/notes/1600271/E)

- [3315834 - Antivirus is reporting that files under \usr\sap\<SID>\<instance name>\data\cache are a malware - SAP for Me](https://me.sap.com/notes/3315834/E)

- [3158904 - Does Object Store Service on SAP BTP support Antivirus scanning - SAP for Me](https://me.sap.com/notes/3158904/E)

