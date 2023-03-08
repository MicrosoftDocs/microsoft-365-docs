---
title: Identify internet facing devices in Microsoft Defender for Endpoint
description: Identify internet facing devices in the device inventory list
keywords: devices, internet-facing, internet facing
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/7/2023
---

# Identify internet facing devices

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-respondmachine-abovefoldlink)

Mapping your organization’s external attack surface is a key part of security posture management, and identifying internet-facing devices is a key priority for many security teams. Threat actors are continuously scanning the web to detect exposed devices they can exploit to gain a foothold in internal corporate networks and internet facing devices can serve as an easy entry point to an organization’s environment.

Microsoft Defender for Endpoint will automatically flag onboarded, exposed, internet facing devices in the  [Microsoft 365 Defender portal](https://security.microsoft.com/), providing more context to security teams and deeper insights into device exploitability.

By providing a view into internet-facing devices in the [device inventory](https://security.microsoft.com/machines/) security teams can better prioritize alerts, recommendations, and incidents on these devices.

Or devices that will are will be flagged like make it simpler. Devices will be flagged flagged as Internet facing if they were identified as if they were successfully connected via TCP or reachable via UDP. Nimrod does that. Answers like does that covers it.

OK, so it it would be right to say that.
We we can say how.
We discover it, and then we can explain about the logics and we can say.
Umm.
Umm. Which devices will be flagged? And these are the devices? I think that's that makes it clearer for the users I think.

> [!NOTE]
> The ability to identify internet facing is only available for Windows devices onboarded to Microsoft Defender for Endpoint.
How we discover internet facing devices 

What devices get flagged 

How to view those devices


Or devices that will are will be flagged like make it simpler. Devices will be flagged flagged as Internet facing if they were identified as if they were successfully connected via TCP or reachable via UDP. Nimrod does that. Answers like does that covers it.

## View internet facing devices

View internet-facing devices in the device inventory.

A new internet-facing tag - devices that are classified as internet-facing will be tagged accordingly along with the reason for this tag (available when hovering over the tag).  


1. Go to the **Device inventory**
 

Go to the device inventory to view details on internet-facing devices:  

 
Device inventory counter – a new counter appears at the top of the device inventory page indicating how many devices are currently identified as internet-facing. 

Filter – a new filter is available in the filter pane for internet-facing devices

   ![Image of exclude device menu option.](images/exclude-devices-menu.png)

3
## See also

- [Device inventory](machines-view-overview.md)
