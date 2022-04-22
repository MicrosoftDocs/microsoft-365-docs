---
title: "Set up managed devices"
f1.keywords:
- NOCSH
ms.author: v-kcirillo
author: cirilk
manager: scotv
ms.date: 03/18/2022
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
ms.localizationpriority: high
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

A "managed" device is one that is under control and being monitored by the organization, and is therefore regularly updated, and secure. Having devices under managed control is a critical objective. To bring these devices under control, they are enrolled in a device manager with Intune and Azure Active Directory Premium, both of which are included with Microsoft Business Premium. 

A Windows 10 PC is considered managed after users have completed the following two steps:

1. Set up device and data protection policies in the [setup  wizard](../business/set-up.md).

2. Connected the computer to [Azure Active Directory](../business/set-up-windows-devices.md) with their Microsoft 365 username and password. 

## Enroll devices in Microsoft Endpoint Manager

Now you can enroll devices in Endpoint Manager, go to https://endpoint.microsoft.com and select **Devices** > **Enroll devices**. 

:::image type="content" source="media/m365bp-endpoint-manager-enroll-devices.png" alt-text="Use Microsoft Endpoint Manager to enroll devices."::: 

Follow specific device enrollment guidance below.

### For Windows enrollment:

1. Select **Windows** > **Windows enrollment**. 
1. From the enrollment methods listed, select **Automatic enrollment**.

### For iOS enrollment:

1. Select **iOS** > **iOS enrollment**.
1. From the list of policies, select a policy to see its details.
1. Select **Properties** to manage the policy.
1. Select **Settings** > **System Security** and configure security details in Intune.
1. Look at configuration profiles. 
1. Create a profile and push it to the devices in your organization, as needed.

### For Android enrollment:

1. Select **Android** > **Android enrollment**.
1. Choose **Managed Google Play** and grant Microsoft permission to send information to Google.

## Next objective

Use the following guidance to [onboard the devices](m365bp-onboard-devices-mdb.md).

