---
title: "Set up managed devices"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: business-premium
ms.localizationpriority: high
ms.date: 07/19/2022
ms.collection: 
- M365-Campaigns
- m365solution-smb
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "How to set up managed devices"
---

# Set up managed devices

A "managed" device is one that is under control and being monitored by the organization, and is therefore regularly updated, and secure. Having devices under managed control is a critical objective. To bring these devices under control, enroll them in a device manager with Microsoft Intune and Azure Active Directory, both of which are included with Microsoft Business Premium.

1. Set up device and data protection policies in the [setup  wizard](../business/set-up.md).

2. Connected the computer to [Azure Active Directory](../business/set-up-windows-devices.md) with their Microsoft 365 username and password. 

## Enroll devices in Intune

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Select **Devices** > **Enroll devices**. 

   :::image type="content" source="media/m365bp-endpoint-manager-enroll-devices.png" alt-text="Use Microsoft Endpoint Manager to enroll devices."::: 

3. Follow specific device enrollment guidance below.

### For Windows enrollment:

1. Select **Windows** > **Windows enrollment**. 

2. From the enrollment methods listed, select **Automatic enrollment**.

### For iOS enrollment:

1. Select **iOS** > **iOS enrollment**.

2. From the list of policies, select a policy to see its details.

3. Select **Properties** to manage the policy.

4. Select **Settings** > **System Security** and configure security details in Intune.

5. Look at configuration profiles. 

6. Create a profile and push it to the devices in your organization, as needed.

### For Android enrollment:

1. Select **Android** > **Android enrollment**.

2. Choose **Managed Google Play** and grant Microsoft permission to send information to Google.

## Next objective

Use the following guidance to [onboard devices to Defender for Business capabilities](m365bp-onboard-devices-mdb.md).

