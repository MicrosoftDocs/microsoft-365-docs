---
title: "Special considerations for Stream and live events in VPN environments"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 3/3/2022
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- remotework
f1.keywords:
- NOCSH
description: "Special considerations for Stream and live events in VPN environments"
---

# Special considerations for Stream and live events in VPN environments

>[!NOTE]
>This article is part of a set of articles that address Microsoft 365 optimization for remote users.

>- For an overview of using VPN split tunneling to optimize Microsoft 365 connectivity for remote users, see [Overview: VPN split tunneling for Microsoft 365](microsoft-365-vpn-split-tunnel.md).
>- For detailed guidance on implementing VPN split tunneling, see [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md).
>- For a detailed list of VPN split tunneling scenarios, see [Common VPN split tunneling scenarios for Microsoft 365](microsoft-365-vpn-common-scenarios.md).
>- For guidance on securing Teams media traffic in VPN split tunneling environments, see [Securing Teams media traffic for VPN split tunneling](microsoft-365-vpn-securing-teams.md).
>- For information about optimizing Microsoft 365 worldwide tenant performance for users in China, see [Microsoft 365 performance optimization for China users](microsoft-365-networking-china.md).

Microsoft 365 Live Events traffic (this includes attendees to Teams-produced live events and those produced with an external encoder via Teams, Stream, or Viva Engage) and on-demand Stream traffic is currently categorized as **Default** versus **Optimize** in the [URL/IP list for the service](urls-and-ip-address-ranges.md). These endpoints are categorized as **Default** because they're hosted on CDNs that may also be used by other services. Customers generally prefer to proxy this type of traffic and apply any security elements normally done on endpoints such as these.

Many customers have asked for URL/IP data needed to connect their users to Stream/Live Events directly from their local internet connection, rather than route the high-volume and latency-sensitive traffic via the VPN infrastructure. Typically, this isn't possible without both dedicated namespaces and accurate IP information for the endpoints, which isn't provided for Microsoft 365 endpoints categorized as **Default**.

Use the following steps to enable direct connectivity for the Stream/Live Events service from clients using a forced tunnel VPN. This solution is intended to provide customers with an option to avoid routing Live Events traffic over VPN while there's high network traffic due to work-from-home scenarios. If possible, it's advised to access the service through an inspecting proxy.

>[!NOTE]
>Using this solution, there may be service elements that do not resolve to the IP addresses provided and thus traverse the VPN, but the bulk of high-volume traffic like streaming data should. There may be other elements outside the scope of Live Events/Stream which get caught by this offload, but these should be limited as they must meet both the FQDN _and_ the IP match before going direct.

>[!IMPORTANT]
>Customers are advised to weigh the risk of sending more traffic that bypasses the VPN over the performance gain for Live Events.

To implement the forced tunnel exception for Teams Live Events and Stream, the following steps should be applied:

## 1. Configure external DNS resolution

Clients need external, recursive DNS resolution to be available so that the following host names can be resolved to IP addresses.

- \*.azureedge.net
- \*.media.azure.net
- \*.bmc.cdn.office.net

**\*.azureedge.net** is used for Stream events ([Configure encoders for live streaming in Microsoft Stream - Microsoft Stream | Microsoft Docs](/stream/live-encoder-setup)).

**\*.media.azure.net** and **\*.bmc.cdn.office.net** are used for Teams-produced Live Events (Quick Start events, RTMP-In supported events [Roadmap ID 84960]) scheduled from the Teams client.

 Some of these endpoints are shared with other elements outside of Stream/Live Events, it isn't advised to just use these FQDNs to configure VPN offload even if technically possible in your VPN solution (eg if it works at the FQDN rather than IP).

FQDNs aren't required in the VPN configuration, they're purely for use in PAC files in combination with the IPs to send the relevant traffic direct.

## 2. Implement PAC file changes (where required)

For organizations that utilize a PAC file to route traffic through a proxy while on VPN, this is normally achieved using FQDNs. However, with Stream/Live Events, the host names provided contain wildcards such as **\*.azureedge.net**, which also encompasses other elements for which it isn't possible to provide full IP listings. Thus, if the request is sent direct based on DNS wildcard match alone, traffic to these endpoints will be blocked as there's no route via the direct path for it in [Step 3](#3-configure-routing-on-the-vpn-to-enable-direct-egress) later in this article.

To solve this, we can provide the following IPs and use them in combination with the host names in an example PAC file as described in [Step 1](#1-configure-external-dns-resolution). The PAC file checks if the URL matches those used for Stream/Live Events and then if it does, it then also checks to see if the IP returned from a DNS lookup matches those provided for the service. If _both_ match, then the traffic is routed direct. If either element (FQDN/IP) doesn't match, then the traffic is sent to the proxy. As a result, the configuration ensures that anything which resolves to an IP outside of the scope of both the IP and defined namespaces will traverse the proxy via the VPN as normal.

### Gathering the current lists of CDN Endpoints

Live Events uses multiple CDN providers to stream to customers, to provide the best coverage, quality, and resiliency. Currently, both Azure CDN from Microsoft and from Verizon are used. Over time this could be changed due to situations such as regional availability. This article is a source to enable you to keep up to date on IP ranges.

For Azure CDN from Microsoft, you can download the list from [Download Azure IP Ranges and Service Tags – Public Cloud from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=56519) - you'll need to look specifically for the service tag *AzureFrontdoor.Frontend* in the JSON; *addressPrefixes* will show the IPv4/IPv6 subnets. Over time the IPs can change, but the service tag list is always updated before they're put in use.

For Azure CDN from Verizon (Edgecast) you can find an exhaustive list using [Edge Nodes - List](/rest/api/cdn/edge-nodes/list) (select **Try It** ) - you'll need to look specifically for the  **Premium\_Verizon**  section. Note that this API shows all Edgecast IPs (origin and Anycast). Currently there isn't a mechanism for the API to distinguish between origin and Anycast.

To implement this in a PAC file you can use the following example which sends the Microsoft 365 Optimize traffic direct (which is recommended best practice) via FQDN, and the critical Stream/Live Events traffic direct via a combination of the FQDN and the returned IP address. The placeholder name _Contoso_ would need to be edited to your specific tenant's name where _contoso_ is from contoso.onmicrosoft.com

#### Example PAC file

Here is an example of how to generate the PAC files:

1. Save the script below to your local hard disk as _Get-TLEPacFile.ps1_.
1. Go to the [Verizon URL](/rest/api/cdn/edge-nodes/list#code-try-0) and download the resulting JSON (copy paste it into a file like cdnedgenodes.json)
1. Put the file into the same folder as the script.
1. In a PowerShell window, run the following command. Change out the tenant name for something else if you want the SPO URLs. This is Type 2, so **Optimize** and **Allow** (Type 1 is Optimize only).

   ```powershell
   .\Get-TLEPacFile.ps1 -Instance Worldwide -Type 2 -TenantName <contoso> -CdnEdgeNodesFilePath .\cdnedgenodes.json -FilePath TLE.pac
   ```

5. The TLE.pac file will contain all the namespaces and IPs (IPv4/IPv6).

##### Get-TLEPacFile.ps1

```powershell
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

<#PSScriptInfo

.VERSION 1.0.4

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

Create a PAC file for Microsoft 365 prioritized connectivity

.DESCRIPTION

This script will access updated information to create a PAC file to prioritize Microsoft 365 Urls for
better access to the service. This script will allow you to create different types of files depending
on how traffic needs to be prioritized.

.PARAMETER Instance

The service instance inside Microsoft 365.

.PARAMETER ClientRequestId

The client request id to connect to the web service to query up to date Urls.

.PARAMETER DirectProxySettings

The direct proxy settings for priority traffic.

.PARAMETER DefaultProxySettings

The default proxy settings for non priority traffic.

.PARAMETER Type

The type of prioritization to give. Valid values are 1 and 2, which are 2 different modes of operation.
Type 1 will send Optimize traffic to the direct route. Type 2 will send Optimize and Allow traffic to
the direct route.

.PARAMETER Lowercase

Flag this to include lowercase transformation into the PAC file for the host name matching.

.PARAMETER TenantName

The tenant name to replace wildcard Urls in the webservice.

.PARAMETER ServiceAreas

The service areas to filter endpoints by in the webservice.

.PARAMETER FilePath

The file to print the content to.

.EXAMPLE

Get-TLEPacFile.ps1 -ClientRequestId b10c5ed1-bad1-445f-b386-b919946339a7 -DefaultProxySettings "PROXY 4.4.4.4:70" -FilePath type1.pac

.EXAMPLE

Get-TLEPacFile.ps1 -ClientRequestId b10c5ed1-bad1-445f-b386-b919946339a7 -Instance China -Type 2 -DefaultProxySettings "PROXY 4.4.4.4:70" -FilePath type2.pac

.EXAMPLE

Get-TLEPacFile.ps1 -ClientRequestId b10c5ed1-bad1-445f-b386-b919946339a7 -Instance WorldWide -Lowercase -TenantName tenantName -ServiceAreas Sharepoint

#>

#Requires -Version 2

[CmdletBinding(SupportsShouldProcess=$True)]
Param (
    [Parameter(Mandatory = $false)]
    [ValidateSet('Worldwide', 'Germany', 'China', 'USGovDoD', 'USGovGCCHigh')]
    [String] $Instance = "Worldwide",

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [guid] $ClientRequestId = [Guid]::NewGuid().Guid,

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [String] $DirectProxySettings = 'DIRECT',

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [String] $DefaultProxySettings = 'PROXY 10.10.10.10:8080',

    [Parameter(Mandatory = $false)]
    [ValidateRange(1, 2)]
    [int] $Type = 1,

    [Parameter(Mandatory = $false)]
    [switch] $Lowercase = $false,

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string] $TenantName,

    [Parameter(Mandatory = $false)]
    [ValidateSet('Exchange', 'SharePoint', 'Common', 'Skype')]
    [string[]] $ServiceAreas,

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string] $FilePath,

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string] $CdnEdgeNodesFilePath
)

##################################################################################################################
### Global constants
##################################################################################################################

$baseServiceUrl = "https://endpoints.office.com/endpoints/$Instance/?ClientRequestId={$ClientRequestId}"
$directProxyVarName = "direct"
$defaultProxyVarName = "proxyServer"
$bl = "`r`n"

##################################################################################################################
### Functions to create PAC files
##################################################################################################################

function Get-PacClauses
{
    param(
        [Parameter(Mandatory = $false)]
        [string[]] $Urls,

        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [String] $ReturnVarName
    )

    if (!$Urls)
    {
        return ""
    }

    $clauses =  (($Urls | ForEach-Object { "shExpMatch(host, `"$_`")" }) -Join "$bl        || ")

@"
    if($clauses)
    {
        return $ReturnVarName;
    }
"@
}

function Get-PacString
{
    param(
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [array[]] $MapVarUrls
    )

@"
// This PAC file will provide proxy config to Microsoft 365 services
//  using data from the public web service for all endpoints
function FindProxyForURL(url, host)
{
    var $directProxyVarName = "$DirectProxySettings";
    var $defaultProxyVarName = "$DefaultProxySettings";

$( if ($Lowercase) { "    host = host.toLowerCase();" })

$( ($MapVarUrls | ForEach-Object { Get-PACClauses -ReturnVarName $_.Item1 -Urls $_.Item2 }) -Join "$bl$bl" )

$( if (!$ServiceAreas -or $ServiceAreas.Contains('Skype')) { Get-TLEPacConfiguration })

    return $defaultProxyVarName;
}
"@ -replace "($bl){3,}","$bl$bl" # Collapse more than one blank line in the PAC file so it looks better.
}

##################################################################################################################
### Functions to get and filter endpoints
##################################################################################################################

function Get-TLEPacConfiguration {
    param ()
    $PreBlock = @"
    // Don't Proxy Teams Live Events traffic

    if(shExpMatch(host, "*.azureedge.net")
    || shExpMatch(host, "*.bmc.cdn.office.net")
    || shExpMatch(host, "*.media.azure.net"))
    {
        var resolved_ip = dnsResolveEx(host);

"@
    $TLESb = New-Object 'System.Text.StringBuilder'
    $TLESb.Append($PreBlock) | Out-Null

    if (![string]::IsNullOrEmpty($CdnEdgeNodesFilePath) -and (Test-Path -Path $CdnEdgeNodesFilePath)) {
        $CdnData = Get-Content -Path $CdnEdgeNodesFilePath -Raw -ErrorAction SilentlyContinue | ConvertFrom-Json | Select-Object -ExpandProperty value | 
            Where-Object { $_.name -eq 'Premium_Verizon'} | Select-Object -First 1 -ExpandProperty properties | 
            Select-Object -ExpandProperty ipAddressGroups
        $CdnData | Select-Object -ExpandProperty ipv4Addresses | ForEach-Object {
            if ($TLESb.Length -eq $PreBlock.Length) {
                $TLESb.Append("        if(") | Out-Null
            }
            else {
                $TLESb.AppendLine() | Out-Null
                $TLESb.Append("        || ") | Out-Null
            }
            $TLESb.Append("isInNetEx(resolved_ip, `"$($_.BaseIpAddress)/$($_.prefixLength)`")") | Out-Null
        }
        $CdnData | Select-Object -ExpandProperty ipv6Addresses | ForEach-Object {
            if ($TLESb.Length -eq $PreBlock.Length) {
                $TLESb.Append("        if(") | Out-Null
            }
            else {
                $TLESb.AppendLine() | Out-Null
                $TLESb.Append("        || ") | Out-Null
            }
            $TLESb.Append("isInNetEx(resolved_ip, `"$($_.BaseIpAddress)/$($_.prefixLength)`")") | Out-Null
        }
    }
    $AzureIPsUrl = Invoke-WebRequest -Uri "https://www.microsoft.com/en-us/download/confirmation.aspx?id=56519" -UseBasicParsing -ErrorAction SilentlyContinue  | 
            Select-Object -ExpandProperty Links | Select-Object -ExpandProperty href | 
            Where-Object { $_.EndsWith('.json') -and $_ -match 'ServiceTags' } | Select-Object -First 1
    if ($AzureIPsUrl) {
        Invoke-RestMethod -Uri $AzureIPsUrl -ErrorAction SilentlyContinue | Select-Object -ExpandProperty values | 
            Where-Object { $_.name -eq 'AzureFrontDoor.Frontend' } | Select-Object -First 1 -ExpandProperty properties |
            Select-Object -ExpandProperty addressPrefixes | ForEach-Object {
                if ($TLESb.Length -eq $PreBlock.Length) {
                    $TLESb.Append("        if(") | Out-Null
                }
                else {
                    $TLESb.AppendLine() | Out-Null
                    $TLESb.Append("        || ") | Out-Null
                }
                $TLESb.Append("isInNetEx(resolved_ip, `"$_`")") | Out-Null
            }
    }
    if ($TLESb.Length -gt $PreBlock.Length) {
        $TLESb.AppendLine(")") | Out-Null
        $TLESb.AppendLine("        {") | Out-Null
        $TLESb.AppendLine("            return $directProxyVarName;") | Out-Null
        $TLESb.AppendLine("        }") | Out-Null
    }
    else {
        $TLESb.AppendLine("        // no addresses found for service via script") | Out-Null
    }
    $TLESb.AppendLine("    }") | Out-Null
    return $TLESb.ToString()
}

function Get-Regex
{
    param(
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $Fqdn
    )

    return "^" + $Fqdn.Replace(".", "\.").Replace("*", ".*").Replace("?", ".?") + "$"
}

function Match-RegexList
{
    param(
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $ToMatch,

        [Parameter(Mandatory = $false)]
        [string[]] $MatchList
    )

    if (!$MatchList)
    {
        return $false
    }
    foreach ($regex in $MatchList)
    {
        if ($regex -ne $ToMatch -and $ToMatch -match (Get-Regex $regex))
        {
            return $true
        }
    }
    return $false
}

function Get-Endpoints
{
    $url = $baseServiceUrl
    if ($TenantName)
    {
        $url += "&TenantName=$TenantName"
    }
    if ($ServiceAreas)
    {
        $url += "&ServiceAreas=" + ($ServiceAreas -Join ",")
    }
    return Invoke-RestMethod -Uri $url
}

function Get-Urls
{
    param(
        [Parameter(Mandatory = $false)]
        [psobject[]] $Endpoints
    )

    if ($Endpoints)
    {
        return $Endpoints | Where-Object { $_.urls } | ForEach-Object { $_.urls } | Sort-Object -Unique
    }
    return @()
}

function Get-UrlVarTuple
{
    param(
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $VarName,

        [Parameter(Mandatory = $false)]
        [string[]] $Urls
    )
    return New-Object 'Tuple[string,string[]]'($VarName, $Urls)
}

function Get-MapVarUrls
{
    Write-Verbose "Retrieving all endpoints for instance $Instance from web service."
    $Endpoints = Get-Endpoints

    if ($Type -eq 1)
    {
        $directUrls = Get-Urls ($Endpoints | Where-Object { $_.category -eq "Optimize" })
        $nonDirectPriorityUrls = Get-Urls ($Endpoints | Where-Object { $_.category -ne "Optimize" }) | Where-Object { Match-RegexList $_ $directUrls }
        return @(
            Get-UrlVarTuple -VarName $defaultProxyVarName -Urls $nonDirectPriorityUrls
            Get-UrlVarTuple -VarName $directProxyVarName -Urls $directUrls
        )
    }
    elseif ($Type -eq 2)
    {
        $directUrls = Get-Urls ($Endpoints | Where-Object { $_.category -in @("Optimize", "Allow")})
        $nonDirectPriorityUrls = Get-Urls ($Endpoints | Where-Object { $_.category -notin @("Optimize", "Allow") }) | Where-Object { Match-RegexList $_ $directUrls }
        return @(
            Get-UrlVarTuple -VarName $defaultProxyVarName -Urls $nonDirectPriorityUrls
            Get-UrlVarTuple -VarName $directProxyVarName -Urls $directUrls
        )
    }
}

##################################################################################################################
### Main script
##################################################################################################################

$content = Get-PacString (Get-MapVarUrls)

if ($FilePath)
{
    $content | Out-File -FilePath $FilePath -Encoding ascii
}
else
{
    $content
}
```

The script will automatically parse the Azure list based on the [download URL](https://www.microsoft.com/download/details.aspx?id=56519) and keys off of **AzureFrontDoor.Frontend**, so there is no need to get that manually.

Again, it isn't advised to perform VPN offload using just the FQDNs; utilizing **both** the FQDNs and the IP addresses in the function helps scope the use of this offload to a limited set of endpoints including Live Events/Stream. The way the function is structured will result in a DNS lookup being done for the FQDN that matches those listed by the client directly, i.e. DNS resolution of the remaining namespaces remains unchanged.

If you wish to limit the risk of offloading endpoints not related to Live Events and Stream, you can remove the **\*.azureedge.net** domain from the configuration which is where most of this risk lies as this is a shared domain used for all Azure CDN customers. The downside of this is that any event using an external encoder won't be optimized but events produced/organized within Teams will be.

## 3. Configure routing on the VPN to enable direct egress

The final step is to add a direct route for the Live Event IPs described in **Gathering the current lists of CDN Endpoints** into the VPN configuration to ensure the traffic isn't sent via the forced tunnel into the VPN. Detailed information on how to do this for Microsoft 365 Optimize endpoints can be found in the [Implement VPN split tunneling](microsoft-365-vpn-implement-split-tunnel.md#implement-vpn-split-tunneling) section of [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md). The process is exactly the same for the Stream/Live Events IPs listed in this document.

Note that only the IPs (not FQDNs) from [Gathering the current lists of CDN Endpoints](#gathering-the-current-lists-of-cdn-endpoints) should be used for VPN configuration.

## FAQ

### Will this send all my traffic to the service direct?

No, this will send the latency-sensitive streaming traffic for a Live Event or Stream video direct, any other traffic will continue to use the VPN tunnel if they don't resolve to the IPs published.

### Do I need to use the IPv6 Addresses?

No, the connectivity can be IPv4 only if required.

### Why are these IPs not published in the Microsoft 365 URL/IP service?

Microsoft has strict controls around the format and type of information that is in the service to ensure customers can reliably use the information to implement secure and optimal routing based on endpoint category.

The **Default** endpoint category has no IP information provided for numerous reasons (Default endpoints may be outside of the control of Microsoft, may change too frequently, or may be in blocks shared with other elements). For this reason, Default endpoints are designed to be sent via FQDN to an inspecting proxy, like normal web traffic.

In this case, the above endpoints are CDNs that may be used by non-Microsoft controlled elements other than Live Events or Stream, and thus sending the traffic direct will also mean anything else which resolves to these IPs will also be sent direct from the client. Due to the unique nature of the current global crisis and to meet the short-term needs of our customers, Microsoft has provided the information above for customers to use as they see fit.

Microsoft is working to reconfigure the Live Events endpoints to allow them to be included in the Allow/Optimize endpoint categories in the future.

### Do I only need to allow access to these IPs?

No, access to all of the **Required** marked endpoints in [the URL/IP service](urls-and-ip-address-ranges.md) is essential for the service to operate. In addition, any Optional endpoint marked for Stream (ID 41-45) is required.

### What scenarios will this advice cover?

1. Live events produced within the Teams App
2. Viewing Stream hosted content
3. External device (encoder) produced events

### Does this advice cover presenter traffic?

It doesn't, the advice above is purely for those consuming the service. Presenting from within Teams will see the presenter's traffic flowing to the Optimize marked UDP endpoints listed in URL/IP service row 11 with detailed VPN offload advice outlined in the [Implement VPN split tunneling](microsoft-365-vpn-implement-split-tunnel.md#implement-vpn-split-tunneling) section of [Implementing VPN split tunneling for Microsoft 365](microsoft-365-vpn-implement-split-tunnel.md).

### Does this configuration risk traffic other than Live Events &amp; Stream being sent direct?

Yes, due to shared FQDNs used for some elements of the service, this is unavoidable. This traffic is normally sent via a corporate proxy which can apply inspection. In a VPN split tunnel scenario, using both the FQDNs and IPs will scope this risk down to a minimum, but it will still exist. Customers can remove the **\*.azureedge.net** domain from the offload configuration and reduce this risk to a bare minimum but this will remove the offload of Stream-supported Live Events (Teams-scheduled, external encoder events, Viva Engage events produced in Teams, Viva Engage-scheduled external encoder events, and Stream scheduled events or on-demand viewing from Stream). Events scheduled and produced in Teams are unaffected.

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
