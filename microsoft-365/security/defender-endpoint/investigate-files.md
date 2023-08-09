---
title: Investigate Microsoft Defender for Endpoint files
description: Use the investigation options to get details on files associated with alerts, behaviors, or events.
keywords: investigate, investigation, file, malicious activity, attack motivation, deep analysis, deep analysis report
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 07/10/2023
ms.subservice: mde
search.appverid: met150
---

# Investigate a file

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

- File details and PE metadata (if it exists)
- Incidents and alerts
- Observed in organization
- File names
- File content and capabilities (if a file has been analyzed by Microsoft)

You can also take action on a file from this page.

## File actions

The file actions are above the file information cards at the top of the profile page. Actions you can perform here include:

- Stop and quarantine
- Manage indicator
- Download file
- Ask Defender Experts
- Manual actions
- Go hunt
- Deep analysis

See [take response action on a file](respond-file-alerts.md) for more information on these actions.

## File page overview

The file page offers an overview of the file's details and attributes, the incidents and alerts where the file is seen, file names used, the number of devices where the file was seen in the last 30 days, including the dates when the file was first and last seen in the organization, Virus Total detection ratio, Microsoft Defender Antivirus detection, the number of cloud apps connected to the file, and the file's prevalence in devices outside of the organization.

> [!NOTE]
> Different users may see dissimilar values in the *devices in organization* section of the file prevalence card. This is because the card displays information based on the role-based access control (RBAC) scope that a user has. This means if a user has been granted visibility on a specific set of devices, they will only see the file organizational prevalence on those devices.

:::image type="content" source="../../media/investigate-files/investigatefiles-fileoverview.png" alt-text="Screenshot of the File page overview" lightbox="../../media/investigate-files/investigatefiles-fileoverview.png":::

## Incidents and alerts

The **Incidents and alerts** tab provides a list of incidents that are associated with the file and the alerts the file is linked to. This list covers much of the same information as the incidents queue. You can choose what kind of information is shown by selecting **Customize columns**. You can also filter the list by selecting **Filter**.

![Screenshot showing incidents and alerts.](https://user-images.githubusercontent.com/96785904/200527005-1fd139dc-7483-4e4c-83ad-855cd198f153.png)


## Observed in organization

The **Observed in organization** tab shows you the devices and cloud apps observed with the file. File history related to devices can be shown up to the last six months, whereas cloud apps-related history is up to the last 30 days

### Devices

This section shows all the devices where the file is detected. The section includes a trending report identifying the number of devices where the file has been observed in the past 30 days. Below the trendline, you can find detailed information on the file on each device where it is seen, including file execution status, first and last seen events on each device, initiating process and time, and file names associated with a device.

You can click on a device on the list to explore the full six months file history on each device and pivot to the first seen event in the device timeline.

:::image type="content" source="../../media/investigate-files/investigatefiles-devices.png" alt-text="Screenshot of the devices page within a file" lightbox="../../media/investigate-files/investigatefiles-devices.png":::

### Cloud apps

> [!NOTE]
> The Defender for Cloud Apps workload must be enabled to see file information related to cloud apps.

This section shows all the cloud applications where the file is observed. It also includes information like the file's names, the users associated with the app, the number of matches to a specific cloud app policy, associated apps' names, when the file was last modified, and the file's path.

:::image type="content" source="../../media/investigate-files/investigatefiles-cloudapps.png" alt-text="Screenshot of the cloud apps page within a file" lightbox="../../media/investigate-files/investigatefiles-cloudapps.png":::

## File names

The **File names** tab lists all names the file has been observed to use, within your organizations.

:::image type="content" source="images/atp-file-names.png" alt-text="The File names tab" lightbox="images/atp-file-names.png":::

## File content and capabilities

> [!NOTE]
> The file content and capabilities views depend on whether Microsoft analyzed the file.

The File content tab lists information about portable executable (PE) files, including process writes, process creation, network activities, file writes, file deletes, registry reads, registry writes, strings, imports, and exports. This tab also lists all the file's capabilities.

:::image type="content" source="../../media/investigate-files/investigatefiles-filecontent.png" alt-text="Screenshot of a file's content" lightbox="../../media/investigate-files/investigatefiles-filecontent.png":::

The file capabilities view lists a file's activities as mapped to the MITRE ATT&CK™ techniques.

:::image type="content" source="../../media/investigate-files/investigatefiles-filecapabilities.png" alt-text="Screenshot of a file's capabilities" lightbox="../../media/investigate-files/investigatefiles-filecapabilities.png":::

## Related topics

- [View and organize the Microsoft Defender for Endpoint queue](alerts-queue.md)
- [Manage Microsoft Defender for Endpoint alerts](manage-alerts.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate devices in the Microsoft Defender for Endpoint Devices list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Microsoft Defender for Endpoint alert](investigate-domain.md)
- [Investigate a user account in Microsoft Defender for Endpoint](investigate-user.md)
- [Take response actions on a file](respond-file-alerts.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
