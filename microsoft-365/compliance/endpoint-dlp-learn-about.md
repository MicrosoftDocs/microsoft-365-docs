---
title: "Learn about endpoint data loss prevention (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2020
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Microsoft 365 Endpoint data loss prevention (EPDLP) extends monitoring of file activities and protective actions for those file to endpoints. Files are made visible in the Microsoft 365 compliance solutions "
---

# Learn about Microsoft 365 endpoint data loss prevention (preview)

You can use Microsoft 365 data loss prevention (DLP) to monitor the actions that are being taken on items you've determined to be sensitive and to help prevent the unintentional sharing of those items. For more information on DLP, see [Overview of data loss prevention](data-loss-prevention-policies.md).

**Endpoint data loss prevention** (EPDLP) extends the activity monitoring and protection capabilities of DLP to sensitive items that are on Windows 10 devices. Once devices are onboarded as locations, the information about what users are doing with sensitive items is made visible in [activity explorer](data-classification-activity-explorer.md) and you can enforce protective actions on those items via [DLP policies](create-test-tune-dlp-policy.md).

## Endpoint activities you can monitor and take action on

Microsoft Endpoint DLP enables you to audit and manage the following types of activities users take on files on devices running Windows 10. This includes: 

- File created
- File renamed
- File copied to cloud - when a file is uploaded to a domain through Chromium Edge browser
- File accessed by unallowed app - whe a file is read by a process that was defined as unallowed (managed as part of the DLP policy)
- file printed - when a file is printed to a local or network printer
- file copied to removable media - when a file is copied or created on a removable USB media.
- file copied to a network share - when a file is copied to a network share, for example \\my-server\fileshare or a mapped network drive


## What's different in Endpoint DLP


- onboarding integration with MDATP
- onboarding separate from MDATP
- activities to monitor for
- where monitored activites show up (activity explorer)
- device onboarding integration with IR

## Workflow

no idea, need to braindump with Mas and Omri
