---
title: Deploy and manage Removable Storage Access Control using Intune
description: Use Intune OMA-URI and Intune user interface to deploy and manage removable storage access control.
ms.service: microsoft-365-security
ms.subservice: mde
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
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 06/06/2023
ms.reviewer: tewchen
search.appverid: met150
---

# Deploy and manage Removable Storage Access Control using Intune

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

The Removable Storage Access Control feature enables you to apply policy by using OMA-URI or by using Intune user interface to either user or device, or both.

|Capability|Intune OMA-URI|Intune user interface|
|---|---|---|
|Enable or Disable Device control|supported|not supported|
|Set Default Enforcement|supported|not supported|
|Create Removable storage group|supported|supported|
|Control Disk level access|supported|supported|
|Control File level access|supported|not supported|
|Set location for a copy of the file|supported|not supported|
|File Parameter|supported|not supported|
|Network location|supported|not supported|

## Licensing requirements

Before you get started with Removable Storage Access Control, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3.

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

## Deploy Removable Storage Access Control by using Intune OMA-URI

Go to the Microsoft Intune admin center (<https://endpoint.microsoft.com/>) > **Devices** > **Configuration profiles** > **Create profile** > **Platform: Windows 10 and later, Profile type: Templates** > **Custom** > **Create**.

1. Enable or Disable Device control (Optional):

   - Under **Custom**, enter the **Name** and **Description** and select **Next**.
   - In the **Configuration settings**, select **Add**.
   - In the **Add Row** pane, specify the following settings:
     - **Name** as **Enable Device Control**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled`
     - **Data Type** as **Integer**
     - **Value** as **1**

       `Disable: 0`
       `Enable: 1`

     - Select **Save**.

   :::image type="content" source="media/enable-rsac.png" alt-text="Screenshot of enabling Removable Storage Access Control policy" lightbox="media/enable-rsac.png":::

2. Set Default Enforcement (Optional):

   You can set the default access (Deny or Allow) for all Device Control features (`RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, `PrinterDevices`).

   To block a specific removable storage class but allow specific media, you can use '`IncludedIdList` a group through `PrimaryId` and `ExcludedIDList` a group through `DeviceId`/`HardwareId`/etc.'  For more information, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md).

   For example, you can have either a **Deny** or an **Allow** policy for `RemovableMediaDevices`, but not for `CdRomDevices` or `WpdDevices`. You can set **Default Deny** through this policy, then Read/Write/Execute access to `CdRomDevices` or `WpdDevices` will be blocked. If you only want to manage storage, make sure to create an **Allow** policy for your printer; otherwise, this default enforcement will be applied to printers as well.

   - In the **Add Row** pane, specify the following settings:
     - **Name** as **Default Deny**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement`
     - **Data Type** as **Integer**
     - **Value** as **1** or **2**

       `DefaultEnforcementAllow = 1`
       `DefaultEnforcementDeny = 2`

     - Select **Save**.

   :::image type="content" source="media/default-deny.png" alt-text="Screenshot of setting Default Enforcement as Deny" lightbox="media/default-deny.png":::

3. Create one XML file for each group:

   You can create a removable storage group for each group as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Any Removable Storage Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**[GroupId]**%7d/GroupData`
     - **Data Type** as **String (XML file)**
       - **Custom XML** as selected XML file

         Take a look at the **Overview** -> **Removable storage group**, you can create different group types. Here's a [group example XML file for any removable storage and CD-ROM and Windows portable devices](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml).
         
   To get the GroupId, sign in to the **Microsoft Intune admin center** and select **Groups** > **Copy the Object ID**.

      :::image type="content" source="media/any-removable-storage-group.png" alt-text="Screenshot of creating any Removable Storage Group." lightbox="media/any-removable-storage-group.png":::

   > [!NOTE]
   > Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

4. Create one XML file for each access control or policy rule:

   You can create a policy and apply it to related removable storage group as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Allow Read Activity**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7b**[PolicyRule Id]**%7d/RuleData`
     - **Data Type** as **String (XML file)**
       - **Custom XML** as selected XML file

         Take a look at the **Overview** -> **Access policy rule**, you can use **Parameters** to set condition for specific Entry. Here's a [group example XML file for Allow Read access for each removable storage](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20Read.xml).

       :::image type="content" source="media/allow-read-activity.png" alt-text="Screenshot of Allow Read Activity policy" lightbox= "media/allow-read-activity.png":::

   > [!NOTE]
   > Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

5. Set location for a copy of the file (Optional):

   If you want to have a copy of the file (evidence) when Write access happens, set right **Options** in your removable storage access policy rule in the XML file, and then specify the location where system can save the copy.

   - In the **Add Row** pane, enter:
     - **Name** as **Evidence folder location**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DataDuplicationRemoteLocation`
     - **Data Type** as **String**

       :::image type="content" source="media/device-control-oma-uri-edit-row.png" alt-text="Set location for file evidence" lightbox="media/device-control-oma-uri-edit-row.png":::

## Scenarios (default enforcement)

Here are some common scenarios to help you familiarize with Microsoft Defender for Endpoint Removable Storage Access Control. In the following samples, 'Default Enforcement' hasn't been used because the 'Default Enforcement' will apply to both the removable storage and the printer.

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs

For this scenario, you need to create two groups: one group for any removable storage and another group for approved USBs. You also need to create two policies: one policy to deny Write and Execute access for any removable storage group and the other policy to audit the approved USBs group.

1. Create groups.

   1. Group 1: Any removable storage, CD/DVD, and Windows portable devices.

      :::image type="content" source="media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png" alt-text="A screenshot showing removable storage" lightbox= "media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml). See step 3 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

   2. Group 2: Approved USBs based on device properties.

      :::image type="content" source="media/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png" alt-text="A screenshot of approved USBs" lightbox= "media/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png":::

   Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Approved%20USBs%20Group.xml). See step 3 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

   > [!TIP]
   > Replace `&` with `&amp;` in the value in the XML file.

2. Create policy

   1. Policy 1: Block Write and Execute access for any removable storage group but allow approved USBs.

      :::image type="content" source="media/188243425-c0772ed4-6537-4c6a-9a1d-1dbb48018578.png" alt-text="A screenshot of policy 1" lightbox= "media/188243425-c0772ed4-6537-4c6a-9a1d-1dbb48018578.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%201%20Block%20Write%20and%20Execute%20Access%20but%20allow%20approved%20USBs.xml). See step 4 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

   2. Policy 2: Audit Write and Execute access for allowed USBs.

      :::image type="content" source="media/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png" alt-text="A screenshot of policy 2" lightbox= "media/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png":::

   What does `54` mean in the policy? It's `18 + 36 = 54`.

   - Write access: disk level 2 + file system level 16 = 18.
   - Execute: disk level 4 + file system level 32 = 36.

   Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%201%20Audit%20Write%20and%20Execute%20access%20to%20aproved%20USBs.xml). See step 4 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

### Scenario 2: Audit Write and Execute access for all but block specific blocked USBs

For this scenario, you need to create two groups: one group for any removable storage and another group for blocked USBs. You also need to create two policies: one policy to audit Write and Execute access for any removable storage group and the other policy to deny the blocked USBs group.

1. Create groups

    1. Group 1: Any removable storage, CD/DVD, and Windows portable devices.

       :::image type="content" source="media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png" alt-text="A screenshot of group 1" lightbox="media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png":::

       Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml). See step 3 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

    2. Group 2: Unapproved USBs based on device properties.

        :::image type="content" source="media/188243875-0693ebcf-00c3-45bd-afd3-57a79df9dce6.png" alt-text="A screenshot of group 2" lightbox= "media/188243875-0693ebcf-00c3-45bd-afd3-57a79df9dce6.png":::

    Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Unapproved%20USBs%20Group.xml). See step 3 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

    > [!TIP]
    > Replace `&` with `&amp;` in the value in the XML file.

2. Create policy

    1. Policy 1: Block Write and Execute access for all but block specific unapproved USBs.

        :::image type="content" source="media/188244024-62355ded-353c-4d3a-ba61-4520d48f5a18.png" alt-text="A screenshot of policy for blocking unapproved USBs" lightbox= "media/188244024-62355ded-353c-4d3a-ba61-4520d48f5a18.png":::

       Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%202%20Audit%20Write%20and%20Execute%20access%20to%20all%20but%20block%20specific%20unapproved%20USBs.xml). See step 4 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

    2. Policy 2: Audit Write and Execute access for others.

       :::image type="content" source="media/188244203-36c869b6-9330-4e2a-854b-494c342bb77d.png" alt-text="A screenshot of audit write and execute access" lightbox= "media/188244203-36c869b6-9330-4e2a-854b-494c342bb77d.png":::

    What does `54` mean in the policy? It's `18 + 36 = 54`.

    - Write access: disk level 2 + file system level 16 = 18.
    - Execute: disk level 4 + file system level 32 = 36.

    Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Scenario%202%20Audit%20Write%20and%20Execute%20access%20to%20others.xml). See step 4 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

### Scenario 3: Block read and execute access to specific file extension

For this scenario, you need to create two groups: one removable storage group for any removable storage and another group for unallowed file extensions. You also need to create one policy: deny read and execute access to any file under the allowed file extension group for defined removable storage group.

1. Create groups.

   1. Group 1: Any removable storage, CD/DVD, and Windows portable devices.

      :::image type="content" source="media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png" alt-text="A screenshot of group 1" lightbox="media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml). See step 3 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

   2. Group 2: Unallowed file extensions.

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Unauthorized%20File%20Group.xml). See step 3 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

      > [!TIP]
      > Explicily mark the Type attribute on the group as **File**

   3. Policy 2: Deny read and execute access to any file under the allowed file extension group for defined removable storage group.

      :::image type="content" source="media/200713006-c0d39e2b-9acc-4522-9f88-e064eeb3a4ae.png" alt-text="Screenshot of OMA-URI settings." lightbox="media/200713006-c0d39e2b-9acc-4522-9f88-e064eeb3a4ae.png":::

   What does `40` mean in the policy? It's `8 + 32 = 40`.

   - only need to restrict file system level access

   Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Deny%20Read%20and%20Write%20access%20to%20specific%20files.xml). See step 4 from the [Deploy Removable Storage Access Control](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri) section to deploy the configuration.

## Deploy Removable Storage Access Control by using Intune user interface

This capability is available in the Microsoft Intune admin center (<https://endpoint.microsoft.com/>).

Go to **Endpoint Security** > **Attack Surface Reduction** > **Create Policy**. Choose **Platform: Windows 10 and later** with **Profile: Device Control**.

## Scenarios (USB devices)

Here are some common scenarios to help you familiarize with Microsoft Defender for Endpoint Removable Storage Access Control. In the following samples, 'Default Enforcement' hasn't been used because the 'Default Enforcement' will apply to both the removable storage and the printer.

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs

For this scenario, you need to create two groups: one group for any removable storage and another group for approved USBs. You also need to create two policies: one policy to deny Write and Execute access for any removable storage group and the other policy to audit the approved USBs group.

1. To set up the groups you'll need, go to **Endpoint Security** \> **Attack Surface Reduction** \> **Reusable settings** \> **Add**. For more details, see **DescriptorIdList** on the [Microsoft Defender for Endpoint Device Control Removable Storage Access Control, removable storage media](device-control-removable-storage-access-control.md#group).

   1. For group 1, configure any removable storage, CD/DVD, and Windows portable devices, as shown in the following screenshots:

      :::image type="content" source="media/208774115-ab503406-a3c6-4611-b5fa-9e837e731898.png" alt-text="Screenshot showing removable device settings." lightbox="media/208774115-ab503406-a3c6-4611-b5fa-9e837e731898.png":::

      :::image type="content" source="media/208774136-b63b2268-926f-482a-a509-aab7f8efba02.png" alt-text="Screenshot showing additional removable device settings." lightbox="media/208774136-b63b2268-926f-482a-a509-aab7f8efba02.png":::

   2. For group 2, choose **+ Add** to create another group for approved USBs, based on device properties, as shown in the following screenshot:

      :::image type="content" source="media/208774190-b700f7cb-0d0e-4d27-955b-23be9c0cb7b5.png" alt-text="Screenshot showing additional group for approved USB devices." lightbox="media/208774190-b700f7cb-0d0e-4d27-955b-23be9c0cb7b5.png":::

2. To set up your policy, go to **Endpoint Security** \> **Attack Surface Reduction** \> **Create Policy**.

3. Choose **Platform**: **Windows 10 and later** with **Profile: Device Control**. Select **Device Control**: **Configured**.

   1. Set up Policy 1: Audit Write and Execute access for allowed USBs.

      - Choose **+ Set reusable settings** for **Included ID** and choose **Select**, as shown in the following screenshot:

         :::image type="content" source="media/208774439-b46795ce-e9c0-41ec-a3f7-26feefa6b2e7.png" alt-text="Screenshot showing auditing settings for policy 1." lightbox="media/208774439-b46795ce-e9c0-41ec-a3f7-26feefa6b2e7.png":::

      - Choose **+ Edit Entry** for **Entry**, as shown in the following screenshot:

         :::image type="content" source="media/208774532-d8d3f0a0-5ce3-401b-bb8b-2b75383d6cf7.png" alt-text="Screenshot showing auditing settings being edited." lightbox="media/208774532-d8d3f0a0-5ce3-401b-bb8b-2b75383d6cf7.png":::

   2. Set up Policy 2. Choose **+ Add** to create another policy for **Block Write and Execute access for any removable storage group**.

      - Choose **+ Set reusable settings** for **Included ID** and choose **Select**, as shown in the following screenshot:

         :::image type="content" source="media/208774632-5a568173-c6af-4a64-8236-e0ec5f835147.png" alt-text="Screenshot showing the ID for reusable settings." lightbox="media/208774632-5a568173-c6af-4a64-8236-e0ec5f835147.png":::

      - Choose **+ Set reusable settings** for **Excluded ID** to exclude authorized USBs, and then choose **Select**, as shown in the following screenshot:

         :::image type="content" source="media/208774743-6b584ac3-3373-4650-9af8-d340ffa9ceae.png" alt-text="Screenshot showing excluded ID settings." lightbox="media/208774743-6b584ac3-3373-4650-9af8-d340ffa9ceae.png":::

      - Choose **+ Edit Entry** for **Entry**, as shown in the following screenshot:

         :::image type="content" source="media/208774780-39818049-07ee-4bee-824c-25a7cf235227.png" alt-text="Screenshot showing editing an entry for policy 2." lightbox="media/208774780-39818049-07ee-4bee-824c-25a7cf235227.png":::

### Scenario 2: Audit Write and Execute access for all but block specific blocked USBs

For this scenario, you need to create two groups: one group for any removable storage, and another group for blocked USBs. You also need to create two policies: one policy to audit Write and Execute access for any removable storage group, and the other policy to deny the blocked USBs group.

1. To create groups, go to **Endpoint Security** > **Attack Surface Reduction** > **Reusable settings** > **Add**. For more details, see **DescriptorIdList** on the [Microsoft Defender for Endpoint Device Control Removable Storage Access Control, removable storage media](device-control-removable-storage-access-control.md#group).

   1. Group 1: Any removable storage, CD/DVD, and Windows portable devices, as shown in the following screenshots:

      :::image type="content" source="media/208774115-ab503406-a3c6-4611-b5fa-9e837e731898.png" alt-text="Screenshot showing removable storage example." lightbox="media/208774115-ab503406-a3c6-4611-b5fa-9e837e731898.png":::

      And here's another example:

      :::image type="content" source="media/208774136-b63b2268-926f-482a-a509-aab7f8efba02.png" alt-text="Screenshot showing a second example of removable storage." lightbox="media/208774136-b63b2268-926f-482a-a509-aab7f8efba02.png":::

2. To create your policy, go to **Endpoint Security** > **Attack Surface Reduction** > **Create Policy**. Choose **Platform**: **Windows 10 and later** with **Profile: Device Control**. Select **Device Control**: **Configured**.

   1. Policy 1: Block unauthorized USBs. Choose **+ Set reusable settings** for **Included ID** and choose **Select**, as shown in the following screenshot:

      :::image type="content" source="media/208775137-c5a98123-b488-4e1a-9695-9b93b1d8f45b.png" alt-text="Screenshot showing the included ID for settings." lightbox="media/208775137-c5a98123-b488-4e1a-9695-9b93b1d8f45b.png":::

      Choose **+ Edit Entry** for **Entry**, as shown in the following screenshot:

      :::image type="content" source="media/208775203-439bb8b5-e45a-47a7-9828-51ea9d5cfe95.png" alt-text="Screenshot showing Entry being edited." lightbox="media/208775203-439bb8b5-e45a-47a7-9828-51ea9d5cfe95.png":::

   2. Policy 2: Choose **+ Add** to create another policy for 'Audit Write and Execute access for any removable storage group'. Choose **+ Set reusable settings** for **Included ID**, and then choose **Select**, as shown in the following screenshot:

      :::image type="content" source="media/208775292-485a13e4-533c-4efc-97a4-611786d02fd1.png" alt-text="Screenshot showing reusable settings." lightbox="media/208775292-485a13e4-533c-4efc-97a4-611786d02fd1.png":::

      Choose **+ Set reusable settings** for **Excluded ID** to exclude authorized USBs, and then choose **Select**, as shown in the following screenshot:

      :::image type="content" source="media/208775330-79c69f54-513e-49b2-8b9f-2fdf8293ee35.png" alt-text="Screenshot showing excluded ID in reusable settings." lightbox="media/208775330-79c69f54-513e-49b2-8b9f-2fdf8293ee35.png":::

      Choose **+ Edit Entry** for **Entry**, as shown in the following screenshot:

      :::image type="content" source="media/208775366-f2cafb54-eb63-4bcd-b0fe-880f3cba2c1b.png" alt-text="Screenshot showing edit mode for an entry." lightbox="media/208775366-f2cafb54-eb63-4bcd-b0fe-880f3cba2c1b.png":::
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
