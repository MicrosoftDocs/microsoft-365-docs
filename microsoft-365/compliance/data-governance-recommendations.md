---
title: "How content is identified for data-governance recommendations"
f1.keywords:
- NOCSH
ms.author: brendonb
author: cabailey
manager: laurawi
ms.date: 1/15/2019
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.collection:
- SPO_Content
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "The Microsoft 365 security center and Microsoft 365 compliance center provide recommendations for data governance based on your org's current setup and lets you set things up in a couple clicks. Some of these recommendations detect specific content in your organization and then provide recommended steps for managing that content. For example, a recommendation might detect items that contain business-critical content (such as attorney-client privilege or NDA info), and then let you automatically apply a retention label to those items to ensure that they're classified and retained as needed. This topic lists the data-governance recommendations you might see and describes what content is detected to trigger each one."
---

# How content is identified for data-governance recommendations

The Microsoft 365 security center and Microsoft 365 compliance center provide recommendations for data governance based on your org's current setup and lets you set things up in a couple clicks. Some of these recommendations detect specific content in your organization and then provide recommended steps for managing that content. For example, a recommendation might detect items that contain business-critical content (such as attorney-client privilege or NDA info), and then let you automatically apply a retention label to those items to ensure that they're classified and retained as needed.

This topic lists the data-governance recommendations you might see and describes what content is detected to trigger each one.

## Clean up voicemail

This recommendation appears when email messages identified as the message type 'voicemail' are detected in users' mailboxes. Learn more about [message properties in Exchange](/exchange/policy-and-compliance/ediscovery/message-properties-and-search-operators?view=exchserver-2019#searchable-properties-in-exchange).

## Label attorney-client privilege content 

This recommendation appears when either of the following criteria are met.

- Any of combination of these keywords is detected in the body of an email message:
    - ACP
    - Attorney Client Privilege
    - Attorney-Client Privilege
    - Attorney-Client Privileged

- Any combination of these keywords are detected in SharePoint or OneDrive files:
    - ACP
    - Attorney Client Privilege*
    - AC Privilege

## Retain audio files

This recommendation appears when any of the following file types are detected in SharePoint or OneDrive.

- .MP3
- .WMA
- .WAV
- .RA
- .RAM
- .RM
- .MID
- .OGG
- .AIFF
- .PCM
- .AAC
- .FLAC
- .ALAC

## Retain CAD files

This recommendation appears when any of the following file types are detected in SharePoint or OneDrive.

- .3DXML
- .ACIS
- .ARC
- .ASM
- .CAT*
- .CGR
- .DW*
- .DX*
- .EDRW
- .IAM
- .IGES
- .IGS
- .IPT
- .JT
- .MF1
- .NEU
- .PAR
- .PKG
- .PRC
- .PRT
- .PSM
- .PWD
- .SLD*
- .STEP
- .STL
- .STP
- .U3D
- .UNV
- .VRML
- .WRL
- .X_*
- .XAS
- .XMT*
- .XPR

## Retain image files

This recommendation appears when any of the following file types are detected in SharePoint or OneDrive.

- .JPEG
- .GIF
- .TIF*
- .BMP
- .PNG
- .RAW
- .PSD
- .PSP
- .JPG
- .EXIF
- .PPM
- .PGM
- .PBM
- .PNM
- .WEBP

## Retain NDA content 

This recommendation appears when either of the following criteria are met.

- Any of combination of these keywords is detected in the body of an email message:
    - NDA
    - "Non-Disclosure Agreement"
    - "Non Disclosure Agreement"

- Any combination of these keywords are detected in .PDF or .DOC files in SharePoint or OneDrive:
    - NDA
    - Non Disclosure Agreement

## Retain software development files

This recommendation appears when any of the following file types are detected in SharePoint or OneDrive.

- .ASAX
- .ASM
- .ASP*
- .BAT
- .CONFIG
- .CS
- .CSS
- .DISCO
- .HTM*
- .INC
- .JAD
- .JAVA
- .JS*
- .LIB
- .O
- .PHP
- .RC
- .RESX
- .RPT
- .RSS
- .SCPT
- .SRC
- .VB*
- .WSF
- .XCODEPROJ
- .XML
- .XSD
- .XSL*

## Retain video files

This recommendation appears when any of the following file types are detected in SharePoint or OneDrive.

- .AVCHD
- .AVI
- .FLV
- .MOV
- .MP2V
- .MP4
- .MP4V
- .MPE
- .MPEG
- .MPEG1
- .MPEG2
- .MPEG4
- .MPG
- .MPG2
- .MPG4
- .WMV
- .XMV