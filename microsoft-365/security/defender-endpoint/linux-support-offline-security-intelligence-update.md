---
title: Configure Offline Security Intelligence Update for Microsoft Defender for Endpoint on Linux
description: Offline Security Intelligence Update in Microsoft Defender for Endpoint on Linux.
ms.service: defender-endpoint
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
search.appverid: met150
ms.date: 03/12/2024
---

# Configure Offline Security Intelligence Update for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This document describes the Offline Security Intelligence Update feature of Microsoft Defender for Endpoint on Linux.

This feature enables an organization to update the security intelligence (also referred to as definitions or signatures in this document) on Linux endpoints with limited or no exposure to the internet using a local hosting server (termed as *Mirror Server* in this document).

Mirror Server is any server in the customer's environment that can connect to the Microsoft cloud to download the signatures. Other Linux endpoints pull the signatures from the Mirror Server at a predefined interval.

Key benefits include:

- Ability to control and manage the frequency of signature downloads on the local server & the frequency at which endpoints pull the signatures from the local server.
- Adds an extra layer of protection & control as the downloaded signatures can be tested on a test device before being propagated to the entire fleet.
- Reduces network bandwidth as now only one local server will poll MS cloud to get the latest signatures on behalf of your entire fleet. 
- Local server can run any of the three OS - Windows, Mac, Linux, and isn't required to install Defender for Endpoint.
- Provides the most up to date antivirus protection as signatures are always downloaded along with the latest compatible AV engine. 
- In each iteration, signature with n-1 version is moved to a backup folder on the local server. If there's any issue with the latest signature, you can pull the n-1 signature version from the backup folder to your endpoints.
- On the rare occasion the offline update fails, you can also choose to fallback to online updates from Microsoft cloud(traditional method).

## How Offline Security Intelligence Update works

- Organizations need to set up a Mirror Server, which is a local Web/NFS server that is reachable by the Microsoft cloud.
- Signatures are downloaded from Microsoft Cloud on this Mirror Server by executing a script using cron job/task scheduler on the local server.
- Linux endpoints running Defender for Endpoint pull the downloaded signatures from this Mirror Server at a user-defined time interval.
- Signatures pulled on the Linux endpoints from the local server are first verified before loading it into the AV engine.
- To trigger and configure the update process, update the managed config json file on the Linux endpoints.
- The status of the update can be seen on the mdatp CLI.

:::image type="content" source="./media/offline-update-diag-1.png" alt-text="Process flow diagram on the Mirror Server for downloading the security intelligence updates" lightbox="./media/offline-update-diag-2.png":::
Fig. 1: Process flow diagram on the Mirror Server for downloading the security intelligence updates

:::image type="content" source="./media/offline-update-diag-2.png" alt-text="Process flow diagram on the Linux endpoint for security intelligence updates" lightbox="./media/offline-update-diag-2.png":::

Fig. 2: Process flow diagram on the Linux endpoint for security intelligence updates

## Prerequisites

- Defender for Endpoint version "101.24022.0001" or higher in InsiderSlow ring needs to be installed on the Linux endpoints. 
  > [!NOTE]
  > This version of Defender for Endpoint on Linux will be rolled out to the Production ring soon.
- The Linux endpoints need to have connectivity to the Mirror Server.
- The Mirror Server can be either an HTTP/ HTTPS server or a network share server. For example, an NFS Server.
- The Mirror Server needs to have access to the following URLs:
    - https://github.com/microsoft/mdatp-xplat.git 
    - https://go.microsoft.com/fwlink/?linkid=2144709 
- The following operating systems are supported on the Mirror Server:
    - Linux (Any Flavor)
    - Windows (Any Version)
    - Mac (Any version)
- The Mirror Server should support bash or PowerShell.
- The following minimum system specifications are required for the Mirror Server:

    | CPU Core	| RAM	| Free disk	 | Swap |
    |--|--|--|--|
    | 2 cores (Preferred 4 Core) |	1 GB Min	(Preferred 4 GB)  | 2 GB	 | System Dependent|

    > [!NOTE]
    > This configuration may vary depending on the number of requests that are served and the load each server must process.

- The Linux endpoint must be running any of the Defender for Endpoint supported distributions.

## Configuring the Mirror Server

> [!NOTE]
> The management and ownership of the Mirror Server lies solely with the customer as it resides in the customer's private environment.

> [!NOTE]
> The Mirror Server does not need to have Defender for Endpoint installed.

### Get the offline security intelligence downloader script

Microsoft hosts an offline security intelligence downloader script on [this GitHub repo](https://github.com/microsoft/mdatp-xplat).

Follow these steps to get the downloader script:

#### Option 1: Clone the repo (Preferred)

- [Install git](https://kinsta.com/knowledgebase/install-git/) on the Mirror Server.
- Navigate to the directory where you want to clone the repo.
- Execute the command: `git clone https://github.com/microsoft/mdatp-xplat.git`

#### Option 2: Download the zip file

- Download the zip file of the repo [from here](https://github.com/microsoft/mdatp-xplat/archive/refs/heads/master.zip).
- Copy the zip file to the folder where you want to keep the script.
- Extract the zip.

> [!NOTE]
> Schedule a [cron job](#scheduling-a-cron-job) to keep the repo/downloaded zip file updated to the latest version at regular intervals.

After cloning the repo/downloaded zip file, the local directory structure should be as follows:

```
user@vm:~/mdatp-xplat$ tree linux/definition_downloader/
linux/definition_downloader/
├── README.md
├── settings.json
├── settings.ps1
├── xplat_offline_updates_download.ps1
└── xplat_offline_updates_download.sh

0 directories, 5 files
```

> [!NOTE]
> Go through the README.md file to understand in detail about how to use the script.

The `settings.json` file consists of a few variables that the user can configure to determine the output of the script execution.

| Field Name               | Value  | Description                                            |
|--------------------------|--------|--------------------------------------------------------|
| `downloadFolder`         | string | Maps to the location where the script downloads the files to |
| `downloadLinuxUpdates`   | bool   | When set to true, the script downloads the Linux specific updates to the `downloadFolder` |
| `logFilePath`            | string | Sets up the diagnostic logs at a given folder. This file can be shared with Microsoft for debugging the script if there are any issues |
| `downloadMacUpdates`     | bool   | The script downloads the Mac specific updates to the `downloadFolder` |
| `downloadPreviewUpdates` | bool   | Downloads the preview version of the updates available for the specific OS |
| `backupPreviousUpdates`  | bool   | Allows the script to copy the previous update in the _back folder, and new updates are downloaded to `downloadFolder` |

### Execute the offline security intelligence downloader script

To manually execute the downloader script, configure the parameters in the `settings.json` file as per the description in the previous section, and use one of the following commands based on the OS of the Mirror Server:
- Bash:
  `./xplat_offline_updates_download.sh`
- PowerShell:
  `./xplat_offline_updates_download.ps1`

> [!NOTE]
> Schedule a [cron job](#scheduling-a-cron-job) to execute this script to download the latest security intelligence updates in the Mirror Server at regular intervals.

### Host the offline security intelligence updates on the Mirror Server

Once the script is executed, the latest signatures get downloaded to the folder configured in the `settings.json` file (`updates.zip`).

Once the signatures zip is downloaded, the Mirror Server can be used to host it. The Mirror Server can be hosted using any HTTP / HTTPS / Network share servers.

Once hosted, copy the absolute path of the hosted server (up to and not including the `arch_*` directory).

For example, if the script is executed with `downloadFolder=/tmp/wdav-update`, and the HTTP server (`www.example.server.com:8000`) is hosting the `/tmp/wdav-update` path, the corresponding URI is: `www.example.server.com:8000/linux/production/`

Once the Mirror Server is set up, we need to propagate this URL to the Linux endpoints using the Managed Configuration as described in the next section.

## Configure the Endpoints

- Use the following sample `mdatp_managed.json` and update the parameters as per the configuration and copy the file to the location `/etc/opt/microsoft/mdatp/managed/mdatp_managed.json`.

```
{
  "cloudService": {
    "automaticDefinitionUpdateEnabled": true,
    "definitionUpdatesInterval": 1202
  },
  "antivirusEngine": {
    "offlineDefinitionUpdateUrl": "http://172.22.199.67:8000/linux/production/",
    "offlineDefintionUpdateFallbackToCloud":false,
    "offlineDefinitionUpdate": "enabled"
  }
}
```

| Field Name                                | Values               | Comments                                            |
|-------------------------------------------|----------------------|-----------------------------------------------------|
| `automaticDefinitionUpdateEnabled`        | True / False         | Determines the behavior of Defender for Endpoint attempting to perform updates automatically, is turned on or off respectively |
| `definitionUpdatesInterval`               | Numeric              | Time of interval between each automatic update of signatures (in seconds) |
| `offlineDefinitionUpdateUrl`              | String               | URL value generated as part of the Mirror Server set up |
| `offlineDefinitionUpdate`                 | enabled / disabled   | When set to `enabled`, the offline security intelligence update feature is enabled, and vice versa. |
| `offlineDefinitionUpdateFallbackToCloud`  | True / False         | Determine Defender for Endpoint security intelligence update approach when offline Mirror Server fails to serve the update request. If set to true, the update is retried via the Microsoft cloud when offline security intelligence update failed, else vice versa. |

> [!NOTE]
> As of today the offline security intelligence update feature can be configured on Linux endpoints via managed json only. Integration with security settings management on the security portal is in our roadmap.

### Verify the configuration

 To test if the settings are applied correctly on the Linux endpoints, run the following command:
```
mdatp health --details definitions
```

For example, a sample output would look like:

```
user@vm:~$ mdatp health --details definitions
automatic_definition_update_enabled         : true [managed]
definitions_updated                         : Mar 14, 2024 at 12:13:17 PM
definitions_updated_minutes_ago             : 2
definitions_version                         : "1.407.417.0"
definitions_status                          : "up_to_date"
definitions_update_source_uri               : "https://go.microsoft.com/fwlink/?linkid=2144709"
definitions_update_fail_reason              : ""
offline_definition_url_configured           : "http://172.22.199.67:8000/linux/production/" [managed]
offline_definition_update                   : "enabled" [managed]
offline_definition_update_verify_sig        : "enabled"
offline_definition_update_fallback_to_cloud : false[managed]
```

## Triggering the Offline Security Intelligence Updates

### Automatic update
- If the fields `automaticDefinitionUpdateEnabled` and 'offline_definition_update' in the managed json are set to true, then the offline security intelligence updates are triggered  automatically at periodic intervals.
- By default, this periodic interval is 8 hours. But it can be configured by setting the `definitionUpdatesInterval` in the managed json.

### Manual update
- In order to trigger the offline security intelligence update manually to download the signatures from the Mirror Server on the Linux endpoints, run the command:
    `mdatp definitions update`

### Check update status
- After triggering the offline security intelligence update by either the automatic or manual method, verify that the update was successful by running the command: `mdatp health --details --definitions`.
- Verify the following fields:

  ```
  user@vm:~$ mdatp health --details definitions
  ...
  definitions_status                          : "up_to_date"
  ...
  definitions_update_fail_reason              : ""
  ...
  ```

## Troubleshooting and Diagnostics

### Issues: MDATP update failure

- Update stuck or update didn't trigger
- Update failed

### Common Troubleshooting Steps

- Check the status of the offline security intelligence update feature by using the command: `mdatp health --details definitions`
    - This should provide us with some user-friendly message in the `definitions_update_fail_reason` section.
    - Check if `offline_definition_update` and `offline_definition_update_verify_sig` is enabled.
    - Check if `definitions_update_source_uri` is equal to `offline_definition_url_configured`
        - `definitions_update_source_uri` is the source from where the signatures were downloaded.
        - `offline_definition_url_configured` is the source from where signatures should be downloaded, the one mentioned in the managed config file.
- Try performing the connectivity test to check if Mirror Server is reachable from the host: 
    - `mdatp connectivity test`
- Try to trigger manual update using the command: 
    - `mdatp definitions update`

## Useful Links

### Downloader script

- [GitHub repo](https://github.com/microsoft/mdatp-xplat)

### Scheduling a cron job
- [Schedule a cron job in Linux](https://phoenixnap.com/kb/set-up-cron-job-linux)
- [Schedule a cron job in macOS](https://phoenixnap.com/kb/cron-job-mac)
- [Schedule a cron job in Windows](https://phoenixnap.com/kb/cron-job-windows)
