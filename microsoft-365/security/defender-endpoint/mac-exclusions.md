---
title: Configure and validate exclusions for Microsoft Defender for Endpoint on Mac
description: Provide and validate exclusions for Microsoft Defender for Endpoint on Mac. Exclusions can be set for files, folders, and processes.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, exclusions, scans, antivirus
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

# Configure and validate exclusions for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This article provides information on how to define exclusions that apply to on-demand scans, and real-time protection and monitoring.

> [!IMPORTANT]
> The exclusions described in this article don't apply to other Defender for Endpoint on Mac capabilities, including endpoint detection and response (EDR). Files that you exclude using the methods described in this article can still trigger EDR alerts and other detections.

You can exclude certain files, folders, processes, and process-opened files from Defender for Endpoint on Mac scans.

Exclusions can be useful to avoid incorrect detections on files or software that are unique or customized to your organization. They can also be useful for mitigating performance issues caused by Defender for Endpoint on Mac.

> [!WARNING]
> Defining exclusions lowers the protection offered by Defender for Endpoint on Mac. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you are confident are not malicious.

## Supported exclusion types

The following table shows the exclusion types supported by Defender for Endpoint on Mac.

Exclusion|Definition|Examples
---|---|---
File extension|All files with the extension, anywhere on the machine|`.test`
File|A specific file identified by the full path|`/var/log/test.log` <p> `/var/log/*.log` <p> `/var/log/install.?.log`
Folder|All files under the specified folder (recursively)|`/var/log/` <p> `/var/*/`
Process|A specific process (specified either by the full path or file name) and all files opened by it|`/bin/cat` <p> `cat` <p> `c?t`

File, folder, and process exclusions support the following wildcards:

Wildcard|Description|Examples|
---|---|---
\*|Matches any number of any characters including none (note if this wildcard is not used at the end of the path then it will substitute only one folder)| `/var/*/tmp` includes any file in `/var/abc/tmp` and its subdirectories, and `/var/def/tmp` and its subdirectories. It does not include `/var/abc/log` or `/var/def/log` <p> <p> `/var/*/` includes any file in `/var` and its subdirectories. 
?|Matches any single character|`file?.log` includes `file1.log` and `file2.log`, but not`file123.log`
> [!NOTE]
> When using the * wildcard at the end of the path, it will match all files and subdirectories under the parent of the wildcard.


> [!NOTE]
> The product attempts to resolve firmlinks when evaluating exclusions. Firmlink resolution does not work when the exclusion contains wildcards or the target file (on the `Data` volume) does not exist.

## How to configure the list of exclusions

### From the management console

For more information on how to configure exclusions from JAMF, Intune, or another management console, see [Set preferences for Defender for Endpoint on Mac](mac-preferences.md).

### From the user interface

Open the Defender for Endpoint application and navigate to **Manage settings** \> **Add or Remove Exclusion...**, as shown in the following screenshot:

:::image type="content" source="images/mdatp-37-exclusions.png" alt-text="The Manage exclusions page" lightbox="images/mdatp-37-exclusions.png":::

Select the type of exclusion that you wish to add and follow the prompts.

## Validate exclusions lists with the EICAR test file

You can validate that your exclusion lists are working by using `curl` to download a test file.

In the following Bash snippet, replace `test.txt` with a file that conforms to your exclusion rules. For example, if you have excluded the `.testing` extension, replace `test.txt` with `test.testing`. If you are testing a path, ensure that you run the command within that path.

```bash
curl -o test.txt https://www.eicar.org/download/eicar.com.txt
```

If Defender for Endpoint on Mac reports malware, then the rule is not working. If there is no report of malware, and the downloaded file exists, then the exclusion is working. You can open the file to confirm that the contents are the same as what is described on the [EICAR test file website](http://2016.eicar.org/86-0-Intended-use.html).

If you do not have Internet access, you can create your own EICAR test file. Write the EICAR string to a new text file with the following Bash command:

```bash
echo 'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*' > test.txt
```

You can also copy the string into a blank text file and attempt to save it with the file name or in the folder you are attempting to exclude.

## Allow threats

In addition to excluding certain content from being scanned, you can also configure the product not to detect some classes of threats (identified by the threat name). You should exercise caution when using this functionality, as it can leave your device unprotected.

To add a threat name to the allowed list, execute the following command:

```bash
mdatp threat allowed add --name [threat-name]
```

The threat name associated with a detection on your device can be obtained using the following command:

```bash
mdatp threat list
```

For example, to add `EICAR-Test-File (not a virus)` (the threat name associated with the EICAR detection) to the allowed list, execute the following command:

```bash
mdatp threat allowed add --name "EICAR-Test-File (not a virus)"
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
