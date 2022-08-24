---
title: Attack surface reduction rules reporting
description: Provides information about Attack surface reduction (ASR) rules detections, configuration, block threats, and methods to enable basic rules and exclusions.
keywords: Attack surface reduction rules, ASR, asr rules, hips, host intrusion prevention system, protection rules, anti-exploit rules, antiexploit, exploit rules, infection prevention rules, Microsoft Defender for Endpoint, configure ASR rules, ASR rule description
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jweston-1
ms.author: v-jweston
ms.reviewer: oogunrinde, sugamar,
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.topic: article
ms.collection: M365-security-compliance
ms.date: 08/25/2022
---

# Attack surface reduction rules report

**Applies to:**

- [Microsoft Microsoft 365 Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Platforms:**

- Windows

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Attack surface reduction rules report overview

Intro - The attack surface reduction (ASR) rules report provides information about the _attack surface reduction rules_ that are applied to devices in your organization. This report also provides information about:

- detected threats
- blocked threats
- devices that don't use basic rules to block threats

Additionally, this report provides an easy-to-use interface that enables you to:

- View threat detections
- View the configuration of the ASR rules
- Configure (add) exclusions
- Easily activate _basic protection_ by enabling the three most recommended ASR rules with a single toggle
- Drill down to gather detailed information

For more information about individual attack surface reduction rules, see [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md).

### Prerequisites

- list
- prerequisites

> [!IMPORTANT]
> For Windows&nbsp;Server&nbsp;2012&nbsp;R2 and Windows&nbsp;Server&nbsp;2016 to appear in Attack surface reduction rules reports, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).

### Report access permissions

To access the Attack surface reduction rules report in the Microsoft 365 Security dashboard, the following permissions are required:

| Permission name | Permission type |
|:---|:---|
| View Data? | unsure? |

To Assign these permissions:

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

>:::image type="content" source="images/attack-surface-reduction-rules-report-summary.png" alt-text="Shows the Attack surface reduction (ASR) rules report summary cards" lightbox="images/attack-surface-reduction-rules-report-summary.png":::

## ASR rules report summary cards

The ASR rules report summary is divided into two cards:

- [**ASR rule detections** summary card](#asr-rules-detections-summary-card)
- [**ASR rule configuration** summary card](#asr-rules-configuration-summary-card)

### ASR rules detections summary card

Shows a summary of the number of detected threats blocked by ASR rules.

Provides two 'action' buttons:

- View detections - opens the Attack surface reduction rules > main Detections tab
- Add exclusions - Opens the Attack surface reduction rules > main Exclusions tab

Clicking on the **ASR rules detections** link at the top of the card also opens the main [Attack surface reduction rules Detections tab](#attack-surface-reduction-rules-main-detections-tab).

### ASR rules configuration summary card

The top half of this card shows current-state information about the computers in your organization that have the following three basic attack surface reduction rules set in **Block mode**, **Audit mode**, or **off** (not configured). The bottom half of this card lists the detections that are most frequently not blocked in your organization.

#### Three basic ASR rules

This card provides a button to **Protect devices** with the three basic rules. At minimum, Microsoft recommends that you enable the three basic attack surface reduction rules:

- [Block credential stealing from the Windows local security authority subsystem (lsass.exe)](attack-surface-reduction-rules-reference.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem)
- [Block abuse of exploited vulnerable signed drivers](attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers)
- [Block persistence through Windows Management Instrumentation (WMI) event subscription](attack-surface-reduction-rules-reference.md#block-persistence-through-wmi-event-subscription)

To enable the three basic rules:

1. Select **Protect devices**. The main **Configuration** tab opens.
1. On the **Configuration** tab, **Basic rules** automatically toggles from **All rules** to **Basic rules** enabled.
1. In the **Devices** list, select the devices for which you want the basic rules to apply, and then select **Save**.

This card has two other navigation buttons:

- **View configuration** - Opens the Attack surface reduction rules > main Configuration tab.
- **Add exclusions** - Opens the Attack surface reduction rules > main Exclusions tab.

Clicking on the **ASR rules configuration** link at the top of the card also opens the main [Attack surface reduction rules Configuration tab](#attack-surface-reduction-rules-main-configuration-tab).

## Attack surface reduction rules main tabs

While the ASR rules report summary cards are useful for getting quick summary of your ASR rules status, the main tabs provide more in-depth, information with filtering and configuration capabilities.

### Attack surface reduction rules main Detections tab

The Detections tab provides filtering and reporting capabilities:

#### Filtering

Filtering provides a way for you to specify what results are returned:

- **Basic rules**  enables you to limit results to the [three basic ASR rules](#three-basic-asr-rules). By default, this filter is set to **false**.
- **Date**  enables you to specify a date range for data results.
- **Filters**

#### Reporting

- **Audit Detections**  Shows how many threat detections were captured by rules set in _Audit_ mode over the shown date range, with the capability to hover of specific location to gather specific date information.
- **Blocked Detections** Shows how many threat detections were blocked by rules set in _Block_ mode over the shown date range, with the capability to hover of specific location to gather specific date information.
- **Large, consolidated graph** Shows blocked and audited detections across the date range shown, with the capability to hover of specific location to gather specific date information.

For more information about ASR rule audit and block modes, see [Attack surface reduction rule modes](attack-surface-reduction-rules-reference.md#asr-rule-modes).

The bottom section of the report lists detected threats with the following fields:

| Field name| Definition |
|:---|:---|
| Detected file | The file determined to contain a possible or known threat. |
| Detected on | The date the threat was detected. |
| Blocked\/Audited? | Whether the detecting rule was in Block or Audit mode.  |
| Rule | Which rule detected the threat |
| Source app | The application that made the call to the offending "detected file." |
| Device | The name of the device on which the Audit or Block event occurred. |
| Device group | The Active Directory group to which the device belongs |
| User |  The machine account responsible for the call.  |
| Publisher | The company that released the particular .exe or application |

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-detections-tab.png" alt-text="Shows the Attack surface reduction (ASR) rules report main detections tab" lightbox="images/attack-surface-reduction-rules-report-main-detections-tab.png":::

### Attack surface reduction rules main Configuration tab

Provides summary and per-device ASR rules configuration details.

**Basic rules** Provides a method to toggle results between **Basic rules** and **All Rules**. By default, **Basic rules** is selected.

**Device configuration overview** Provides a current snapshot of devices in one of the following states:

- All exposed Devices (devices with missing prerequisites, rules in Audit mode, misconfigured rules, or rules not configured)
- Devices with rules not configured
- Devices with rules in audit mode
- Devices with rules in block mode

The lower section of the Configuration tab provides a listing of the current state of your devices (on a per-device basis):

- Device (name)
- Overall configuration (Whether any rules are on or all are off)
- Rules in block mode (the number of rules per-device set to block)
- Rules in audit mode (the number of rules in audit mode)
- Rules turned off (rules that are turned off or aren't enabled)
- Device ID (device GUID)

These elements are shown in the following figure.

>:::image type="content" source="images/attack-surface-reduction-rules-report-main-configuration-tab.png" alt-text="Shows the Attack surface reduction (ASR) rules report main configuration tab" lightbox="images/attack-surface-reduction-rules-report-main-configuration-tab.png":::

To enable ASR rules:

1. Under **Device**, select the device or devices for which you want to apply ASR rules.
1. In the flyout window, verify your selections and then select **Add to policy**.

The **Configuration** tab and _add rule_ flyout are shown in the following image.

> [NOTE!]
> If you have devices that require that different ASR rules be applied, you should configure those devices individually.

>:::image type="content" source="images/attack-surface-reduction-rules-report-configuration-add-to-policy.png" alt-text="Shows the Attack surface reduction (ASR) rules fly-out to add ASR rules to devices" lightbox="images/attack-surface-reduction-rules-report-configuration-add-to-policy.png":::

### Attack surface reduction rules main Add exclusions tab

>:::image type="content" source="images/attack-surface-reduction-rules-report-exclusion-tab.png" alt-text="Shows the Attack surface reduction (ASR) rules report add exclusions tab" lightbox="images/attack-surface-reduction-rules-report-exclusion-tab.png":::

## See also

- [Enable attack surface reduction rules](attack-surface-reduction-rules-deployment-implement.md)
- [Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)
