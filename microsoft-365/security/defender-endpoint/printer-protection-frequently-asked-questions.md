---
title: Printer Protection frequently asked questions
description: Answers frequently asked questions on MDE Printer Protection. 
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-nsatapathy
author: nimishasatapathy
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 01/09/2023
ms.reviewer: tewchen
search.appverid: met150
---

# Printer Protection frequently asked questions

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article provides answers to frequently asked questions about device control printer protection capabilities in Microsoft Defender for Endpoint. 

## How do I generate GUID for Group ID/PolicyRule ID/Entry ID?

You can generate the GUID through online open source or by using PowerShell. For more information, see [How to generate GUID through PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).

:::image type="content" source="media/screenshot-of-powershell-guid.png" alt-text="This is the screenshot of GUID powershell." lightbox="media/screenshot-of-powershell-guid.png":::

## What are the removable storage media and policy limitations?

The backend call is done through OMA-URI (GET to read or PATCH to update) either from Intune or through Microsoft Graph API. The limitation is the same as any OMA-URI custom configuration profile at Microsoft, which is officially 350,000 characters for XML files. For example, if you need two blocks of entries per user SID to "Allow" / "Audit allowed" specific users, and then two blocks of entries at the end to "Deny" all, you'll be able to manage 2,276 users.

## Why doesn't the policy work?

The most common reason is there's no required [anti-malware client version](/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control#prepare-your-endpoints).

Another reason could be that the XML file isn't correctly formatted. For example, not using the correct markdown formatting for the "&" character in the XML file or the text editor might add a byte order mark (BOM) 0xEF 0xBB 0xBF at the beginning of the files causing the XML parsing not to work. One simple solution is to download the [sample file](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) (select **Raw** and then **Save as**), and then update.

If you're deploying and managing the policy by using Group Policy, make sure to combine all PolicyRules into one XML file within a parent node called `PolicyRules`. Also combine all Groups into one XML file within a parent node called `Groups`. If you manage through Intune, keep one PolicyRule XML file, and one Group XML file.

The device (machine) should have a valid certificate. Run the following command on the machine to check:

`Get-AuthenticodeSignature C:\Windows\System32\wbem\WmiPrvSE.exe`

:::image type="content" source="media/signature-cmdled.png" alt-text="This is signature cmdlet screenshot." lightbox="media/signature-cmdled.png":::

If the policy still isn't working, contact support, and share your support cab. To get that file, open Command Prompt as an administrator, and then use the following command: 

`"%programfiles%\Windows Defender\MpCmdRun.exe" -GetFiles`

## Why is there no configuration UX for some policy groups? 

There is no configuration UX for **Define device control policy groups** and **Define device control policy rules** on your Group Policy. But, you can still get the related `.adml` and `.admx` files by selecting **Raw** and **Save as** at the [WindowsDefender.adml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.adml) and [WindowsDefender.admx](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.admx) files.

## How do I confirm that the latest policy has been deployed to the target machine?

You can run the PowerShell cmdlet `Get-MpComputerStatus` as an administrator. The following value will show whether the latest policy has been applied to the target machine.

:::image type="content" source="images/148609885-bea388a9-c07d-47ef-b848-999d794d24b8.png" alt-text="Screenshot showing device control status in PowerShell." lightbox="images/148609885-bea388a9-c07d-47ef-b848-999d794d24b8.png":::

## How can I know which machine is using out of date anti-malware client version in the organization?

You can use following query to get anti-malware client version on the Microsoft 365 security portal:

```kusto
//check the anti-malware client version
DeviceFileEvents
|where FileName == "MsMpEng.exe"
|where FolderPath contains @"C:\ProgramData\Microsoft\Windows Defender\Platform\"
|extend PlatformVersion=tostring(split(FolderPath, "\\", 5))
//|project DeviceName, PlatformVersion // check which machine is using legacy platformVersion
|summarize dcount(DeviceName) by PlatformVersion // check how many machines are using which platformVersion
|order by PlatformVersion desc
```

## How do I find the media property in the Device Manager?

1. Plug in the media.

2. Open Device Manager. 

   :::image type="content" source="media/screenshot-of-device-manager.png" alt-text="This is the screenshot of device manager." lightbox="media/screenshot-of-device-manager.png":::

3. Locate the media in the Device Manager, right-click, and then select **Properties**.

   :::image type="content" source="media/locate-the-media.png" alt-text="This is the locate the media screenshot." lightbox="media/locate-the-media.png":::

4. Open **Details**, and select **Properties**.

   :::image type="content" source="media/details.png" alt-text="This is details screenshot." lightbox="media/details.png":::
 
 
## How do I find Sid for Azure AD group?

Different from AD group, the Sid is using Object ID for Azure AD group. You can find the Object ID from Azure portal.

:::image type="content" source="media/device-control-user-group.png" alt-text="This is device control user group screenshot." lightbox="media/device-control-user-group.png":::


 
## Why do I see duplicate events from RemovableStoragePolicyTriggered and PrintJobBlocked?

PrintJobBlocked is designed for [Printer Protection V1](printer-protection.md). Because the new Printer Protection solution is built based on the V1 solution, the system will still use PrintJobBlocked. If you are using the [new Printer Protection](printer-protection-overview.md), RemovableStoragePolicyTriggered is used to track the event.

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
