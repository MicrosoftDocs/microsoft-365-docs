---
title: Enable controlled folder access
keywords: Controlled folder access, windows 10, windows 11, windows defender, ransomware, protect, files, folders, enable, turn on, use
description: Learn how to protect your important files by enabling Controlled folder access
ms.service: microsoft-365-security
ms.topic: conceptual
ms.localizationpriority: medium
audience: ITPro
author: dansimp
ms.author: dansimp
ms.reviewer: oogunrinde, sugamar
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier3
search.appverid: met150
ms.date: 05/17/2023
---

# Enable controlled folder access

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**
- Windows

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

[Controlled folder access](controlled-folders.md) helps you protect valuable data from malicious apps and threats, such as ransomware. Controlled folder access is included with Windows 10, Windows 11, and Windows Server 2019. Controlled folder access is also included as part of the [modern, unified solution for Windows Server 2012R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-functionality-in-the-modern-unified-solution-for-windows-server-2012-r2-and-2016-preview).

You can enable controlled folder access by using any of these methods:

- [Windows Security app *](#windows-security-app)
- [Microsoft Intune](#microsoft-intune)
- [Mobile Device Management (MDM)](#mobile-device-management-mdm)
- [Microsoft Configuration Manager](#microsoft-configuration-manager)
- [Group Policy](#group-policy)
- [PowerShell](#powershell)

[Audit mode](evaluate-controlled-folder-access.md) allows you to test how the feature would work (and review events) without impacting the normal use of the device.

Group Policy settings that disable local administrator list merging will override controlled folder access settings. They also override protected folders and allowed apps set by the local administrator through controlled folder access. These policies include:

- Microsoft Defender Antivirus **Configure local administrator merge behavior for lists**
- System Center Endpoint Protection **Allow users to add exclusions and overrides**

For more information about disabling local list merging, see [Prevent or allow users to locally modify Microsoft Defender Antivirus policy settings](/windows/security/threat-protection/microsoft-defender-antivirus/configure-local-policy-overrides-microsoft-defender-antivirus).

## Windows Security app

1. Open the Windows Security app by selecting the shield icon in the task bar. You can also search the start menu for **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then select **Ransomware protection**.

3. Set the switch for **Controlled folder access** to **On**.

> [!NOTE]
> *This method is not available on Windows Server 2012R2 or 2016.
> 
> If controlled folder access is configured with Group Policy, PowerShell, or MDM CSPs, the state will change in the Windows Security app after a restart of the device.
> If the feature is set to **Audit mode** with any of those tools, the Windows Security app will show the state as **Off**.
> If you are protecting user profile data, we recommend that the user profile should be on the default Windows installation drive.

## Microsoft Intune

1. Sign in to the [Microsoft Intune admin center](https://endpoint.microsoft.com) and open **Endpoint Security**.

2. Go to **Attack Surface Reduction** \> **Policy**.

3. Select **Platform**, choose **Windows 10, Windows 11, and Windows Server**, and select the profile **Attack Surface Reduction rules** \> **Create**.

4. Name the policy and add a description. Select **Next**.

5. Scroll down to the bottom, select the **Enable Controlled Folder Access** drop-down, and choose **Enable**.

6. Select **Controlled Folder Access Protected Folders** and add the folders that need to be protected.

7. Select **Controlled Folder Access Allowed Applications** and add the apps that have access to protected folders.

8. Select **Exclude files and paths from attack surface reduction rules** and add the files and paths that need to be excluded from attack surface reduction rules.

9. Select the profile **Assignments**, assign to **All Users & All Devices**, and select **Save**.

10. Select **Next** to save each open blade and then **Create**.

    > [!NOTE]
    > Wildcards are supported for applications, but not for folders. Subfolders are not protected. Allowed apps will continue to trigger events until they are restarted.

## Mobile Device Management (MDM)

Use the [./Vendor/MSFT/Policy/Config/ControlledFolderAccessProtectedFolders](/windows/client-management/mdm/policy-csp-defender) configuration service provider (CSP) to allow apps to make changes to protected folders.

## Microsoft Configuration Manager

1. In Microsoft Configuration Manager, go to **Assets and Compliance** \> **Endpoint Protection** \> **Windows Defender Exploit Guard**.

2. Select **Home** \> **Create Exploit Guard Policy**.

3. Enter a name and a description, select **Controlled folder access**, and select **Next**.

4. Choose whether block or audit changes, allow other apps, or add other folders, and select **Next**.

   > [!NOTE]
   > Wildcard is supported for applications, but not for folders. Subfolders are not protected. Allowed apps will continue to trigger events until they are restarted.

5. Review the settings and select **Next** to create the policy.

6. After the policy is created, **Close**.

## Group Policy

1. On your Group Policy management device, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Controlled folder access**.

4. Double-click the **Configure Controlled folder access** setting and set the option to **Enabled**. In the options section you must specify one of the following options:
   - **Enable** - Malicious and suspicious apps won't be allowed to make changes to files in protected folders. A notification will be provided in the Windows event log.
   - **Disable (Default)** - The Controlled folder access feature won't work. All apps can make changes to files in protected folders.
   - **Audit Mode** - Changes will be allowed if a malicious or suspicious app attempts to make a change to a file in a protected folder. However, it will be recorded in the Windows event log where you can assess the impact on your organization.
   - **Block disk modification only** - Attempts by untrusted apps to write to disk sectors will be logged in Windows Event log. These logs can be found in **Applications and Services Logs** \> Microsoft \> Windows \> Windows Defender \> Operational \> ID 1123.
   - **Audit disk modification only** - Only attempts to write to protected disk sectors will be recorded in the Windows event log (under **Applications and Services Logs** \> **Microsoft** \> **Windows** \> **Windows Defender** \> **Operational** \> **ID 1124**). Attempts to modify or delete files in protected folders won't be recorded.

    :::image type="content" source="../../media/cfa-gp-enable.png" alt-text="The group policy option Enabled and Audit Mode selected" lightbox="../../media/cfa-gp-enable.png":::

> [!IMPORTANT]
> To fully enable controlled folder access, you must set the Group Policy option to **Enabled** and select **Block** in the options drop-down menu.

## PowerShell

1. Type **powershell** in the Start menu, right-click **Windows PowerShell** and select **Run as administrator**.

2. Enter the following cmdlet:

    ```PowerShell
    Set-MpPreference -EnableControlledFolderAccess Enabled
    ```

You can enable the feature in audit mode by specifying `AuditMode` instead of `Enabled`.

Use `Disabled` to turn off the feature.

## See also

- [Protect important folders with controlled folder access](controlled-folders.md)
- [Customize controlled folder access](customize-controlled-folders.md)
- [Evaluate Microsoft Defender for Endpoint](evaluate-mde.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
