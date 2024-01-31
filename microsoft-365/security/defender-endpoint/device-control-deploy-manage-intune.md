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

## Configure and manage device control in Intune

1. Go to the [Intune admin center](https://intune.microsoft.com) and sign in.

2. Go to Endpoint security > Attack surface reduction policies.

3. Select an existing policy, or select **+ Create Policy** to set up a new policy, using these settings:

   - In the **Platform** list, select **Windows 10, Windows 11, and Windows Server**. (Device control is not currently supported on Windows Server, even though you select this profile for device control policies.)
   - In the **Profile** list, select **Device Control**. 

4. On the **Basics** tab, specify a name and description for your policy.

5. On the **Configuration settings** tab, you see a long list of settings.

   - Under **Administrative Templates**, you have [Device Installation](/windows/client-management/mdm/policy-csp-deviceinstallation?WT.mc_id=Portal-fx) and [Removable Storage Access](/windows/client-management/mdm/policy-csp-admx-removablestorage) settings.
   - Under **Defender**, see [Allow Full Scan Removable Drive Scanning](/windows/client-management/mdm/policy-csp-defender#allowfullscanremovabledrivescanning) settings.
   - Under **Data Protection**, see [Allow Direct Memory Access](/windows/client-management/mdm/policy-csp-dataprotection) settings.
   - Under **Dma Guard**, see [Device Enumeration Policy](/windows/client-management/mdm/policy-csp-dmaguard?WT.mc_id=Portal-fx) settings.
   - Under **Storage**, see [Removable Disk Deny Write Access](/windows/client-management/mdm/policy-csp-Storage#removablediskdenywriteaccess) settings.
   - Under **Connectivity**, see **Allow USB Connection** and **Allow Bluetooth** settings.
   - Under **Bluetooth**, see a list of settings that pertain to Bluetooth connections and services. Formore details, see [Policy CSP - Bluetooth](/windows/client-management/mdm/policy-csp-Bluetooth?WT.mc_id=Portal-fx).
   - Under **Device Control**, you can configure custom policies with reusable settings. For example, you can use XML files to set up your policies. For more details, see [Rules](device-control-policies.md#rules).

6. After you have configured your settings, proceed to the **Scope tags** tab, where you can specify [scope tags](/mem/intune/fundamentals/scope-tags) for the policy.

7. On the **Assignments** tab, specify groups of users or devices to receive your policy. For more details, see [Assign policies in Intune](/mem/intune/configuration/device-profile-assign).

8. On the **Review + create** tab, review your settings, and make any needed changes.

9. When you're ready, select **Create** to create your device control policy.

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

[Device control policies in Microsoft Defender for Endpoint](device-control-policies.md)

[Device Control for macOS](mac-device-control-overview.md)