---
title: Deploy and manage Removable Storage Access Control using group policy
description: Use group policy to deploy and manage removable storage access control.
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
ms.date: 02/13/2023
ms.reviewer: tewchen
search.appverid: met150
---

# Deploy and manage Removable Storage Access Control using group policy

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

The Removable Storage Access Control feature enables you to apply a policy by using group policy to either user or device, or both.

## Device Control Removable Storage Access Control policies

You can use the following properties to create a removable storage group.

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

## Licensing requirements

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control through group policy, you must have Microsoft 365 E5.

## Deploy using group policy

1. Enable or Disable Removable Storage Access Control (Optional):

   You can enable or disable Device control as follows:

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Features** > **Device Control**.
   - In the **Device Control** window, select **Enabled**.

   :::image type="content" source="images/enable-rsac-gp.png" alt-text="Screenshot of Enabling RSAC using Group Policy " lightbox="images/enable-rsac-gp.png":::

> [!NOTE]
> If you don't see this group policy objects, you need to add the group policy administrative template. You can download administrative template (WindowsDefender.adml and WindowsDefender.admx) from https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples.

2. Set Default Enforcement:

   You can set default access (Deny or Allow) for all Device Control features (RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices).

   For example, you can have either a Deny or an Allow policy for RemovableMediaDevices, but not for CdRomDevices or WpdDevices. You set Default Deny through this policy, then Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked. If you only want to manage storage, make sure to create Allow policy for Printer. Otherwise, this Default Enforcement will be applied to Printer as well.

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Features** > **Device Control** > **Select Device Control Default Enforcement**

   - In the **Select Device Control Default Enforcement** pane, select **Default Deny**:

   :::image type="content" source="images/set-default-enforcement-deny-gp.png" alt-text="Screenshot of setting Default Enforcement = Deny using Group Policy" lightbox="images/set-default-enforcement-deny-gp.png":::

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

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs

For this scenario, you need to create two groups - one group for any removable storage and another group for approved USBs. You also need to create two policies - one policy to deny Write and Execute access for any removable storage group and the other policy to audit the approved USBs group.

1. Create groups

    1. Group 1: Any removable storage, CD/DVD, and Windows portable devices.

    ![A screenshot of removable storage](https://user-images.githubusercontent.com/81826151/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png)

    2. Group 2: Approved USBs based on device properties.

    ![A screenshot of approved USBs](https://user-images.githubusercontent.com/81826151/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png)
    
    Combine these two groups into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml). See step 3 from the [Deploy using group policy](deploy-manage-removable-storage-group-policy.md#deploy-using-group-policy) section to deploy this configuration.

    > [!TIP]
    > Replace `&` with `&amp;` in the value.

2. Create policy

    1. Policy 1: Block Write and Execute access for any removable storage group but allow approved USBs.

    ![A screenshot of block write and execute access](https://user-images.githubusercontent.com/81826151/188237490-d736ace1-4912-4788-9e94-3fc506692a41.png)


    2. Policy 2: Audit Write and Execute access for allowed USBs.

    ![A screenshot of audit write and execute access](https://user-images.githubusercontent.com/81826151/188237598-b28dd534-9ea4-4cdd-832b-afff50f9897b.png)

    What does '54' mean in the policy? It's 18 + 36 = 54:

    - Write access: disk level 2 + file system level 16 = 18.
    - Execute: disk level 4 + file system level 32 = 36.

    Combine these two policy rules into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Scenario%201%20GPO%20Policy%20-%20Prevent%20Write%20and%20Execute%20access%20to%20all%20but%20allow%20specific%20approved%20USBs.xml). See step 4 from the [Deploy using group policy](deploy-manage-removable-storage-group-policy.md#deploy-using-group-policy) section to deploy this configuration.

### Scenario 2: Audit Write and Execute access for all but block specific blocked USBs

For this scenario, you need to create two groups - one group for any removable storage and another group for blocked USBs. You also need to create two policies - one policy to audit Write and Execute access for any removable storage group and the other policy to deny the blocked USBs group.

1. Create groups

    1. Group 1: Any removable storage, CD/DVD, and windows portable devices.

    ![A screenshot of removable storage in groups](https://user-images.githubusercontent.com/81826151/188234308-4db09787-b14e-446a-b9e0-93c99b08748f.png)

    2. Group 2: Blocked USBs based on device properties.

    ![A screenshot of blocked USBs](https://user-images.githubusercontent.com/81826151/188234372-526d20b3-cfea-4f1d-8d63-b513497ada52.png)
    
    Combine these two groups into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml). See step 3 from the [Deploy using group policy](deploy-manage-removable-storage-group-policy.md#deploy-using-group-policy) section to deploy this configuration.

    > [!TIP]
    > Replace `&` with `&amp;` in the value.

2. Create policy

    1. Policy 1: Block Write and Execute access for all but block specific unapproved USBs.

    ![A screenshot of specific unapproved USBs](https://user-images.githubusercontent.com/81826151/188239025-218a1985-b198-4f7e-b323-b4b6fb7e274e.png)

    2. Policy 2: Audit Write and Execute access for others. 

    ![A screenshot of audit write and execute access in group policy](https://user-images.githubusercontent.com/81826151/188239144-3e6a2781-6927-487a-aa01-498a0904ad98.png)

    What does '54' mean in the policy? It's 18 + 36 = 54:

    - Write access: disk level 2 + file system level 16 = 18.
    - Execute: disk level 4 + file system level 32 = 36.

    Combine these two policy rules into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Scenario%202%20GPO%20Policy%20-%20Audit%20Write%20and%20Execute%20access%20to%20all%20but%20block%20specific%20unapproved%20USBs.xml). See step 4 from the [Deploy using group policy](deploy-manage-removable-storage-group-policy.md#deploy-using-group-policy) section to deploy this configuration.

### Scenario 3: Block read and execute access to specific file extension

For this scenario, you need to create two groups: one removable storage group for any removable storage and another group for unallowed file extensions. You also need to create one policy - deny read and execute access to any file under the allowed file extension group for defined removable storage group.

1. Create groups

    1. Group 1: Any removable storage, CD/DVD, and Windows portable devices.

    2. Group 2: Unallowed file extensions.
    
    Combine these two groups into [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Block%20Read%20and%20Write%20access%20to%20specific%20file%20_Groups.xml). See step 3 from the [Deploy using group policy](deploy-manage-removable-storage-group-policy.md#deploy-using-group-policy) section to deploy this configuration.


    > [!TIP]
    > Explicily mark the Type attribute on the group as **File**

    2. Policy 2: Deny read and execute access to any file under the allowed file extension group for defined removable storage group.

        ![image](https://user-images.githubusercontent.com/81826151/200713006-c0d39e2b-9acc-4522-9f88-e064eeb3a4ae.png)
    
    What does '40' mean in the policy? It's 8 + 32 = 40:

    - only need to restrict file system level access

    Although this case only has one policy, make sure put it under PolicyRules [one XML file](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Block%20Read%20and%20Write%20access%20to%20specific%20file%20_Policy.xml). See step 4 from the [Deploy using group policy](deploy-manage-removable-storage-group-policy.md#deploy-using-group-policy) section to deploy this configuration.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
