---  
title: "Microsoft Defender Endpoint on Windows Server with SAP"  
description: Understand how Microsoft Defender for Endpoint with EDR and other advanced security capabilities interacts with SAP applications.
author: denisebmsft
ms.author: deniseb  
manager: dansimp
ms.date: 04/16/2024
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
---  

# Microsoft Defender for Endpoint on Windows Server with SAP

If your organization uses SAP, it's essential to understand the compatibility and support between Microsoft Defender for Endpoint on Windows Server with EDR and SAP applications. This article helps you understand the support provided by SAP for endpoint protection security solutions like Defender for Endpoint with EDR and how it interacts with SAP applications.

This documentation applies to Microsoft Defender for Endpoint running on Windows Server OS Releases with SAP applications such, as NetWeaver, S4 Hana, and SAP standalone engines, such as LiveCache. This documentation does not cover SAP client software, such as SAPGUI or Microsoft Defender Antivirus on Windows client devices.

## Enterprise security and your SAP Basis team

Enterprise Security is a specialist role and the activities described below should be planned as a joint activity between the Enterprise Security Team and the SAP Basis Team. The Enterprise Security Team will need to coordinate with the SAP Basis Team and jointly design the Defender for Endpoint configuration and analyze any exclusions.  

### Get an overview of Defender for Endpoint

Defender for Endpoint is a component of [Microsoft Defender XDR](/microsoft-365/security/defender/), and can be integrated with your SIEM/SOAR solution. 

Before you begin to plan or deploy Defender for Endpoint on Windows Server with SAP, take a moment to get an overview. Watch the following video to learn more about Defender for Endpoint:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4wDob]

Also, see the following resources for more detailed information:

- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Security documentation and training - Security documentation](/security/)

The Microsoft Defender XDR solution incorporates many security components that are beyond the scope of this article. In this article, we focus on two main areas of Defender for Endpoint:

- Next-generation protection (which includes antivirus protection). Next-generation protection is an antivirus product like other antivirus solutions for Windows environments.
- Endpoint Detection and Response (EDR). EDR detects suspicious activity and system calls and provides an additional layer of protection against threats that have bypassed antivirus protection. 

Microsoft and other security software vendors track threats and provide trend information. For information, see [Cyberthreats, viruses, and malware - Microsoft Security Intelligence](https://www.microsoft.com/en-us/wdsi/threats). 


> [!NOTE]
> For information on Microsoft Defender for SAP on Linux, see [Deployment guidance for Microsoft Defender for Endpoint on Linux for SAP](/microsoft-365/security/defender-endpoint/mde-linux-deployment-on-sap). Defender for Endpoint on Linux is significantly different than the Windows version. 

## SAP support for conventional antivirus solutions

SAP provides basic documentation for conventional file scan antivirus solutions. These solutions compare file signatures against a database of known threats and alert or quarantine infected files. SAP can offer a basic level of support for their applications interacting with conventional file scan antivirus software, as their mechanisms and behaviors are well known and predictable.

## Endpoint protection security solutions

Traditional antivirus security solutions aren't sufficient to stop modern threats such as fileless malware, highly polymorphic threats, and human-operated attacks. Artificial intelligence (AI) and machine learning (ML) backed capabilities, like behavioral blocking and containment, are required. Microsoft Defender for Endpoint with EDR offers ATP features to mitigate these modern threats.

## Microsoft Defender for Endpoint EDR and SAP Applications

Defender for Endpoint EDR continuously monitors operating system calls such as file read, file write, and other process-level operations. The EDR sensor acquires Opportunistic Locks on local NTFS file systems, making it unlikely to impact applications. However, Opportunistic Locks aren't possible on remote network file systems, and in rare cases, a lock can cause general nonspecific errors in SAP applications, such as "Access Denied."

## SAP support for EDR/XDR software

SAP is unable to provide support for EDR/XDR software, as their adaptive mechanisms aren't predictable or reproducible. If problems arise on systems running advanced security solutions like Defender for Endpoint, SAP recommends disabling the security software and attempting to reproduce the problem. A support case can then be raised with the security software vendor. SAP Support's policy is documented in [3356389 - Antivirus or other security software affecting SAP operations](https://launchpad.support.sap.com/#/notes/3356389).

## Additional SAP resources

If you have an SAP account, you can access the following resources:

- [106267 - Virus scanner software on Windows - SAP for Me](https://me.sap.com/notes/106267) 
- [690449 - Transport buffer lock file (.LOB) remains blocked on Windows - SAP for Me](https://me.sap.com/notes/690449) 
- [1497394 - Which files and directories should be excluded from an antivirus scan for SAP BusinessObjects Business Intelligence Platform products in Windows? - SAP for Me](https://me.sap.com/notes/1497394/E) 
- [1600271 - What are the required/recommended Antivirus exceptions for BPC? - BPC MS - SAP for Me](https://me.sap.com/notes/1600271/E) 
- [1730930 - Using antivirus software in an SAP HANA appliance - SAP for Me](https://me.sap.com/notes/1730930/E) 
- [1984459 - Which files and directories should be excluded from an antivirus scan for SAP Data Services - SAP for Me](https://me.sap.com/notes/1984459/E) 
- [2055193 - SUM file access denied due to antivirus - SAP for Me](https://me.sap.com/notes/2055193/E) 
- [2088726 - Antivirus Software Causing Issues with Application Functionality - Platform - SAP for Me](https://me.sap.com/notes/2088726/E) 
- [2311946 - Filesystem errors on Windows - SAP for Me](https://me.sap.com/notes/2311946) 
- [2496239 - Ransomware / malware on Windows - SAP for Me](https://me.sap.com/notes/2496239) 
- [2543437 - 5 second delay in Enqueue requests with Antivirus software on Windows - SAP for Me](https://me.sap.com/notes/2543437/E) 
- [3049164 - Using antivirus software with SAP HANA STUDIO - SAP for Me](https://me.sap.com/notes/3049164/E) 
- [3158904 - Does Object Store Service on SAP BTP support Antivirus scanning - SAP for Me](https://me.sap.com/notes/3158904/E) 
- [3186509 - How can I enable antivirus scanning for uploaded files? - SAP for Me](https://me.sap.com/notes/3186509/E) 
- [3315834 - Antivirus is reporting that files under \usr\sap\<SID>\<instance name>\data\cache are a malware - SAP for Me](https://me.sap.com/notes/3315834/E) 
- [3356389 - Antivirus or other security software affecting SAP operations - SAP for Me](https://me.sap.com/notes/3356389)
