---
title: Collect diagnostic data for Update Compliance and Microsoft Defender Antivirus
description: Use a tool to collect data to troubleshoot Update Compliance issues when using the Microsoft Defender Antivirus Assessment add-in.
ms.service: microsoft-365-security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 08/22/2023
ms.reviewer: pahuijbr
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Collect update compliance diagnostic data for Microsoft Defender Antivirus assessment


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article describes how to collect diagnostic data that's used by Microsoft support and engineering teams when they help with troubleshooting issues with Microsoft Defender Antivirus.

> [!NOTE]
> For performance-specific issues related to Microsoft Defender Antivirus, see: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

Before attempting this process, ensure you have read [Troubleshoot Microsoft Defender Antivirus reporting](troubleshoot-reporting.md), met all require prerequisites, and taken any other suggested troubleshooting steps.

## Obtain the diagnostic file

On at least two devices that aren't reporting or showing up in Update Compliance, obtain the `.cab` diagnostic file by taking the following steps:

1. Open Command Prompt as an administrator by following these steps:

    a. Open the **Start** menu.

    b. Type **cmd**. Right-click on **Command Prompt** and then select **Run as administrator**.

    c. Specify administrator credentials or approve the prompt.

2. Navigate to the Windows Defender directory. By default, it's `C:\Program Files\Windows Defender`.

3. Type the following command, and then press **Enter**

    ```Dos
    mpcmdrun -getfiles
    ```

4. A `.cab` file is generated that contains various diagnostic logs. The location of the file is specified in the output in the command prompt. By default, the location is `C:\ProgramData\Microsoft\Windows Defender\Support\MpSupportFiles.cab`.

5. Copy the `.cab` files to a location that can be accessed by Microsoft support. An example could be a password-protected OneDrive folder that you can share.

6. Send an email using the <a href="mailto:ucsupport@microsoft.com?subject=MDAV assessment issue&body=I%20am%20encountering%20the%20following%20issue%20when%20using%20Windows%20Defender%20AV%20in%20Update%20Compliance%3a%20%0d%0aI%20have%20provided%20at%20least%202%20support%20.cab%20files%20at%20the%20following%20location%3a%20%3Caccessible%20share%2c%20including%20access%20details%20such%20as%20password%3E%0d%0aMy%20OMS%20workspace%20ID%20is%3a%20%0d%0aPlease%20contact%20me%20at%3a">update compliance support email template</a>, and fill out the template with the following information:

    ```text
    I am encountering the following issue when using Microsoft Defender Antivirus in Update Compliance:

    I have provided at least 2 support .cab files at the following location: <accessible share, including access details such as password>

    My OMS workspace ID is:

    Please contact me at:
    ```

## See also

- [Troubleshoot Microsoft Defender Antivirus reporting](troubleshoot-reporting.md)
- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
