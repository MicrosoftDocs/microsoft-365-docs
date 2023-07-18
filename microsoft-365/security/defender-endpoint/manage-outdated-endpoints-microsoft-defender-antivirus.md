---
title: Apply Microsoft Defender Antivirus protection updates to out of date endpoints
description: Define when and how updates should be applied for endpoints that haven't updated in a while.
keywords: updates, protection, out of date, outdated, old, catch-up
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier3
search.appverid: met150
ms.date: 04/08/2021
---

# Manage Microsoft Defender Antivirus updates and scans for endpoints that are out of date

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**

- Windows

With Microsoft Defender Antivirus, your security team can define how long an endpoint can avoid an update or how many scans it can miss before it's required to receive the update and run a scan. This capability is especially useful in environments where devices aren't often connected to a corporate or external network, or for devices that aren't used on a daily basis.

For example, an employee who uses a particular computer takes three days off of work, and doesn't sign on their computer during that time. When the employee returns to work and signs into their computer, Microsoft Defender Antivirus will immediately check and download the latest protection updates, and then run a scan.

## Set up catch-up protection updates for endpoints that haven't updated for a while

If Microsoft Defender Antivirus didn't download protection updates for a specified period, you can set it up to automatically check and download the latest update the next time someone signs in on an endpoint. This configuration is useful if you have [globally disabled automatic update downloads on startup](manage-event-based-updates-microsoft-defender-antivirus.md).

You can use one of several methods to set up catch-up protection updates:

- [Configuration Manager](#use-configuration-manager-to-configure-catch-up-protection-updates)
- [Group Policy](#use-group-policy-to-enable-and-configure-the-catch-up-update-feature)
- [PowerShell cmdlets](#use-powershell-cmdlets-to-configure-catch-up-protection-updates)
- [Windows Management Instruction (WMI)](#use-windows-management-instruction-wmi-to-configure-catch-up-protection-updates)

### Use Configuration Manager to configure catch-up protection updates

1. On your Microsoft Configuration Manager console, open the antimalware policy you want to change (select **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** \> **Endpoint Protection** \> **Antimalware Policies**)

2. Go to the **Security intelligence updates** section and configure the following settings:

    - Set **Force a security intelligence update if the client computer is offline for more than two consecutive scheduled updates** to **Yes**.
    - For the  **If Configuration Manager is used as a source for security intelligence updates...**, specify the hours before which the protection updates delivered by Configuration Manager should be considered out of date. This setting causes the next update location to be used, based on the defined [fallback source order](manage-protection-updates-microsoft-defender-antivirus.md#fallback-order).

3. Select **OK**.

4. [Deploy the updated policy as usual](/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

### Use Group Policy to enable and configure the catch-up update feature

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and then select **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Select **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Microsoft Defender Antivirus > Signature Updates**.

5. Double-click the **Define the number of days after which a catch-up security intelligence update is required** setting and set the option to **Enabled**. Enter the number of days after which you want Microsoft Defender Antivirus to check for and download the latest protection update.

6. Select **OK**.

### Use PowerShell cmdlets to configure catch-up protection updates

Use the following cmdlet:

```PowerShell
Set-MpPreference -SignatureUpdateCatchupInterval
```

For more information about using PowerShell with Microsoft Defender Antivirus, see the following articles:

- [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md)
- [Defender Antivirus cmdlets](/powershell/module/defender/)

### Use Windows Management Instruction (WMI) to configure catch-up protection updates

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
SignatureUpdateCatchupInterval
```

See the following article for more information and allowed parameters:

- [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

## Set the number of days before protection is reported as out of date

You can also specify the number of days after which Microsoft Defender Antivirus protection is considered old or out of date. After the specified number of days, the client will report itself as "out of date" and will show an error to the endpoint user. When an endpoint is considered out of date, Microsoft Defender Antivirus might attempt to download an update from other sources (based on the defined [fallback source order](manage-protection-updates-microsoft-defender-antivirus.md#fallback-order)).

You can use Group Policy to specify the number of days after which endpoint protection is considered to be out of date.

### Use Group Policy to specify the number of days before protection is considered out of date

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and then select **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Select **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Microsoft Defender Antivirus > Signature Updates** and configure the following settings:

    1. Double-click **Define the number of days before spyware definitions are considered out of date** and set the option to **Enabled**. Enter the number of days after which you want Microsoft Defender Antivirus to consider spyware Security intelligence to be out of date.

    2. Select **OK**.

    3. Double-click **Define the number of days before virus definitions are considered out of date** and set the option to **Enabled**. Enter the number of days after which you want Microsoft Defender Antivirus to consider virus Security intelligence to be out of date.

    4. Select **OK**.

## Set up catch-up scans for endpoints that have not been scanned for a while

You can set the number of consecutive scheduled scans that can be missed before Microsoft Defender Antivirus will force a scan.

The process for enabling this feature is:

1. Set up at least one scheduled scan (see the [Scheduled scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md) article).

2. Enable the catch-up scan feature.

3. Define the number of scans that can be skipped before a catch-up scan occurs.

This feature can be enabled for both full and quick scans. 

> [!TIP]
> We recommend using quick scans for most situations. To learn more, see [Quick scan, full scan, and custom scan](schedule-antivirus-scans.md#comparing-the-quick-scan-full-scan-and-custom-scan). 

You can use one of several methods to set up catch-up scans:

- [Group Policy](#use-group-policy-to-enable-and-configure-the-catch-up-scan-feature)
- [Use PowerShell cmdlets to configure catch-up scans](#use-powershell-cmdlets-to-configure-catch-up-scans)
- [Windows Management Instruction (WMI)](#use-windows-management-instruction-wmi-to-configure-catch-up-scans)
- [Configuration Manager](#use-configuration-manager-to-configure-catch-up-scans)

### Use Group Policy to enable and configure the catch-up scan feature

1. Ensure you have set up at least one scheduled scan.

2. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.

3. In the **Group Policy Management Editor** go to **Computer configuration**.

4. Select **Policies** then **Administrative templates**.

5. Expand the tree to **Windows components > Microsoft Defender Antivirus > Scan** and configure the following settings:

    - If you have set up scheduled quick scans, double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**.
    - If you have set up scheduled full scans, double-click the **Turn on catch-up full scan** setting and set the option to **Enabled**. Select **OK**.
    - Double-click the **Define the number of days after which a catch-up scan is forced** setting and set the option to **Enabled**.
    - Enter the number of scans that can be missed before a scan will be automatically run when the user next signs in on the endpoint. The type of scan that is run is determined by the **Specify the scan type to use for a scheduled scan** (see the [Schedule scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md) article). Select **OK**.

> [!NOTE]
> The Group Policy setting title refers to the number of days. The setting, however, is applied to the number of scans (not days) before the catch-up scan will be run.

### Use PowerShell cmdlets to configure catch-up scans

Use the following cmdlets:

```PowerShell
Set-MpPreference -DisableCatchupFullScan
Set-MpPreference -DisableCatchupQuickScan

```

For more information about using PowerShell with Microsoft Defender Antivirus, see the following articles:

- [Use PowerShell cmdlets to manage Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) 
- [Defender Antivirus cmdlets](/powershell/module/defender/)

### Use Windows Management Instruction (WMI) to configure catch-up scans

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
DisableCatchupFullScan
DisableCatchupQuickScan
```

See the following article for more information and allowed parameters:

- [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

### Use Configuration Manager to configure catch-up scans

1. On your Microsoft Configuration Manager console, open the antimalware policy you want to change (select **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** \> **Endpoint Protection** \> **Antimalware Policies**)

2. Go to the **Scheduled scans** section and **Force a scan of the selected scan type if client computer is offline...** to **Yes**.

3. Select **OK**.

4. [Deploy the updated policy as usual](/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## Related articles

- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)
- [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md)
- [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md)
- [Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)
- [Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
