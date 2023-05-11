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

The insights report in [information barriers](information-barriers.md) (IB) can help you identify and discover usage patterns across SharePoint sites and OneDrive accounts in your organization. Administrators can use PowerShell to create and view reports to identify top sites and their modes to help apply suitable controls for the sites as applicable.

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
- You must use the latest version of the [SharePoint Online Management Shell](https://www.microsoft.com/download/details.aspx?id=35588). If you've installed a previous version of the SharePoint Online Management Shell, go to **Add or remove programs** and uninstall *SharePoint Online Management Shell* and then install the latest version. To learn more about SharePoint Online Management Shell, see [Get started with SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

## Create the insights report

Before you can run specific queries for information barriers details, you must first create a build of the report. After the report build has completed successfully, you can run specific detail reports. One insight report build is supported for every 24 hour period and the previous report build is automatically overwritten. For example, if you create an insights report build on 4/25/2023 at 4:10 PM, the new insights report build won't have updated information available until 4/26/2023 at 4:10 PM.

To create the insights report, complete the following steps:

1. [Connect to SharePoint Online](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps) as a global administrator or SharePoint administrator in Microsoft 365.
2. Run the following PowerShell cmdlet  and accept the confirmation prompt to build the insights report:

    ```powershell
    Start-SPOInformationBarriersInsightsReport
    ```

    > [!NOTE]
    > Depending on the number of SharePoint sites and OneDrives accounts in your organization, it may take up to one hour for this report to build.

    You can automate acceptance of the confirmation prompt when creating the insights report by appending the *-Yes* as an parameter to the cmdlet. For example, `Start-SPOInformationBarriersInsightsReport -Yes`.
3. Run the following PowerShell cmdlet to view the build status of the insights report:

    ```powershell
    Get-SPOInformationBarriersInsightsReport
    ```

   The following example shows the information returned for the insights report build:

    `State: Completed` <br>
    `Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776` <br>
    `StartTimeInUtc: 4/25/2023 4:10:16 PM`<br>
    `CompleteTimeInUtc: 4/25/2023 4:10:25 PM`<br>
    `QueuedTimeInUtc: 4/25/2023 4:06:47 PM`

    The report is ready to view or download when the *State* value is *Completed*. Other *State* values include:

    - *Not Started*: State when the inisghts report build hasn't started.
    - *In Progress*: State when the insights report build is in progress.
    - *Error*: State when the insights report build has failed.

## Insights reports for SharePoint sites

### View a summary of modes with results for SharePoint sites

To view a summary of the modes with results for SharePoint sites, use the following cmdlet syntax to view insights from the build report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID>`
```

**Example**:

`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`

**Example results**:

`Content: Explicit, Implicit, Open, OwnerModerated, ModeDistribution` <br>
`State: Completed`<br>
`Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`<br>
`StartTimeInUtc: 4/25/2023 4:10:16 PM`<br>
`CompleteTimeInUtc: 4/25/2023 4:10:25 PM`<br>
`QueuedTimeInUtc: 4/25/2023 4:06:47 PM`

In this example, the insights report results are displayed for SharePoint sites included in the organization with an ID of *ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776*. The values in the *Content* line represent the modes that have results in the report. If a mode (applicable to SharePoint) isn't listed, there aren't any SharePoint sites in the organization with that mode.

### View the details for a specific mode for SharePoint sites

To view details about a specific mode with results for SharePoint sites, use the following cmdlet syntax to view insights from the build report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -section <Mode>`
```

**Example**:

`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 -section Explicit`

**Example results**:

`Content: Explicit` <br>
`State: Completed`<br>
`Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`<br>
`StartTimeInUtc: 4/25/2023 4:10:16 PM`<br>
`CompleteTimeInUtc: 4/25/2023 4:10:25 PM`<br>
`QueuedTimeInUtc: 4/25/2023 4:06:47 PM`

### View the details for the mode distribution for SharePoint sites

To view details about the mode distribution with results for SharePoint sites, use the following cmdlet syntax to view insights from the build report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -section <ModeDistribution>`
```

**Example**:

`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 -section ModeDistribution`

**Example results**:

`Total site count: 10000` <br>
`Owner Moderated SiteCount: 500 SitePercentage: 5` <br>
`Explicit SiteCount: 3628 SitePercentage: 36.82` <br>
`Implicit SiteCount: 4190 SitePercentage: 41.9` <br>
`Open SiteCount: 1682 SitePercentage: 16.82`

## Insights reports for OneDrive accounts

### View a summary of modes with results for OneDrive accounts

To view a summary of the modes with results for OneDrive accounts, use the following cmdlet syntax to view insights from the build report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -service <OneDrive>`
```

**Example**:

`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 -service OneDrive`

**Example results**:

`Content: Explicit, Mixed, Open, OwnerModerated, ModeDistribution` <br>
`State: Completed`<br>
`Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`<br>
`StartTimeInUtc: 4/25/2023 4:10:16 PM`<br>
`CompleteTimeInUtc: 4/25/2023 4:10:25 PM`<br>
`QueuedTimeInUtc: 4/25/2023 4:06:47 PM`

In this example, the insights report results are displayed for OneDrive accounts included in the organization with an ID of *ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776*. The values in the *Content* line represent the modes that have results in the report. If a mode (applicable to SharePoint) isn't listed, there aren't any OneDrive accounts in the organization with that mode.

### View the details for a specific mode for OneDrive accounts

To view details about a specific mode with results for OneDrive accounts, use the following cmdlet syntax to view insights from the build report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -service OneDrive -section <Mode>`
```

**Example**:

`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 -service OneDrive -section Explicit`

**Example results**:

`Content: Explicit` <br>
`State: Completed`<br>
`Id: ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776`<br>
`StartTimeInUtc: 4/25/2023 4:10:16 PM`<br>
`CompleteTimeInUtc: 4/25/2023 4:10:25 PM`<br>
`QueuedTimeInUtc: 4/25/2023 4:06:47 PM`

### View the details for the mode distribution for OneDrive accounts

To view details about the mode distribution with results for OneDrive accounts, use the following cmdlet syntax to view insights from the build report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -service OneDrive -section <ModeDistribution>`
```

**Example**:

`Get-SPOInformationBarriersInsightsReport -reportId ec65a1cf-9b1a-48c2-a1b4-f923ac4c0776 -service OneDrive -section ModeDistribution`

**Example results**:

`Total site count: 10000` <br>
`Owner Moderated SiteCount: 500 SitePercentage: 5` <br>
`Explicit SiteCount: 3628 SitePercentage: 36.82` <br>
`Mixed SiteCount: 4190 SitePercentage: 41.9` <br>
`Open SiteCount: 1682 SitePercentage: 16.82`

## Download the results of the insights report

To download the results of a specific insights report for SharePoint sites, use the following cmdlet syntax to download the report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -section <report you want to download> -action Download`
```

The report is automatically exported as a .csv file with a file name of *SharePoint_<the name of the report type>*. For example, if you download the *Explicit* report, the file name is *SharePoint_Explicit.csv*.

To download the results of a specific insights report for OneDrive accounts, use the following cmdlet syntax to download the report:

```powershell
Get-SPOInformationBarriersInsightsReport -reportId <ID> -service OneDrive -section <report you want to download> -action Download`
```

The report is automatically exported as a .csv file with a file name of *OneDrive_<the name of the report type>*. For example, if you download the *Explicit* report, the file name is *OneDrive_Explicit.csv*.

To rename the report or export to custom locations, you can use standard PowerShell parameters. For more information, see the [PowerShell documentation](/powershell/).

## Audit activities for the insights report

Audit events for the insights report are available in the Microsoft Purview compliance portal. For more information about the activities logged, see Information barriers activities