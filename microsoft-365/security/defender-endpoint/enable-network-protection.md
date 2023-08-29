---
title: Turn on network protection
description: Enable network protection with Group Policy, PowerShell, or Mobile Device Management and Configuration Manager.
keywords: Network protection, exploits, malicious website, ip, domain, domains, enable, turn on
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.date: 10/18/2022
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Turn on network protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- Linux \(See [Network protection for Linux](network-protection-linux.md)\)
- macOS \(See [Network protection for macOS](network-protection-macos.md)\)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

[Network protection](network-protection.md) helps to prevent employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the internet. You can [audit network protection](evaluate-network-protection.md) in a test environment to view which apps would be blocked before enabling network protection.

[Learn more about network filtering configuration options.](/mem/intune/protect/endpoint-protection-windows-10#network-filtering)

## Check if network protection is enabled

Check if network protection has been enabled on a local device by using Registry editor.

1. Select the **Start** button in the task bar and type **regedit** to open Registry editor.

2. Choose **HKEY_LOCAL_MACHINE** from the side menu.

3. Navigate through the nested menus to **SOFTWARE** \> **Policies** \> **Microsoft** \> **Windows Defender** \> **Policy Manager**.

If the Key is missing,  Navigate to **SOFTWARE** \> **Microsoft** \> **Windows Defender** \> **Windows Defender Exploit Guard** \> **Network Protection**.

4. Select **EnableNetworkProtection** to see the current state of network protection on the device:

   - 0, or **Off**
   - 1, or **On**
   - 2, or **Audit** mode

    :::image type="content" source="../../media/95341270-b738b280-08d3-11eb-84a0-16abb140c9fd.png" alt-text="Network Protection registry key" lightbox="../../media/95341270-b738b280-08d3-11eb-84a0-16abb140c9fd.png":::

## Enable network protection

Enable network protection by using any of these methods:

- [PowerShell](#powershell)
- [Mobile Device Management (MDM)](#mobile-device-management-mdm)
- [Microsoft Intune](#microsoft-intune)
- [Group Policy](#group-policy)
- [Microsoft Configuration Manager](#microsoft-configuration-manager)

### PowerShell

1. Type **powershell** in the Start menu, right-click **Windows PowerShell** and select **Run as administrator**.

2. Enter the following cmdlet:

    ```PowerShell
    Set-MpPreference -EnableNetworkProtection Enabled
    ```

3. Optional: Enable the feature in audit mode using the following cmdlet:

    ```PowerShell
    Set-MpPreference -EnableNetworkProtection AuditMode
    ```

    Use `Disabled` instead of `AuditMode` or `Enabled` to turn off the feature.

### Mobile device management (MDM)

Use the [./Vendor/MSFT/Policy/Config/Defender/EnableNetworkProtection](/windows/client-management/mdm/policy-csp-defender) configuration service provider (CSP) to enable or disable network protection or enable audit mode.

[Update Microsoft Defender antimalware platform to the latest version](https://support.microsoft.com/topic/update-for-microsoft-defender-antimalware-platform-92e21611-8cf1-8e0e-56d6-561a07d144cc) before you enable or disable network protection or enable audit mode.

### Microsoft Intune

#### Microsoft Defender for Endpoint Baseline method

1. Sign into the Microsoft Intune admin center (https://endpoint.microsoft.com).
2. Go to **Endpoint security** > **Security baselines** > **Microsoft Defender for Endpoint Baseline**.
3. Select **Create a profile**, then provide a name for your profile, and then select **Next**.
4. In the **Configuration settings** section, go to **Attack Surface Reduction Rules** > set **Block**, **Enable** or **Audit** for **Enable network protection**. Select **Next**.
5. Select the appropriate **Scope tags** and **Assignments** as required by your organization.
7. Review all the information, and then select **Create**.

#### Antivirus policy method
1. Sign into the Microsoft Intune admin center (https://endpoint.microsoft.com).
2. Go to **Endpoint security** > **Antivirus**
3. Select **Create a policy**
4. In the **Create a policy** flyout, choose **Windows 10, Windows 11, and Windows Server** from the **Platform** list.
5. Choose **Microsoft Defender Antivirus** from the **Profile** list then choose **Create**
6. Provide a name for your profile, and then select **Next**.
7. In the **Configuration settings** section, select **Disabled**, **Enabled (block mode)** or **Enabled (audit mode)** for **Enable Network Protection**, then select **Next**.
8. Select the appropriate **Assignments** and **Scope tags** as required by your organization.
9. Review all the information, and then select **Create**.

#### Configuration profile method

1. Sign into the Microsoft Intune admin center (https://endpoint.microsoft.com).

2. Go to **Devices** > **Configuration profiles** > **Create profile**.

3. In the **Create a profile** flyout, select **Platform** and choose the **Profile Type** as **Templates**.

4. In the **Template name**, Choose **Endpoint protection** from the list of templates, and then select **Create**.

4. Go to **Endpoint protection** > **Basics**, provide a name for your profile, and then select **Next**.

5. In the **Configuration settings** section, go to **Microsoft Defender Exploit Guard** > **Network filtering** > **Network protection** > **Enable** or **Audit**. Select **Next**.

6. Select the appropriate **Scope tags**, **Assignments**, and **Applicability rules** as required by your organization. Admins can set more requirements.

7. Review all the information, and then select **Create**.

### Group Policy

Use the following procedure to enable network protection on domain-joined computers or on a standalone computer.

1. On a standalone computer, go to **Start** and then type and select **Edit group policy**.

    *-Or-*

    On a domain-joined Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Microsoft Defender Exploit Guard** \> **Network protection**.

   > [!NOTE]
   > On older versions of Windows, the group policy path may say "Windows Defender Antivirus" instead of "Microsoft Defender Antivirus."

4. Double-click the **Prevent users and apps from accessing dangerous websites** setting and set the option to **Enabled**. In the options section, you must specify one of the following options:
    - **Block** - Users can't access malicious IP addresses and domains.
    - **Disable (Default)** - The Network protection feature won't work. Users won't be blocked from accessing malicious domains.
    - **Audit Mode** - If a user visits a malicious IP address or domain, an event will be recorded in the Windows event log. However, the user won't be blocked from visiting the address.

   > [!IMPORTANT]
   > To fully enable network protection, you must set the Group Policy option to **Enabled** and also select **Block** in the options drop-down menu.

   > [!NOTE]
   > Optional: Follow the steps in [Check if network protection is enabled](#check-if-network-protection-is-enabled) to verify that your Group Policy settings are correct.

### Microsoft Configuration Manager

1. Open the Configuration Manager console.

2. Go to **Assets and Compliance** > **Endpoint Protection** > **Windows Defender Exploit Guard**.

3. Select **Create Exploit Guard Policy** from the ribbon to create a new policy.
   - To edit an existing policy, select the policy, then select **Properties** from either the ribbon or the right-click menu. Edit the **Configure network protection** option from the **Network Protection** tab.  

4. On the **General** page, specify a name for the new policy and verify the **Network protection** option is enabled.

5. On the **Network protection** page, select one of the following settings for the **Configure network protection** option:
   - **Block**
   - **Audit**
   - **Disabled**

6. Complete the rest of the steps, and save the policy.

7. From the ribbon, select **Deploy** to deploy the policy to a collection.

> [!IMPORTANT]
> Once you deploy an Exploit Guard policy from Configuration Manager, the Exploit Guard settings will not be removed from the clients if you remove the deployment. `Delete not supported` is recorded in the Configuration Manager client's ExploitGuardHandler.log if you remove the client's Exploit Guard deployment. <!--CMADO8538577-->
> The following PowerShell script can be run under SYSTEM context to remove these settings:<!--CMADO9907132-->
>
> ```powershell
> $defenderObject = Get-WmiObject -Namespace "root/cimv2/mdm/dmmap" -Class "MDM_Policy_Config01_Defender02" -Filter "InstanceID='Defender' and ParentID='./Vendor/MSFT/Policy/Config'"
> $defenderObject.AttackSurfaceReductionRules = $null
> $defenderObject.AttackSurfaceReductionOnlyExclusions = $null
> $defenderObject.EnableControlledFolderAccess = $null
> $defenderObject.ControlledFolderAccessAllowedApplications = $null
> $defenderObject.ControlledFolderAccessProtectedFolders = $null
> $defenderObject.EnableNetworkProtection = $null
> $defenderObject.Put()
>
> $exploitGuardObject = Get-WmiObject -Namespace "root/cimv2/mdm/dmmap" -Class "MDM_Policy_Config01_ExploitGuard02" -Filter "InstanceID='ExploitGuard' and ParentID='./Vendor/MSFT/Policy/Config'"
> $exploitGuardObject.ExploitProtectionSettings = $null
> $exploitGuardObject.Put()
>```  

## See also

- [Network protection](network-protection.md)

- [Network protection for Linux](network-protection-linux.md)

- [Network protection for macOS](network-protection-macos.md)

- [Network protection and the TCP three-way handshake](network-protection.md#network-protection-and-the-tcp-three-way-handshake)

- [Evaluate network protection](evaluate-network-protection.md)

- [Troubleshoot network protection](troubleshoot-np.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
