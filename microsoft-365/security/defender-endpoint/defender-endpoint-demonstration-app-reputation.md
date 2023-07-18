---
title: Microsoft Defender for Endpoint SmartScreen app reputation demonstration
description: Test how Microsoft Defender for Endpoint SmartScreen helps you identify phishing and malware websites
keywords: Microsoft Defender for Endpoint, phishing website, malware website, app reputation, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp 
author: dansimp 
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
- demo
ms.topic: article
ms.subservice: mde
ms.date: 10/21/2022
---

# SmartScreen app reputation demonstration

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Test how Microsoft Defender for Endpoint SmartScreen helps you identify phishing and malware websites based on App reputation.

## Scenario requirements and setup

- Windows 10
- Internet Explorer or Microsoft Edge browser required
- To turn ON/OFF, go to **Settings** > **Update & Security** > **Windows Security** > **Open Windows Security** > **App & browser control** > **Check apps and files**

## Scenario Demos

### Known good program

This program has a good reputation; the download should run uninterrupted:

- [Known good program download](https://demo.smartscreen.msft.net/download/known/freevideo.exe)

  Launching this link should render a message similar to the following:

  :::image type="content" source="images/smartscreen-app-reputation-known-good.png" alt-text="Based on the target file's reputation, SmartScreen allows the download without interference.":::

### Unknown program

Because the program download doesn't have sufficient reputation to ensure that it's trustworthy, SmartScreen will show a warning before running the program download.

- [Unknown program](https://demo.smartscreen.msft.net/download/unknown/freevideo.exe)
  
  Launching this link should render a message similar to the following:

  :::image type="content" source="images/smartscreen-app-reputation-unknown.png" alt-text="SmartScreen doesn't have sufficient reputation information about the download file, and warns the user to stop or proceed with caution.":::

### Known malware

This download is known malware; SmartScreen should block this program from running.

- [Known malware](https://demo.smartscreen.msft.net/download/known/knownmalicious.exe)

  Launching this link should render a message similar to the following:

  :::image type="content" source="images/smartscreen-app-reputation-known-malware.png" alt-text="Screenshot showing how SmartScreen detects a file download with an unsafe reputation.; the download is blocked.":::

## Learn more

[Microsoft Defender SmartScreen Documentation](/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview)

## See also

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
