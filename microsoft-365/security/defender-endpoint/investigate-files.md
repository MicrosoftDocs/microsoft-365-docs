---
title: Investigate Microsoft Defender for Endpoint files
description: Use the investigation options to get details on files associated with alerts, behaviors, or events.
keywords: investigate, investigation, file, malicious activity, attack motivation, deep analysis, deep analysis report
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 04/24/2018
ms.subservice: mde
search.appverid: met150
---

# Investigate a file associated with a Microsoft Defender for Endpoint alert

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigatefiles-abovefoldlink)

Investigate the details of a file associated with a specific alert, behavior, or event to help determine if the file exhibits malicious activities, identify the attack motivation, and understand the potential scope of the breach.

There are many ways to access the detailed profile page of a specific file. For example, you can  use the search feature, click on a link from the **Alert process tree**, **Incident graph**, **Artifact timeline**, or select an event listed in the **Device timeline**.

Once on the detailed profile page, you can switch between the new and old page layouts by toggling **new File page**. The rest of this article describes the newer page layout.

You can get information from the following sections in the file view:

- File details, Malware detection, File prevalence
- File PE metadata (if it exists)
- Deep analysis
- Alerts
- Observed in organization
- Deep analysis
- File names

You can also take action on a file from this page.

## File actions

Along the top of the profile page, above the file information cards. Actions you can perform here include:

- Stop and quarantine
- Add/edit indicator
- Download file
- Consult a threat expert
- Action center

For more information on these actions, see [Take response action on a file](respond-file-alerts.md).

## File details, Malware detection, and File prevalence

The file details, incident, malware detection, and file prevalence cards display various attributes about the file.

You'll see details such as the file's MD5, the Virus Total detection ratio, and Microsoft Defender Antivirus detection if available, and the file's prevalence.

The file prevalence card shows where the file was seen in devices in the organization and worldwide. You can easily pivot to the first and last devices where the file was seen on, and continue the investigation in the device timeline. 

> [!NOTE]
> Different users may see dissimilar values in the *devices in organization* section of the file prevalence card. This is because the card displays information based on the RBAC scope that a user has. Meaning, if a user has been granted visibility on a specific set of devices, they will only see the file organizational prevalence on those devices.

:::image type="content" source="images/atp-file-information.png" alt-text="The file information" lightbox="images/atp-file-information.png":::

## Alerts

The **Alerts** tab provides a list of alerts that are associated with the file, as well as the incident the alert is linked to. This list covers much of the same information as the Alerts queue, except for the device group, if any, the affected device belongs to. You can choose what kind of information is shown by selecting **Customize columns** from the toolbar above the column headers.

:::image type="content" source="images/atp-alerts-related-to-file.png" alt-text="The alerts related to the file section" lightbox="images/atp-alerts-related-to-file.png":::

## Observed in organization

The **Observed in organization** tab allows you to specify a date range to see which devices have been observed with the file.

> [!NOTE]
> This tab will show a maximum number of 100 devices. To see _all_ devices with the file, export the tab to a CSV file, by selecting **Export** from the action menu above the tab's column headers.

:::image type="content" source="images/atp-observed-machines.png" alt-text="The most recent observed devices with the file" lightbox="images/atp-observed-machines.png":::

Use the slider or the range selector to quickly specify a time period that you want to check for events involving the file. You can get assisted by the alerts indication over the range. You can specify a time window as small as a single day. This will allow you to see only files that communicated with that IP Address at that time, drastically reducing unnecessary scrolling and searching.

## Deep analysis

The **Deep analysis** tab allows you to [submit the file for deep analysis](respond-file-alerts.md#deep-analysis), to uncover more details about the file's behavior, as well as the effect it is having within your organizations. After you submit the file, the deep analysis report will appear in this tab once results are available. If deep analysis did not find anything, the report will be empty and the results space will remain blank.

:::image type="content" source="images/submit-file.png" alt-text="The Deep analysis tab" lightbox="images/submit-file.png":::

## File names

The **File names** tab lists all names the file has been observed to use, within your organizations.

:::image type="content" source="images/atp-file-names.png" alt-text="The File names tab" lightbox="images/atp-file-names.png":::

## Action center

The **Action center** displays the action center filtered on a specific file, so you can see pending actions and the history of actions taken on the file.

## Related topics

- [View and organize the Microsoft Defender for Endpoint queue](alerts-queue.md)
- [Manage Microsoft Defender for Endpoint alerts](manage-alerts.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate devices in the Microsoft Defender for Endpoint Devices list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Microsoft Defender for Endpoint alert](investigate-domain.md)
- [Investigate a user account in Microsoft Defender for Endpoint](investigate-user.md)
- [Take response actions on a file](respond-file-alerts.md)
