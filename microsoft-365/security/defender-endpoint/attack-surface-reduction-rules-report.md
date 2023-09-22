---
title: Attack surface reduction (ASR) rules reporting
description: Provides information about attack surface reduction (ASR) rules detections, configuration, block threats, and methods to enable three standard rules and exclusions.
keywords: Attack surface reduction rules, ASR, asr rules, hips, host intrusion prevention system, protection rules, anti-exploit rules, antiexploit, exploit rules, infection prevention rules, Microsoft Defender for Endpoint, configure ASR rules, ASR rule description
ms.mktglfcycl: manage
ms.sitesec: library
ms.service: microsoft-365-security
ms.subservice: mde
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dansimp
ms.author: dansimp
ms.reviewer: oogunrinde, sugamar,
manager: dansimp
ms.custom: asr
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
ms.date: 03/27/2023
search.appverid: met150
---

# Attack surface reduction (ASR) rules report

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Platforms:**

- Windows

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The attack surface reduction (ASR) rules report provides information about the _attack surface reduction rules_ that are applied to devices in your organization. This report also provides information about:

- detected threats
- blocked threats
- devices that aren't configured to use the standard protection rules to block threats

Additionally, this report provides an easy-to-use interface that enables you to:

- View threat detections
- View the configuration of the ASR rules
- Configure (add) exclusions
- Easily activate _basic protection_ by enabling the three most recommended ASR rules with a single toggle
- Drill down to gather detailed information

For more information about individual attack surface reduction rules, see [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md).

## Prerequisites

> [!IMPORTANT]
> To access the **Attack surface reduction rules report**, read permissions are required for the Microsoft 365 Defender portal. Access to this report granted by Azure AD roles, such as Security Global Admin or Security role, is being deprecated and will be removed in April 2023.
> For Windows&nbsp;Server&nbsp;2012&nbsp;R2 and Windows&nbsp;Server&nbsp;2016 to appear in the **Attack surface reduction rules report**, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).

## Report access permissions

To access the **Attack surface reduction rules report** in the Microsoft 365 Security dashboard, the following permissions are required:

| Permission type | Permission | Permission display name |
|:---|:---|:---|
| Application | Machine.Read.All | 'Read all machine profiles' |
|Delegated (work or school account) | Machine.Read | 'Read machine information' |

To assign these permissions:

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with Security administrator or Global administrator role assigned.
1. In the navigation pane, select **Settings** \> **Endpoints** \> **Roles** (under **Permissions**).
1. Select the role you'd like to edit.
1. Select **Edit**.
1. In **Edit role**, on the **General** tab, in **Role name**, type a name for the role.
1. In **Description** type a brief summary of the role.
1. In **Permissions**, select **View Data**, and under **View Data** select **Attack surface reduction**.

For more information about user role management, see [Create and manage roles for role-based access control](user-roles.md).

## Navigation

To navigate to the summary cards for the attack surface reduction rules report

1. Open **Microsoft 365 Defender**  portal.
1. In the left panel, click**Reports**, and in the main section, under **Reports** select **Security report**.
1. Scroll down to **Devices** to find the **Attack surface reduction rules** summary cards.

The summary report cards for ASR rules are shown in the following figure.

>:::image type="content" source="images/attack-surface-reduction-rules-report-summary.png" alt-text="Shows the ASR rules report summary cards" lightbox="images/attack-surface-reduction-rules-report-summary.png":::

## ASR rules report summary cards

The ASR rules report summary is divided into two cards:

- [**ASR rule detections** summary card](#asr-rules-detections-summary-card)
- [**ASR rule configuration** summary card](#asr-rules-configuration-summary-card)

### ASR rules detections summary card

Shows a summary of the number of detected threats blocked by ASR rules.

Provides two 'action' buttons:

- View detections - opens the **Attack surface reduction rules** > main **Detections** tab
- Add exclusions - Opens the **Attack surface reduction rules** > main **Exclusions** tab

:::image type="content" source="images/attack-surface-reduction-rules-report-main-detections-card.png" alt-text="Screenshot that shows the ASR rules report summary detections card." lightbox="images/attack-surface-reduction-rules-report-main-detections-card.png"::: 

Clicking on the **ASR rules detections** link at the top of the card also opens the main [Attack surface reduction rules Detections tab](#attack-surface-reduction-rules-main-detections-tab).

### ASR rules configuration summary card

**The top section** focuses on three recommended rules, which protect against common attack techniques. This card shows current-state information about the computers in your organization that have the following [Three \(ASR\) standard protection rules](#simplified-standard-protection-option) set in **Block mode**, **Audit mode**, or **off** (not configured).The **Protect devices** button will show full configuration details for only the three rules; customers can quickly take action to enable these rules.

**The bottom section** surfaces six rules based on the number of unprotected devices per rule. The "View configuration" button surfaces all configuration details for all ASR rules. The "Add exclusion" button shows the add exclusion page with all detected file/process names listed for Security Operation Center (SOC) to evaluate. The **Add exclusion** page is linked to Microsoft Intune.

Provides two 'action' buttons:

- View configuration - opens the **Attack surface reduction rules** > main **Detections** tab
- Add exclusions - Opens the **Attack surface reduction rules** > main **Exclusions** tab

:::image type="content" source="images/attack-surface-reduction-rules-report-main-detections-configuration-card.png" alt-text="Shows the ASR rules report summary configuration card." lightbox="images/attack-surface-reduction-rules-report-main-detections-configuration-card.png":::

Clicking on the **ASR rules configuration** link at the top of the card also opens the main [Attack surface reduction rules Configuration tab](#attack-surface-reduction-rules-main-configuration-tab).

#### Simplified standard protection option

The configuration summary card provides a button to **Protect devices** with the three standard protection rules. At minimum, Microsoft recommends that you enable these three attack surface reduction standard protection rules:

- [Block credential stealing from the Windows local security authority subsystem (lsass.exe)](attack-surface-reduction-rules-reference.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem)
- [Block abuse of exploited vulnerable signed drivers](attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers)
- [Block persistence through Windows Management Instrumentation (WMI) event subscription](attack-surface-reduction-rules-reference.md#block-persistence-through-wmi-event-subscription)

To enable the three standard protection rules:

1. Select **Protect devices**. The main **Configuration** tab opens.
1. On the **Configuration** tab, **Basic rules** automatically toggles from **All rules** to **Standard protection rules** enabled.
1. In the **Devices** list, select the devices for which you want the standard protection rules to apply, and then select **Save**.

This card has two other navigation buttons:

- **View configuration** - Opens the **Attack surface reduction rules** > main **Configuration** tab.
- **Add exclusions** - Opens the **Attack surface reduction rules** > main **Exclusions** tab.

Clicking on the **ASR rules configuration** link at the top of the card also opens the main [Attack surface reduction rules Configuration tab](#attack-surface-reduction-rules-main-configuration-tab).

## Attack surface reduction rules main tabs

While the ASR rules report summary cards are useful for getting quick summary of your ASR rules status, the main tabs provide more in-depth, information with filtering and configuration capabilities:

- [Detections tab](#attack-surface-reduction-rules-main-detections-tab)
- [Configuration tab](#attack-surface-reduction-rules-main-configuration-tab)
- [Exclusions tab](#attack-surface-reduction-rules-add-exclusions-tab)

### Search capabilities

 Search capability is added to **Detection**, **Configuration**, and **Add exclusion** main tabs. With this capability, you can search by using device ID, file name, or process name.

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-tabs-search.png" alt-text="Shows the ASR rules report search feature." lightbox="images/attack-surface-reduction-rules-report-main-tabs-search.png":::

### Filtering

Filtering provides a way for you to specify what results are returned:

- **Date**  enables you to specify a date range for data results.
- **Filters**

> [!NOTE]
> When filtering by rule, the number of individual _detected_ items listed in the lower half of the report is currently limited to 200 rules. You can use **Export** to save the full list of detections to Excel.

> [!TIP]
> As the filter currently functions in this release, every time you want to "group by", you must first scroll down to last detection in the list to load the complete data set. After you have loaded the complete data set, you can then launch the "sort by" filtering. If you don't scroll down to last detection listed on every use or when changing filtering options (for example, the ASR rules applied to the current filter run), then results will be incorrect for any result that has more than one viewable page of listed detections.

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-tabs-search-configuration-tab.png" alt-text="Screenshot that shows the ASR rules report search feature on the configuration tab." lightbox="images/attack-surface-reduction-rules-report-main-tabs-search-configuration-tab.png":::

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/asr-defender365-filter.png" alt-text="Screenshot that shows the attack surface reduction rules detections filter on rules." lightbox="images/asr-defender365-filter.png":::

### Attack surface reduction rules main detections tab

- **Audit Detections**  Shows how many threat detections were captured by rules set in _Audit_ mode.
- **Blocked Detections** Shows how many threat detections were blocked by rules set in _Block_ mode.
- **Large, consolidated graph** Shows blocked and audited detections.

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-detections-tab.png" alt-text="Shows the ASR rules report main detections tab, with _Audit detections_ and _Blocked detections_ outlined." lightbox="images/attack-surface-reduction-rules-report-main-detections-tab.png":::

The graphs provide detection data over the displayed date range, with the capability to hover over a specific location to gather date-specific information.

The bottom section of the report lists detected threats - on a per-device basis - with the following fields:

| Field name| Definition |
|:---|:---|
| Detected file | The file determined to contain a possible or known threat |
| Detected on | The date the threat was detected |
| Blocked\/Audited? | Whether the detecting rule for the specific event was in Block or Audit mode |
| Rule | Which rule detected the threat |
| Source app | The application that made the call to the offending "detected file" |
| Device | The name of the device on which the Audit or Block event occurred |
| Device group | The Active Directory group to which the device belongs |
| User |  The machine account responsible for the call |
| Publisher | The company that released the particular .exe or application |

For more information about ASR rule audit and block modes, see [Attack surface reduction rule modes](attack-surface-reduction-rules-reference.md#asr-rule-modes).

#### Actionable flyout

The "Detection" main page has a list of all detections (files/processes) in the last 30 days. Select on any of the detections to open with drill-down capabilities.

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-detections-flyout.png" alt-text="Shows the ASR rules report main detections tab flyout" lightbox="images/attack-surface-reduction-rules-report-main-detections-flyout.png":::

The **Possible exclusion and impact** section provides impact of the selected file or process. You can:

- Select **Go hunt** which opens the Advanced Hunting query page
- **Open file page** opens Microsoft Defender for Endpoint (MDE) detection
- The **Add exclusion** button is linked with the add exclusion main page.

The following image illustrates how the Advanced Hunting query page opens from the link on the actionable flyout:

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-detections-flyout-hunting.png" alt-text="Shows the (ASR) rules report main detections tab flyout link opening Advanced Hunting" lightbox="images/attack-surface-reduction-rules-report-main-detections-flyout-hunting.png":::

For more information about Advanced hunting, see [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md)

### Attack surface reduction rules main Configuration tab

The ASR rules main **Configuration** tab provides summary and per-device ASR rules configuration details. There are three main aspects to the Configuration tab:

**Basic rules** Provides a method to toggle results between **Basic rules** and **All Rules**. By default, **Basic rules** is selected.

**Device configuration overview** Provides a current snapshot of devices in one of the following states:

- All exposed Devices (devices with missing prerequisites, rules in Audit mode, misconfigured rules, or rules not configured)
- Devices with rules not configured
- Devices with rules in audit mode
- Devices with rules in block mode

**The lower, unnamed section** of the Configuration tab provides a listing of the current state of your devices (on a per-device basis):

- Device (name)
- Overall configuration (Whether any rules are on or all are off)
- Rules in block mode (the number of rules per-device set to block)
- Rules in audit mode (the number of rules in audit mode)
- Rules turned off (rules that are turned off or aren't enabled)
- Device ID (device GUID)

These elements are shown in the following figure.

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-configuration-tab.png" alt-text="Shows the ASR rules report main configuration tab" lightbox="images/attack-surface-reduction-rules-report-main-configuration-tab.png":::

To enable ASR rules:

1. Under **Device**, select the device or devices for which you want to apply ASR rules.
1. In the flyout window, verify your selections and then select **Add to policy**.

The **Configuration** tab and _add rule_ flyout are shown in the following image.

> [NOTE!]
> If you have devices that require that different ASR rules be applied, you should configure those devices individually.

>:::image type="content" source="images/attack-surface-reduction-rules-report-configuration-add-to-policy.png" alt-text="Shows the ASR rules fly-out to add ASR rules to devices" lightbox="images/attack-surface-reduction-rules-report-configuration-add-to-policy.png":::

### Attack surface reduction rules Add exclusions tab

The **Add exclusions** tab presents a ranked list of detections by file name and provides a method to configure exclusions. By default, **Add exclusions** information is listed for three fields:

- **File name** The name of the file that triggered the ASR rules event.
- **Detections** The total number of detected events for named file. Individual devices can trigger multiple ASR rules events.
- **Devices** The number of devices on which the detection occurred.

>:::image type="content" source="images/attack-surface-reduction-rules-report-exclusion-tab.png" alt-text="Shows the ASR rules report add exclusions tab" lightbox="images/attack-surface-reduction-rules-report-exclusion-tab.png":::

> [!IMPORTANT]
> Excluding files or folders can severely reduce the protection provided by ASR rules. Excluded files are allowed to run, and no report or event will be recorded.
> If ASR rules are detecting files that you believe shouldn't be detected, you should [use audit mode first to test the rule](attack-surface-reduction-rules-deployment-test.md#step-1-test-asr-rules-using-audit).

When you select a file, a **Summary & expected impact** fly out opens, presenting the following types of information:

- **Files selected**  The number of files you've selected for exclusion
- **(_number of_) detections**  States the expected reduction in detections after adding the selected exclusion(s).  The reduction in detections is represented graphically for **Actual detections** and **Detections after exclusions**
- **(_number of_) affected devices** States the expected reduction in devices that report detections for the selected exclusions.

The Add exclusion page has two buttons for actions that can be used on any detected files (after selection). You can:

- **Add exclusion** which will open Microsoft Intune ASR policy page. For more information, see: [Intune](enable-attack-surface-reduction.md) in "Enable ASR rules alternate configuration methods."
- **Get exclusion paths** which will download file paths in a csv format

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-add-exclusions-flyout.png" alt-text="Shows the ASR rules report add exclusions tab flyout impact summary" lightbox="images/attack-surface-reduction-rules-report-main-add-exclusions-flyout.png":::

## See also

- [Attack surface reduction (ASR) rules deployment overview](attack-surface-reduction-rules-deployment.md)
- [Plan attack surface reduction (ASR) rules deployment](attack-surface-reduction-rules-deployment-plan.md)
- [Test attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-test.md)
- [Enable attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-implement.md)
- [Operationalize attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-operationalize.md)
- [Attack surface reduction \(ASR\) rules report](attack-surface-reduction-rules-report.md)
- [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
