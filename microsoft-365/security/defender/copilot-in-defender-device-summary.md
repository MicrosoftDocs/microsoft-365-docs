---
title: Summarize device information with Microsoft Copilot for Security in Microsoft Defender
description: Generate a summary for devices with Microsoft Copilot for Security in Microsoft Defender.
keywords: security copilot, Microsoft Defender XDR, embedded experience, device summary, m365, incident response, device info summary, device summary info, summarize device info, Microsoft Copilot for Security, Microsoft Defender, Copilot in Defender
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 03/01/2024
---

# Summarize device information with Microsoft Copilot for Security in Microsoft Defender

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender
- Microsoft Defender XDR

> [!IMPORTANT]
> Some information in this article relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

[Microsoft Copilot for Security](/security-copilot/microsoft-security-copilot) in Microsoft Defender helps security teams in speeding up device analysis through AI-powered investigation capabilities.

Security operations teams are tasked to sift through device data to find suspicious activities or entities to prevent malicious attacks. These teams need to summarize large amounts of data and simplify complex information to quickly assess, triage, and connect a device’s status and activities to potentially malicious attacks.

The device summary capability of Copilot in Defender enables security teams to get a device’s security posture, vulnerable software information, and any unusual behaviors. Security analysts can use a device's summary to speed up their investigation of incidents and alerts. 

> [!NOTE]
> The device summary capability is also available in the Copilot for Security standalone experience through the Microsoft Defender XDR plugin. Know more about [preinstalled plugins in Microsoft Copilot for Security](/security-copilot/manage-plugins#preinstalled-plugins).

## Summarize device information

To access the device summary capability, perform the following steps:

1. From the main menu, select **Devices** under Assets to open the Device inventory page. Select a device to investigate from the list. Upon opening the file page, Copilot automatically summarizes the device information of the chosen device and displays the summary in the Copilot pane.
 [INSERT SCREENSHOT OF DEVICE SUMMARY IN THE DEVICE PAGE]
2. From an incident page, you can choose a device on the incident graph and then select **Device details**. On the device pane, select **Copilot** to generate the device summary. The summary is displayed in the Copilot pane.
 [INSERT SCREENSHOT OF DEVICE SUMMARY IN THE INCIDENT PAGE]
You can also access the device summary capability by choosing a device listed in the **Assets** tab of an incident. Select **Copilot** in the device pane to generate the device summary.
 [INSERT SCREENSHOT OF DEVICE SUMMARY IN THE ASSETS TAB]
3. Review the results. Provide feedback about the results by navigating to the bottom of the Copilot pane and selecting the feedback icon.

## See also

- [Run script analysis](security-copilot-m365d-script-analysis.md)
- [Analyze files](copilot-in-defender-file-analysis.md)
- [Summarize an incident](security-copilot-m365d-incident-summary.md)
- [Resolve incidents with guided responses](security-copilot-m365d-guided-response.md)
- [Get started with Copilot for Security](/security-copilot/get-started-security-copilot)
- [Learn about other Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
