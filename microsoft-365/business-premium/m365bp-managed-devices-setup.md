---
title: "Set up managed devices"
f1.keywords:
- NOCSH
ms.author: v-kcirillo
author: v-kciril
manager: scotv
ms.date: 03/08/2022
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-Campaigns
- m365solution-smb
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
description: "How to set up managed devices"
---

# Set up managed devices

A managed device is one that is under control and being monitored by the organization. These devices are enrolled in a device manager such as Intune, or Azure Active Directory Premium. Microsoft 365 Business Premium offers both. 

A Windows 10 PC is considered managed after you have completed the following two steps:

1. Set up device and data protection policies in the [setup  wizard](../business/set-up.md).

2. Connect your computer to [Azure Active Directory](../business/set-up-windows-devices.md) and use your Microsoft 365 username and password to sign in. 

## Enroll devices in Microsoft Endpoint Manager

Go to Intune and enroll the devices (Windows, macOS, iOS, and Android).

## Onboard devices to Microsoft Defender for Business

(refer to [Onboard devices to Microsoft Defender for Business](../security/defender-business/mdb-onboard-devices.md))

Go to Endpoints > Device inventory (this kicks off the setup wizard for MDB). Choose Get started and work through the wizard. This onboards devices and applies endpoint protection policies to the devices

## Next steps

[Protect all email](m365bp-protect-email-overview.md)