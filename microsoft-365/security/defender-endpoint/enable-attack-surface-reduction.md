---
title: Enable attack surface reduction rules
description: Enable attack surface reduction (ASR) rules to protect your devices from attacks that use macros, scripts, and common injection techniques.
keywords: Attack surface reduction, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention, enable, turn on
ms.service: microsoft-365-security
ms.localizationpriority: medium
audience: ITPro
author: Dansimp
ms.author: dansimp
ms.reviewer: oogunrinde
manager: dansimp
ms.subservice: mde
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
search.appverid: met150
ms.date: 04/20/2023
---

# Enable attack surface reduction rules

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**
- Windows

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

[Attack surface reduction rules](attack-surface-reduction.md) (ASR rules) help prevent actions that malware often abuses to compromise devices and networks.

## Requirements

Attack surface reduction features across Windows versions

You can set attack surface reduction rules for devices that are running any of the following editions and versions of Windows:

- [Windows 11 Pro](/windows/whats-new/windows-11-overview)
- [Windows 11 Enterprise](https://www.microsoft.com/microsoft-365/windows/windows-11-enterprise)
- Windows 10 Pro, [version 1709](/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows 10 Enterprise, [version 1709](/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows Server, [version 1803 (Semi-Annual Channel)](/windows-server/get-started/whats-new-in-windows-server-1803) or later
- [Windows Server 2012 R2](/windows/win32/srvnodes/what-s-new-for-windows-server-2012-r2)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Windows Server 2022](/windows-server/get-started/whats-new-in-windows-server-2022)

To use the entire feature-set of attack surface reduction rules, you need:

- Microsoft Defender Antivirus as primary AV (real-time protection on)
- [Cloud-Delivery Protection](/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus) on (some rules require that)
- Windows 10 Enterprise E5 or E3 License

Although attack surface reduction rules don't require a [Windows E5 license](/windows/deployment/deploy-enterprise-licenses), with a Windows E5 license, you get advanced management capabilities including monitoring, analytics, and workflows available in Defender for Endpoint, as well as reporting and configuration capabilities in the [Microsoft 365 Defender](https://go.microsoft.com/fwlink/p/?linkid=2077139) portal. These advanced capabilities aren't available with an E3 license, but you can still use Event Viewer to review attack surface reduction rule events.

Each ASR rule contains one of four settings:

- **Not configured** | **Disabled**: Disable the ASR rule
- **Block**: Enable the ASR rule
- **Audit**: Evaluate how the ASR rule would impact your organization if enabled
- **Warn**: Enable the ASR rule but allow the end user to bypass the block

We recommend using ASR rules with a Windows E5 license (or similar licensing SKU) to take advantage of the advanced monitoring and reporting capabilities available in [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) (Defender for Endpoint). However, if you have another license, such as Windows Professional or Windows E3 that doesn't include advanced monitoring and reporting capabilities, you can develop your own monitoring and reporting tools on top of the events that are generated at each endpoint when ASR rules are triggered (for example, Event Forwarding).

> [!TIP]
> To learn more about Windows licensing, see [Windows 10 Licensing](https://www.microsoft.com/licensing/product-licensing/windows10?activetab=windows10-pivot:primaryr5) and get the [Volume Licensing guide for Windows 10](https://download.microsoft.com/download/2/D/1/2D14FE17-66C2-4D4C-AF73-E122930B60F6/Windows-10-Volume-Licensing-Guide.pdf).

You can enable attack surface reduction rules by using any of these methods:

- [Microsoft Intune](#intune)
- [Mobile Device Management (MDM)](#mdm)
- [Microsoft Configuration Manager](#microsoft-configuration-manager)
- [Group Policy](#group-policy)
- [PowerShell](#powershell)

Enterprise-level management such as Intune or Microsoft Configuration Manager is recommended. Enterprise-level management overwrites any conflicting Group Policy or PowerShell settings on startup.

## Exclude files and folders from ASR rules

You can exclude files and folders from being evaluated by most attack surface reduction rules. This means that even if an ASR rule determines the file or folder contains malicious behavior, it doesn't block the file from running.

> [!IMPORTANT]
> Excluding files or folders can severely reduce the protection provided by ASR rules. Excluded files will be allowed to run, and no report or event will be recorded.
> If ASR rules are detecting files that you believe shouldn't be detected, you should [use audit mode first to test the rule](attack-surface-reduction-rules-deployment-test.md#step-1-test-asr-rules-using-audit).

An exclusion is applied only when the excluded application or service starts. For example, if you add an exclusion for an update service that is already running, the update service continues to trigger events until the service is stopped and restarted.

When adding exclusions, keep in mind:

  * Exclusions are typically based on individual files or folders (using folder paths or the full path of the file to be excluded).
  * Exclusion paths can use environment variables and wildcards. See [Use wildcards in the file name and folder path or extension exclusion lists](configure-extension-file-exclusions-microsoft-defender-antivirus.md#use-wildcards-in-the-file-name-and-folder-path-or-extension-exclusion-lists)
  * When deployed through Group Policy or PowerShell, exclusions apply to all ASR rules. Using Intune, it is possible to configure an exclusion for a specific ASR rule. See [Configure ASR rules per-rule exclusions](attack-surface-reduction-rules-deployment-test.md#configure-asr-rules-per-rule-exclusions)
  * Exclusions can be added based on certificate and file hashes, by allowing specified Defender for Endpoint file and certificate indicators. See [Manage indicators](manage-indicators.md).

## Policy Conflict

1. If a conflicting policy is applied via MDM and GP, the setting applied from MDM takes precedence.

2. Attack surface reduction rules for managed devices now support behavior for merger of settings from different policies, to create a superset of policy for each device. Only the settings that aren't in conflict are merged, while those that are in conflict aren't added to the superset of rules. Previously, if two policies included conflicts for a single setting, both policies were flagged as being in conflict, and no settings from either profile would be deployed. Attack surface reduction rule merge behavior is as follows:
   - Attack surface reduction rules from the following profiles are evaluated for each device to which the rules apply:
     - Devices > Configuration profiles > Endpoint protection profile > **Microsoft Defender Exploit Guard** > [Attack Surface Reduction](/mem/intune/protect/endpoint-protection-windows-10#attack-surface-reduction-rules).
     - Endpoint security > **Attack surface reduction policy** > [Attack surface reduction rules](/mem/intune/protect/endpoint-security-asr-policy#devices-managed-by-intune).
     - Endpoint security > Security baselines > **Microsoft Defender ATP Baseline** > [Attack Surface Reduction Rules](/mem/intune/protect/security-baseline-settings-defender-atp#attack-surface-reduction-rules).
   - Settings that don't have conflicts are added to a superset of policy for the device.
   - When two or more policies have conflicting settings, the conflicting settings aren't added to the combined policy, while settings that don't conflict are added to the superset policy that applies to a device.
   - Only the configurations for conflicting settings are held back.

## Configuration methods

This section provides configuration details for the following configuration methods:

- [Intune](#intune)
- [Custom profile in Intune](#custom-profile-in-intune)
- [MDM](#mdm)
- [Microsoft Configuration Manager](#microsoft-configuration-manager)
- [Group Policy](#group-policy)
- [PowerShell](#powershell)

The following procedures for enabling ASR rules include instructions for how to exclude files and folders.

### Intune

#### Device Configuration Profiles

1. Select **Device configuration** \> **Profiles**. Choose an existing endpoint protection profile or create a new one. To create a new one, select **Create profile** and enter information for this profile. For **Profile type**, select **Endpoint protection**. If you've chosen an existing profile, select **Properties** and then select **Settings**.

2. In the **Endpoint protection** pane, select **Windows Defender Exploit Guard**, then select **Attack Surface Reduction**. Select the desired setting for each ASR rule.

3. Under **Attack Surface Reduction exceptions**, enter individual files and folders. You can also select **Import** to import a CSV file that contains files and folders to exclude from ASR rules. Each line in the CSV file should be formatted as follows:

   `C:\folder`, `%ProgramFiles%\folder\file`, `C:\path`

4. Select **OK** on the three configuration panes. Then select **Create** if you're creating a new endpoint protection file or **Save** if you're editing an existing one.

#### Endpoint security policy

1. Select **Endpoint Security** \> **Attack surface reduction**. Choose an existing ASR rule or create a new one. To create a new one, select **Create Policy** and enter information for this profile. For **Profile type**, select **Attack surface reduction rules**. If you've chosen an existing profile, select **Properties** and then select **Settings**.

2. In the **Configuration settings** pane, select **Attack Surface Reduction** and then select the desired setting for each ASR rule.

3. Under **List of additional folders that need to be protected**, **List of apps that have access to protected folders**, and **Exclude files and paths from attack surface reduction rules**, enter individual files and folders. You can also select **Import** to import a CSV file that contains files and folders to exclude from ASR rules. Each line in the CSV file should be formatted as follows:

   `C:\folder`, `%ProgramFiles%\folder\file`, `C:\path`

4. Select **Next** on the three configuration panes, then select **Create** if you're creating a new policy or **Save** if you're editing an existing policy.

### Custom profile in Intune

You can use Microsoft Intune OMA-URI to configure custom ASR rules. The following procedure uses the rule [Block abuse of exploited vulnerable signed drivers](attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers) for the example.

1. Open the Microsoft Intune admin center. In the **Home** menu, click  **Devices**, select **Configuration profiles**, and then click **Create profile**.

    :::image type="content" source="images/mem01-create-profile.png" alt-text="The Create profile page in the Microsoft Intune admin center portal." lightbox="images/mem01-create-profile.png":::

2. In **Create a profile**, in the following two drop-down lists, select the following:

   - In **Platform**, select **Windows 10 and later**
   - In **Profile type**, select **Templates**
   - If ASR rules are already set through Endpoint security, in **Profile type**, select **Settings Catalog**.

   Select **Custom**, and then select **Create**.

    :::image type="content" source="images/mem02-profile-attributes.png" alt-text="The rule profile attributes in the Microsoft Intune admin center portal." lightbox="images/mem02-profile-attributes.png":::

3. The Custom template tool opens to step **1 Basics**. In **1 Basics**, in **Name**, type a name for your template, and in **Description** you can type a description (optional).

    :::image type="content" source="images/mem03-1-basics.png" alt-text="The basic attributes in the Microsoft Intune admin center portal" lightbox="images/mem03-1-basics.png":::

4. Click **Next**. Step **2 Configuration settings** opens. For OMA-URI Settings, click **Add**. Two options now appear: **Add** and **Export**.

    :::image type="content" source="images/mem04-2-configuration-settings.png" alt-text="The configuration settings in the Microsoft Intune admin center portal." lightbox="images/mem04-2-configuration-settings.png":::

5. Click **Add** again. The **Add Row OMA-URI Settings** opens. In **Add Row**, do the following:

   - In **Name**, type a name for the rule.
   - In **Description**, type a brief description.
   - In **OMA-URI**, type or paste the specific OMA-URI link for the rule that you're adding. Refer to the MDM section in this article for the OMA-URI to use for this example rule. For attack surface reduction rule GUIDS, see [Per rule descriptions](attack-surface-reduction-rules-reference.md#per-rule-descriptions) in the article: Attack surface reduction rules.
   - In **Data type**, select **String**.
   - In **Value**, type or paste the GUID value, the \= sign and the State value with no spaces (_GUID=StateValue_). Where:

     - 0: Disable (Disable the ASR rule)
     - 1: Block (Enable the ASR rule)
     - 2: Audit (Evaluate how the ASR rule would impact your organization if enabled)
     - 6: Warn (Enable the ASR rule but allow the end-user to bypass the block)

     :::image type="content" source="images/mem05-add-row-oma-uri.png" alt-text="The OMA URI configuration in the Microsoft Intune admin center portal" lightbox="images/mem05-add-row-oma-uri.png":::

6. Select **Save**. **Add Row** closes. In **Custom**, select **Next**. In step **3 Scope tags**, scope tags are optional. Do one of the following:

   - Select **Select Scope tags**, select the scope tag (optional) and then select **Next**.
   - Or select **Next**

7. In step **4 Assignments**, in **Included Groups**, for the groups that you want this rule to apply, select from the following options:

   - **Add groups**
   - **Add all users**
   - **Add all devices**

     :::image type="content" source="images/mem06-4-assignments.png" alt-text="The assignments in the Microsoft Intune admin center portal" lightbox="images/mem06-4-assignments.png":::

8. In **Excluded groups**, select any groups that you want to exclude from this rule, and then select **Next**.

9. In step **5 Applicability Rules** for the following settings, do the following:

   - In **Rule**, select either **Assign profile if**, or **Don't assign profile if**
   - In **Property**, select the property to which you want this rule to apply
   - In **Value**, enter the applicable value or value range

     :::image type="content" source="images/mem07-5-applicability-rules.png" alt-text="The applicability rules in the Microsoft Intune admin center portal" lightbox="images/mem07-5-applicability-rules.png":::

10. Select **Next**. In step **6 Review + create**, review the settings and information you've selected and entered, and then select **Create**.

    :::image type="content" source="images/mem08-6-review-create.png" alt-text="The Review and create option in the Microsoft Intune admin center portal" lightbox="images/mem08-6-review-create.png":::

    > [!NOTE]
    > Rules are active and live within minutes.

> [!NOTE]
> Conflict handling:
>
> If you assign a device two different ASR policies, the way conflict is handled is rules that are assigned different states, there is no conflict management in place, and the result is an error.
>
> Non-conflicting rules will not result in an error, and the rule will be applied correctly. The result is that the first rule is applied, and subsequent non-conflicting rules are merged into the policy.

### MDM

Use the [./Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionRules](/windows/client-management/mdm/policy-csp-defender#defender-attacksurfacereductionrules) configuration service provider (CSP) to individually enable and set the mode for each rule.

The following is a sample for reference, using GUID values for [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md).

`OMA-URI path: ./Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionRules`

`Value: 75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84=2|3b576869-a4ec-4529-8536-b80a7769e899=1|d4f940ab-401b-4efc-aadc-ad5f3c50688a=2|d3e037e1-3eb8-44c8-a917-57927947596d=1|5beb7efe-fd9a-4556-801d-275e5ffc04cc=0|be9ba2d9-53ea-4cdc-84e5-9b1eeee46550=1`

The values to enable (Block), disable, warn, or enable in audit mode are:

- 0: Disable (Disable the ASR rule)
- 1: Block (Enable the ASR rule)
- 2: Audit (Evaluate how the ASR rule would impact your organization if enabled)
- 6: Warn  (Enable the ASR rule but allow the end-user to bypass the block). Warn mode is available for most of the ASR rules.

Use the [./Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionOnlyExclusions](/windows/client-management/mdm/policy-csp-defender#defender-attacksurfacereductiononlyexclusions) configuration service provider (CSP) to add exclusions.

Example:

`OMA-URI path: ./Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionOnlyExclusions`

`Value: c:\path|e:\path|c:\Exclusions.exe`

> [!NOTE]
> Be sure to enter OMA-URI values without spaces.

### Microsoft Configuration Manager

1. In Microsoft Configuration Manager, go to **Assets and Compliance** \> **Endpoint Protection** \> **Windows Defender Exploit Guard**.

2. Select **Home** \> **Create Exploit Guard Policy**.

3. Enter a name and a description, select **Attack Surface Reduction**, and select **Next**.

4. Choose which rules will block or audit actions and select **Next**.

5. Review the settings and select **Next** to create the policy.

6. After the policy is created, select **Close**.

> [!WARNING]
> There is a known issue with the applicability of Attack Surface Reduction on Server OS versions which is marked as compliant without any actual enforcement. Currently, there is no ETA for when this will be fixed.

### Group Policy

> [!WARNING]
> If you manage your computers and devices with Intune, Configuration Manager, or other enterprise-level management platform, the management software will overwrite any conflicting Group Policy settings on startup.

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Microsoft Defender Exploit Guard** \> **Attack surface reduction**.

4. Select **Configure Attack surface reduction rules** and select **Enabled**. You can then set the individual state for each rule in the options section. Select **Show...** and enter the rule ID in the **Value name** column and your chosen state in the **Value** column as follows:

   - 0: Disable (Disable the ASR rule)
   - 1: Block (Enable the ASR rule)
   - 2: Audit (Evaluate how the ASR rule would impact your organization if enabled)
   - 6: Warn  (Enable the ASR rule but allow the end-user to bypass the block)

   :::image type="content" source="images/asr-rules-gp.png" alt-text="ASR rules in Group Policy" lightbox="images/asr-rules-gp.png":::

5. To exclude files and folders from ASR rules, select the **Exclude files and paths from Attack surface reduction rules** setting and set the option to **Enabled**. Select **Show** and enter each file or folder in the **Value name** column. Enter **0** in the **Value** column for each item.

   > [!WARNING]
   > Do not use quotes as they are not supported for either the **Value name** column or the **Value** column.
   > The rule ID should not have any leading or trailing spaces.

### PowerShell

> [!WARNING]
> If you manage your computers and devices with Intune, Configuration Manager, or another enterprise-level management platform, the management software will overwrite any conflicting PowerShell settings on startup. To allow users to define the value using PowerShell, use the "User Defined" option for the rule in the management platform.
> "User Defined" allows a local admin user to configure the rule.
> The User Defined option setting is shown in the following figure.

:::image type="content" source="images/asr-user-defined.png" alt-text="The Enable option for credential security" lightbox="images/asr-user-defined.png":::

1. Type **powershell** in the Start menu, right-click **Windows PowerShell** and select **Run as administrator**.

2. Type one of the following cmdlets. (For more information, such as rule ID, refer to [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md).)

    ```PowerShell
    Set-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Enabled
    ```

    To enable ASR rules in audit mode, use the following cmdlet:

    ```PowerShell
    Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions AuditMode
    ```

    To enable ASR rules in warn mode, use the following cmdlet:

    ```PowerShell
    Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Warn
    ```

    To enable ASR Block abuse of exploited vulnerable signed drivers, use the following cmdlet:

   ```PowerShell
   Add-MpPreference -AttackSurfaceReductionRules_Ids 56a863a9-875e-4185-98a7-b882c64b5ce5 -AttackSurfaceReductionRules_Actions Enabled
   ```

    To turn off ASR rules, use the following cmdlet:

    ```PowerShell
    Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions Disabled
    ```

    > [!IMPORTANT]
    > You must specify the state individually for each rule, but you can combine rules and states in a comma-separated list.
    >
    > In the following example, the first two rules will be enabled, the third rule will be disabled, and the fourth rule will be enabled in audit mode:
    >
    > ```PowerShell
    > Set-MpPreference -AttackSurfaceReductionRules_Ids <rule ID 1>,<rule ID 2>,<rule ID 3>,<rule ID 4> -AttackSurfaceReductionRules_Actions Enabled, Enabled, Disabled, AuditMode
    > ```

    You can also use the `Add-MpPreference` PowerShell verb to add new rules to the existing list.

    > [!WARNING]
    > `Set-MpPreference` will always overwrite the existing set of rules. If you want to add to the existing set, use `Add-MpPreference` instead.
    > You can obtain a list of rules and their current state by using `Get-MpPreference`.

3. To exclude files and folders from ASR rules, use the following cmdlet:

    ```PowerShell
    Add-MpPreference -AttackSurfaceReductionOnlyExclusions "<fully qualified path or resource>"
    ```

    Continue to use `Add-MpPreference -AttackSurfaceReductionOnlyExclusions` to add more files and folders to the list.

    > [!IMPORTANT]
    > Use `Add-MpPreference` to append or add apps to the list. Using the `Set-MpPreference` cmdlet will overwrite the existing list.

## Related articles

- [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)
- [Evaluate attack surface reduction](evaluate-attack-surface-reduction.md)
- [Attack surface reduction FAQ](attack-surface-reduction.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
