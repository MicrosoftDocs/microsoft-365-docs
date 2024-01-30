---
title: Deploy and manage device control in Microsoft Defender for Endpoint with Microsoft Intune           
description: Learn how to deploy and manage device control in Defender for Endpoint using Microsoft Intune
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/30/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-asr
ms.custom: 
- partner-contribution
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
---

# Deploy and manage device control in Microsoft Defender for Endpoint with Microsoft Intune

If you're using Intune to manage Defender for Endpoint settings, you can use it to deploy and manage device control capabilities. Different aspects of device control are managed differently in Intune, as described in the following sections.

## Device control and Intune

To use the following table, identify the type of setting you want to configure, and then see whether you can configure it by using device control in Defender for Endpoint (with a profile and/or rule) or in Intune (with OMA-URI and/or reusable settings). Settings are listed in alphabetical order.

| Setting | Device control profile and/or rule | Intune OMA-URI and/or reusable settings |
|---|---|---|
| **Allow Bluetooth** | Profile | N/A |
| **Allow full scan removable drive scanning** | Profile | N/A |
| **Allow direct memory access** <br/>(Data protection) Profile | N/A |
| **Allow USB connection**<br/>(Connectivity) | Profile | N/A |
| **Bluetooth settings** <br/>- Allow advertising<br/>- Allow discovery mode<br/>- Allow preparing<br/>- Allow promoted proximal connections<br/>- Services allowed list | Profile | N/A |
| **Control disk level access** | Rule | OMA-URI |
| **Control file level access** | N/A | OMA-URI |
| **Device control entries - Create file evidence option**<br/>(`Allow: 8`) | N/A | OMA-URI |
| **Device control entries - options** | Rule | Reusable settings |
| **Device control parameters** | N/A | OMA-URI |
| **Device control settings** <br/>- Enable/disable device control<br/>- Define device control evidence data remote location<br/>- Set the retention period for files in the local device control cache<br/>- Turn on device control for specific device types<br/>- Select device control default enforcement policy | N/A | OMA-URI |
| **Device enumeration policy** <br/>(Dma guard) | Profile | N/A |
| **Device installation restrictions** | Profile | N/A |
| **Groups for removable storage and printers** | N/A | OMA-URI<br/>Reusable settings |
| **Groups other than removable storage and printers**<br/>(Network, VPN Connection, File, PrintJob) | N/A | OMA-URI |
| **Policies and entries** <br/>(see [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md)) | Profile <br/>Rule | OMA-URI |
| **Removable disk deny write access** <br/>(Storage) | Profile | N/A |


## Device control profiles

Each row is a device control policy. The included ID is the reusable setting that the policy applies to. The excluded ID is the reusable setting that's excluded from the policy. The entry for the policy contains the permissions allowed and the behavior for device control that comes into force when the policy applies.

:::image type="content" source="images/device-control-profile.png" alt-text="The screenshot that shows the page on which you can configure the settings for the Device Control capability." lightbox="images/device-control-profile.png":::

For information on how to add the reusable groups of settings that are included in the row of each device control policy, see the *Add reusable groups to a Device Control profile* section in [Use reusable groups of settings with Intune policies](/mem/intune/protect/reusable-settings-groups).

Policies can be added and removed using the **+** and **–** icons.  The name of the policy appears in the warning to users, and in advanced hunting and reports.

> [!NOTE]
> The order in the UX isn't preserved for policies enforcement. The best practice is to set the default enforcement to DENY, and then use **Allow policies**. Ensure that the **Allow policies** option is non-intersecting by explicitly adding devices to be excluded.

## Device control groups (Reusable settings)

In Intune, device control groups appear as reusable settings.

1. Go to the [Microsoft Intune admin center](https://endpoint.microsoft.com) and sign in.

2. Go to **Endpoint Security** > **Attack Surface Reduction**. 

3. Select the **Reusable Settings** tab.

## Removable Storage Access Control using OMA-URI

1. Go to the [Microsoft Intune admin center](https://endpoint.microsoft.com) and sign in.

2. Choose **Devices** > **Configuration profiles**. The **Configuration profiles** page appears. 

3. Under the **Policies** tab (selected by default), select **+ Create**, and choose **+ New policy** from the drop-down that appears. The **Create a profile** page appears.

4. Choose **Windows 10 and later** from the **Platform** drop-down list, and choose **Templates** from the **Profile type** drop-down list.

   Once you choose **Templates** from the **Profile type** drop-down list, the **Template name** pane is displayed, along with a search box (to search the profile name).

5. Select **Custom** from the **Template name** pane, and select **Create**.

6. Create a row for each setting, group, or policy by implementing Steps 1—5.

## Defining Settings with OMA-URI

To use the following table, identify the setting you want to configure, and then use the information in the OMA-URI and data type & values columns. Settings are listed in alphabetical order.

| Setting | OMA-URI | Data type & values |
|---|---|---|
| **Device control default enforcement** <br/>Default enforcement establishes what decisions are made during device control access checks when none of the policy rules match | `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement` | Integer <br/>`DefaultEnforcementAllow` = `1`; `DefaultEnforcementDeny` = `2` | 
| **Device types** <br/>Device types, identified by their Primary IDs, with device control protection turned on | `./Vendor/MSFT/Defender/Configuration/SecuredDevicesConfiguration` | String <br/>- `RemovableMediaDevices`<br/>- `CdRomDevices`<br/>- `WpdDevices`<br/>- `PrinterDevices` |
| **Enable device control** <br/>Enable or disable device control on the device | `./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled` | Integer <br/>Disable = `0`; Enable = `1` |
| **Evidence data remote location** <br/>Device control moves evidence data captured | `./Vendor/MSFT/Defender/Configuration/DataDuplicationRemoteLocation` | String |
| **Local evidence cache duration** <br/>Sets the retention period in days for files in the local device control cache | `./Vendor/MSFT/Defender/Configuration/DataDuplicationLocalRetentionPeriod` | Integer <br/>Example: `60` (60 days) |

### Creating Policies with OMA-URI

:::image type="content" source="images/create-policy-with-oma-uri.png" alt-text="The screenshot that shows the page on which you can create a policy with OMA-URI." lightbox="images/create-policy-with-oma-uri.png":::

When you create policies with OMA-URI in Intune, create one XML file for each policy. As a best practice, use the Device Control Profile or Device Control Rules Profile to author custom policies.

In the **Add Row** pane, specify the following settings:

- In the **Name** field, type `Allow Read Activity`.
- In the **OMA-URI** field, type `/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7b[PolicyRule Id]%7d/RuleData`.
- In the **Data Type** field, select **String (XML file)**, and use **Custom XML**.

You can use parameters to set conditions for specific entries. Here's a [group example XML file for Allow Read access for each removable storage](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20Read.xml).

> [!NOTE]
> Comments using XML comment notation <!-- COMMENT --> can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

### Creating groups with OMA-URI

:::image type="content" source="images/create-group-with-oma-uri.png" alt-text="The screenshot that shows the page on which you can create a group with OMA-URI." lightbox="images/create-group-with-oma-uri.png":::

When you create groups with OMA-URI in Intune, create one XML file for each group. As a best practice, use reusable settings to define groups. 

In the **Add Row** pane, specify the following settings:

- In the **Name** field, type `Any Removable Storage Group`.
- In the **OMA-URI** field, type `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**[GroupId]**%7d/GroupData`. (To get your GroupID, in the Intune admin center, go to **Groups**, and then select **Copy the Object ID**.)
- In the **Data Type** field, select **String (XML file)**, and use **Custom XML**.

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -- >` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.
 
## See also

[Device control in Microsoft Defender for Endpoint](device-control-overview.md)

[Device control policies and entries in Microsoft Defender for Endpoint](device-control-policies-entries.md)

[Device Control for macOS](mac-device-control-overview.md)