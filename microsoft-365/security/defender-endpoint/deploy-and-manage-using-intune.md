---
title: Deploy and manage using Intune
description: Use Intune OMA-URI and Intune user interface to deploy and manage on printer protection.
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
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 01/09/2023
ms.reviewer: tewchen
search.appverid: met150
---

# Deploy and manage using Intune

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft Defender for Endpoint Device Control Printer Protection feature enables you to audit, allow, or prevent printer with or without exclusions.

## Licensing requirements

Before you get started with Printer Protection, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Printer Protection, you must have Microsoft 365 E3.

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

## Deploy using Intune OMA-URI

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

   :::image type="content" source="media/enable-rsac.png" alt-text="Screenshot of enabling Removable Storage Access Control policy." lightbox="media/enable-rsac.png":::

   The purpose of this configuration is to temporarily disable Device control on specific machine.

   > [!NOTE]
   > This configuration controls both [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md) and Printer Protection.

2. Set Default Enforcement:

   You can set the default access (Deny or Allow) for all Device Control features (`RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, `PrinterDevices`).

   - In the **Add Row** pane, specify the following settings:
     - **Name** as **Default Deny**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement`
     - **Data Type** as **Integer**
     - **Value** as **1** or **2**

       `DefaultEnforcementAllow = 1`
       `DefaultEnforcementDeny = 2`

     - Select **Save**.

   :::image type="content" source="media/default-deny.png" alt-text="Screenshot of setting Default Enforcement as Deny." lightbox="media/default-deny.png":::

    > [!NOTE]
    > This configuration controls both Removable storage access control [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md) and Printer protection. If you only want to manage storage, make sure to create Allow policy for Printer. Otherwise, this Default Enforcement will be applied to Printer as well.

3. Create one XML file for printer group(s):

   You can create a removable storage group for each group as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Any Removable Storage Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**[GroupId]**%7d/GroupData`
     - **Data Type** as **String (XML file)**
       - **Custom XML** as selected XML file

         Take a look at the **Overview** > **Group**. You can create different group types. Here's one group example XML file for any network printer and USB printer and PDF/XPS printer group: [XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Any%20printer%20group.xml).

       :::image type="content" source="media/any-removable-storage-group.png" alt-text="Screenshot of creating any Removable Storage Group." lightbox="media/any-removable-storage-group.png":::

   > [!NOTE]
   > Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

4. Create one XML file for access policy rule(s):

   You can create a policy and apply it to related removable storage group as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Allow Read Activity**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7b**[PolicyRule Id]**%7d/RuleData`
     - **Data Type** as **String (XML file)**
       - **Custom XML** as selected XML file

         Take a look at the **Overview** -> **Access policy rule**, you can use **Parameters** to set condition for specific Entry. Here's one [example XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Allow%20Authorized%20USB%20Printer.xml).

       :::image type="content" source="media/allow-read-activity.png" alt-text="Screenshot of Allow Read Activity policy." lightbox= "media/allow-read-activity.png":::

   > [!NOTE]
   > Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

5. Set location for a copy of the file (Optional):

   If you want to have a copy of the file (evidence) when Print access happens, set right **Options** in your Printer protection policy rule in the XML file, and then specify the location where system can save the copy.

   - In the **Add Row** pane, enter:
     - **Name** as **Evidence folder location**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DataDuplicationRemoteLocation`
     - **Data Type** as **String**

       :::image type="content" source="media/device-control-oma-uri-edit-row.png" alt-text="Set location for file evidence." lightbox="media/device-control-oma-uri-edit-row.png":::

## Scenarios (default enforcement)

Here are some common scenarios to help you familiarize with Microsoft Defender for Endpoint Printer Protection. In the following samples, **Default Enforcement** hasn't been used because the **Default Enforcement** will apply to both the removable storage and the printer.

### Scenario 1: Prevent print to all but allow print through specific approved USB printer when the machine is Corporate Network OR VPN connected or print through PDF/XPS file

Allows to print only through approved USB printer when machine is in corporate network, VPN connected, or print through PDF/XPS file.

You can download the files here, [Printer Protection Samples](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Printer%20Protection%20Samples/Intune%20OMA-URI).

1. Create any printer group and allowed-USB printer group and allowed-file printer group.

   1. Group 1: Any printer group

      :::image type="content" source="media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png" alt-text="A screenshot showing removable storage." lightbox= "media/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Any%20printer%20group.xml). See step 3 from the [Deploy Printer Protection](deploy-and-manage-using-intune.md) section to deploy the configuration.

   2. Group 2: Allowed-USB printer group

      :::image type="content" source="media/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png" alt-text="A screenshot of approved USBs." lightbox= "media/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Authorized%20USB%20Printer.xml). See step 3 from the [Deploy Printer Protection](deploy-and-manage-using-intune.md) section to deploy the configuration.

   3. Group 3: Allowed PDF/XPS file printer group: following PrinterConnectionId is used, but if you want to only allow PDF, FriendlyNameId with 'Microsoft Print to PDF' is recommended.

      :::image type="content" source="images/allowed-pdf.png" alt-text="This is allowed pdf."lightbox="images/allowed-pdf.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/PDF_XPS%20Printer.xml). See step 3 from the [Deploy Printer Protection](deploy-and-manage-using-intune.md) section to deploy the configuration.

      > [!TIP]
      > Replace `&` with `&amp;` in the value.

2. Create policy.

   1. Create **Allow** and **Audit** policy for allowed-file printer group.

       :::image type="content" source="media/188243425-c0772ed4-6537-4c6a-9a1d-1dbb48018578.png" alt-text="A screenshot of policy 1." lightbox= "media/188243425-c0772ed4-6537-4c6a-9a1d-1dbb48018578.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Allow%20PDF_XPS%20Printer.xml). See step 4 from the [Deploy Printer Protection](deploy-and-manage-using-intune.md) section to deploy the configuration.

   2. Create policy to allow authorized USB printer only when the machine is Corporate Network OR VPN connected.

       :::image type="content" source="media/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png" alt-text="A screenshot of policy 2." lightbox= "media/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Allow%20Authorized%20USB%20Printer.xml). See step 4 from the [Deploy Printer Protection](deploy-and-manage-using-intune.md) section to deploy the configuration.

   3. Create Default Deny custom policy for any other printers.

      :::image type="content" source="media/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png" alt-text="A screenshot of policy 2." lightbox= "media/188243552-5d2a90ab-dba6-450f-ad8f-86a862f6e739.png":::

      Here's the [sample file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Printer%20Protection%20Samples/Intune%20OMA-URI/Default%20Deny%20-%20custom%20policy.xml). See step 4 from the [Deploy Printer Protection](deploy-and-manage-using-intune.md) section to deploy the configuration.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
