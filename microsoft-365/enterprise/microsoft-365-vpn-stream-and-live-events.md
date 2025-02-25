---
title: "Special considerations for Teams events in VPN environments"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.reviewer: bryanyce
ms.date: 10/31/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- remotework
- must-keep
f1.keywords:
- NOCSH
description: "Special considerations for Teams events in VPN environments"
---

# Special considerations for Teams events in VPN environments

> [!NOTE]
>This article is part of a set of articles that address Microsoft 365 optimization for remote users.
>
>- For an overview of using VPN split tunneling to optimize Microsoft 365 connectivity for remote users, see [Overview: VPN split tunneling for Microsoft 365](microsoft-365-vpn-split-tunnel.md).
>- For detailed guidance on implementing VPN split tunneling, see [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md).
>- For a detailed list of VPN split tunneling scenarios, see [Common VPN split tunneling scenarios for Microsoft 365](microsoft-365-vpn-common-scenarios.md).
>- For guidance on securing Teams media traffic in VPN split tunneling environments, see [Securing Teams media traffic for VPN split tunneling](microsoft-365-vpn-securing-teams.md).
>- For information about optimizing Microsoft 365 worldwide tenant performance for users in China, see [Microsoft 365 performance optimization for China users](microsoft-365-networking-china.md).

Microsoft Teams Live events attendee traffic (this includes attendees to Teams-produced live events and those produced with an external encoder via Teams or Viva Engage) and Microsoft Teams Town hall attendee traffic is currently categorized as **Default** versus **Optimize** in the [URL/IP list for the service](urls-and-ip-address-ranges.md). These endpoints are categorized as **Default** because they're hosted on CDNs that might also be used by other services. Customers generally prefer to proxy this type of traffic and apply any security elements normally done on endpoints such as these.

Many customers have asked for URL/IP data needed to connect their attendees in Teams events directly from their local internet connection, rather than route the high-volume and latency-sensitive traffic via the VPN infrastructure. Typically, this isn't possible without both dedicated namespaces and accurate IP information for the endpoints, which isn't provided for Microsoft 365 endpoints categorized as **Default**.

Use the following steps to identify and enable direct connectivity for attendee traffic for Teams Events from clients that are using a forced tunnel VPN. This solution is intended to provide customers with an option to avoid routing attendee traffic over VPN while there's high network traffic due to work-from-home scenarios. If possible, we recommend accessing the service through an inspecting proxy.

> [!NOTE]
> Using this solution, there might be service elements that don't resolve to the IP addresses provided and thus traverse the VPN, but the bulk of high-volume traffic like streaming data should. There might be other elements outside the scope of Live Events/Stream which get caught by this offload, but these should be limited as they must meet both the FQDN _and_ the IP match before going direct.

> [!IMPORTANT]
>We recommend you weigh the risk of sending more traffic that bypasses the VPN over the performance gain for Teams Events.

To implement the forced tunnel exception for Teams Events, the following steps should be applied:

## 1. Configure external DNS resolution

Clients need external, recursive DNS resolution to be available so that the following host names can be resolved to IP addresses.

For the **Commercial** cloud:
- \*.media.azure.net
- \*.bmc.cdn.office.net
- \*.ml.cdn.office.net

**\*.media.azure.net** and **\*.bmc.cdn.office.net** are used for Teams-produced Live Events (Quick Start events and RTMP-In supported events) scheduled from the Teams client.

**\*.media.azure.net**, **\*.bmc.cdn.office.net** and **\*.ml.cdn.office.net** are used for Teams Town hall events.

> [!NOTE]
> Some of these endpoints are shared with other elements outside of Teams events.

For the **Government** clouds **(GCC, GCC High, DoD)**:
- \*.cdn.ml.gcc.teams.microsoft.com
- \*.cdn.ml.gov.teams.microsoft.us
- \*.cdn.ml.dod.teams.microsoft.us

**\*.cdn.ml.gcc.teams.microsoft.com** is used for Teams Town hall events in the Microsoft 365 U.S. Government Community Cloud (GCC).

**\*.cdn.ml.gov.teams.microsoft.us** is used for Teams Town hall events in the Microsoft 365 U.S. Government GCC High Cloud (GCC High).

**\*.cdn.ml.dod.teams.microsoft.us** is used for Teams Town hall events in the Microsoft 365 U.S. Government DoD Cloud (DoD).


## 2. Implement PAC file changes (where required)

For organizations that utilize a PAC file to route traffic through a proxy while on VPN, this is normally achieved using FQDNs. However, with Teams events, the host names provided contain wildcards that resolve to IP addresses used by Content Delivery Networks (CDNs) which aren't utilized exclusively for Teams events traffic. Thus, if the request is sent direct based on DNS wildcard match alone, traffic to these endpoints might be blocked if there's no route via the direct path for it in [Step 3](#3-configure-routing-on-the-vpn-to-enable-direct-egress) later in this article.

To solve this, we can provide the following IPs and use them in combination with the host names in an example PAC file as described in [Step 1](#1-configure-external-dns-resolution). The PAC file checks if the URL matches those used for Teams events and if it does, it then also checks to see if the IP returned from a DNS lookup matches those provided for the service. If _both_ match, then the traffic is routed direct. If either element (FQDN/IP) doesn't match, then the traffic is sent to the proxy. As a result, the configuration ensures that anything that resolves to an IP outside of the scope of both the IP and defined namespaces traverses the proxy via the VPN as normal. 

### Gathering the current lists of CDN Endpoints

For the Commercial cloud and Microsoft 365 U.S. Government clouds (GCC, GCC High and DoD) Teams events use Azure CDN from Microsoft. Over time this could be changed due to situations such as regional availability. This article provides the required namespaces for Teams events and guidance for the corresponding IP address ranges used (where available).

For the **Commercial** cloud:

- For Azure CDN from Microsoft, you can download the list from [Download Azure IP Ranges and Service Tags – Public Cloud from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=56519) - you'll need to look specifically for the service tag `AzureFrontdoor.Frontend` in the JSON; _addressPrefixes_ will show the IPv4/IPv6 subnets. Over time the IPs can change, but the service tag list is always updated before they're put in use.

For the **Government** clouds **(GCC, GCC High and DoD)**:

- For Azure CDN from Microsoft, you can download the list from [Download Azure IP Ranges and Service Tags – US Government Cloud from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=57063) - you'll need to look specifically for the service tag `AzureFrontdoor.Frontend` in the JSON; _addressPrefixes_ will show the IPv4/IPv6 subnets. Over time the IPs can change, but the service tag list is always updated before they're put in use.

The following script can generate a PAC file that will include the namespaces and IP listings for the Teams Events attendee traffic. The **-Instance** parameter determines the specified environment - the supported values are [Worldwide, USGov, USGovGCCHigh and UsGovDoD]. Optionally, the script can also include the Optimize and Allow domains as well using the **-Type** parameter.

#### Example PAC file generation for the Commercial cloud

Here's an example of how to generate the PAC file for the Commercial cloud:

1. Save the script to your local hard disk as _Get-EventsPacFile.ps1_.
1. In a PowerShell window, run the following command. If you only desire the Optimize names (and not Optimize and Allow) change the -Type parameter to OptimizeOnly.

   ```powershell
   .\Get-EventsPacFile.ps1 -Instance Worldwide -Type OptimizeAndAllow -FilePath .\Commercial.pac
   ```

1. The Commercial.pac file will contain all the namespaces and IPs (IPv4/IPv6) available for Teams Events attendee traffic.

#### Example PAC file generation for the Microsoft 365 U.S. Government Community Cloud (GCC)

Here's an example of how to generate the PAC file for the GCC environment:

1. Save the script to your local hard disk as _Get-EventsPacFile.ps1_.
1. In a PowerShell window, run the following command. If you only desire the Optimize names (and not Optimize and Allow) change the -Type parameter to OptimizeOnly.

   ```powershell
   .\Get-EventsPacFile.ps1 -Instance UsGov -Type OptimizeAndAllow -FilePath .\USGov.pac
   ```

1. The USGov.pac file will contain all the namespaces and IPs (IPv4/IPv6) specific to the GCC cloud for Teams Town hall attendee traffic.

##### Get-EventsPacFile.ps1

```powershell
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

<#PSScriptInfo

.VERSION 1.0.7

.AUTHOR Microsoft Corporation

.GUID 7f692977-e76c-4582-97d5-9989850a2529

.COMPANYNAME Microsoft

.COPYRIGHT
Copyright (c) Microsoft Corporation. All rights reserved.
Licensed under the MIT License.

.TAGS PAC Microsoft Microsoft365 365

.LICENSEURI

.PROJECTURI http://aka.ms/ipurlws

.ICONURI

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES

#>

<#

.SYNOPSIS

Create a PAC file for Microsoft 365 prioritized connectivity for Teams Events (Live Events, Town hall)

.DESCRIPTION

This script will access updated information to create a PAC file to prioritize Microsoft 365 Urls for
better access to the service. This script will allow you to create different types of files depending
on how traffic needs to be prioritized.

.PARAMETER Instance

The service instance inside Microsoft 365. The default is Worldwide. To specify GCC use the USGov value.

.PARAMETER ClientRequestId

The client request id to connect to the web service to query up to date Urls.

.PARAMETER DirectProxySettings

The direct proxy settings for priority traffic.

.PARAMETER DefaultProxySettings

The default proxy settings for non priority traffic.

.PARAMETER Type

The type of prioritization to give. Valid values are Optimize and OptimizeAndAllow, which are 2 different modes of operation.
These values align to the categories defined in our Principles of Network Connectivity at https://aka.ms/pnc

.PARAMETER Lowercase

Flag this to include lowercase transformation into the PAC file for the host name matching.

.PARAMETER TenantName

The tenant name to replace wildcard Urls in the webservice.

.PARAMETER ServiceAreas

The service areas to filter endpoints by in the webservice.

.PARAMETER FilePath

The file to print the content to.

.EXAMPLE

Get-EventsPacFile.ps1 -Instance Worldwide -Type OptimizeOnly -FilePath .\PACFiles\Commercial.pac 

.EXAMPLE

Get-EventsPacFile.ps1 -Instance USGov -FilePath .\PACFiles\USGov.pac -Type OptimizeAndAllow


#>

#Requires -Version 2

[CmdletBinding(SupportsShouldProcess = $True)]
Param (
    [Parameter()]
    [ValidateSet('Worldwide', 'Germany', 'China', 'USGovDoD', 'USGovGCCHigh', 'USGov')]
    [String] $Instance = "Worldwide",

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [guid] $ClientRequestId = [Guid]::NewGuid(),

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [String] $DirectProxySettings = 'DIRECT',

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [String] $DefaultProxySettings = 'PROXY 10.10.10.10:8080',

    [Parameter()]
    [ValidateSet('OptimizeOnly','OptimizeAndAllow')]
    [string]
    $Type = 'OptimizeOnly',

    [Parameter()]
    [switch] $Lowercase,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string] $TenantName,

    [Parameter()]
    [ValidateSet('Exchange', 'SharePoint', 'Common', 'Skype')]
    [string[]] $ServiceAreas,

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string] $FilePath

)

##################################################################################################################
### Global constants
##################################################################################################################

$baseServiceUrl = if ($Instance -eq 'USGov') {
    "https://endpoints.office.com/endpoints/Worldwide/?ClientRequestId=$ClientRequestId"
} else {
    "https://endpoints.office.com/endpoints/$Instance/?ClientRequestId=$ClientRequestId"
}
$directProxyVarName = "direct"
$defaultProxyVarName = "proxyServer"

##################################################################################################################
### Functions to create PAC files
##################################################################################################################

function Get-PacString {
    param(
        [Parameter(ValueFromPipelineByPropertyName)]
        [string[]]
        $NonDirectOverrideFqdns,

        [Parameter(ValueFromPipelineByPropertyName)]
        [string[]]
        $DirectFqdns
    )

    $PACSb = New-Object 'System.Text.StringBuilder'
    $null = & {
        $PACSb.AppendLine('// This PAC file will provide proxy config to Microsoft 365 services')
        $PACSb.AppendLine('// using data from the public web service for all endpoints')
        $PACSb.AppendLine('function FindProxyForURL(url, host)')
        $PACSb.AppendLine('{')
        $PACSb.Append('    var ').Append($directProxyVarName).Append(' = "').Append($DirectProxySettings).AppendLine('";')
        $PACSb.Append('    var ').Append($defaultProxyVarName).Append(' = "').Append($DefaultProxySettings).AppendLine('";')
        if ($Lowercase) {
            $PACSb.AppendLine('    host = host.toLowerCase();')
        }
        $first = $true
        foreach ($fqdn in $NonDirectOverrideFqdns) {
            if ($first) {
                $PACSb.AppendLine()
                $PACSb.AppendLine('    // Force proxy for subdomains of bypassed hosts')
                $PACSb.AppendLine()
                $PACSb.Append('    if(')
            }
            else {
                $PACSb.AppendLine().Append('            || ')
            }
            $first = $false
            $PACSb.Append('shExpMatch(host, "').Append($fqdn).Append('")')
        }
        if (!$first) {
            $PACSb.AppendLine(')')
            $PACSb.AppendLine('    {')
            $PACSb.Append('        return ').Append($directProxyVarName).AppendLine(';')
            $PACSb.AppendLine('    }')
        }

        $first = $true
        foreach ($fqdn in $DirectFqdns) {
            if ($first) {
                $PACSb.AppendLine()
                $PACSb.AppendLine('    // Bypassed hosts')
                $PACSb.AppendLine()
                $PACSb.Append('    if(')
            }
            else {
                $PACSb.AppendLine().Append('            || ')
            }
            $first = $false
            $PACSb.Append('shExpMatch(host, "').Append($fqdn).Append('")')
        }
        if (!$first) {
            $PACSb.AppendLine(')')
            $PACSb.AppendLine('    {')
            $PACSb.Append('        return ').Append($directProxyVarName).AppendLine(';')
            $PACSb.AppendLine('    }')
        }

        if (!$ServiceAreas -or $ServiceAreas.Contains('Skype')) {
            $EventsConfig = Get-TeamsEventsConfiguration
            if ($EventsConfig.EventsAddressRanges.Count -gt 0) {
                $EventsBlock = $EventsConfig | Get-TLEPacConfiguration
                $PACSb.AppendLine()
                $PACSb.AppendLine($EventsBlock)
            }
        }

        $PACSb.Append('    return ').Append($defaultProxyVarName).AppendLine(';').Append('}')
    }

    return $PACSb.ToString()
}

##################################################################################################################
### Functions to get and filter endpoints
##################################################################################################################
function Get-TeamsEventsConfiguration {
    param()
    $IncludedHosts = switch ($Instance) {
        'USGov' {
            @('*.cdn.ml.gcc.teams.microsoft.com')
            break
        }
        'USGovDoD' {
            @('*.cdn.ml.dod.teams.microsoft.us')
            break
        }
        'USGovGCCHigh' {
            @('*.cdn.ml.gov.teams.microsoft.us')
            break
        }
        default {
            @('*.bmc.cdn.office.net', '*.ml.cdn.office.net', '*.media.azure.net')
            break
        }
    }
    $IncludedAddressRanges = & {
        $ServiceTagsDownloadId = '56519'
        if ($Instance.StartsWith('USGov')) {
            $ServiceTagsDownloadId = '57063'
        }
        $AzureIPsUrl = Invoke-WebRequest -Uri "https://www.microsoft.com/en-us/download/confirmation.aspx?id=$ServiceTagsDownloadId" -UseBasicParsing -ErrorAction SilentlyContinue |
            Select-Object -ExpandProperty Links | Select-Object -ExpandProperty href |
            Where-Object { $_.EndsWith('.json') -and $_ -match 'ServiceTags' } | Select-Object -First 1
        if ($AzureIPsUrl) {
            Invoke-RestMethod -Uri $AzureIPsUrl -ErrorAction SilentlyContinue | Select-Object -ExpandProperty values |
                Where-Object { $_.name -eq 'AzureFrontDoor.Frontend' } | Select-Object -First 1 -ExpandProperty properties |
                Select-Object -ExpandProperty addressPrefixes
        }
    }
    [PSCustomObject]@{
        EventsHostNames = $IncludedHosts
        EventsAddressRanges = $IncludedAddressRanges
    }
}

function Get-TLEPacConfiguration {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName)]
        [string[]]
        $EventsHostNames,

        [Parameter(ValueFromPipelineByPropertyName)]
        [string[]]
        $EventsAddressRanges
    )
    if ($EventsAddressRanges.Count -eq 0) {
        return ''
    }
    $TLESb = New-Object 'System.Text.StringBuilder'
    $Spaces = '    '
    $null = $TLESb.Append($Spaces).AppendLine('// Bypass Teams Events attendee traffic')
    $first = $true
    $null = foreach ($hostName in $EventsHostNames) {
        if ($first) {
            $TLESb.AppendLine().Append($Spaces).Append('if(')
        }
        else {
            $TLESb.AppendLine().Append($Spaces).Append('    || ')
        }
        $first = $false
        $TLESb.Append('shExpMatch(host, "').Append($hostName).Append('")')
    }
    $null = $TLESb.AppendLine(')').Append($Spaces).AppendLine('{')
    $Spaces = $Spaces + $Spaces
    $null = $TLESb.Append($Spaces).AppendLine('var resolved_ip = dnsResolveEx(host);')

    $first = $true
    $null = foreach ($addressRange in $EventsAddressRanges) {
        if ($first) {
            $TLESb.AppendLine().Append($Spaces).Append('if(')
        } else {
            $TLESb.AppendLine().Append($Spaces).Append('    || ')
        }
        $first = $false
        $TLESb.Append('isInNetEx(resolved_ip, "').Append($addressRange).Append('")')
    }
    if (!$first) {
        $null = $TLESb.AppendLine(')').
            Append($Spaces).AppendLine('{').
            Append($Spaces).Append('    return ').Append($directProxyVarName).AppendLine(';').
            Append($Spaces).AppendLine('}')
    }
    else {
        $null = $TLESb.Append($Spaces).AppendLine('// no addresses found for service via script')
    }
    return $TLESb.AppendLine('    }').ToString()
}

function Get-Endpoints {
    $url = $baseServiceUrl
    if ($TenantName) {
        $url += "&TenantName=$TenantName"
    }
    if ($ServiceAreas) {
        $url += "&ServiceAreas=" + ($ServiceAreas -Join ",")
    }
    return Invoke-RestMethod -Uri $url
}

function Get-MapVarUrls {
    Write-Verbose "Retrieving all endpoints for instance $Instance from web service."
    $Endpoints = Get-Endpoints

    $Include = if ($Type -eq 'OptimizeOnly') { @('Optimize') } else { @('Optimize', 'Allow') }

    $directUrls = $endpoints |
        Where-Object { $_.category -in $Include } |
        Where-Object { $_.urls } |
        ForEach-Object { $_.urls } |
        Sort-Object -Unique

    $MatchList = [Collections.Generic.Dictionary[string,Regex]]@{}
    $directUrls |
        Where-Object { $_.Contains('*') -or $_.Contains('?') } |
        ForEach-Object { $MatchList[$_] = [Regex]::new('^{0}$' -f $_.Replace('.','\.').Replace('*','.*').Replace('?','.?'),[Text.RegularExpressions.RegexOptions]::IgnoreCase) }

    $nonDirectPriorityUrls = $endpoints |
        Where-Object { $_.category -notin $Include } |
        Where-Object { $_.urls } |
        ForEach-Object { $_.urls } |
        Sort-Object -Unique |
        Where-Object { [Linq.Enumerable]::Any($MatchList,[Func[System.Collections.Generic.KeyValuePair[string,Regex],bool]]{$args[0].Key -ne $_ -and $args[0].Value.IsMatch($_)}) }

    return [PSCustomObject]@{
        NonDirectOverrideFqdns = $nonDirectPriorityUrls
        DirectFqdns = $directUrls
    }
}

##################################################################################################################
### Main script
##################################################################################################################

$content = Get-MapVarUrls | Get-PacString

if ($FilePath) {
    $content | Out-File -FilePath $FilePath -Encoding ascii
}
else {
    $content
}
```

The script will automatically parse the appropriate Azure CDN list based on the **Instance** parameter value and keys off of **AzureFrontDoor.Frontend**, so there's no need to get that manually.

Performing VPN offloading utilizing **both** the FQDNs and the IP addresses (where provided) in the function helps scope the use of this offload to a limited set of endpoints including Teams Events. The way the function is structured will result in a DNS lookup being done for the FQDN that matches those listed by the client directly, that is, DNS resolution of the remaining namespaces remains unchanged. In the case of the Commercial cloud, not all IP addresses are provided; VPN offloading would need to rely on matching the namespaces defined earlier in this article.


## 3. Configure routing on the VPN to enable direct egress

The final step is to add a direct route for the Teams event IPs (or namespaces) described in **Gathering the current lists of CDN Endpoints** into the VPN configuration to ensure the traffic isn't sent via the forced tunnel into the VPN. Detailed information on how to do this for Microsoft 365 Optimize endpoints can be found in the [Implement VPN split tunneling](microsoft-365-vpn-implement-split-tunnel.md#implement-vpn-split-tunneling) section of [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md). The process is exactly the same for the Teams events IPs listed in this document.


## FAQ

### Will this send all my traffic to the service direct?

No, this will send the latency-sensitive, potentially high-volume streaming traffic for a Teams Event attendee direct, any other traffic will continue to use the VPN tunnel if they don't resolve to the IPs published or match the defined namespace.

### Do I need to use the IPv6 Addresses?

No, the connectivity can be IPv4 only if necessary.

### Why are these IPs not published in the Microsoft 365 URL/IP service?

Microsoft has strict controls around the format and type of information that is in the service to ensure customers can reliably use the information to implement secure and optimal routing based on endpoint category.

The **Default** endpoint category has no IP information provided for numerous reasons (Default endpoints might be outside of the control of Microsoft, might change too frequently, or might be in blocks shared with other elements). Default endpoints are designed to be sent via FQDN to an inspecting proxy, like normal web traffic.

### Do I only need to allow access to these IPs/namespaces?

No, access to all of the **Required** marked endpoints for the appropriate environment is essential for the service to operate.
- Worldwide including GCC: [Endpoints for Worldwide](urls-and-ip-address-ranges.md)
- Microsoft 365 U.S. Government GCC High: [Endpoints for GCC High](microsoft-365-u-s-government-gcc-high-endpoints.md)
- Microsoft 365 U.S. Government DoD: [Endpoints for DoD](microsoft-365-u-s-government-dod-endpoints.md)

### What scenarios will this advice cover?

1. Live events produced within the Teams App
2. Teams encoder produced live events
3. Teams Town hall

### Does this advice cover presenter traffic?

It doesn't; the preceding advice is purely for those attending the event. Presenting from within Teams will see the presenter's traffic flowing to the Optimize marked UDP endpoints listed in URL/IP service row 11 with detailed VPN offload advice outlined in the [Implement VPN split tunneling](microsoft-365-vpn-implement-split-tunnel.md#implement-vpn-split-tunneling) section of [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md).


## Related articles

[Overview: VPN split tunneling for Microsoft 365](microsoft-365-vpn-split-tunnel.md)

[Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md)

[Common VPN split tunneling scenarios for Microsoft 365](microsoft-365-vpn-common-scenarios.md)

[Securing Teams media traffic for VPN split tunneling](microsoft-365-vpn-securing-teams.md)

[Microsoft 365 performance optimization for China users](microsoft-365-networking-china.md)

[Microsoft 365 Network Connectivity Principles](microsoft-365-network-connectivity-principles.md)

[Assessing Microsoft 365 network connectivity](assessing-network-connectivity.md)

[Microsoft 365 network and performance tuning](network-planning-and-performance.md)

[Alternative ways for security professionals and IT to achieve modern security controls in today's unique remote work scenarios (Microsoft Security Team blog)](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/)

[Enhancing VPN performance at Microsoft: using Windows 10 VPN profiles to allow auto-on connections](https://www.microsoft.com/itshowcase/enhancing-remote-access-in-windows-10-with-an-automatic-vpn-profile)

[Running on VPN: How Microsoft is keeping its remote workforce connected](https://www.microsoft.com/itshowcase/blog/running-on-vpn-how-microsoft-is-keeping-its-remote-workforce-connected/?elevate-lv)

[Microsoft global network](/azure/networking/microsoft-global-network)
