---
title: Configure Offline Definitions Update for Microsoft Defender for Endpoint on Linux
description: Offline Definitions Update in Microsoft Defender for Endpoint on Linux.
ms.service: microsoft-365-security
ms.author: siosulli
author: siosulli
ms.reviewer: gopkr
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
- m365-security
- tier3
- mde-linux
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/12/2024
---

# Configure Offline Definitions Update for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The offline definition update feature of Microsoft Defender for Endpoint on Linux enables organizations to download definitions on Linux endpoints which are not exposed to the internet via a local hosting server (termed as *Mirror Server* in this document). The Mirror Server is any server in the customer's environment which can connect to the Microsoft cloud to download the signatures. Other endpoints pull the definitions from the Mirror Server at a predefined interval.

Key benefits include:

- // add

## How offline definition update works

// do we need this?

> [!NOTE]
> anything to add here?

## Prerequisites

- MDE version "101.24012.0001" or higher needs to be installed on the endpoints.
- The MDE wndpoints need to have connectivity to the Mirror Server.
- The Mirror server can be either an HTTP/ HTTPS server or a network share server. For e.g., an NFS Server.
- The Mirror Server needs to have access to the following URLs:
    - https://github.com/microsoft/mdatp-xplat.git 
    - https://go.microsoft.com/fwlink/?linkid=2144709 
- The following operating systems are supported for the Mirror Server:
    - Linux (Any Flavor)
    - Windows (Any Version)
    - Mac (Any version)
- The Mirror Server should support bash or PowerShell.
- The following system specifications are preferred for the Mirror Server:

    | CPU Core	| RAM	| Free disk	 | Swap |
    |--|--|--|--|
    | 2 cores (Preferred 4 Core) |	1GB Min	(Preferred 4GB)  | 2GB	 | System Dependent|

    > [!NOTE]
    > The above configuration may vary depending on the number of requests that are served and the load each server must process.
- The endpoint must be running a Linux operating system (all MDE supported distributions).


## Configuring the Mirror Server

> [!NOTE]
> The management and ownership of the Mirror Server lies solely with the customer as it resides in the customer's private environment.

> [!NOTE]
> The Mirror Server is not required to have MDE installed.

Microsoft has hosted a downloader script on [this GitHub repo](https://github.com/microsoft/mdatp-xplat).

Follow the below steps to get the downloader script:

1. Clone the repo (Preferred)

- [Install git](https://kinsta.com/knowledgebase/install-git/) on the Mirror Server.
- Navigate to the directory where you want to clone the repo.
- Execute the command: `git clone https://github.com/microsoft/mdatp-xplat.git`

2. Download the zip file

- Download the zip file of the repo as shown below.
![alt text](image.png)
- Copy the zip file to the folder where you want to keep the script.
- Extract the zip.

After cloning the repo / downloading the zip file, the local directory structure should be as follows:

// add this

Go through the README file to understand in detail about how to use the script.

The `settings.json` file consists of a few variables which can be configured by the user to determine the output of the script execution.

| Field Name               | Value  | Description                                            |
|--------------------------|--------|--------------------------------------------------------|
| `downloadFolder`         | string | Maps to the location which the script will download the files to |
| `downloadLinuxUpdates`   | bool   | When set to true, the script will download the Linux specific updates to the `downloadFolder` |
| `logFilePath`            | string | Sets up the diagnostic logs at a given folder. This file can be shared with Microsoft for debugging the script if it is not working |
| `downloadMacUpdates`     | bool   | The script will download the Mac specific updates to the downloadFolder |
| `downloadPreviewUpdates` | bool   | Downloads the preview version of the updates available for the specific OS |
| `backupPreviousUpdates`  | bool   | Allows the script to copy the previous update in the _back folder, and new updates are downloaded to `downloadFolder` |

Execute the downloader script based on the OS of the Mirror Server:
- Bash
  `./xplat_offline_updates_download.sh`
- PowerShell
  `./xplat_offline_updates_download.ps1`

Once the script is executed, the latest definitions will get downloaded to the folder configured in the `settings.json` file (`updates.zip`).

Execute the downloaded script: 

Linux/ Mac: Schedule a Cronjob (Linux/ Mac) to trigger the execution of downloader script at the scheduled time. Sample command:

```
0 * * * * /path/to/your/command
```

Once the definitions zip is downloaded, it is ready to be hosted by the Mirror Server. The Mirror Server can be hosted using any HTTP / HTTPS / Network share servers.

Once hosted, copy the absolute path of the hosted server (up to and not including the `arch_*` directory).

For example, if the script is executed with `downloadFolder=/tmp/wdav-update`, and the HTTP server (www.example.server.com:8000) is hosting the `/tmp/wdav-update` path, the URI will be as below
http://www.example.server.com:8000/linux/production/

Once the Mirror Server is set up, we need to propagate this URL to the Endpoints using the [Managed Configuration](#configure-the-endpoints).

## Configure the Endpoints

- Copy the managed.json
-   Use the sample managed.json and update the parameter as per the configuration and copy the file to the below location
    -   /etc/opt/microsoft/mdatp/managed/mdatp_managed.json

```
{
  "cloudService": {
    "automaticDefinitionUpdateEnabled": true,
    "definitionUpdatesInterval": 1202
  },
  "antivirusEngine": {
    "offlineDefinitionUpdateUrl": "http://172.22.199.67:8000/linux/production/",
    "offlineDefintionUpdateFallbackToCloud":false
  },
  "features": {
    "offlineDefinitionUpdate": "disabled",
    "offlineDefinitionUpdateVerifySig": "enabled"
  }
}
```

| Field Name                                | Values               | Comments                                            |
|-------------------------------------------|----------------------|-----------------------------------------------------|
| `automaticDefinitionUpdateEnabled`        | True / False         | Determines the behavior of MDE attempting to perform updates automatically, is turned on or off respectively |
| `definitionUpdatesInterval`               | Numeric              | Time of interval between each auto update of definitions |
| `offlineDefinitionUpdateUrl`              | String               | URL value generated as part of the Mirror Server set up |
| `offlineDefinitionUpdate`                 | enabled / disabled   | When set to `enabled`, offline definition update feature is enabled, and vice versa. |
| `offlineDefinitionUpdateVerifySig`        | enabled / disabled   | When set to `enabled`, offline definitions downloaded are verified on he endpoint, and vice versa. |
| `offlineDefinitionUpdateFallbackToCloud`  | True / False         | Determine MDE update approach when offline Mirror Server fails to serve the update request. If set to true, the update will be attempted to be downloaded from Microsoft ADL when offline definition update failed, else vice versa. |

## Useful commands

- Once the Mirror Server and the endpoints have been configured, to test if the settings are applied correctly on the endpoints:
    ```
    mdatp health --details --features
    mdatp health --details --definitions
    ```
   Verify  the updated fields according the managed.json

- Trigger a manual update request from the endpoints to download the definitions from the Mirror Server using the below command:
    `mdatp definitions update`


## Troubleshooting and Diagnostics

### Issues: MDATP update failure

- Update stuck or update did not trigger
- Update failed

### Common Troubleshooting Steps

- Check the status of offline definition update by using the command: `mdatp health -details definitions`
    - This should provide us with some user-friendly message in the `definitions_update_fail_reason` section.
    - Check if `offline_definition_update` and `offline_definition_update_verify_sig` is enabled.
    - Check if `definitions_update_source_uri` is equal to `offline_definition_url_configured`
        - `definitions_update_source_uri` is the source from where the definitions were downloaded.
        - `offline_definition_url_configured` is the source from where definitions should have been downloaded, the one mentioned in the managed config file.
- Try performing the connectivity test to check if Mirror Server is reachable from the host: 
    - `mdatp connectivity test`
- Try to trigger manual update using the command: 
    - `mdatp definitions update`


## FAQ

### Q. Will we be able to manage / configure offline definitions update via Security Portal?
A. Yes, in the next phase (tentatively by first half of FY24), we will have visibility as well as management controls on the Security Portal.

### Q. Is it required to isntall Microsoft Defender on Endpoint on the Mirror Server?
A. No, the Mirror Server need not have Microsoft Defender for Endpoint installed. The Mirror Server's management and maintenance ownership lies with the customers since the Mirror Server resides in the customer's private environment and Microsoft will have no visibility into it.

