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

If you're using Intune to manage Defender for Endpoint settings, you can use it to deploy and manage device control capabilities.

Different aspects of device control are managed differently in Intune, as described in the following sections.

## Capabilities

### Device installation



- **Setting**: Device Installation Restrictions
- **Device Control Profile**: X
- **Device Control Rules Profile**: N/A
- **Intune OMA-URI**: N/A
- **Intune Reusable Settings**: N/A

### Defender

- **Setting**: Allow Full Scan Removable Drive Scanning
- **Device Control Profile**: X
- **Intune OMA-URI**: N/A
- **Intune Reusable Settings**: N/A

### Data Protection

- **Setting**: Allow direct memory access
- **Device Control Profile**: X
- **Device Control Rules Profile**: N/A
- **Intune OMA-URI**: N/A
- **Intune Reusable Settings**: N/A

1. Dma Guard

   **Setting**: Device Enumeration Policy
   **Device Control Profile**: X
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: N/A
   **Intune Reusable Settings**: N/A

1. Storage

   **Setting**: Removable Disk Deny Write Access
   **Device Control Profile**: X
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: N/A
   **Intune Reusable Settings**: N/A

1. Connectivity

   **Setting**: Allow USB Connection
   **Device Control Profile**: X
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: N/A
   **Intune Reusable Settings**: N/A

   **Setting**: Allow Bluetooth
   **Device Control Profile**: X
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: N/A
   **Intune Reusable Settings**: N/A

1. Bluetooth

   **Setting**: Allow advertising, Allow discovery mode, Allow preparing, Allow Promoted proximal connections, Services allowed List
   **Device Control Profile**: X
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: N/A
   **Intune Reusable Settings**: N/A

1. Device Control

   **Setting**: Enable/Disable Device Control, Define Device Control evidence data remote location, Set the retention period for files in the local device control cache, Turn on device control for specific device types, Select device control default enforcement policy
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Policies and entries
   **Device Control Profile**: X
   **Device Control Rules Profile**: X
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Groups for Removable Storage and Printers
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: X


   **Setting**: Groups other than Removable Storage and Printers (Network, VPN Connection, File, PrintJob)
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Control Disk level access
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: X
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Control File level access
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Entries – Options
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: X
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Entries – create file evidence option (Allow: 8)
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A


   **Setting**: Parameters
   **Device Control Profile**: N/A
   **Device Control Rules Profile**: N/A
   **Intune OMA-URI**: X
   **Intune Reusable Settings**: N/A

## Device Control Profile

The device control profile mostly has settings for capabilities other than removable storage access control.  For more information, see [Microsoft Defender for Endpoint Device Control Device Installation](mde-device-control-device-installation.md). 

The exception is Device Control. The details of how to configure policies in Intune are covered in the Device Control Rules Profile.

## Device Control Rules Profile

Each row is a device control policy. The included ID is the re-usable setting that the policy applies to. The excluded ID is the re-usable setting that's excluded from the policy. The entry for the policy contains the permissions allowed and the behavior for device control that comes into force when the policy applies.

:::image type="content" source="images/device-control-profile.png" alt-text="The screenshot that shows the page on which you can configure the settings for the Device Control capability." lightbox="images/device-control-profile.png":::

For information on how to add the re-usable groups of settings — that are included in the row of each device control policy — see the *Add reusable groups to a Device Control profile* section in [Use reusable groups of settings with Intune policies](/mem/intune/protect/reusable-settings-groups).

Policies can be added and removed using the **+** and **–** icons.  The name of the policy appears in the warning to users, and in advanced hunting and reports.

> [!NOTE]
> The order in the UX isn't preserved for policies enforcement. The best practice is to set the default enforcement to DENY, and then use **Allow policies**. Ensure that the **Allow policies** option is non-intersecting by explicitly adding devices to be excluded.

## Device Control Groups (Re-usable Settings)

In Intune, device control groups appear as re-usable settings under **Home > Endpoint Security > Attack Surface Reduction**. Select the **Reusable Settings** Tab.

## Removable Storage Access Control using OMA-URI

1. Go to the Microsoft Intune admin center (https://endpoint.microsoft.com/).

1. Choose **Devices > Configuration profiles**. The **Configuration profiles** page appears. 

1. Under the **Policies** tab (selected by default), select **+ Create**, and choose **+ New policy** from the drop-down that appears. The **Create a profile** page appears.

1. Choose **Windows 10 and later** from the **Platform** drop-down list, and choose **Templates** from the **Profile type** drop-down list.

   Once you choose **Templates** from the **Profile type** drop-down list, the **Template name** pane is displayed, along with a search box (to search the profile name).

1. Select **Custom** from the **Template name** pane, and select **Create**.

1. Create a row for each setting, group, or policy by implementing Steps 1—5.

## Defining Settings with OMA-URI

**Setting name**: 

1. Enable Device Control

   **Description**: Enable or Disable Defender Device Control on this machine.
   **OMA-URI**: ./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled
   **Data Type**: Integer
   **Value(s)**: Disable = 0; Enable = 1

1. Device Control Default Enforcement

   **Description**: Default Enforcement will establish what decision should be made during the Device Control access checks when none of the policy rules match.
   **OMA-URI**: ./Vendor/MSFT/Defender/Configuration/DefaultEnforcement
   **Data Type**: Integer
   **Value(s)**: DefaultEnforcementAllow = 1; DefaultEnforcementDeny = 2

1. Device Types

   **Description**: Device types, identified by their Primary IDs, will have device control protection turned on.
   **OMA-URI**: ./Vendor/MSFT/Defender/Configuration/SecuredDevicesConfiguration
   **Data Type**: String
   **Value(s)**: RemovableMediaDevices; CdRomDevices; WpdDevices; PrinterDevices

1. Evidence Data Remote Location

   **Description**: Where Device Control service will move evidence data captured.
   **OMA-URI**: ./Vendor/MSFT/Defender/Configuration/DataDuplicationRemoteLocation
   **Data Type**: String
   **Value(s)**: N/A

1. Local Evidence Cache Duration

   **Description**: Set the retention period in "days" for files in the local device control cache.
   **OMA-URI**: ./Vendor/MSFT/Defender/Configuration/DataDuplicationLocalRetentionPeriod
   **Data Type**: Integer
   **Value(s)**: 60

### Creating Policies with OMA-URI

> [!NOTE]
> The best practice is to use the Device Control Profile or Device Control Rules Profile to author custom policies.

1. Create one XML file for each access control or policy rule.

1. Create a policy and apply it to related removable storage group by doing the following steps:

    1. In the **Add Row** pane, enter:
        1. **Allow Read Activity** in the **Name** field.
        1. **/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7b[PolicyRule Id]%7d/RuleData** in the **OMA-URI** field.
        1. **String (XML file)** in the **Data Type** field.
            1. **Custom XML** as the selected XML file.

:::image type="content" source="images/create-policy-with-oma-uri.png" alt-text="The screenshot that shows the page on which you can create a policy with OMA-URI." lightbox="images/create-policy-with-oma-uri.png":::

See at the **Overview -> Access policy** rule; you can use parameters to set condition for a specific entry. Here's a [group example XML file for Allow Read access for each removable storage](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20Read.xml).

> [!NOTE]
> Comments using XML comment notation <!-- COMMENT --> can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

### Creating groups with OMA-URI

> [!NOTE]
> The best practice is to use the Reusable Settings to author groups.

1. Create one XML file for each group.

1. Create a removable storage group for each group by doing the following steps:

    1. In the **Add Row** pane, enter:
        1. **Any Removable Storage Group** in the **Name** field.
        1. **./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**[GroupId]**%7d/GroupData** in the **OMA-URI** field.
        1. **String (XML file)** in the **Data Type** field.
            1. **Custom XML** as the selected XML file.

:::image type="content" source="images/create-group-with-oma-uri.png" alt-text="The screenshot that shows the page on which you can create a group with OMA-URI." lightbox="images/create-group-with-oma-uri.png":::

To get the Group Id, sign in to the Microsoft Intune admin center and select **Groups > Copy the Object ID**.

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -- >` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.
 