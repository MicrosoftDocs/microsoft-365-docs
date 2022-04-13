---
title: Software inventory in threat and vulnerability management
description: The software inventory page for Microsoft Defender for Endpoint's threat and vulnerability management shows how many weaknesses and vulnerabilities have been detected in software.
keywords: threat and vulnerability management, Microsoft Defender for Endpoint, Microsoft Defender for Endpoint software inventory, Microsoft Defender for Endpoint threat & vulnerability management, Microsoft Defender for Endpoint threat & vulnerability management software inventory, Microsoft Defender for Endpoint tvm software inventory, tvm software inventory
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---
# Software inventory - threat and vulnerability management


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-portaloverview-abovefoldlink)

The software inventory in threat and vulnerability management is a list of known software in your organization. The default filter on the software inventory page displays all software with official [Common Platform Enumerations (CPE)](https://nvd.nist.gov/products/cpe). The view includes details such as the name of the vendor, number of weaknesses, threats, and number of exposed devices.

You can remove the **CPE Available** filter, to gain further visibility and increase your search scope across all installed software in your organization. This means all software, including software without a CPE, will now display in the software inventory list.

> [!NOTE]
> As CPEs are used by vulnerability management to identify the software and any vulnerabilities, even though software products without a CPE will be shown in the software inventory page, they will not be supported by threat and vulnerability management and information like, exploits, number of exposed devices, and weaknesses won't be available for them.

## How it works

In the field of discovery, we're leveraging the same set of signals that is responsible for detection and vulnerability assessment in [Microsoft Defender for Endpoint detection and response capabilities](overview-endpoint-detection-response.md).

Since it's real time, in a matter of minutes, you'll see vulnerability information as they get discovered. The engine automatically grabs information from multiple security feeds. In fact, you'll see if a particular software is connected to a live threat campaign. It also provides a link to a Threat Analytics report soon as it's available.

## Navigate to the Software inventory page

Access the software inventory page by selecting **Software inventory** from the threat and vulnerability management navigation menu in the [Microsoft 365 Defender portal](portal-overview.md).

View software on specific devices in the individual devices pages from the [devices list](machines-view-overview.md).

> [!NOTE]
> If you search for software using the Microsoft Defender for Endpoint global search, make sure to put an underscore instead of a space. For example, for the best search results you'd write "windows_10" or "windows_11" instead of "Windows 10" or "Windows 11".

## Software inventory overview

The **Software inventory** page opens with a list of software installed in your network, including the vendor name, weaknesses found, threats associated with them, exposed devices, impact to exposure score, and tags.

By default, the view is filtered by **Product Code (CPE): Available**. You can also filter the list view based on weaknesses found in the software, threats associated with them, and tags like whether the software has reached end-of-support.

:::image type="content" source="images/tvm-software-inventory.png" alt-text="The software inventory landing page" lightbox="images/tvm-software-inventory.png":::

Select the software that you want to investigate. A flyout panel will open with a more compact view of the information on the page. You can either dive deeper into the investigation and select **Open software page**, or flag any technical inconsistencies by selecting **Report inaccuracy**.

### Software that isn't supported

Software that isn't currently supported by threat & vulnerability management may be present in the software inventory page. Because it is not supported, only limited data will be available. Filter by unsupported software with the "Not available" option in the "Weakness" section.

:::image type="content" source="images/tvm-unsupported-software-filter.png" alt-text="The Unsupported software filter" lightbox="images/tvm-unsupported-software-filter.png":::

The following indicates that software is not supported:

- Weaknesses field shows "Not available"
- Exposed devices field shows a dash
- Informational text added in side panel and in software page
- The software page won't have the security recommendations, discovered vulnerabilities, or event timeline sections

## Software inventory on devices

From the Microsoft 365 Defender portal navigation panel, go to the **[Device inventory](machines-view-overview.md)**. Select the name of a device to open the device page (like Computer1), then select the **Software inventory** tab to see a list of all the known software present on the device. Select a specific software entry to open the flyout with more information.

Software may be visible at the device level even if it's currently not supported by threat and vulnerability management. However, only limited data will be available. You'll know if software is unsupported because it will say "Not available" in the "Weakness" column.

Software with no CPE can also show up under this device-specific software inventory.

### Software evidence

See evidence of where we detected a specific software on a device from the registry, disk, or both. You can find it on any device in the device software inventory.

Select a software name to open the flyout, and look for the section called "Software Evidence."

:::image type="content" source="images/tvm-software-evidence.png" alt-text="The Windows 10 from the devices list" lightbox="images/tvm-software-evidence.png":::

## Software pages

You can view software pages a few different ways:

- Software inventory page > Select a software name > Select **Open software page** in the flyout
- [Security recommendations page](tvm-security-recommendation.md) > Select a recommendation > Select **Open software page** in the flyout
- [Event timeline page](threat-and-vuln-mgt-event-timeline.md) > Select an event > Select the hyperlinked software name (like Visual Studio 2017) in the section called "Related component" in the flyout

 A full page will appear with all the details of a specific software and the following information:

- Side panel with vendor information, prevalence of the software in the organization (including number of devices it's installed on, and exposed devices that aren't patched), whether and exploit is available, and impact to exposure score.
- Data visualizations showing the number of, and severity of, vulnerabilities and misconfigurations. Also, graphs with the number of exposed devices.
- Tabs showing information such as:
  - Corresponding security recommendations for the weaknesses and vulnerabilities identified.
  - Named CVEs of discovered vulnerabilities.
  - Devices that have the software installed (along with device name, domain, OS, and more).
  - Software version list (including number of devices the version is installed on, the number of discovered vulnerabilities, and the names of the installed devices).

    :::image type="content" source="images/tvm-software-page-example.png" alt-text="The Visual Studio 2017 with the software details, weaknesses, exposed devices, and more" lightbox="images/tvm-software-page-example.png":::

## Report inaccuracy

Report an inaccuracy when you see vulnerability information and assessment results that are incorrect.

1. Open the software flyout on the Software inventory page.
2. Select **Report inaccuracy**.
3. From the flyout pane, choose an issue to report from:

    - a software detail is wrong
    - the software is not installed on any device in my org
    - the number of installed or exposed devices is wrong

4. Fill in the requested details about the inaccuracy. This will vary depending on the issue you're reporting.

![Report inaccuracy](images/report-inaccuracy-software.png)

5. Select **Submit**. Your feedback is immediately sent to the threat and vulnerability management experts.

## Related articles

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [View and organize the Microsoft Defender for Endpoint Devices list](machines-view-overview.md)
