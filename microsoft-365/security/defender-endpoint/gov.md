---
title: Microsoft Defender for Endpoint for US Government customers
description: Learn about the Microsoft Defender for Endpoint for US Government customers requirements and capabilities available
keywords: government, gcc, high, requirements, capabilities, defender, Microsoft Defender for Endpoint, endpoint, dod
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.reviewer: jesquive
ms.localizationpriority: medium
ms.date: 04/19/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
---

# Microsoft Defender for Endpoint for US Government customers

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Microsoft Defender for Endpoint for US Government customers, built in the Azure US Government environment, uses the same underlying technologies as Defender for Endpoint in Azure Commercial.

This offering is available to GCC, GCC High, and DoD customers and is based on the same prevention, detection, investigation, and remediation as the commercial version. However, there are some differences in the availability of capabilities for this offering.

> [!NOTE]
> If you are a GCC customer using Defender for Endpoint in Commercial, please refer to the public documentation pages.

## Licensing requirements

Microsoft Defender for Endpoint for US Government customers requires one of the following Microsoft volume licensing offers:

### Desktop licensing

|GCC|GCC High|DoD|
|---|---|---|
|Microsoft 365 GCC G5|Microsoft 365 E5 for GCC High|Microsoft 365 G5 for DOD|
|Microsoft 365 G5 Security GCC|Microsoft 365 G5 Security for GCC High|Microsoft 365 G5 Security for DOD|
|Microsoft Defender for Endpoint - GCC|Microsoft Defender for Endpoint for GCC High|Microsoft Defender for Endpoint for DOD|
|Windows 10 Enterprise E5 GCC|Windows 10 Enterprise E5 for GCC High|Windows 10 Enterprise E5 for DOD|

### Server licensing

|GCC|GCC High|DoD|
|---|---|---|
|Microsoft Defender for Endpoint Server GCC|Microsoft Defender for Endpoint Server for GCC High|Microsoft Defender for Endpoint Server for DOD|
|Microsoft Defender for servers|Microsoft Defender for servers - Government|Microsoft Defender for servers - Government|

## Portal URLs

The following are the Microsoft Defender for Endpoint portal URLs for US Government customers:

<br />

|Customer type|Portal URL|
|---|---|
|GCC|<https://security.microsoft.com>|
|GCC High|<https://security.microsoft.us>|
|DoD|<https://security.apps.mil>|

> [!NOTE]
> If you are a GCC customer and in the process of moving from Microsoft Defender for Endpoint commercial to GCC, use https://transition.security.microsoft.com to access your Microsoft Defender for Endpoint commercial data.

## Endpoint versions

### Standalone OS versions

The following OS versions are supported:

<br />

OS version|GCC|GCC High|DoD
:---|:---:|:---:|:---:
Windows 11|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 10, version 21H1 and above|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 10, version 20H2 (with [KB4586853](https://support.microsoft.com/help/4586853) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 10, version 2004 (with [KB4586853](https://support.microsoft.com/help/4586853) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-version-2004-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-version-2004-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-version-2004-end-of-servicing), please upgrade
Windows 10, version 1909 (with [KB4586819](https://support.microsoft.com/help/4586819) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1909-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1909-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1909-end-of-servicing), please upgrade
Windows 10, version 1903 (with [KB4586819](https://support.microsoft.com/help/4586819) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1903-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1903-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1903-end-of-servicing), please upgrade
Windows 10, version 1809 (with [KB4586839](https://support.microsoft.com/help/4586839) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1803-1809-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1803-1809-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1803-1809-end-of-servicing), please upgrade
Windows 10, version 1803 (with [KB4598245](https://support.microsoft.com/help/4598245) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1803-1809-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1803-1809-end-of-servicing), please upgrade|![Yes](images/svg/check-yes.svg) <br /> Note: [Deprecated](/lifecycle/announcements/windows-10-1803-1809-end-of-servicing), please upgrade
Windows 10, version 1709|![No.](images/svg/check-no.svg) <br /> Note: Won't be supported|![Yes](images/svg/check-yes.svg) With [KB4499147](https://support.microsoft.com/help/4499147) <sup>1</sup> <br /> Note: [Deprecated](/lifecycle/announcements/revised-end-of-service-windows-10-1709), please upgrade|![No](images/svg/check-no.svg) <br /> Note: Won't be supported
Windows 10, version 1703 and earlier|![No.](images/svg/check-no.svg) <br /> Note: Won't be supported|![No](images/svg/check-no.svg) <br /> Note: Won't be supported|![No](images/svg/check-no.svg) <br /> Note: Won't be supported
Windows Server 2022|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2019 (with [KB4586839](https://support.microsoft.com/help/4586839) <sup>1</sup>)|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2016 (Modern) <sup>2</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2012 R2 (Modern) <sup>2</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2016 (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2012 R2 (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2008 R2 SP1 (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 8.1 Enterprise (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 8 Pro (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 7 SP1 Enterprise (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows 7 SP1 Pro (Legacy) <sup>3</sup>|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Linux|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
macOS|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Android|![Yes.](images/svg/check-yes.svg) <br /> |![Yes](images/svg/check-yes.svg) <br /> |![Yes](images/svg/check-yes.svg) <br /> 
iOS|![Yes.](images/svg/check-yes.svg) <br /> |![Yes](images/svg/check-yes.svg) <br /> |![Yes](images/svg/check-yes.svg) <br /> 

**Footnotes**

   <sup>1</sup> The patch must be deployed prior to device onboarding in order to configure Defender for Endpoint to the correct environment.

   <sup>2</sup> Learn about the [unified modern solution for Windows 2016 and 2012 R2](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution). If you have previously onboarded your servers using MMA, follow the guidance provided in [Server migration](server-migration.md) to migrate to the new solution.

   <sup>3</sup> When using [Microsoft Monitoring Agent](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma) you'll need to choose "Azure US Government" under "Azure Cloud" if using the [setup wizard](/azure/log-analytics/log-analytics-windows-agents#install-agent-using-setup-wizard), or if using a [command line](/azure/log-analytics/log-analytics-windows-agents#install-agent-using-command-line) or a [script](/azure/log-analytics/log-analytics-windows-agents#install-agent-using-dsc-in-azure-automation) - set the "OPINSIGHTS_WORKSPACE_AZURE_CLOUD_TYPE" parameter to 1. </br>
    The minimum MMA supported version is 10.20.18029 (March 2020).

### OS versions when using Microsoft Defender for servers

The following OS versions are supported when using [Microsoft Defender for servers](/azure/security-center/security-center-wdatp):

<br />

OS version|GCC|GCC High|DoD
:---|:---:|:---:|:---:
Windows Server 2022|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2019|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2016|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2012 R2|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)
Windows Server 2008 R2 SP1|![Yes.](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)

## Required connectivity settings

If a proxy or firewall is blocking all traffic by default and allowing only specific domains through, add the domains listed in the downloadable sheet to the allowed domains list.

The following downloadable spreadsheet lists the services and their associated URLs your network must be able to connect to. Verify there are no firewall or network-filtering rules that would deny access to these URLs, or create an *allow* rule specifically for them.

|Spreadsheet of domains list| Description|
|---|---|
|Microsoft Defender for Endpoint URL list for commercial customers| Spreadsheet of specific DNS records for service locations, geographic locations, and OS for commercial customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)
| Microsoft Defender for Endpoint URL list for Gov/GCC/DoD | Spreadsheet of specific DNS records for service locations, geographic locations, and OS for Gov/GCC/DoD customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/a/0/6a041da5-c43b-4f17-8167-79dfdc10507f/mde-urls-gov.xlsx)

For more information, see [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md).

> [!NOTE]
> The spreadsheet contains commercial URLs as well, make sure you check the "US Gov" tabs.
>
> When filtering, look for the records labeled as "US Gov" and your specific cloud under the geography column.

## API

Instead of the public URIs listed in our [API documentation](apis-intro.md), you'll need to use the following URIs:

<br />

|Endpoint type|GCC|GCC High & DoD|
|---|---|---|
|Login|`https://login.microsoftonline.com`|`https://login.microsoftonline.us`|
|Defender for Endpoint API|`https://api-gcc.securitycenter.microsoft.us`|`https://api-gov.securitycenter.microsoft.us`|

## Feature parity with commercial

Defender for Endpoint for US Government customers doesn't have complete parity with the commercial offering. While our goal is to deliver all commercial features and functionality to our US Government customers, there are some capabilities not yet available we want to highlight.

These are the known gaps:

|Feature name|GCC|GCC High|DoD|
|---|:---:|:---:|:---:|
|Microsoft Secure Score|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Microsoft Threat Experts|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|
| Microsoft Defender for Endpoint Security Configuration Management|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|
   
**Footnote**

   <sup>1</sup> While Microsoft Secure Score is available for GCC customers, there are some security recommendations that aren't available.


These are the features and known gaps for [Mobile Threat Defense (Microsoft Defender for Endpoint on Android & iOS)](mtd.md):

<br />

|Feature name|GCC|GCC High|DoD|
|---|:---:|:---:|:---:|
|Reports: Web content filtering|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Reports: Device health|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Web Protection (Anti-Phishing and custom indicators)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Malware Protection (Android-Only)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Jailbreak Detection (iOS-Only)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Conditional Access/Conditional Launch|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Support for MAM|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Privacy Controls|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|
|Microsoft Defender Vulnerability Management (MDVM))|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|![Yes](images/svg/check-yes.svg)|


[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
