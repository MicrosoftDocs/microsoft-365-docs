---
title: Manage automation file uploads
description: Enable content analysis and configure the file extension and email attachment extensions that will be submitted for analysis
keywords: automation, file, uploads, content, analysis, file, extension, email, attachment
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: article
ms.subservice: mde
search.appverid: met150
---

# Manage automation file uploads

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-automationefileuploads-abovefoldlink)

Enable the content analysis capability so that certain files and email attachments can automatically be uploaded to the cloud for additional inspection in Automated investigation.

Identify the files and email attachments by specifying the file extension names and email attachment extension names.

For example, if you add *exe* and *bat* as file or attachment extension names, then all files or attachments with those extensions will automatically be sent to the cloud for additional inspection during Automated investigation.

## Add file extension names and attachment extension names.

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Rules** \> **Automation uploads**.

2. Toggle the content analysis setting between **On** and **Off**.

3. Configure the following extension names and separate extension names with a comma:
   - **File extension names** - Suspicious files except email attachments will be submitted for additional inspection

## Related topics

- [Manage automation folder exclusions](manage-automation-folder-exclusions.md)
