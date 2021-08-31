---
title: Manage automation folder exclusions
description: Add automation folder exclusions to control the files that are excluded from an automated investigation.
keywords: manage, automation, exclusion, block, clean, malicious
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Manage automation folder exclusions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-automationexclusionfolder-abovefoldlink)

Automation folder exclusions allow you to specify folders that the Automated investigation will skip.

You can control the following attributes about the folder that you'd like to be skipped:

- **Folders**: You can specify a folder and its subfolders to be skipped.

  > [!NOTE]
  > At this time, use of wild cards as a way to exclude files under a directory is not yet supported.

- **Extensions of the files**: You can specify the extensions to exclude in a specific directory. The extensions are a way to prevent an attacker from using an excluded folder to hide an exploit. The extensions explicitly define which files to ignore.

- **File names**: You can specify the file names that you want to be excluded in a specific directory. The names are a way to prevent an attacker from using an excluded folder to hide an exploit. The names explicitly define which files to ignore.

## Add an automation folder exclusion

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Rules** \> **Automation folder exclusions**.

2. Click **New folder exclusion**.

3. Enter the folder details:

    - Folder
    - Extensions
    - File names
    - Description

4. Click **Save**.

> [!NOTE]
> Live Response commands to collect or examine excluded files will fail with error: "File is excluded". In addition, automated investigations will ignore the excluded items.

## Edit an automation folder exclusion

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Rules** \> **Automation folder exclusions**.
2. Click **Edit** on the folder exclusion.
3. Update the details of the rule and click **Save**.

## Remove an automation folder exclusion

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Rules** \> **Automation folder exclusions**.
2. Click **Remove exclusion**.

## Related topics

- [Manage automation allowed/blocked lists](manage-indicators.md)
- [Manage automation file uploads](manage-automation-file-uploads.md)
