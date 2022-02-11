---
title: Microsoft 365 Defender time zone settings
description: Use the info contained here to configure the Microsoft 365 Defender time zone settings and view license information.
keywords: settings, Microsoft Defender, cybersecurity threat intelligence, Microsoft Defender for Endpoint, time zone, utc, local time, license
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Microsoft 365 Defender time zone settings

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-settings-abovefoldlink)

Use the **Time zone** menu ![Time zone settings icon1.](images/atp-time-zone.png) to configure the time zone and view license information.

## Time zone settings

The aspect of time is important in the assessment and analysis of perceived and actual cyberattacks.

Cyberforensic investigations often rely on time stamps to piece together the sequence of events. It's important that your system reflects the correct time zone settings.

Microsoft Defender for Endpoint can display either Coordinated Universal Time (UTC) or local time.

Your current time zone setting is shown in the Microsoft Defender settings. You can change the displayed time zone in the **Time zone** menu Under **Settings > Security center**.

### UTC time zone

Microsoft Defender for Endpoint uses UTC time by default.

Setting the Microsoft Defender for Endpoint time zone to UTC will display all system timestamps (alerts, events, and others) in UTC for all users. This can help security analysts working in different locations across the globe to use the same time stamps while investigating events.

### Local time zone

You can choose to have Microsoft Defender for Endpoint use local time zone settings. All alerts and events will be displayed using your local time zone.

The local time zone is taken from your device's regional settings. If you change your regional settings, the Microsoft Defender for Endpoint time zone will also change. Choosing this setting means that the timestamps displayed in Microsoft Defender for Endpoint will be aligned to local time for all Microsoft Defender for Endpoint users. Analysts located in different global locations will now see the Microsoft Defender for Endpoint alerts according to their regional settings.

Choosing to use local time can be useful if the analysts are located in a single location. In this case it might be easier to correlate events to local time, for example, when a local user clicked on a suspicious email link.

### Set the time zone

The Microsoft Defender for Endpoint time zone is set by default to UTC. Setting the time zone also changes the times for all Microsoft Defender for Endpoint views.

To set the time zone:

1. Click the **Settings** menu in the [Microsoft 365 Defender Portal](https://security.microsoft.com/) ![Time zone settings icon3.](images/atp-time-zone.png).
2. Select **Security center**.
3. Select **Timezone** and set the time zone to either UTC or your local time zone.

### Regional settings

To apply different date formats for Microsoft Defender for Endpoint, use regional settings for Internet Explorer (IE) and Microsoft Edge (Edge). If you're using another browser such as Google Chrome, follow the required steps to change the time and date settings for that browser. 

#### Internet Explorer (IE) and Microsoft Edge

IE and Microsoft Edge use the **Region** settings configured in the **Clocks, Language, and Region** option in the Control panel. 

#### Known issues with regional formats

##### Date and time formats

There are some known issues with the time and date formats. If you configure your regional settings to anything other than the supported formats, the portal may not correctly reflect your settings.

The following date and time formats are supported:

- Date format MM/dd/yyyy
- Date format dd/MM/yyyy
- Time format hh:mm:ss (12 hour format)

The following date and time formats are currently not supported:

- Date format yyyy-MM-dd
- Date format dd-MMM-yy
- Date format dd/MM/yy
- Date format MM/dd/yy
- Date format with yy. Will only show yyyy.
- Time format HH:mm:ss (24 hour format)

##### Decimal symbol used in numbers

Decimal symbol used is always a dot, even if a comma is selected in  the **Numbers** format settings in **Region** settings. For example, 15,5K is displayed as 15.5K.
