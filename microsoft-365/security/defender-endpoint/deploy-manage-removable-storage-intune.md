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
ms.date: 09/06/2022
ms.reviewer: tewchen
---

# Deploy and manage Removable Storage Access Control using Intune

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

The Removable Storage Access Control feature enables you to apply policy by using OMA-URI to either user or device, or both.

## Licensing requirements

Before you get started with Removable Storage Access Control, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3.

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

## Deploy Removable Storage Access Control by using Intune OMA-URI

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


3. Create one XML file for each group:

   You can create a removable storage group for each group as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Any Removable Storage Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**[GroupId]**%7d/GroupData`
     - **Data Type** as **String (XML file)**
       - **Custom XML** as selected XML file

         Here is one group example XML file for any removable storage and CDROM and Windows portable devices: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml>

       :::image type="content" source="images/any-removable-storage-group.png" alt-text="Screenshot of creating any Removable Storage Group." lightbox="images/any-removable-storage-group.png":::

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

4. Create one XML file for each access control or policy rule:

   You can create a policy and apply it to related removable storage group as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Allow Read Activity**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7b**[PolicyRule Id]**%7d/RuleData`
     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Allow Read.xml**  file

       Here is one group example XML file for Allow Read access for each removable storage: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20Read.xml>

       :::image type="content" source="images/allow-read-activity.png" alt-text="Screenshot of Allow Read Activity policy" lightbox= "images/allow-read-activity.png":::

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

5. Set location for a copy of the file (evidence):
   
   If you want to have a copy of the file (evidence) when Write access happens, set right **Options** in your removable storage access policy rule in the XML file, and then specify the location where system can save the copy.

   - In the **Add Row** pane, enter:
     - **Name** as **Evidence folder location**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DataDuplicationRemoteLocation`
     - **Data Type** as **String**

       ::image type="content" source="../../media/device-control-oma-uri-edit-row.png" alt-text="Set locaiton for file evidence":::

## Scenarios

To help you familiarize with Microsoft Defender for Endpoint Removable Storage Access Control, we have put together some common scenarios for you to follow.

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs
For this scenario, you will need to create two groups - a group for any removable storage and another group for approved USBs - and two policies - one policy to deny Write and Execute acess for any removable storage group and the other policy to audit the approved USBs group.

1. Create groups

    1. Group 1: Any removable storage and CD/DVD and windows portable devices. An example of a removable storage:
    ![Screenshot showing removable storage](https://user-images.githubusercontent.com/81826151/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png)
    
    Here is the sample [Any Removable Storage and CD-DVD and WPD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml) file. Take step 3 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.


    2. Group 2: Approved USBs based on device properties. An example for this use case is shown in the following screenshot:
    ![Screenshot of approved USBs](https://user-images.githubusercontent.com/81826151/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png)
    
    Here is the sample [Approved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Approved%20USBs%20Group.xml) file. Take step 3 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.

    > [!TIP]
    > Replace `&` with `&amp;` in the value in the XML file.
    

2. Create policy

    1. Policy 1: Block Write and Execute access to any removable storage group but allow approved USBs. An example for this use case is:
    ![Screenshot of policy 1](https://user-images.githubusercontent.com/81826151/188243425-c0772ed4-6537-4c6a-9a1d-1dbb48018578.png)
    
    Here is the sample [Scenario 1 Block Write and Execute Access but allow approved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%201%20Block%20Write%20and%20Execute%20Access%20but%20allow%20approved%20USBs.xml) file. Take step 4 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.

    2. Policy 2: Audit Write and Execute access for allowed USBs. An example for this use case is:
    ![Screenshot of policy 2](https://user-images.githubusercontent.com/81826151/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png)
    
    What does '54' mean in the policy? It's 18 + 36 = 54:
       - Write access: disk level 2 + file system level 16 = 18.
       - Execute: disk level 4 + file system level 32 = 36.
    
    Here is the sample [Scenario 1 Audit Write and Execute access to aproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%201%20Audit%20Write%20and%20Execute%20access%20to%20aproved%20USBs.xml) file. Take step 4 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.

### Scenario 2: Audit Write and Execute access to all but block specific unapproved USBs
For this scenario, you will need to create two groups - a group for any removable storage and another group for unallowed USBs - and two policies - one policy to audit Write and Execute acess for any removable storage group and the other policy to deny the unallowed USBs group.

1. Create groups

    1. Group 1: Any removable storage and CD/DVD and windows portable devices. An example of a removable storage:
    ![Screenshot of group 1](https://user-images.githubusercontent.com/81826151/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png)
    
    Here is the sample [Any Removable Storage and CD-DVD and WPD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml) file. Take step 3 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.


    2. Group 2: Unapproved USBs based on device properties. An example for this use case is:
    ![Screenshot of group 2](https://user-images.githubusercontent.com/81826151/188243875-0693ebcf-00c3-45bd-afd3-57a79df9dce6.png)
    
    Here is the sample [Unapproved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Unapproved%20USBs%20Group.xml) file. Take step 3 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.

    > [!TIP]
    > Replace `&` with `&amp;` in the value in the XML file.

2. Create policy

    1. Policy 1: Block Write and Execute access to all but block specific unapproved USBs. An example for this use case is:
    ![Screenshot of policy for blocking unapproved USBs](https://user-images.githubusercontent.com/81826151/188244024-62355ded-353c-4d3a-ba61-4520d48f5a18.png)
    
    Here is the sample [Scenario 2 Audit Write and Execute access to all but block specific unapproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%202%20Audit%20Write%20and%20Execute%20access%20to%20all%20but%20block%20specific%20unapproved%20USBs.xml) file. Take step 4 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.

    2. Policy 2: Audit Write and Execute access to others. An example for this use case is:
    ![Screenshot of audit write and execute access](https://user-images.githubusercontent.com/81826151/188244203-36c869b6-9330-4e2a-854b-494c342bb77d.png)
    
    What does '54' mean in the policy? It's 18 + 36 = 54:
       - Write access: disk level 2 + file system level 16 = 18.
       - Execute: disk level 4 + file system level 32 = 36.
    
    Here is the sample [Scenario 2 Audit Write and Execute access to others.xml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%202%20Audit%20Write%20and%20Execute%20access%20to%20others.xml) file. Take step 4 in above **Deploy Removable Storage Access Control by using Intune OMA-URI** section to deploy the configuration.


## Use Intune user interface

This capability is available in the Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>). Go to **Endpoint Security** > **Attack Surface Reduction** > **Create Policy**. Choose **Platform: Windows 10 and later** with **Profile: Device Control**.
