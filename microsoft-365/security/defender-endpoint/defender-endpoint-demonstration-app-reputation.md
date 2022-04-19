---
title: Microsoft Defender for Endpoint SmartScreen app reputation demonstration
description: Test how Microsoft Defender for Endpoint SmartScreen helps you identify phishing and malware websites
keywords: Microsoft Defender for Endpoint, phishing website, malware website, app reputation, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: v-jweston
author: jweston-1
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# SmartScreen app reputation demonstration

Test how Microsoft Defender for Endpoint SmartScreen helps you identify phishing and malware websites based on App reputation.

## Scenario requirements and setup

- Windows 10
- Internet Explorer or Edge browser required
- To turn ON/OFF go to **Settings** > **Update & Security** > **Windows Security** > **Open Windows Security** > **App & browser control** > **Check apps and files**

## Scenario Demos

### Known good program

This program has a good reputation; the download should run uninterrupted:

- [Known good program download](https://demo.smartscreen.msft.net/download/known/freevideo.exe)

  <!-- Hide {this intro with no subsequent list items} [Replace this link when new/updated source becomes available] -->

  Launching this link should render a message similar to the following:

  :::image type="content" source="images/atp-smartscreen-app-reputation-known-good.png" alt-text="Security for attack surface reduction rule":::

### Unknown program

Because the program download does not have sufficient reputation to ensure that it is trustworthy, SmartScreen will show a warning before running the program download.

- [Unknown program](https://demo.smartscreen.msft.net/download/unknown/freevideo.exe)

  <!-- Hide {this intro with no subsequent list items} [Replace this link when new/updated source becomes available] -->
  
  Launching this link should render a message similar to the following:

  :::image type="content" source="images/atp-smartscreen-app-reputation-unknown.png" alt-text="Security for attack surface reduction rule":::

### Known malware

This download is known malware; SmartScreen should block this program from running.

- [Known malware](https://demo.smartscreen.msft.net/download/known/knownmalicious.exe)

  <!-- Hide {this intro with no subsequent list items} [Replace this link when new/updated source becomes available] -->  

  Launching this link should render a message similar to the following:

  :::image type="content" source="images/atp-smartscreen-app-reputation-known-malware.png" alt-text="Security for attack surface reduction rule":::

## Learn more

[Microsoft Defender SmartScreen Documentation](/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview.md)

## See also

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
