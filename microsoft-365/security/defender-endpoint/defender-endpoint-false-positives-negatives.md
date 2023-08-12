---
title: Address false positives/negatives in Microsoft Defender for Endpoint
description: Learn how to handle false positives or false negatives in Microsoft Defender for Endpoint.
ms.service: microsoft-365-security
ms.subservice: mde
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.date: 07/18/2023
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- m365initiative-defender-endpoint
- m365solution-overview
- m365solution-fpfn
- highpri
- tier1
ms.topic: how-to
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs, yonghree, jcedola
ms.custom: 
- FPFN
- admindeeplinkDEFENDER
search.appverid: met150
---

# Address false positives/negatives in Microsoft Defender for Endpoint

**Applies to:**

- [Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

In endpoint protection solutions, a false positive is an entity, such as a file or a process that was detected and identified as malicious even though the entity isn't actually a threat. A false negative is an entity that wasn't detected as a threat, even though it actually is malicious. False positives/negatives can occur with any threat protection solution, including [Defender for Endpoint](microsoft-defender-endpoint.md).

:::image type="content" source="images/false-positives-overview.png" alt-text="The definition of false positive and negatives in the Microsoft 365 Defender portal" lightbox="images/false-positives-overview.png":::

Fortunately, steps can be taken to address and reduce these kinds of issues. If you're seeing false positives/negatives occurring with Defender for Endpoint, your security operations can take steps to address them by using the following process:

1. [Review and classify alerts](#part-1-review-and-classify-alerts)
2. [Review remediation actions that were taken](#part-2-review-remediation-actions)
3. [Review and define exclusions](#part-3-review-or-define-exclusions)
4. [Submit an entity for analysis](#part-4-submit-a-file-for-analysis)
5. [Review and adjust your threat protection settings](#part-5-review-and-adjust-your-threat-protection-settings)

You can get help if you still have issues with false positives/negatives after performing the tasks described in this article. See [Still need help?](#still-need-help)

:::image type="content" source="images/false-positives-step-diagram.png" alt-text="The steps to address false positives and negatives" lightbox="images/false-positives-step-diagram.png":::

> [!NOTE]
> This article is intended as guidance for security operators and security administrators who are using [Defender for Endpoint](microsoft-defender-endpoint.md).

## Part 1: Review and classify alerts

If you see an [alert](alerts.md) that arose because something's detected as malicious or suspicious and it shouldn't be, you can suppress the alert for that entity. You can also suppress alerts that aren't necessarily false positives, but are unimportant. We recommend that you also classify alerts.

Managing your alerts and classifying true/false positives helps to train your threat protection solution and can reduce the number of false positives or false negatives over time. Taking these steps also helps reduce noise in your queue so that your security team can focus on higher priority work items.

### Determine whether an alert is accurate

Before you classify or suppress an alert, determine whether the alert is accurate, a false positive, or benign.

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), in the navigation pane, choose **Incidents & alerts** and then select **Alerts**.

2. Select an alert to view more details about it. (To get help with this task, see [Review alerts in Defender for Endpoint](review-alerts.md).)

3. Depending on the alert status, take the steps described in the following table:

   |Alert status|What to do|
   |---|---|
   |The alert is accurate|Assign the alert, and then [investigate it](investigate-alerts.md) further.|
   |The alert is a false positive|1. [Classify the alert](#classify-an-alert) as a false positive.<br/><br/>2. [Suppress the alert](#suppress-an-alert).<br/><br/>3. [Create an indicator](#indicators-for-defender-for-endpoint) for Microsoft Defender for Endpoint.<br/><br/>4. [Submit a file to Microsoft for analysis](#part-4-submit-a-file-for-analysis).|
   |The alert is accurate, but benign (unimportant)|[Classify the alert](#classify-an-alert) as a true positive, and then [suppress the alert](#suppress-an-alert).|

### Classify an alert

Alerts can be classified as false positives or true positives in the Microsoft 365 Defender portal. Classifying alerts helps train Defender for Endpoint so that over time, you'll see more true alerts and fewer false alerts.

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), in the navigation pane, choose **Incidents & alerts**, select **Alerts** and then select an alert.

2. For the selected alert, select **Manage alert**. A flyout pane opens.

3. In the **Manage alert** section, in the **Classification** field, classify the alert (True positive, Informational, expected activity, or False positive).

> [!TIP]
> For more information about suppressing alerts, see [Manage Defender for Endpoint alerts](/microsoft-365/security/defender-endpoint/manage-alerts). And, if your organization is using a security information and event management (SIEM) server, make sure to define a suppression rule there, too.

### Suppress an alert

If you have alerts that are either false positives or that are true positives but for unimportant events, you can suppress those alerts in Microsoft 365 Defender. Suppressing alerts helps reduce noise in your queue.

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), in the navigation pane, choose **Incidents & alerts** and then select **Alerts**.

2. Select an alert that you want to suppress to open its **Details** pane.

3. In the **Details** pane, choose the ellipsis (**...**), and then **Create suppression rule**.

4. Specify all the settings for your suppression rule, and then choose **Save**.

> [!TIP]
> Need help with suppression rules? See [Suppress an alert and create a new suppression rule](/microsoft-365/security/defender-endpoint/manage-alerts#suppress-an-alert-and-create-a-new-suppression-rule).

## Part 2: Review remediation actions

[Remediation actions](manage-auto-investigation.md#remediation-actions), such as sending a file to quarantine or stopping a process, are taken on entities (such as files) that are detected as threats. Several types of remediation actions occur automatically through automated investigation and Microsoft Defender Antivirus:

- Quarantine a file
- Remove a registry key
- Kill a process
- Stop a service
- Disable a driver
- Remove a scheduled task

Other actions, such as starting an antivirus scan or collecting an investigation package, occur manually or through [Live Response](live-response.md). Actions taken through Live Response can't be undone.

After you've reviewed your alerts, your next step is to [review remediation actions](manage-auto-investigation.md). If any actions were taken as a result of false positives, you can undo most kinds of remediation actions. Specifically, you can:

- [Restore a quarantined file from the Action Center](#restore-a-quarantined-file-from-the-action-center)
- [Undo multiple actions at one time](#undo-multiple-actions-at-one-time)
- [Remove a file from quarantine across multiple devices](#remove-a-file-from-quarantine-across-multiple-devices). and
- [Restore file from quarantine](#restore-file-from-quarantine)

When you're done reviewing and undoing actions that were taken as a result of false positives, proceed to [review or define exclusions](#part-3-review-or-define-exclusions).

### Review completed actions

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), select **Actions & submissions** and then select **Action center**.

2. Select the **History** tab to view a list of actions that were taken.

3. Select an item to view more details about the remediation action that was taken.

### Restore a quarantined file from the Action Center

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), select **Actions & submissions** and then select **Action center**.

2. On the **History** tab, select an action that you want to undo.

3. In the flyout pane, select **Undo**. If the action can't be undone with this method, you won't see an **Undo** button. (To learn more, see [Undo completed actions](manage-auto-investigation.md#undo-completed-actions).)

### Undo multiple actions at one time

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), select **Actions & submissions** and then select **Action center**.

2. On the **History** tab, select the actions that you want to undo.

3. In the flyout pane on the right side of the screen, select **Undo**.

### Remove a file from quarantine across multiple devices

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/autoir-quarantine-file-1.png" alt-text="The Quarantine file" lightbox="images/autoir-quarantine-file-1.png":::

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), select **Actions & submissions** and then select **Action center**.

2. On the **History** tab, select a file that has the Action type **Quarantine file**.

3. In the pane on the right side of the screen, select **Apply to X more instances of this file**, and then select **Undo**.

### Review quarantined messages

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), in the navigation pane, under **Email & collaboration**, select **Exchange message trace**.

2. Select a message to view details.

### Restore file from quarantine

You can roll back and remove a file from quarantine if you've determined that it's clean after an investigation. Run the following command on each device where the file was quarantined.

1. Open Command Prompt as an administrator on the device:

   1. Go to **Start** and type _cmd_.
   2. Right-click **Command prompt** and select **Run as administrator**.

2. Type the following command, and press **Enter**:

    ```console
    "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Restore -Name EUS:Win32/CustomEnterpriseBlock -All
    ```

    > [!IMPORTANT]
    > In some scenarios, the **ThreatName** may appear as `EUS:Win32/CustomEnterpriseBlock!cl`. Defender for Endpoint will restore all custom blocked files that were quarantined on this device in the last 30 days.
    > A file that was quarantined as a potential network threat might not be recoverable. If a user attempts to restore the file after quarantine, that file might not be accessible. This can be due to the system no longer having network credentials to access the file. Typically, this is a result of a temporary log on to a system or shared folder and the access tokens expired.

3. In the pane on the right side of the screen, select **Apply to X more instances of this file**, and then select **Undo**.

## Part 3: Review or define exclusions

> [!CAUTION]
> Before you define an exclusion, review the detailed information in [Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md). Keep in mind that every exclusion that is defined lowers your level of protection. 

An exclusion is an entity, such as a file or URL, that you specify as an exception to remediation actions. The excluded entity can still get detected, but no remediation actions are taken on that entity. That is, the detected file or process won't be stopped, sent to quarantine, removed, or otherwise changed by Microsoft Defender for Endpoint.

To define exclusions across Microsoft Defender for Endpoint, perform the following tasks:

- [Define exclusions for Microsoft Defender Antivirus](#exclusions-for-microsoft-defender-antivirus)
- [Create "allow" indicators for Microsoft Defender for Endpoint](#indicators-for-defender-for-endpoint)

> [!NOTE]
> Microsoft Defender Antivirus exclusions apply only to antivirus protection, not across other Microsoft Defender for Endpoint capabilities. To exclude files broadly, use exclusions for Microsoft Defender Antivirus and [custom indicators](/microsoft-365/security/defender-endpoint/manage-indicators) for Microsoft Defender for Endpoint.

The procedures in this section describe how to define exclusions and indicators.

### Exclusions for Microsoft Defender Antivirus

In general, you shouldn't need to define exclusions for Microsoft Defender Antivirus. Make sure that you define exclusions sparingly, and that you only include the files, folders, processes, and process-opened files that are resulting in false positives. In addition, make sure to review your defined exclusions regularly. We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) to define or edit your antivirus exclusions; however, you can use other methods, such as [Group Policy](/azure/active-directory-domain-services/manage-group-policy) (see [Manage Microsoft Defender for Endpoint](manage-mde-post-migration.md).

> [!TIP]
> Need help with antivirus exclusions? See [Configure and validate exclusions for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md).

#### Use Intune to manage antivirus exclusions (for existing policies)

1. In the [Microsoft Intune admin center](https://intune.microsoft.com), choose **Endpoint security** \> **Antivirus**, and then select an existing policy. (If you don't have an existing policy, or you want to create a new policy, skip to [Use Intune to create a new antivirus policy with exclusions](#use-intune-to-create-a-new-antivirus-policy-with-exclusions).)

2. Choose **Properties**, and next to **Configuration settings**, choose **Edit**.

3. Expand **Microsoft Defender Antivirus Exclusions** and then specify your exclusions.

   - **Excluded Extensions** are exclusions that you define by file type extension. These extensions apply to any file name that has the defined extension without the file path or folder. Separate each file type in the list must be separated with a `|` character. For example, `lib|obj`. For more information, see [ExcludedExtensions](/windows/client-management/mdm/policy-csp-defender#excludedextensions).
   - **Excluded Paths** are exclusions that you define by their location (path). These types of exclusions are also known as file and folder exclusions. Separate each path in the list with a `|` character. For example, `C:\Example|C:\Example1`. For more information, see [ExcludedPaths](/windows/client-management/mdm/policy-csp-defender#excludedpaths).
   - **Excluded Processes** are exclusions for files that are opened by certain processes. Separate each file type in the list with a `|` character. For example, `C:\Example. exe|C:\Example1.exe`. These exclusions aren't for the actual processes. To exclude processes, you can use file and folder exclusions. For more information, see [ExcludedProcesses](/windows/client-management/mdm/policy-csp-defender#excludedprocesses).

4. Choose **Review + save**, and then choose **Save**.

#### Use Intune to create a new antivirus policy with exclusions

1. In the [Microsoft Intune admin center](https://intune.microsoft.com), choose **Endpoint security** \> **Antivirus** \> **+ Create Policy**.

2. Select a platform (such as **Windows 10, Windows 11, and Windows Server**).

3. For **Profile**, select **Microsoft Defender Antivirus exclusions**, and then choose **Create**.

4. On the **Create profile** step, specify a name and description for the profile, and then choose **Next**.

5. On the **Configuration settings** tab, specify your antivirus exclusions, and then choose **Next**.

   - **Excluded Extensions** are exclusions that you define by file type extension. These extensions apply to any file name that has the defined extension without the file path or folder. Separate each file type in the list with a `|` character. For example, `lib|obj`. For more information, see [ExcludedExtensions](/windows/client-management/mdm/policy-csp-defender#excludedextensions).
   - **Excluded Paths** are exclusions that you define by their location (path). These types of exclusions are also known as file and folder exclusions. Separate each path in the list with a `|` character. For example, `C:\Example|C:\Example1`. For more information, see [ExcludedPaths](/windows/client-management/mdm/policy-csp-defender#excludedpaths).
   - **Excluded Processes** are exclusions for files that are opened by certain processes. Separate each file type in the list with a `|` character. For example, `C:\Example. exe|C:\Example1.exe`. These exclusions aren't for the actual processes. To exclude processes, you can use file and folder exclusions. For more information, see [ExcludedProcesses](/windows/client-management/mdm/policy-csp-defender#excludedprocesses).

6. On the **Scope tags** tab, if you're using scope tags in your organization, specify scope tags for the policy you're creating. (See [Scope tags](/mem/intune/fundamentals/scope-tags).)

7. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign).)

8. On the **Review + create** tab, review the settings, and then choose **Create**.

### Indicators for Defender for Endpoint

[Indicators](/microsoft-365/security/defender-endpoint/manage-indicators) (specifically, indicators of compromise, or IoCs) enable your security operations team to define the detection, prevention, and exclusion of entities. For example, you can specify certain files to be omitted from scans and remediation actions in Microsoft Defender for Endpoint. Or, indicators can be used to generate alerts for certain files, IP addresses, or URLs.

To specify entities as exclusions for Defender for Endpoint, create "allow" indicators for those entities. Such "allow" indicators apply to [next-generation protection](microsoft-defender-antivirus-in-windows-10.md) and [automated investigation & remediation](/microsoft-365/security/defender-endpoint/automated-investigations).

"Allow" indicators can be created for:

- [Files](#indicators-for-files)
- [IP addresses, URLs, and domains](#indicators-for-ip-addresses-urls-or-domains)
- [Application certificates](#indicators-for-application-certificates)

:::image type="content" source="images/false-positives-indicators.png" alt-text="The Indicator types" lightbox="images/false-positives-indicators.png":::

#### Indicators for files

When you [create an "allow" indicator for a file, such as an executable](/microsoft-365/security/defender-endpoint/indicator-file), it helps prevent files that your organization is using from being blocked. Files can include portable executable (PE) files, such as `.exe` and `.dll` files.

Before you create indicators for files, make sure the following requirements are met:

- Microsoft Defender Antivirus is configured with cloud-based protection enabled (see [Manage cloud-based protection](/windows/security/threat-protection/microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus))
- Antimalware client version is 4.18.1901.x or later
- Devices are running Windows 10, version 1703 or later, or Windows 11; Windows Server 2012 R2 and Windows Server 2016 with the [modern unified solution in Defender for Endpoint](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016), or Windows Server 2019, or Windows Server 2022
- The [Block or allow feature is turned on](/microsoft-365/security/defender-endpoint/advanced-features)

#### Indicators for IP addresses, URLs, or domains

When you [create an "allow" indicator for an IP address, URL, or domain](/microsoft-365/security/defender-endpoint/indicator-ip-domain), it helps prevent the sites or IP addresses your organization uses from being blocked.

Before you create indicators for IP addresses, URLs, or domains, make sure the following requirements are met:

- Network protection in Defender for Endpoint is enabled in block mode (see [Enable network protection](/microsoft-365/security/defender-endpoint/enable-network-protection))
- Antimalware client version is 4.18.1906.x or later
- Devices are running Windows 10, version 1709, or later, or Windows 11

Custom network indicators are turned on in the [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender). To learn more, see [Advanced features](/microsoft-365/security/defender-endpoint/advanced-features).

#### Indicators for application certificates

When you [create an "allow" indicator for an application certificate](/microsoft-365/security/defender-endpoint/indicator-certificates), it helps prevent applications, such as internally developed applications, that your organization uses from being blocked. `.CER` or `.PEM` file extensions are supported.

Before you create indicators for application certificates, make sure the following requirements are met:

- Microsoft Defender Antivirus is configured with cloud-based protection enabled (see [Manage cloud-based protection](deploy-manage-report-microsoft-defender-antivirus.md)
- Antimalware client version is 4.18.1901.x or later
- Devices are running Windows 10, version 1703 or later, or Windows 11; Windows Server 2012 R2 and Windows Server 2016 with the [modern unified solution in Defender for Endpoint](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016), or Windows Server 2019, or Windows Server 2022
- Virus and threat protection definitions are up to date

> [!TIP]
> When you create indicators, you can define them one by one, or import multiple items at once. Keep in mind there's a limit of 15,000 indicators for a single tenant. And, you might need to gather certain details first, such as file hash information. Make sure to review the prerequisites before you [create indicators](manage-indicators.md).

## Part 4: Submit a file for analysis

You can submit entities, such as files and fileless detections, to Microsoft for analysis. Microsoft security researchers analyze all submissions, and their results help inform Defender for Endpoint threat protection capabilities. When you sign in at the submission site, you can track your submissions.

### Submit a file for analysis

If you have a file that was either wrongly detected as malicious or was missed, follow these steps to submit the file for analysis.

1. Review the guidelines here: [Submit files for analysis](/windows/security/threat-protection/intelligence/submission-guide).

2. [Submit files in Defender for Endpoint](admin-submissions-mde.md) or visit the [Microsoft Security Intelligence submission site](https://www.microsoft.com/wdsi/filesubmission/) and submit your files.

### Submit a fileless detection for analysis

If something was detected as malware based on behavior, and you don't have a file, you can submit your `Mpsupport.cab` file for analysis. You can get the *.cab* file by using the Microsoft Malware Protection Command-Line Utility (MPCmdRun.exe) tool on Windows 10 or Windows 11.

1. Go to `C:\ProgramData\Microsoft\Windows Defender\Platform\<version>`, and then run `MpCmdRun.exe` as an administrator.

2. Type `mpcmdrun.exe -GetFiles`, and then press **Enter**.

   A .cab file is generated that contains various diagnostic logs. The location of the file is specified in the output of the command prompt. By default, the location is `C:\ProgramData\Microsoft\Microsoft Defender\Support\MpSupportFiles.cab`.

3. Review the guidelines here: [Submit files for analysis](/windows/security/threat-protection/intelligence/submission-guide).

4. Visit the [Microsoft Security Intelligence submission site](https://www.microsoft.com/wdsi/filesubmission) (https://www.microsoft.com/wdsi/filesubmission), and submit your .cab files.

### What happens after a file is submitted?

Your submission is immediately scanned by our systems to give you the latest determination even before an analyst starts handling your case. It's possible that a file might have already been submitted and processed by an analyst. In those cases, a determination is made quickly.

For submissions that weren't already processed, they're prioritized for analysis as follows:

- Prevalent files with the potential to affect a large number of computers are given a higher priority.
- Authenticated customers, especially enterprise customers with valid [Software Assurance IDs (SAIDs)](https://www.microsoft.com/licensing/licensing-programs/software-assurance-default.aspx), are given a higher priority.
- Submissions flagged as high priority by SAID holders are given immediate attention.

To check for updates regarding your submission, sign in at the [Microsoft Security Intelligence submission site](https://www.microsoft.com/wdsi/filesubmission).

> [!TIP]
> To learn more, see [Submit files for analysis](/windows/security/threat-protection/intelligence/submission-guide#how-does-microsoft-prioritize-submissions).

## Part 5: Review and adjust your threat protection settings

Defender for Endpoint offers a wide variety of options, including the ability to fine-tune settings for various features and capabilities. If you're getting numerous false positives, make sure to review your organization's threat protection settings. You might need to make some adjustments to:

- [Cloud-delivered protection](#cloud-delivered-protection)
- [Remediation for potentially unwanted applications](#remediation-for-potentially-unwanted-applications)
- [Automated investigation and remediation](#automated-investigation-and-remediation)

### Cloud-delivered protection

Check your cloud-delivered protection level for Microsoft Defender Antivirus. By default, cloud-delivered protection is set to **Not configured**; however, we recommend turning it on. To learn more about configuring your cloud-delivered protection, see [Turn on cloud protection in Microsoft Defender Antivirus](enable-cloud-protection-microsoft-defender-antivirus.md).

You can use [Intune](/mem/intune/fundamentals/what-is-intune) or other methods, such as [Group Policy](/azure/active-directory-domain-services/manage-group-policy), to edit or set your cloud-delivered protection settings.

See [Turn on cloud protection in Microsoft Defender Antivirus](enable-cloud-protection-microsoft-defender-antivirus.md).

### Remediation for potentially unwanted applications

Potentially unwanted applications (PUA) are a category of software that can cause devices to run slowly, display unexpected ads, or install other software that might be unexpected or unwanted. Examples of PUA include advertising software, bundling software, and evasion software that behaves differently with security products. Although PUA isn't considered malware, some kinds of software are PUA based on their behavior and reputation.

To learn more about PUA, see [Detect and block potentially unwanted applications](/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).

Depending on the apps your organization is using, you might be getting false positives as a result of your PUA protection settings. If necessary, consider running PUA protection in audit mode for a while, or apply PUA protection to a subset of devices in your organization. PUA protection can be configured for the Microsoft Edge browser and for Microsoft Defender Antivirus.

We recommend using [Intune](/mem/endpoint-manager-overview) to edit or set PUA protection settings; however, you can use other methods, such as [Group Policy](/azure/active-directory-domain-services/manage-group-policy).

See [Configure PUA protection in Microsoft Defender Antivirus](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md#configure-pua-protection-in-microsoft-defender-antivirus).

### Automated investigation and remediation

[Automated investigation and remediation](automated-investigations.md) (AIR) capabilities are designed to examine alerts and take immediate action to resolve breaches. As alerts are triggered, and an automated investigation runs, a verdict is generated for each piece of evidence investigated. Verdicts can be *Malicious*, *Suspicious*, or *No threats found*.

Depending on the [level of automation](/microsoft-365/security/defender-endpoint/automation-levels) set for your organization and other security settings, remediation actions are taken on artifacts that are considered to be *Malicious* or *Suspicious*. In some cases, remediation actions occur automatically; in other cases, remediation actions are taken manually or only upon approval by your security operations team.

- [Learn more about automation levels](/microsoft-365/security/defender-endpoint/automation-levels); and then
- [Configure AIR capabilities in Defender for Endpoint](/microsoft-365/security/defender-endpoint/configure-automated-investigations-remediation).

> [!IMPORTANT]
> We recommend using *Full automation* for automated investigation and remediation. Don't turn these capabilities off because of a false positive. Instead, use ["allow" indicators to define exceptions](#indicators-for-defender-for-endpoint), and keep automated investigation and remediation set to take appropriate actions automatically. Following [this guidance](automation-levels.md#levels-of-automation) helps reduce the number of alerts your security operations team must handle.

## Still need help?

If you've worked through all the steps in this article and still need help, contact technical support.

1. In the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139), in the upper right corner, select the question mark (**?**), and then select **Microsoft support**.

2. In the **Support Assistant** window, describe your issue, and then send your message. From there, you can open a service request.

## See also

- [Manage Defender for Endpoint](manage-mde-post-migration.md)
- [Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Overview of Microsoft 365 Defender portal](/microsoft-365/security/defender-endpoint/use)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md) 
- [Configure Defender for Endpoint on Android features](android-configure.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
