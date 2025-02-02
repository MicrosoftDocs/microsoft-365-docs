---
ms.date: 01/01/2024
title: Export topics created in Viva Engage with PowerShell
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - Tier1
ms.service: viva-topics 
search.appverid:
    - MET150  
ms.localizationpriority:  medium
description: Learn how to export topics created in Viva Engage (Lite Topics) to a .csv file.
---

# Export topics created in Viva Engage with PowerShell

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

Using PowerShell, you can export topics created in Viva Engage (also known as Lite Topics) to a .csv file. Topics created before enabling integration with Viva Engage are included.

> [!NOTE]
> This article assumes you have knowledge about how to use PowerShell.

## Requirements

To export the topics, you run a PowerShell script. Requirements to run the script are:

- PowerShell 7 or later. To install the latest version of PowerShell, go to [Installing PowerShell on Windows](/powershell/scripting/install/installing-powershell-on-windows#installing-the-msi-package).
- The user running the script needs to be a Topics admin or Knowledge Manager.

Key support files are included in this document:

- [Key support file AuthLib.ps1](#key-support-file-authlibps1)
- [Key support file TopicLib.ps1](#key-support-file-topiclibps1)

## Run the PowerShell script

1. [Get the script](#export-topics-script).
1. Use the following parameters: <br>
    `Export-TopicLite -Upn < string > | Export-Csv -Path < string >`

   Example:

   ```powershell
   Export-TopicLite -Upn "user@domain.com" -Path "C:\"
   ```

## Output

The .csv file includes the following output:

- Topic name
- Topic type
- Lifecycle status
- Time last modified

## Export topics script

```powershell
# Gets all topicLites
function Export-TopicLite()
{
    <#
    .SYNOPSIS
     Get all topic lites
    .DESCRIPTION

    .EXAMPLE
     Export-TopicLite -Upn "upn"
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $false)]
        [string] $Upn
    )

    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
    $ErrorActionPreference = "Stop" 
    $VerbosePreference = "SilentlyContinue" 
    
    if ($PSVersionTable.PSVersion.Major -lt 7)
    {
        # You need to upgrade your PowerShell environment. REST and parallel execution has better implementation there.
        Write-Warning "PowerShell 7 or greater required.  REST and parallel execution has better implementation there."
        Write-Warning "If you are a part of Windows App Installer preview, use `"winget install --name PowerShell --exact`" from the command line to get and install the current stable version."
        Write-Warning "Otherwise go to `"https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows#installing-the-msi-package`" to download and install latest powershell"
        Write-Warning "See https://aka.ms/PSWindows for more"
        exit
    }

    . lib\AuthLib.ps1 
    . lib\TopicLib.ps1

    $SubstrateUri = "https://substrate.office.com"
    # Get default token to make call to Office Substrate Knowledge Base API
    $usertoken = GetUserToken -Portal:$SubstrateUri -upn:$Upn
    $token = ConvertTo-SecureString -string $usertoken -AsPlainText -Force

    # Breakdown token to get appropriate value for Substrate anchor for KM API calls
    $parsedToken = Parse-JWTtoken($token)

    
    $contentType = "application/json; charset=UTF-8"
    $headers = @{}
    $headers["Accept"] = $contentType
    $headers["Content-Type"] = $contentType

    # Required for correct routing of calls to Exchange Online
    $headers["X-AnchorMailbox"] = "SMTP:" + $parsedToken.upn
    $headers["X-RoutingParameter-SessionKey"] = "SMTP:" + $parsedToken.upn

    $data = $null
    # Need to assemble payload
    $topicUri = "$SubstrateUri/KnowledgeGraph/api/v1.0/Topics?provider=TopicLite"
    # Build body
    $headers["Client-Request-Id"] = [System.Guid]::NewGuid().ToString()
    $headers["X-Debug-FilterTopicLiteTopics"] = $false

    $lastName = ""
    $lastType = 1
    $lastId = "";
    $topicFound = $true
    $topics=[System.Collections.ArrayList]::new()

    while ($topicFound -eq $true)
    {
        try
        {
            if ($lastId -eq "")
            {
                $data = Invoke-RestMethod -Method GET -Uri $topicUri -Authentication Bearer -Token $token -Headers $headers
            }
            else
            {
                $nextTopicUri = $topicUri + "&lastId=$lastId&lastName=$lastName&lastType=$lastType"
                $data = Invoke-RestMethod -Method GET -Uri $nextTopicUri -Authentication Bearer -Token $token -Headers $headers
            }
        }
        catch
        {
            throw $_
        }

        if ($data.value.Length -ne 0)
        {
            $topics += $data.value
            $len = $data.value.Length
            $lastId = $data.value[$len-1].Id
        }
        else
        {
            $topicFound = $false
        }

        Write-Host "Last: $lastId Batch Len: $len"
    }
    return $topics
}

```

## Key support file AuthLib.ps1

```powershell
if ($PSVersionTable.PSVersion.Major -lt 6)
{
    # You need to upgrade your PowerShell environment
    Write-Warning "PowerShell 6 or greater required.  REST commands work better that way."
    Write-Warning "If you don't have it, use `"winget install --name PowerShell --exact`" from the command line to get and install the current stable version."
    Write-Warning "See https://aka.ms/PSWindows for more"
    exit
}

$global:AzureRegion2SubstrateMapping = 
@{
    "canadaeast" = "nam";
    "canadacentral" = "nam";
    "southcentralus" = "nam";
    "northcentralus" = "nam";
    "eastus" = "nam";
    "eastus2" = "nam";
    "centralus" = "nam";
    "switzerlandnorth" = "eur";
    "switzerlandwest" = "eur";
    "germanywestcentral" = "eur";
    "germanynorth" = "eur";
    "westeurope" = "eur";
    "northeurope" = "eur";
    "francesouth" = "eur";
    "francecentral" = "eur";
    "norwayeast" = "eur";
    "norwaywest" = "eur";
    "swedencentral" = "eur";
    "swedensouth" = "eur";
    "qatarcentral" = "eur";
    "southeastasia" = "apc";
    "brazilsoutheast" = "lam";
    "brazilsouth" = "lam";
    "japanwest" = "jpn";
    "japaneast" = "jpn";
    "koreacentral" = "jpn";
    "koreasouth" = "jpn";
    "australiasoutheast" = "aus";
    "australiaeast" = "aus";
    "centralindia" = "ind";
    "westindia" = "ind";
    "southindia" = "ind";
    "ukwest" = "gbr";
    "uksouth" = "gbr";
    "southafricanorth" = "zaf";
    "southafricawest" = "zaf";
    "uaecentral" = "are";
    "uaenorth" = "are";
}

function GetUserToken
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)][string]$Portal,
        [Parameter(Mandatory=$false)][string]$Upn = "",
        [Parameter(Mandatory=$false)][switch]$CopyToClipboard
    )

    $path = Split-Path -parent $PSCommandPath | Join-Path -ChildPath "Microsoft.IdentityModel.Clients.ActiveDirectory.dll"
    $bytes = [System.IO.File]::ReadAllBytes($path)
    [System.Reflection.Assembly]::Load($bytes) | Out-Null
    Add-Type -Path $path

    if ([String]::IsNullOrEmpty($Upn))
    {
	    $user = Invoke-Expression 'whoami /upn'
    	Write-Verbose "Got UPN from current user: $user"
    }
    else
    {
   		$user = $upn
    }

    Write-Verbose "Getting token for service $Portal, user: $user"

    # get constants outta the way
    $authority = "https://login.microsoftonline.com/common"
    $clientId  = "d3590ed6-52b3-4102-aeff-aad2292ab01c"
    $redirectUri = "urn:ietf:wg:oauth:2.0:oob"
    $token = $null

    $authContext = [Microsoft.IdentityModel.Clients.ActiveDirectory.AuthenticationContext]::new($authority, $false)

    # Prompt Behaviour to ask for user credentials value set to auto, with passed user as hint
    $promptBehaviour = [Microsoft.IdentityModel.Clients.ActiveDirectory.PlatformParameters]::new(0)
    #$username = [Microsoft.IdentityModel.Clients.ActiveDirectory.UserIdentifier]::new($user, 'OptionalDisplayableId')
    $username = [Microsoft.IdentityModel.Clients.ActiveDirectory.UserIdentifier]::new($user, 'OptionalDisplayableId')
    Write-Verbose "Acquiring token for resource $Portal"
    [Microsoft.IdentityModel.Clients.ActiveDirectory.AuthenticationResult]$authResult = $authContext.AcquireTokenAsync($Portal, $clientId, $redirectUri, $promptBehaviour, $username).Result

    # Check for tokens since requesting 
    $tokens=$authContext.TokenCache.ReadItems()
    foreach ($t in $tokens){
        $currentTime = [DateTime]::UtcNow
        if (($t.Resource -eq $Portal) -and ($t.DisplayableId -eq $User) -and ($t.ExpiresOn -gt $currentTime)){
            $token = $t.AccessToken
            Write-Verbose "Got token for $User for URL $Portal, expiring at $($t.ExpiresOn)"
        }
    }

    if ($null -eq $token){
        Write-Error "No token present for user value $User passed"
        Throw 
    }

    if($CopyToClipboard)
    {
        Write-Host "Authorization token has been copied to clipboard`n"
        Set-Clipboard -Value $token
    }

    return $token
}

function GetMicroserviceUrl
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)][string]$Portal,
        [Parameter(Mandatory=$false)][string]$Upn
    )

	$sharepointToken = GetUserToken -Portal $Portal -Upn $Upn
	$sharepointSecureToken = ConvertTo-SecureString -string $sharepointToken -AsPlainText -Force

	$headers = @{
	    'accept' = 'application/json'
	}

	try 
	{
		$uri = "$Portal/_api/sphomeservice/context?`$expand=Payload"
		Write-Host "$uri"
	    if ($Fiddler)
    	{
	   		$data = Invoke-RestMethod -Method GET -Uri $uri -Authentication Bearer -Token $sharepointSecureToken -Headers $headers -Proxy 'http://127.0.0.1:8888'
	    }
    	else
    	{
        	$data = Invoke-RestMethod -Method GET -Uri $uri -Authentication Bearer -Token $sharepointSecureToken -Headers $headers        
    	}
	}
	catch 
	{
		Write-Host "$_"
    	throw $_.Message
	}

	$spHomeRegion = $data.Urls[0]

    # extract region + slot: southcentralus2
    $spHomeRegion = $spHome.Remove(0, "https://".Length).Split('-')[0]
    # remove slot: southcentralus2
    $spHomeRegion = $spHomeRegion.Remove($spHomeRegion.Length - 1)

    $subsctrateRegion = $AzureRegion2SubstrateMapping[$spHomeRegion]
    $KMDomain = "https://$subsctrateRegion-kmp.svc.ms"

	Write-Host "Using microservice url: $KMDomain"
	return $KMDomain
}

function Parse-JWTtoken {
    <#
    .SYNOPSIS
    Function to return headers and values set in JWT / Bearer token
    .DESCRIPTION
    Source: https://www.michev.info/Blog/Post/2140/decode-jwt-access-and-id-tokens-via-powershell
    Author: Vasil Michev, vasil at michev.info
    .OUTPUTS
    PSObject containing array of token headers and corresponding values
    #>

    [cmdletbinding()]
    param(
        # SecureString containing a JSON Web Token. See https://jwt.io/ for an interactive version.
        [Parameter(Mandatory=$true)][SecureString]$SecureToken)
 
    if ($SecureToken.Length -gt 0)
    {
        $token = ConvertFrom-SecureString $SecureToken -AsPlainText
    }
    else {
        Write-Error "Zero-length token specified" -ErrorAction:Stop
    }

    Write-Verbose "Beginning parse of token"
    #Validate as per https://tools.ietf.org/html/rfc7519
    #Access and ID tokens are fine, Refresh tokens will not work
    if (!$token.Contains(".") -or !$token.StartsWith("eyJ")) { Write-Error "Invalid token" -ErrorAction Stop }
 
    #Header
    $tokenheader = $token.Split(".")[0].Replace('-', '+').Replace('_', '/')
    #Fix padding as needed, keep adding "=" until string length modulus 4 reaches 0
    while ($tokenheader.Length % 4) { Write-Verbose "Invalid length for a Base-64 char array or string, adding ="; $tokenheader += "=" }
    Write-Verbose "Base64 encoded (padded) header:"
    Write-Verbose $tokenheader
    #Convert from Base64 encoded string to PSObject all at once
    # Write-Verbose "Decoded header:" + ([System.Text.Encoding]::ASCII.GetString([system.convert]::FromBase64String($tokenheader)) | ConvertFrom-Json | fl | Out-Default)

    #Payload
    $tokenPayload = $token.Split(".")[1].Replace('-', '+').Replace('_', '/')
    #Fix padding as needed, keep adding "=" until string length modulus 4 reaches 0
    while ($tokenPayload.Length % 4) { Write-Verbose "Invalid length for a Base-64 char array or string, adding ="; $tokenPayload += "=" }
    Write-Verbose "Base64 encoded (padded) payload:"
    Write-Verbose $tokenPayload
    #Convert to Byte array
    $tokenByteArray = [System.Convert]::FromBase64String($tokenPayload)
    #Convert to string array
    $tokenArray = [System.Text.Encoding]::ASCII.GetString($tokenByteArray)
    Write-Verbose "Decoded array in JSON format:"
    Write-Verbose $tokenArray
    #Convert from JSON to PSObject
    $tokobj = $tokenArray | ConvertFrom-Json
    
    return $tokobj
}

function Test-TokenValidityPeriod ()
{    <#
    .SYNOPSIS
    Function to validate whether token passed is time-valid
    .DESCRIPTION
    Tests extracted expiry time of token against machine clock time and returns True if token is time-valid
    .OUTPUTS
    Boolean indicating time-validity of token
    #>

    [CmdletBinding()]
    param (
        # Token to test for time-validity
        [Parameter(Mandatory=$true)][SecureString]$token
    )    

    $parsedToken = Parse-JWTtoken($token)
    $expiryTime = (Get-Date -Date "1970-01-01 00:00:00Z").ToUniversalTime()
    $expiryTime = $expiryTime.AddSeconds($parsedToken.exp) 
    $currentTime = [DateTime]::UtcNow

    Write-Verbose "Testing validity of token for user `"$($parsedToken.Name)`", $($parsedToken.Upn), URI $($parsedToken.Aud), tenant $($parsedToken.tid)."
    Write-Verbose "Token expires at $expiryTime UTC. (It's $currentTime UTC.)"
    if ($expiryTime -gt $currentTime) { 
        $validfor=[Math]::Floor((New-Timespan -start:$currentTime -end:$expiryTime).TotalSeconds)
        Write-Verbose "Token is valid for $validfor seconds."
        return $true
    }
    else {
        return $false
    }   
}

```

## Key support file TopicLib.ps1

```powershell
enum TopicListType
{
    Suggested
    Confirmed
    Published
    Removed
    All
}
function GetMicroserviceUrlByEnvironment
{
    param(
        [ValidateSet("Prod", "GCC")]
        [Parameter(Mandatory = $true, ParameterSetName)]
        [string] $Environment,
        [ValidateSet("Live", "Staging")]
        [string] $Pipeline = "Live"
        )

    $msBase = "km"
    $substrateRegion = "nam"
    $urlDelimiter = "-"
    $msEnvironmentSuffix = "p"
    
    if ($Environment -eq "GCCTest")
    {
        $msEnvironmentSuffix = "p"
        $substrateRegion = "nam"
        $msBase = "kmgcc"
        $urlDelimiter = "."
    }

  	$MicroserviceBaseUrl = "https://$substrateRegion$($urlDelimiter)$msBase$msEnvironmentSuffix.svc.ms"
    
    Write-Host "Microservice: $MicroserviceBaseUrl, Pipeline: $Pipeline"
    return ($MicroserviceBaseUrl, $Pipeline)
}

function DownloadTopicsBatch
{
    param(
        $batch,
        [SecureString] $token,
        [string] $kmDomain,
        [bool] $fiddler,
        [bool] $verbose
    )

    # $ids are objects, join them manually
    $idsParam = [String]::Join(",", $batch)
    $uri = "$kmDomain/api/v1/KBDiagnostics/externalentities?entityIds=$idsParam"

    $headers = @{}

    for ($attempt = 0; $attempt -lt 3; $attempt++)
    {
        try {
            if ($verbose)
            {
                Write-Host "$uri"
            }

            if ($fiddler)
            {
                $data = Invoke-RestMethod -Method GET -Uri $uri -Authentication Bearer -Token $token -Headers $headers -Proxy 'http://127.0.0.1:8888'
            }
            else
            {
                $data = Invoke-RestMethod -Method GET -Uri $uri -Authentication Bearer -Token $token -Headers $headers        
            }

            # api returns dictionary topicid => externalentity, powershell returns it at PSCustomObject.
            # converting it to list of found entities
            $foundEntities = @()
            foreach ($property in $data.psobject.properties.name)
            {
                $foundEntities += , $data.$property
            }
            
            return $foundEntities
        }
        catch 
        {
            Write-Host "Retry: $_"
        }
    }
}

function ProcessTopicBatch
{
    param (
        $batch,
        [string] $batchId,
        [string] $outputFile,
        [SecureString] $token,
        [string] $kmDomain,
        [bool] $processFirst,
        [bool] $fiddler,
        [bool] $verbose
    )

    Write-Host "Batch $batchId"

    $entities = DownloadTopicsBatch $batch $token $kmDomain -fiddler $fiddler -verbose $verbose

    # lock output file and write data
    while ($true)
    {
        try 
        {
            $filePath = Get-Item $outputFile
            $file = [System.IO.File]::Open($filePath.FullName, "append", "write", "none")

            foreach ($entity in $entities)
            {
                $content = ""

                if (-not $processFirst)
                {
                    $content = ","
                }
    
                $processFirst = $false
    
                $content += $entity | ConvertTo-Json -Compress -Depth 100
                $content += "`n"

                $enc = [system.Text.Encoding]::UTF8
                $data = $enc.GetBytes($content) 
                $file.write($data,0,$data.length)                
            }

            $file.close()
            break            
        }
        catch 
        {
            if ($_ -match "because it is being used by another process")
            {
                # file locked for writing by concurrent thread, wait a bit
                Start-Sleep -Milliseconds 100
            }
            else
            {
                Write-Host "Can't open file for writing: $_"
                throw "Can't save results: $_"
            }
        }
    }
}

function Get-TopicsDashboard()
{
    <#
    .SYNOPSIS
     Retrieves Topic dashboard via /api/v1.0/KnowledgeManagement/Topics/ManagedDashboardV2
    .EXAMPLE
     Get-TopicsDashboard -token $token
     Get-TopicsDashboard -token $token -test $true
    #>

    param(
        [Parameter(Mandatory=$false)]$substrateUrl = "https://substrate.office.com",
        [Parameter(Mandatory=$true)][SecureString]$token,
        [Parameter(Mandatory=$false)]$fiddler = $false,
        # Optional parameter to use the test pipeline
        [Parameter(Mandatory = $false)][switch]$test = $false
    )

    # Breakdown token to get appropriate value for Substrate anchor for KM API calls 
    $parsedToken = Parse-JWTtoken($token)

    # KM API for Managed Dashboard
    $topicUri = "$SubstrateUri/KnowledgeGraph/api/v1.0/Topics/ManagedDashboardV2"

    # Request
    $PostBody = "{`"PastDays`":30 }"

    $snapshots=[System.Collections.ArrayList]::new()
    $headers = @{}
    $headers["Accept"] = $contentType
    $headers["Content-Type"] = $contentType

    # Required for correct routing of calls to Exchange Online
    $headers["X-AnchorMailbox"] = "SMTP:" + $parsedToken.upn
    $headers["X-RoutingParameter-SessionKey"] = "SMTP:" + $parsedToken.upn

    if ($Test)
    {
        $headers[$SPDFTestHeader] = "true"
    }

    try
    {
        if ($fiddler)
        {
            $data = Invoke-RestMethod -Method POST -Uri $topicUri -Authentication Bearer -Token $token -Headers $headers -Body $PostBody -Proxy 'http://127.0.0.1:8888'
        }
        else
        {
            $data = Invoke-RestMethod -Method POST -Uri $topicUri -Authentication Bearer -Token $token -Headers $headers -Body $PostBody
        }

        if (($data -ne $null) -and ($data.Snapshots -ne $null))
        {
           return $data.Snapshots
        }
    }
    catch
    {
        $_
    }

    return $snapshots
}

```
