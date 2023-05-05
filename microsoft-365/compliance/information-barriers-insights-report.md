---
title: "Get information barriers insights"
description: Use the insights report to get information about information barriers usage in your organization.
keywords: Microsoft 365, Microsoft Purview, compliance, information barriers
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- highpri 
- tier2
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.date: 05/31/2023
---

# Get information barriers insights

The insights report in [information barriers](information-barriers.md) (IB) allow you to identify and discover usage patterns across SharePoint sites and OneDrive accounts in your organization. Administrators can use PowerShell to create and view reports to identify top sites and their modes to help apply suitable controls for the sites as applicable.

The insights report provides the following information for the top 100 most actively used sites and accounts in your organization:

|**Mode**|**Description**|**Applies to**|
|:-------|:--------------|:-------------|
|Explicit|Top restrictive sites with highest collaboration between IB users|SharePoint sites and OneDrive accounts|
|Implicit|Top sites with highest collaboration between compatible users|SharePoint sites only|
|Mixed|Top accounts with collaboration between segmented and unsegmented users|OneDrive accounts only|
|Mode Distribution|The number and percentage of modes across all sites and accounts|SharePoint sites and OneDrive accounts|
|Open|Top least restrictive sites|SharePoint sites and OneDrive accounts|
|Owner Moderated|Top sites with highest collaboration between IB users and non-IB users|SharePoint sites and OneDrive accounts|

## Prerequisites

- Your organization must have information barriers enabled for SharePoint and OneDrive to be able to create the insights report. To enable IB in SharePoint and OneDrive for you organization, see [Use information barriers with SharePoint](/microsoft-365/compliance/information-barriers-sharepoint#enable-sharepoint-and-onedrive-information-barriers-in-your-organization).
- You must use the latest version of the [SharePoint Online Management Shell](https://www.microsoft.com/download/details.aspx?id=35588). If you've installed a previous version of the SharePoint Online Management Shell, go to **Add or remove programs** and uninstall *SharePoint Online Management Shell* and then install the latest version.

## Create the insights report

To create the insights report, complete the following steps:

1. [Connect to SharePoint Online](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps) as a global administrator or SharePoint administrator in Microsoft 365.
2. Run the following PowerShell cmdlet  and accept the confirmation prompt to build the insights report:

    ```powershell
    Start-SPOInformationBarriersInsightsReport
    ```

    > [!NOTE]
    > Depending on the number of SharePoint sites and OneDrives accounts in your organization, it may take up to 24 hours for this report to build.

    You can automate acceptance of the confirmation prompt when creating the insights report by appending the *-Yes* as an parameter to the cmdlet. For example, `Start-SPOInformationBarriersInsightsReport -Yes`.
3. Run the following PowerShell cmdlet to view the build status of the insights report:

    ```powershell
    Get-SPOInformationBarriersInsightsReport
    ```

   The following example shows the information returned for the insights report build:

    ```powershell
    State: Completed
    Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776
    StartTimeInUtc: 4/25/2023 4:10:16 PM
    CompleteTimeInUtc: 4/25/2023 4:10:25 PM
    QueuedTimeInUtc: 4/25/2023 4:06:47 PM
    ```

    The report is ready to view or download when the *State* value is *Completed*. Other *State* values include:

    - *Not Started*: State when the inisghts report build hasn't started.
    - *In Progress*: State when the insights report build is in progress.
    - *Error*: State when the insights report build has failed.

## View the results of the insights report

### View a summary of modes with results for SharePoint sites

To view a summary of the modes with results for SharePoint sites, use the following cmdlet syntax:

`Get-SPOInformationBarriersInsightsReport -reportId <ID>`

|**Example**|**Example results**|
|:----------|:------------------|
| `Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`|  Content: Explicit, Implicit, Open, OwnerModerated, ModeDistribution <br> State: Completed <br> Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 <br> StartTimeInUtc: 4/25/2023 4:10:16 PM <br>CompleteTimeInUtc: 4/25/2023 4:10:25 PM <br> QueuedTimeInUtc: 4/25/2023 4:06:47 PM |

|**Syntax**|**Example**|**Example results**|
|:---------|:----------|:------------------|
| `Get-SPOInformationBarriersInsightsReport -reportId <ID>` |`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`|  Content: Explicit, Implicit, Open, OwnerModerated, ModeDistribution <br> State: Completed <br> Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 <br> StartTimeInUtc: 4/25/2023 4:10:16 PM <br>CompleteTimeInUtc: 4/25/2023 4:10:25 PM <br> QueuedTimeInUtc: 4/25/2023 4:06:47 PM |

In this example, the insights report results are displayed for SharePoint sites included in the organization with an ID of *ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776*. The values in the *Content* line represent the modes that have results in the report. If a mode (applicable to SharePoint) isn't listed, there aren't any SharePoint sites in the organization with that mode.

### View a summary of modes with results for OneDrive accounts


### View the details for a specific mode for SharePoint sites


### View the details for a specific mode for OneDrive accounts


## Download the results of the insights report


## Audit activities for the insights report