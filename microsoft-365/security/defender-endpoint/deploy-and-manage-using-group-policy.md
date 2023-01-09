---
title: Deploy and manage using group policy
description: Use group policy to deploy and manage on printer protection.
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

# Deploy and manage using group policy

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft Defender for Endpoint Device Control Printer Protection feature enables you to audit, allow, or prevent printer with or without exclusions. 

## Licensing requirements 

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/en-in/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=3). To access and use Printer Protection through group policy, you must have Microsoft 365 E5. 

## Deploy using group policy

1. Enable or Disable Device control:

   You can enable or disable Device control as follows:

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Features** > **Device Control**.
   - In the **Device Control** window, select **Enabled**.

   :::image type="content" source="images/enable-rsac-gp.png" alt-text="Screenshot of Enabling RSAC using Group Policy " lightbox="images/enable-rsac-gp.png":::

The purpose of this configuration is to temporarily disable device control on specific machine. 

> [!NOTE]
> If you don't see this group policy objects, you need to add the group policy administrative template. You can download administrative template (WindowsDefender.admx and WindowsDefender.admx) from [samples](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples)
.

> [!NOTE]
> This configuration controls both Removable storage access control [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md) and Printer protection.


2. Set Default Enforcement:

   You can set default access (Deny or Allow) for all Device Control features (RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices).

   For example, you can have either a Deny or an Allow policy for RemovableMediaDevices, but not for CdRomDevices or WpdDevices. You set Default Deny through this policy, then Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked. 

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Features** > **Device Control** > **Select Device Control Default Enforcement**

   - In the **Select Device Control Default Enforcement** pane, select **Default Deny**:

   :::image type="content" source="images/set-default-enforcement-deny-gp.png" alt-text="Screenshot of setting Default Enforcement = Deny using Group Policy" lightbox="images/set-default-enforcement-deny-gp.png":::

    > [!NOTE]
    > This configuration controls both Removable storage access control [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md) and Printer protection. If you only want to manage storage, make sure to create Allow policy for Printer. Otherwise, this Default Enforcement will be applied to Printer as well.

3. Create one XML file for removable storage group(s):

   Use the properties in removable storage group to create an XML file for the Removable storage group(s), save the XML file to network share, and define the setting as follows:

   - Go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Define device control policy groups**.

    :::image type="content" source="images/define-device-control-policy-grps-gp.png" alt-text="Screenshot of Define device control policy groups" lightbox="images/define-device-control-policy-grps-gp.png":::

   - In the **Define device control policy groups** window, specify the network share file path containing the XML groups data.

   Take a look at the **Overview** > **Removable storage group**. You can create different group types. Here's one group example XML file for any removable storage and CDROM and Windows portable devices and approved USBs group: [XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml)
         
> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

4. Create one XML file for access policy rule(s):

   Use the properties in removable storage access policy rule(s) to create an XML for each group's removable storage access policy rule, save the XML file to network share, and deliver the setting as follows:

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Device Control** > **Define device control policy rules**.

     :::image type="content" source="images/define-device-cntrl-policy-rules-gp.png" alt-text="Screenshot of define device control policy rules" lightbox="images/define-device-cntrl-policy-rules-gp.png":::

   - In the **Define device control policy rules** window, select **Enabled**, and enter the network share file path containing the XML rules data.

   Take a look at the **Overview** -> **Access policy rule**, you can use **Parameters** to set condition for specific Entry. Here's one [example XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Policies.xml).

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

5. Set location for a copy of the file (evidence):

    If you want to have a copy of the file (evidence) when Write access happens, set right **Options** in your removable storage access policy rule in the XML file, and then specify the location where system can save the copy.

    - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Device Control** > **Define Device Control evidence data remote location**.

    - In the **Define Device Control evidence data remote location** pane, select **Enabled**, and then specify the local or network share folder path.

      :::image type="content" source="images/evidence-data-remote-location-gp.png" alt-text="Screenshot of Define Device Control evidence data remote location." lightbox="images/evidence-data-remote-location-gp.png":::

## Scenarios

Here are some common scenarios to help you familiarize with Microsoft Defender for Endpoint Removable Storage Access Control. In the following samples, 'Default Enforcement' hasn't been used because the 'Default Enforcement' will apply to both the removable storage and the printer.

### Scenario 1: Prevent print to all but allow print through specific approved USB printer when the machine is corporate network, VPN connected, or print through PDF/XPS file

Allows to print only through approved USB when machine is in corporate network, VPN connected, or print through PDF/XPS file. 

You can download the files here, [Printer Protection Samples](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Printer%20Protection%20Samples/Group%20Policy).

1. Create any printer group and allowed-USB printer group and allowed-file printer group

    1. Group 1: Any printer group

    ![A screenshot of removable storage](https://user-images.githubusercontent.com/81826151/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png)

    2. Group 2: Allowed-USB printer group

    ![A screenshot of approved USBs](https://user-images.githubusercontent.com/81826151/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png)

    3. Group 2: Allowed PDF/XPS file printer group: following PrinterConnectionId is used, but if you want to only allow PDF, FriendlyNameId with ‘Microsoft Print to PDF’ is recommended 

    :::image type="content" source="images/Group-3.png" alt-text="A screenshot of approved USB":::
    
    Combine these two groups into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml). See step 3 from the [Deploy using group policy](deploy-and-manage-using-group-policy.md) section to deploy this configuration.

    > [!TIP]
    > Replace `&` with `&amp;` in the value.

2. Create policy

    1. Create Allow and Audit policy for allowed-file printer group 

    ![A screenshot of block write and execute access](https://user-images.githubusercontent.com/81826151/188237490-d736ace1-4912-4788-9e94-3fc506692a41.png)


    2. Create policy to allow authorized USB printer only when the machine is Corporate Network OR VPN connected 

    ![A screenshot of audit write and execute access](https://user-images.githubusercontent.com/81826151/188237598-b28dd534-9ea4-4cdd-832b-afff50f9897b.png)

    3. Create Default Deny custom policy for any other printers 

    :::image type="content" source="images/create-group.png" alt-text="Create deafult deny custom policy for any other printers":::
    
    Combine these two policy rules into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Scenario%201%20GPO%20Policy%20-%20Prevent%20Write%20and%20Execute%20access%20to%20all%20but%20allow%20specific%20approved%20USBs.xml). See step 4 from the [Deploy using group policy](deploy-and-manage-using-group-policy.md) section to deploy this configuration.

