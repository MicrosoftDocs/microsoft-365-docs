---
title: Deploy Removable Storage Access Control policies for Microsoft Defender for Endpoint            
description: Learn how to deploy device control RSAC policies in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 12/14/2023
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-asr
ms.custom:     # Useful for querying on a specific set of articles.
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
audience: ITPro
---

# Deploy removable storage access control policies in Microsoft Defender for Endpoint

When you're ready to deploy removable storage access control (RSAC) policies for Defender for Endpoint, use this article as a guide. Create a deployment plan, specify default enforcement settings, and use device groups to deploy your policies.

## Plan your deployment

Make sure to review the [use cases](device-control-overview.md#use-cases) and confirm that RSAC meets your requirements. Configuring RSAC is an iterative process, ideally consisting of development, testing, and production phases. 

:::image type="content" source="media/device-control-rsac-deployment.png" alt-text="Diagram depicting development, testing, and production phases of RSAC deployment.":::

-	**Development**: Select a few devices or use a lab environment. Use the set or lab environment to define your RSAC groups and policies. 
-	**Testing**: Deploy RSAC policies to a small set of users to make sure the policies are working correctly. The best practice is to first deploy your policies in audit mode, and then in block mode. Add more users to validate your testing.
-	**Production**: Deploy RSAC policies to a broad set of the target population of population. Only do this after testing the policies thoroughly and successfully in your test environment.

You can configure RSAC policies by using Intune, Group Policy, or JAMF (Mac).

## Default enforcement

When RSAC is enabled and a user attempts to access (Read, Write, Execute) a device, it uses a combination of groups and policies to make an access control decision (Allow, Deny). If operation doesn’t match the groups or policies, then RSAC looks for the default enforcement. The default behavior (Allow/Deny) can be configured for the machine or for the user. The default enforcement applies to all device types. If there is no default enforcement, then the operation is allowed. 

:::image type="content" source="media/rsac-default-enforce-deny.png" alt-text="Diagram depicting allow policy for certain devices but denying for all by default.":::

In order to block all removable storage, set the default enforcement to deny, and have an allow policy for all other device types. 

## Device groups 

Device groups define criteria for organizing devices. You can filter devices or printers by using their properties in RSAC policies.

- [See properties for Windows devices](device-control-removable-storage-access-control.md#group)
- [See properties for Mac](mac-device-control-overview.md#device-control-for-macos-properties)

By device groups with filters for certain properties, you can refine your access control model. The most common scenario is to create a list of allowed removable storage devices. 

This allows further refinement of the access control model.  The most common scenario is to create an allowed list of removable storage devices. For example, you can create a group of allowed USBs by VID_PID, as shown in the following diagram:

:::image type="content" source="media/rsac-default-enforce-deny2.png" alt-text="Diagram depicting allowed USBs by VID PID properties.":::

Device groups appear as reusable settings in Intune. By editing an entry, the set of devices that are included can be controlled by using device properties.

Here are some examples of device group definitions:

- [Group of devices by Instance Path Id](https://github.com/microsoft/mdatp-devicecontrol/blob/c43f0ee80702f0a24f48b1d0f8302dd30a230586/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Approved%20USBs%20Group.xml#L2)
- [Group of devices by VID_PID](https://github.com/microsoft/mdatp-devicecontrol/blob/c43f0ee80702f0a24f48b1d0f8302dd30a230586/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Unapproved%20USBs%20Group.xml#L2)
- [Group of devices by Primary Id](https://github.com/microsoft/mdatp-devicecontrol/blob/c43f0ee80702f0a24f48b1d0f8302dd30a230586/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml)

## Next steps


