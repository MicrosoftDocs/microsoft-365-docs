---
title: IT admin information for Microsoft Teams for RealWear client (Preview)
author: MicrosoftHeidi
ms.author: heidip
manager: serdars
ms.topic: reference
ms.service: msteams
audience: admin
ms.reviewer: 
description: IT admin walkthrough of the Microsoft Teams for RealWear client.
ms.localizationpriority: high
search.appverid: MET150
f1.keywords:
- NOCSH
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_RemoteWorkers
  - remotework
appliesto: 
  - Microsoft Teams
---
# Microsoft Teams for RealWear

This article covers the Microsoft Teams client for RealWear head-mounted wearables. Frontline workers using RealWear HMT-1 and HMT-1Z1 can now collaborate with a remote expert using video calling on Teams. Through a voice-controlled user interface, Teams for RealWear allows field workers to remain 100% hands-free while maintaining situational awareness in loud and hazardous environments. By showing what they see in real-time, field workers can accelerate the time to resolve issues and reduce the risk of an expensive downtime.

## How to deploy Microsoft Teams for RealWear

- RealWear devices updated to release 11.2 or above. More information [here](https://realwear.com/knowledge-center/configure-on-release-10/wireless-update/).
- Access to [RealWear Foresight](https://cloud.realwear.com/) for distributing the Microsoft Teams client for Realwear.

## Required Licenses

Microsoft Teams licenses are part of Microsoft 365 and Office 365 subscriptions. No additional licensing is required to use Teams for RealWear. For more information about getting Teams, check out [How do I get access to Microsoft Teams](https://support.office.com/article/fc7f1634-abd3-4f26-a597-9df16e4ca65b).

## Managing RealWear devices

### Microsoft Endpoint Manager

RealWear devices can be managed using Android Device Administrator mode. Support for management via Android Enterprise is limited, as the devices currently don't have Google Mobile Services (GMS) available.

- To learn more about managing RealWear devices on Microsoft Endpoint Manager, see [Android device administrator enrollment in Intune](/mem/intune/enrollment/android-enroll-device-administrator).
- For more details on policies, see [How to use Intune in environments without Google Mobile Services](/mem/intune/apps/manage-without-gms).

### Third-party Enterprise Mobility Managers (EMMs)

For guidance on third-party EMMs, see [Supported Enterprise Mobility Management Providers](https://www.realwear.com/knowledge-center/configure-on-release-10/remote-from-a-web-browser/emm/).

## End-user content

For further reading on this from an end-user perspective, check out [Using Microsoft Teams for RealWear](https://support.office.com/article/using-microsoft-teams-for-realwear-af20d232-d18c-476f-8031-843a4edccd5f).