---
title: "Microsoft 365 IP Address and URL web service"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 01/08/2025
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: high
ms.collection: 
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- m365initiative-coredeploy
- must-keep
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
ms.reviewer: pandrew
search.appverid:
- MET150
- MOE150
- BCS160
description: Learn how to use the Microsoft 365 IP Address and URL web service to help you better identify and differentiate Microsoft 365 network traffic.
---

# Microsoft 365 IP Address and URL web service

The Microsoft 365 IP Address and URL web service helps you better identify and differentiate Microsoft 365 network traffic, making it easier for you to evaluate, configure, and stay up to date with changes. This REST-based web service replaces the previous XML downloadable files, which were phased out on October 2, 2018.

As a customer or a network perimeter device vendor, you can build against the web service for Microsoft 365 IP address and FQDN entries. You can access the data directly in a web browser using these URLs:

- For the latest version of the Microsoft 365 URLs and IP address ranges, use [https://endpoints.office.com/version](https://endpoints.office.com/version?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7).
- For the data on the Microsoft 365 URLs and IP address ranges page for firewalls and proxy servers, use [https://endpoints.office.com/endpoints/worldwide](https://endpoints.office.com/endpoints/worldwide?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7).
- To get all the latest changes since July 2018 when the web service was first available, use [https://endpoints.office.com/changes/worldwide/0000000000](https://endpoints.office.com/changes/worldwide/0000000000?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7).

As a customer, you can use this web service to:

- Update your PowerShell scripts to obtain Microsoft 365 endpoint data and modify any formatting for your networking devices.
- Use this information to update PAC files deployed to client computers.

As a network perimeter device vendor, you can use this web service to:

- Create and test device software to download the list for automated configuration.
- Check for the current version.
- Get the current changes.

> [!NOTE]
> If you're using Azure ExpressRoute to connect to Microsoft 365, review [Azure ExpressRoute for Microsoft 365](azure-expressroute.md) to familiarize yourself with the Microsoft 365 services supported over Azure ExpressRoute. Also review the article [Microsoft 365 URLs and IP address ranges](urls-and-ip-address-ranges.md) to understand which network requests for Microsoft 365 applications require Internet connectivity. This will help to better configure your perimeter security devices.

For more information, see:

- [Announcement blog post in the Office 365 Tech Community Forum](https://techcommunity.microsoft.com/t5/Office-365-Blog/Announcing-Office-365-endpoint-categories-and-Office-365-IP/ba-p/177638)
- [Office 365 Tech Community Forum for questions about use of the web services](https://techcommunity.microsoft.com/t5/Office-365-Networking/bd-p/Office365Networking)

## Common parameters

These parameters are common across all the web service methods:

- **format=\<JSON \| CSV\>** —By default, the returned data format is JSON. Use this optional parameter to return the data in comma-separated values (CSV) format.
- **ClientRequestId=\<guid\>** —A required GUID that you generate for client association. Generate a unique GUID for each machine that calls the web service (the scripts included on this page generate a GUID for you). Don't use the GUIDs shown in the following examples because they might be blocked by the web service in the future. GUID format is _xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx_, where x represents a hexadecimal number.

  To generate a GUID, you can use the [New-Guid](/powershell/module/microsoft.powershell.utility/new-guid) PowerShell command, or use an online service such as [Online GUID Generator](https://www.guidgenerator.com/).

## Version web method

Microsoft updates the Microsoft 365 IP address and FQDN entries at the beginning of each month. Out-of-band updates are sometimes published due to support incidents, security updates or other operational requirements.

The data for each published instance is assigned a version number, and the version web method enables you to check for the latest version of each Microsoft 365 service instance. We recommend that you check the version not more than once an hour.

Parameters for the version web method are:

- **AllVersions=\<true \| false\>** —By default, the version returned is the latest. Include this optional parameter to request all published versions since the web service was first released.
- **Format=\<JSON \| CSV \| RSS\>** —In addition to the JSON and CSV formats, the version web method also supports RSS. You can use this optional parameter along with the _AllVersions=true_ parameter to request an RSS feed that can be used with Outlook or other RSS readers.
- **Instance=\<Worldwide \| China \| USGovDoD \| USGovGCCHigh\>** —This optional parameter specifies the instance to return the version for. If omitted, all instances are returned. Valid instances are: Worldwide, China, USGovDoD, USGovGCCHigh.

The version web method isn't rate limited and doesn't ever return 429 HTTP Response Codes. The response to the version web method does include a cache-control header recommending caching of the data for 1 hour. The result from the version web method can be a single record or an array of records. The elements of each record are:

- instance—The short name of the Microsoft 365 service instance.
- latest—The latest version for endpoints of the specified instance.
- versions—A list of all previous versions for the specified instance. This element is only included if the _AllVersions_ parameter is true.

### Version web method examples

Example 1 request URI: <https://endpoints.office.com/version?ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This URI returns the latest version of each Microsoft 365 service instance. Example result:

```json
[
 {
  "instance": "Worldwide",
  "latest": "2018063000"
 },
 {
  "instance": "USGovDoD",
  "latest": "2018063000"
 },
 {
  "instance": "USGovGCCHigh",
  "latest": "2018063000"
 },
 {
  "instance": "China",
  "latest": "2018063000"
 }
]
```

> [!IMPORTANT]
> The GUID for the ClientRequestID parameter in these URIs are only an example. To try out the web service URIs, generate your own GUID. The GUIDs shown in these examples might be blocked by the web service in the future.

Example 2 request URI: <https://endpoints.office.com/version/Worldwide?ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This URI returns the latest version of the specified Microsoft 365 service instance. Example result:

```json
{
 "instance": "Worldwide",
 "latest": "2018063000"
}
```

Example 3 request URI: <https://endpoints.office.com/version/Worldwide?Format=CSV&ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This URI shows output in CSV format. Example result:

```csv
instance,latest
Worldwide,2018063000
```

Example 4 request URI: <https://endpoints.office.com/version/Worldwide?AllVersions=true&ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This URI shows all prior versions that have been published for the Microsoft 365 worldwide service instance. Example result:

```json
{
  "instance": "Worldwide",
  "latest": "2018063000",
  "versions": [
    "2018063000",
    "2018062000"
  ]
}
```

Example 5 RSS Feed URI: <https://endpoints.office.com/version/worldwide?clientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7&allVersions=true&format=RSS>

This URI shows an RSS feed of the published versions that include links to the list of changes for each version. Example result:

```xml
<?xml version="1.0" encoding="ISO-8859-1"?>
<rss version="2.0" xmlns:a10="https://www.w3.org/2005/Atom">
<channel>
<link>https://aka.ms/o365ip</link>
<description/>
<language>en-us</language>
<lastBuildDate>Thu, 02 Aug 2018 00:00:00 Z</lastBuildDate>
<item>
<guid isPermaLink="false">2018080200</guid>
<link>https://endpoints.office.com/changes/Worldwide/2018080200?singleVersion&clientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7</link> <description>Version 2018080200 includes 2 changes. IPs: 2 added and 0 removed.</description>
<pubDate>Thu, 02 Aug 2018 00:00:00 Z</pubDate>
</item>
```

## Endpoints web method

The endpoints web method returns all records for IP address ranges and URLs that make up the Microsoft 365 service. The latest data from the endpoints web method should always be used for network device configuration. Microsoft provides advance notice 30 days prior to publishing new additions to give you time to update access control lists and proxy server bypass lists. We recommend that you only call the endpoints web method again when the version web method indicates that a new version of the data is available.

Parameters for the endpoints web method are:

- **ServiceAreas=\<Common \| Exchange \| SharePoint \| Skype\>** —A comma-separated list of service areas. Valid items are _Common_, _Exchange_, _SharePoint_, and _Skype_. Because _Common_ service area items are a prerequisite for all other service areas, the web service always includes them. If you don't include this parameter, all service areas are returned.
- **TenantName=\<tenant_name\>** —Your Microsoft 365 tenant name. The web service takes your provided name and inserts it in parts of URLs that include the tenant name. If you don't provide a tenant name, those parts of URLs have the wildcard character (\*).
- **NoIPv6=\<true \| false\>** —Set the value to _true_ to exclude IPv6 addresses from the output if you don't use IPv6 in your network.
- **Instance=\<Worldwide \| China \| USGovDoD \| USGovGCCHigh\>** —This required parameter specifies the instance from which to return the endpoints. Valid instances are: _Worldwide_, _China_, _USGovDoD_, and _USGovGCCHigh_.

If you call the endpoints web method too many times from the same client IP address, you might receive HTTP response code _429 (Too Many Requests)_. If you get this response code, wait 1 hour before repeating your request, or generate a new GUID for the request. As a general best practice, only call the endpoints web method when the version web method indicates that a new version is available.

The result from the endpoints web method is an array of records in which each record represents a specific endpoint set. The elements for each record are:

- id—The immutable ID number of the endpoint set.
- serviceArea—The service area that this is part of: _Common_, _Exchange_, _SharePoint_, or _Skype_.
- urls—URLs for the endpoint set. A JSON array of DNS records. Omitted if blank.
- tcpPorts—TCP ports for the endpoint set. All ports elements are formatted as a comma-separated list of ports or port ranges separated by a dash character (-). Ports apply to all IP addresses and all URLs in the endpoint set for a given category. Omitted if blank.
- udpPorts—UDP ports for the IP address ranges in this endpoint set. Omitted if blank.
- ips —The IP address ranges associated with this endpoint set as associated with the listed TCP or UDP ports. A JSON array of IP address ranges. Omitted if blank.
- category—The connectivity category for the endpoint set. Valid values are _Optimize_, _Allow_, and _Default_. If you search the endpoints web method output for the category of a specific IP address or URL, it's possible that your query will return multiple categories. In such a case, follow the recommendation for the highest priority category. For example, if the endpoint appears in both _Optimize_ and _Allow_, you should follow the requirements for _Optimize_. Required.
- expressRoute — _True_ if this endpoint set is routed over ExpressRoute, _False_ if not.
- required — _True_ if this endpoint set is required to have connectivity for Microsoft 365 to be supported. _False_ if this endpoint set is optional.
- notes—For optional endpoints, this text describes Microsoft 365 functionality that would be unavailable if IP addresses or URLs in this endpoint set can't be accessed at the network layer. Omitted if blank.

### Endpoints web method examples

Example 1 request URI: <https://endpoints.office.com/endpoints/Worldwide?ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This URI obtains all endpoints for the Microsoft 365 worldwide instance for all workloads. Example result that shows an excerpt of the output:

```json
[
 {
  "id": 1,
  "serviceArea": "Exchange",
  "serviceAreaDisplayName": "Exchange Online",
  "urls":
   [
    "*.protection.outlook.com"
   ],
  "ips":
   [
    "2a01:111:f403::/48", "23.103.132.0/22", "23.103.136.0/21", "23.103.198.0/23", "23.103.212.0/22", "40.92.0.0/14", "40.107.0.0/17", "40.107.128.0/18", "52.100.0.0/14", "213.199.154.0/24", "213.199.180.128/26", "94.245.120.64/26", "207.46.163.0/24", "65.55.88.0/24", "216.32.180.0/23", "23.103.144.0/20", "65.55.169.0/24", "207.46.100.0/24", "2a01:111:f400:7c00::/54", "157.56.110.0/23", "23.103.200.0/22", "104.47.0.0/17", "2a01:111:f400:fc00::/54", "157.55.234.0/24", "157.56.112.0/24", "52.238.78.88/32"
   ],
  "tcpPorts": "443",
  "expressRoute": true,
  "category": "Allow"
 },
 {
  "id": 2,
  "serviceArea": "Exchange",
  "serviceAreaDisplayName": "Exchange Online",
  "urls":
   [
    "*.mail.protection.outlook.com"
   ],
```

The full output of the request in this example would contain other endpoint sets.

Example 2 request URI: [https://endpoints.office.com/endpoints/Worldwide?ServiceAreas=Exchange&amp;ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7](https://endpoints.office.com/endpoints/Worldwide?ServiceAreas=Exchange&amp;ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7)

This example obtains endpoints for the Microsoft 365 Worldwide instance for Exchange Online and dependencies only.

The output, for example,  2 is similar to example 1 except that the results wouldn't include endpoints for SharePoint or Skype for Business Online.

## Changes web method

The changes web method returns the most recent updates that have been published, typically the previous month's changes to IP address ranges and URLs.

The most critical changes to endpoints data are new URLs and IP addresses. Failure to add an IP address to a firewall access control list or a URL to a proxy server bypass list can cause an outage for Microsoft 365 users behind that network device. Notwithstanding operational requirements, new endpoints are published to the web service 30 days in advance of the date the endpoints are provisioned for use to give you time to update access control lists and proxy server bypass lists.

The required parameter for the changes web method is:

- **Version=\<YYYYMMDDNN>** —Required URL route parameter. This value is the version that you have currently implemented. The web service will return the changes since that version. The format is _YYYYMMDDNN_, where _NN_ is a natural number incremented if there are multiple versions required to be published on a single day, with _00_ representing the first update for a given day. The web service requires the _version_ parameter to contain exactly 10 digits.

The changes web method is rate limited in the same way as the endpoints web method. If you receive a 429 HTTP response code, wait 1 hour before repeating your request or generate a new GUID for the request.

The result from the changes web method is an array of records in which each record represents a change in a specific version of the endpoints. The elements for each record are:

- id—The immutable ID of the change record.
- endpointSetId—The ID of the endpoint set record that is changed.
- disposition—Describes what the change did to the endpoint set record. Values are _change_, _add_, or _remove_.
- impact—Not all changes will be equally important to every environment. This element describes the expected impact to an enterprise network perimeter environment as a result of this change. This element is included only in change records of version **2018112800** and later. Options for the impact are:
   - AddedIp – An IP address was added to Microsoft 365 and will be live on the service soon. This represents a change you need to take on a firewall or other layer 3 network perimeter device. If you don't add this before we start using it, you might experience an outage.
   - AddedUrl – A URL was added to Microsoft 365 and will be live on the service soon. This represents a change you need to take on a proxy server or URL parsing network perimeter device. If you don't add this URL before we start using it, you might experience an outage.
   - AddedIpAndUrl—Both an IP address and a URL were added. This represents a change you need to take on either a firewall layer 3 device or a proxy server or URL parsing device. If you don't add this IP/URL pair before we start using it, you might experience an outage.
   - AddedSubstituteUrl – An FQDN previously unpublished due to a wildcard is now published because the wildcard URL was removed. This change is effective immediately.  
   - RemovedIpOrUrl – At least one IP address or URL was removed from Microsoft 365. Remove the network endpoints from your perimeter devices, but there's no deadline for you to do this.
   - ChangedIsExpressRoute – The ExpressRoute support attribute was changed. If you use ExpressRoute, you might need to take action depending on your configuration.
   - MovedIpOrUrl – We moved an IP address or Url between this endpoint set and another one. Generally no action is required.
   - RemovedDuplicateIpOrUrl – We removed a duplicate IP address or Url but it's still published for Microsoft 365. Generally no action is required.
   - OtherNonPriorityChanges – We changed something less critical than all of the other options, such as the contents of a note field.
- version—The version of the published endpoint set in which the change was introduced. Version numbers are of the format _YYYYMMDDNN_, where _NN_ is a natural number incremented if there are multiple versions required to be published on a single day.
- previous—A substructure detailing previous values of changed elements on the endpoint set. This won't be included for newly added endpoint sets. Includes  _ExpressRoute_, _serviceArea_, _category_, _required_, _tcpPorts_, _udpPorts_, and _notes_.
- current—A substructure detailing updated values of changes elements on the endpoint set. Includes _ExpressRoute_, _serviceArea_, _category_, _required_, _tcpPorts_, _udpPorts_, and _notes_.
- add —A substructure detailing items to be added to endpoint set collections. Omitted if there are no additions.
  — effectiveDate—Defines the data when the additions will be live in the service.
  — ips—Items to be added to the _ips_ array.
  — urls- Items to be added to the _urls_ array.
- remove—A substructure detailing items to be removed from the endpoint set. Omitted if there are no removals.
  — ips—Items to be removed from the _ips_ array.
  — urls- Items to be removed from the _urls_ array.
  
### Changes web method examples

Example 1 request URI: <https://endpoints.office.com/changes/worldwide/0000000000?ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This requests all previous changes to the Microsoft 365 worldwide service instance. Example result:

```json
[
 {
  "id": 424,
  "endpointSetId": 32,
  "disposition": "Change",
  "version": "2018062700",
  "remove":
   {
    "urls":
     [
      "*.api.skype.com", "skypegraph.skype.com"
     ]
   }
 },
 {
  "id": 426,
  "endpointSetId": 31,
  "disposition": "Change",
  "version": "2018062700",
  "add":
   {
    "effectiveDate": "20180609",
    "ips":
     [
      "51.140.203.190/32"
     ]
   },
  "remove":
   {
    "ips":
     [
```

Example 2 request URI: <https://endpoints.office.com/changes/worldwide/2018062700?ClientRequestId=b10c5ed1-bad1-445f-b386-b919946339a7>

This requests changes since the specified version to the Microsoft 365 Worldwide instance. In this case, the version specified is the latest. Example result:

```json
[
  {
    "id":3,
    "endpointSetId":33,
    "changeDescription":"Removing old IP prefixes",
    "disposition":"Change",
    "version":"2018031301",
    "remove":{
      "ips":["65.55.127.0/24","66.119.157.192/26","66.119.158.0/25",
      "111.221.76.128/25","111.221.77.0/26","207.46.5.0/24"]
    }
  },
  {
    "id":4,
    "endpointSetId":45,
    "changeDescription":"Removing old IP prefixes",
    "disposition":"Change",
    "version":"2018031301",
    "remove":{
      "ips":["13.78.93.8/32","40.113.87.220/32","40.114.149.220/32",
      "40.117.100.83/32","40.118.214.164/32","104.208.31.113/32"]
    }
  }
]
```

## Example PowerShell script

You can run this PowerShell script to see if there are actions you need to take for updated data. You can run this script as a scheduled task to check for a version update. To avoid excessive load on the web service, try not to run the script more than once an hour.

The script does the following:

- Checks the version number of the current Microsoft 365 Worldwide instance endpoints by calling the web service REST API.
- Checks for a current version file at _$Env:TEMP\O365_endpoints_latestversion.txt_. The path of the global variable **$Env:TEMP** is usually _C:\Users\\<username\>\AppData\Local\Temp_.
- If this is the first time the script has been run, the script returns the current version and all current IP addresses and URLs, writes the endpoints version to the file _$Env:TEMP\O365_endpoints_latestversion.txt_ and the endpoints data output to the file _$Env:TEMP\O365_endpoints_data.txt_. You can modify the path and/or name of the output file by editing these lines:

    ``` powershell
    $versionpath = $Env:TEMP + "\O365_endpoints_latestversion.txt"
    $datapath = $Env:TEMP + "\O365_endpoints_data.txt"
    ```

- On each subsequent execution of the script, if the latest web service version is identical to the version in the _O365_endpoints_latestversion.txt_ file, the script exits without making any changes.
- When the latest web service version is newer than the version in the _O365_endpoints_latestversion.txt_ file, the script returns the endpoints and filters for the **Allow** and **Optimize** category endpoints, updates the version in the _O365_endpoints_latestversion.txt_ file, and writes the updated data to the _O365_endpoints_data.txt_ file.

The script generates a unique _ClientRequestId_ for the computer it's executed on, and reuses this ID across multiple calls. This ID is stored in the _O365_endpoints_latestversion.txt_ file.

### To run the PowerShell script

1. Copy the script and save it to your local hard drive or script location as _Get-O365WebServiceUpdates.ps1_.
1. Execute the script in your preferred script editor such as the PowerShell ISE or VS Code, or from a PowerShell console using the following command:

    ``` powershell
   powershell.exe -file <path>\Get-O365WebServiceUpdates.ps1
    ```

    There are no parameters to pass to the script.

```powershell
<# Get-O365WebServiceUpdates.ps1
From https://aka.ms/ipurlws
v1.1 8/6/2019

DESCRIPTION
This script calls the REST API of the Microsoft 365 IP and URL Web Service (Worldwide instance)
and checks to see if there has been a new update since the version stored in an existing
$Env:TEMP\O365_endpoints_latestversion.txt file in your user directory's temp folder
(usually C:\Users\<username>\AppData\Local\Temp).
If the file doesn't exist, or the latest version is newer than the current version in the
file, the script returns IPs and/or URLs that have been changed, added or removed in the latest
update and writes the new version and data to the output file $Env:TEMP\O365_endpoints_data.txt.

USAGE
Run as a scheduled task every 60 minutes.

PARAMETERS
n/a

PREREQUISITES
PS script execution policy: Bypass
PowerShell 3.0 or later
Does not require elevation
#>

#Requires -Version 3.0

# web service root URL
$ws = "https://endpoints.office.com"
# path where output files will be stored
$versionpath = $Env:TEMP + "\O365_endpoints_latestversion.txt"
$datapath = $Env:TEMP + "\O365_endpoints_data.txt"

# fetch client ID and version if version file exists; otherwise create new file and client ID
if (Test-Path $versionpath) {
    $content = Get-Content $versionpath
    $clientRequestId = $content[0]
    $lastVersion = $content[1]
    Write-Output ("Version file exists! Current version: " + $lastVersion)
}
else {
    Write-Output ("First run! Creating version file at " + $versionpath + ".")
    $clientRequestId = [GUID]::NewGuid().Guid
    $lastVersion = "0000000000"
    @($clientRequestId, $lastVersion) | Out-File $versionpath
}

# call version method to check the latest version, and pull new data if version number is different
$version = Invoke-RestMethod -Uri ($ws + "/version/Worldwide?clientRequestId=" + $clientRequestId)
if ($version.latest -gt $lastVersion) {
    Write-Host "New version of Microsoft 365 worldwide commercial service instance endpoints detected"
    # write the new version number to the version file
    @($clientRequestId, $version.latest) | Out-File $versionpath
    # invoke endpoints method to get the new data
    $endpointSets = Invoke-RestMethod -Uri ($ws + "/endpoints/Worldwide?clientRequestId=" + $clientRequestId)
    # filter results for Allow and Optimize endpoints, and transform these into custom objects with port and category
    # URL results
    $flatUrls = $endpointSets | ForEach-Object {
        $endpointSet = $_
        $urls = $(if ($endpointSet.urls.Count -gt 0) { $endpointSet.urls } else { @() })
        $urlCustomObjects = @()
        if ($endpointSet.category -in ("Allow", "Optimize")) {
            $urlCustomObjects = $urls | ForEach-Object {
                [PSCustomObject]@{
                    category = $endpointSet.category;
                    url      = $_;
                    tcpPorts = $endpointSet.tcpPorts;
                    udpPorts = $endpointSet.udpPorts;
                }
            }
        }
        $urlCustomObjects
    }
    # IPv4 results
    $flatIp4s = $endpointSets | ForEach-Object {
        $endpointSet = $_
        $ips = $(if ($endpointSet.ips.Count -gt 0) { $endpointSet.ips } else { @() })
        # IPv4 strings contain dots
        $ip4s = $ips | Where-Object { $_ -like '*.*' }
        $ip4CustomObjects = @()
        if ($endpointSet.category -in ("Allow", "Optimize")) {
            $ip4CustomObjects = $ip4s | ForEach-Object {
                [PSCustomObject]@{
                    category = $endpointSet.category;
                    ip = $_;
                    tcpPorts = $endpointSet.tcpPorts;
                    udpPorts = $endpointSet.udpPorts;
                }
            }
        }
        $ip4CustomObjects
    }
    # IPv6 results
    $flatIp6s = $endpointSets | ForEach-Object {
        $endpointSet = $_
        $ips = $(if ($endpointSet.ips.Count -gt 0) { $endpointSet.ips } else { @() })
        # IPv6 strings contain colons
        $ip6s = $ips | Where-Object { $_ -like '*:*' }
        $ip6CustomObjects = @()
        if ($endpointSet.category -in ("Optimize")) {
            $ip6CustomObjects = $ip6s | ForEach-Object {
                [PSCustomObject]@{
                    category = $endpointSet.category;
                    ip = $_;
                    tcpPorts = $endpointSet.tcpPorts;
                    udpPorts = $endpointSet.udpPorts;
                }
            }
        }
        $ip6CustomObjects
    }

    # write output to screen
    Write-Output ("Client Request ID: " + $clientRequestId)
    Write-Output ("Last Version: " + $lastVersion)
    Write-Output ("New Version: " + $version.latest)
    Write-Output ""
    Write-Output "IPv4 Firewall IP Address Ranges"
    ($flatIp4s.ip | Sort-Object -Unique) -join "," | Out-String
    Write-Output "IPv6 Firewall IP Address Ranges"
    ($flatIp6s.ip | Sort-Object -Unique) -join "," | Out-String
    Write-Output "URLs for Proxy Server"
    ($flatUrls.url | Sort-Object -Unique) -join "," | Out-String
    Write-Output ("IP and URL data written to " + $datapath)

    # write output to data file
    Write-Output "Microsoft 365 IP and UL Web Service data" | Out-File $datapath
    Write-Output "Worldwide instance" | Out-File $datapath -Append
    Write-Output "" | Out-File $datapath -Append
    Write-Output ("Version: " + $version.latest) | Out-File $datapath -Append
    Write-Output "" | Out-File $datapath -Append
    Write-Output "IPv4 Firewall IP Address Ranges" | Out-File $datapath -Append
    ($flatIp4s.ip | Sort-Object -Unique) -join "," | Out-File $datapath -Append
    Write-Output "" | Out-File $datapath -Append
    Write-Output "IPv6 Firewall IP Address Ranges" | Out-File $datapath -Append
    ($flatIp6s.ip | Sort-Object -Unique) -join "," | Out-File $datapath -Append
    Write-Output "" | Out-File $datapath -Append
    Write-Output "URLs for Proxy Server" | Out-File $datapath -Append
    ($flatUrls.url | Sort-Object -Unique) -join "," | Out-File $datapath -Append
}
else {
    Write-Host "Microsoft 365 worldwide commercial service instance endpoints are up-to-date."
}
```

## Example Python Script

Here's a Python script, tested with Python 3.6.3 on Windows 10, that you can run to see if there are actions you need to take for updated data. This script checks the version number for the Microsoft 365 Worldwide instance endpoints. When there's a change, it downloads the endpoints and filters for the _Allow_ and _Optimize_ category endpoints. It also uses a unique ClientRequestId across multiple calls and saves the latest version found in a temporary file. Call this script once an hour to check for a version update.

```python
import json
import tempfile
from pathlib import Path
import urllib.request
import uuid
# helper to call the webservice and parse the response
def webApiGet(methodName, instanceName, clientRequestId):
    ws = "https://endpoints.office.com"
    requestPath = ws + '/' + methodName + '/' + instanceName + '?clientRequestId=' + clientRequestId
    request = urllib.request.Request(requestPath)
    with urllib.request.urlopen(request) as response:
        return json.loads(response.read().decode())
# path where client ID and latest version number will be stored
datapath = Path(tempfile.gettempdir() + '/endpoints_clientid_latestversion.txt')
# fetch client ID and version if data exists; otherwise create new file
if datapath.exists():
    with open(datapath, 'r') as fin:
        clientRequestId = fin.readline().strip()
        latestVersion = fin.readline().strip()
else:
    clientRequestId = str(uuid.uuid4())
    latestVersion = '0000000000'
    with open(datapath, 'w') as fout:
        fout.write(clientRequestId + '\n' + latestVersion)
# call version method to check the latest version, and pull new data if version number is different
version = webApiGet('version', 'Worldwide', clientRequestId)
if version['latest'] > latestVersion:
    print('New version of Microsoft 365 worldwide commercial service instance endpoints detected')
    # write the new version number to the data file
    with open(datapath, 'w') as fout:
        fout.write(clientRequestId + '\n' + version['latest'])
    # invoke endpoints method to get the new data
    endpointSets = webApiGet('endpoints', 'Worldwide', clientRequestId)
    # filter results for Allow and Optimize endpoints, and transform these into tuples with port and category
    flatUrls = []
    for endpointSet in endpointSets:
        if endpointSet['category'] in ('Optimize', 'Allow'):
            category = endpointSet['category']
            urls = endpointSet['urls'] if 'urls' in endpointSet else []
            tcpPorts = endpointSet['tcpPorts'] if 'tcpPorts' in endpointSet else ''
            udpPorts = endpointSet['udpPorts'] if 'udpPorts' in endpointSet else ''
            flatUrls.extend([(category, url, tcpPorts, udpPorts) for url in urls])
    flatIps = []
    for endpointSet in endpointSets:
        if endpointSet['category'] in ('Optimize', 'Allow'):
            ips = endpointSet['ips'] if 'ips' in endpointSet else []
            category = endpointSet['category']
            # IPv4 strings have dots while IPv6 strings have colons
            ip4s = [ip for ip in ips if '.' in ip]
            tcpPorts = endpointSet['tcpPorts'] if 'tcpPorts' in endpointSet else ''
            udpPorts = endpointSet['udpPorts'] if 'udpPorts' in endpointSet else ''
            flatIps.extend([(category, ip, tcpPorts, udpPorts) for ip in ip4s])
    print('IPv4 Firewall IP Address Ranges')
    print(','.join(sorted(set([ip for (category, ip, tcpPorts, udpPorts) in flatIps]))))
    print('URLs for Proxy Server')
    print(','.join(sorted(set([url for (category, url, tcpPorts, udpPorts) in flatUrls]))))

    # TODO send mail (e.g. with smtplib/email modules) with new endpoints data
else:
    print('Microsoft 365 worldwide commercial service instance endpoints are up-to-date')
```

## Web Service interface versioning

Updates to the parameters or results for these web service methods might be required in the future. After the general availability version of these web services is published, Microsoft will make reasonable efforts to provide advance notice of material updates to the web service. When Microsoft believes that an update will require changes to clients using the web service, Microsoft will keep the previous version (one version back) of the web service available for at least 12 months after the release of the new version. Customers who don't upgrade during that time might be unable to access the web service and its methods. Customers must ensure that clients of the web service continue working without error if the following changes are made to the web service interface signature:

- Adding a new optional parameter to an existing web method that doesn't have to be provided by older clients and doesn't impact the result an older client receives.
- Adding a new named attribute in one of the response REST items or other columns to the response CSV.
- Adding a new web method with a new name that isn't called by the older clients.

## Update notifications

You can use a few different methods to get email notifications when changes to the IP addresses and URLs are published to the web service.

- To use a Power Automate solution, see [Use Power Automate to receive an email for changes to Microsoft 365 IP Addresses and URLs](https://techcommunity.microsoft.com/t5/Office-365-Networking/Use-Microsoft-Flow-to-receive-an-email-for-changes-to-Office-365/m-p/240651).
- To deploy an Azure Logic App using an ARM template, see [Office 365 Update Notification (v1.1)](https://aka.ms/ipurlws-updates-template).
- To write your own notification script using PowerShell, see [Send-MailMessage](/powershell/module/microsoft.powershell.utility/send-mailmessage).

## Exporting a Proxy PAC file

[Get-PacFile](https://www.powershellgallery.com/packages/Get-PacFile) is a PowerShell script that reads the latest network endpoints from the Microsoft 365 IP Address and URL web service and creates a sample PAC file. For information on using Get-PacFile, see [Use a PAC file for direct routing of vital Microsoft 365 traffic](managing-office-365-endpoints.md#use-a-pac-file-for-direct-routing-of-vital-microsoft-365-traffic).

## Related articles
  
[Microsoft 365 URLs and IP address ranges](https://support.office.com/article/8548a211-3fe7-47cb-abb1-355ea5aa88a2)

[Managing Microsoft 365 endpoints](managing-office-365-endpoints.md)

[Microsoft 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md)

[Microsoft 365 network and performance tuning](network-planning-and-performance.md)

[Assessing Microsoft 365 network connectivity](assessing-network-connectivity.md)
  
[Media Quality and Network Connectivity Performance in Skype for Business Online](https://support.office.com/article/5fe3e01b-34cf-44e0-b897-b0b2a83f0917)
  
[Optimizing your network for Skype for Business Online](https://support.office.com/article/b363bdca-b00d-4150-96c3-ec7eab5a8a43)

[Microsoft 365 performance tuning using baselines and performance history](performance-tuning-using-baselines-and-history.md)
  
[Performance troubleshooting plan for Microsoft 365](performance-troubleshooting-plan.md)
