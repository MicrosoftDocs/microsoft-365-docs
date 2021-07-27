---
title: Use sensitivity labels to prioritize incident response
description: Learn how to use sensitivity labels to prioritize and investigate incidents
keywords: information, protection, data, loss, prevention,labels, dlp, incident, investigate, investigation
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Use sensitivity labels to prioritize incident response  

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)


A typical advanced persistent threat lifecycle involves data exfiltration. In a security incident, it's important to have the ability to prioritize investigations where sensitive files may be jeopardy so that corporate data and information are protected.

Defender for Endpoint helps to make the prioritization of security incidents much simpler with the use of sensitivity labels. Sensitivity labels quickly identify incidents that may involve devices with sensitive information such as confidential information. 

## Investigate incidents that involve sensitive data
Learn how to use data sensitivity labels to prioritize incident investigation.

>[!NOTE]
>Labels are detected for Windows 10, version 1809 or later.

1. In Microsoft 365 Defender portal, select **Incidents & alerts** > **Incidents**.

2. Scroll to the right to see the **Data sensitivity** column. This column reflects sensitivity labels that have been observed on devices related to the incidents providing an indication of whether sensitive files may be impacted by the incident.

    ![Image of data sensitivity column](images/data-sensitivity-column.png)

    You can also filter based on **Data sensitivity** 

    ![Image of data sensitivity filter](images/data-sensitivity-filter.png)

3. Open the incident page to further investigate.

    ![Image of incident page details](images/incident-page.png)

4. Select the **Devices** tab to identify devices storing files with sensitivity labels.

    ![Image of device tab](images/investigate-devices-tab.png)
   

5. Select the devices that store sensitive data and search through the timeline to identify which files may be impacted then take appropriate action to ensure that data is protected. 

   You can narrow down the events shown on the device timeline by searching for data sensitivity labels. Doing this will show only events associated with files that have said label name.

    ![Image of device timeline with narrowed down search results based on label](images/machine-timeline-labels.png)


>[!TIP]
>These data points are also exposed through the 'DeviceFileEvents' in advanced hunting, allowing advanced queries and schedule detection to take into account sensitivity labels and file protection status. 
