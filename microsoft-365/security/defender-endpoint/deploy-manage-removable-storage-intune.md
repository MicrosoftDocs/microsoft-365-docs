---
title: Deploy and manage Removable Storage Access Control using Intune
description: Use Intune OMA-URI and Intune user interface to deploy and manage removable storage access control. 
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.technology: mde
ms.date: 08/25/2022
ms.reviewer: tewchen
---

# Deploy and manage Removable Storage Access Control using Intune

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

The Removable Storage Access Control feature enables you to apply policy by using OMA-URI to either user or device, or both.

## Licensing requirements

Before you get started with Removable Storage Access Control, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3 or Microsoft 365 E5.

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

## Deploy using Intune OMA-URI

To block a specific removable storage class but allow specific media, you can use 'IncludedIdList a group through PrimaryId and ExcludedIDList a group through DeviceId/HardwareId/etc.'

Go to Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>) > **Devices** > **Create profile** > **Platform: Windows 10 and later, Profile type: Templates** > Custom**.

1. Enable or Disable Device control as follows:

   - Under **Custom** > **Configuration settings**, select **Add**.
   - In the **Add Row** pane, specify the following settings:
     - **Name** as **Enable Device Control**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled`
     - **Data Type** as **Integer**
     - **Value** as **1**

       `Disable: 0`
       `Enable: 1`

     - Select **Save**.

   :::image type="content" source="images/enable-rsac.png" alt-text="Screenshot of enabling Removable Storage Access Control policy" lightbox="images/enable-rsac.png":::

2. Set Default Enforcement:

   You can set the default access (Deny or Allow) for all Device Control features (`RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, `PrinterDevices`).

   For example, you can have either a **Deny** or an **Allow** policy for `RemovableMediaDevices`, but not for `CdRomDevices` or `WpdDevices`. You can set **Default Deny** through this policy, then Read/Write/Execute access to `CdRomDevices` or `WpdDevices` will be blocked. If you only want to manage storage, make sure to create an **Allow** policy for your printer; otherwise, this default enforcement will be applied to printers as well.

   - In the **Add Row** pane, specify the following settings:
     - **Name** as **Default Deny**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement`
     - **Data Type** as **Integer**
     - **Value** as **1** or **2**

       `DefaultEnforcementAllow = 1`
       `DefaultEnforcementDeny = 2`

     - Select **Save**.

   :::image type="content" source="images/default-deny.png" alt-text="Screenshot of setting Default Enforcement as Deny" lightbox="images/default-deny.png":::

3. Audit Default Deny:

   You can create an Audit policy for Default Deny as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Audit Default Deny**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bf3520ea7-fd1b-4237-8ebc-96911db44f8e%7d/RuleData`

       :::image type="content" source="images/audit-default-deny-1.png" alt-text="Screenshot of creating Audit Default Deny policy." lightbox="images/audit-default-deny-1.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Audit Default Deny.xml** file.

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Audit%20Default%20Deny.xml>

       Use the following XML data to create your Audit policy for Default Deny:

       :::image type="content" source="images/audit-default-deny-xml-file-1.png" alt-text="Screenshot of audit default deny xml file.":::

4. ReadOnly - Group:

   You can create a removable storage group with ReadOnly access as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Any Removable Storage Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b9b28fae8-72f7-4267-a1a5-685f747a7146%7d/GroupData`

       :::image type="content" source="images/any-removable-storage-group.png" alt-text="Screenshot of creating any Removable Storage Group." lightbox="images/any-removable-storage-group.png":::

     - **Data Type** as **String (XML file)**
       - **Custom XML** as **Any Removable Storage and CD-DVD and WPD Group.xml** file

         XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml>

         Use the following XML data to create 'Any Removable Storage and CD-DVD and WPD Group' with ReadOnly access:

         :::image type="content" source="images/read-only-group-xml-file.png" alt-text="Screenshot of read only group xml file":::

5. ReadOnly - Policy:

   You can create a ReadOnly policy and apply it to the ReadOnly removable storage group to allow read activity as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Allow Read Activity**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bf7e75634-7eec-4e67-bec5-5e7750cb9e02%7d/RuleData`

       :::image type="content" source="images/allow-read-activity.png" alt-text="Screenshot of Allow Read Activity policy" lightbox= "images/allow-read-activity.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Allow Read.xml**  file

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20Read.xml>

       Use the following XML data to create ReadOnly policy and apply to the ReadOnly removable storage group:

       :::image type="content" source="images/read-only-policy-xml-file.png" alt-text="Screenshot of read only policy xml file":::

6. Create a Group for Allowed Media: You can create your allowed media group as follows:
   - In the **Add Row** pane, enter:
     - **Name** as **Approved USBs Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b65fa649a-a111-4912-9294-fb6337a25038%7d/GroupData`

       :::image type="content" source="images/create-group-allowed-medias.png" alt-text="Screenshot of creating Approved USBs group" lightbox="images/create-group-allowed-medias.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Approved USBs Group.xml** file

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Approved%20USBs%20Group.xml>

       Use the following XML data to create allowed media group:

       :::image type="content" source="images/create-group-allowed-medias-xml-file.png" alt-text="Screenshot of creating group for allowed medias xml file":::

7. Create a policy to allow the approved USB Group: You can create a policy to allow the approved USB group as follows:
   - In the **Add Row** pane, enter:
     - **Name** as **Allow access and Audit file information**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bb2061588-029e-427d-8404-6dfec096a571%7d/RuleData`

       :::image type="content" source="images/allow-access-audit-file-information-1.png" alt-text="Screenshot of Allow access and audit file information" lightbox= "images/allow-access-audit-file-information-1.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Allow full access and audit file.xml**  file

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20full%20access%20and%20audit%20file.xml>

       Use the following XML data to create policy to allow the approved USB group:

       :::image type="content" source="images/create-policy-allow-approved-usb-group-xml-intune.png" alt-text="Screenshot of creating policy to allow the approved USB Group XML file":::

       What does '47' mean in the policy? It's 9 + 2 + 36 = 47:

       - Read access: 1 + 8 = 9.
       - Write access: disk level 2.
       - Execute: 4 + 32 = 36.

## Use Intune user interface

This capability is available in the Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>). Go to **Endpoint Security** > **Attack Surface Reduction** > **Create Policy**. Choose **Platform: Windows 10 and later** with **Profile: Device Control**.
