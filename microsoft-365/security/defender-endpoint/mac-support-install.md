---
title: Troubleshoot installation issues for Microsoft Defender for Endpoint on Mac
description: Troubleshoot installation issues in Microsoft Defender for Endpoint on Mac.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, install, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Troubleshoot installation issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Installation failed

For manual installation, the Summary page of the installation wizard says, "An error occurred during installation. The Installer encountered an error that caused the installation to fail. Contact the software publisher for assistance." For MDM deployments, it displays as a generic installation failure as well.

While we don't display an exact error to the end user, we keep a log file with installation progress in `/Library/Logs/Microsoft/mdatp/install.log`. Each installation session appends to this log file. You can use `sed` to output the last installation session only:

```bash
sed -n 'H; /^preinstall com.microsoft.wdav begin/h; ${g;p;}' /Library/Logs/Microsoft/mdatp/install.log
```
```Output
preinstall com.microsoft.wdav begin [2020-03-11 13:08:49 -0700] 804
INSTALLER_SECURE_TEMP=/Library/InstallerSandboxes/.PKInstallSandboxManager/CB509765-70FC-4679-866D-8A14AD3F13CC.activeSandbox/89FA879B-971B-42BF-B4EA-7F5BB7CB5695
correlation id=CB509765-70FC-4679-866D-8A14AD3F13CC
[ERROR] Downgrade from 100.88.54 to 100.87.80 is not permitted
preinstall com.microsoft.wdav end [2020-03-11 13:08:49 -0700] 804 => 1
```

In this example, the actual reason is prefixed with `[ERROR]`.
The installation failed because a downgrade between these versions isn't supported.

## MDATP install log missing or not updated

In rare cases, installation leaves no trace in MDATP's /Library/Logs/Microsoft/mdatp/install.log file.
First, verify that an installation happened. Then analyze possible errors by querying macOS logs. It's helpful to do this in MDM deployments, when there's no client UI. We recommend that you use a narrow time window to run a query and filter by the logging process name, as there will be a huge amount of information.

```bash
grep '^2020-03-11 13:08' /var/log/install.log
```
```Output
log show --start '2020-03-11 13:00:00' --end '2020-03-11 13:08:50' --info --debug --source --predicate 'processImagePath CONTAINS[C] "install"' --style syslog
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
