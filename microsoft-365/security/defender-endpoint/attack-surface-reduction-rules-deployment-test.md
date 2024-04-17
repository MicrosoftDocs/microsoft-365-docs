---
title: Test attack surface reduction rules
description: Learn how to test attack surface reduction rules in Defender for Endpoint.
ms.service: defender-endpoint
ms.subservice: asr
ms.localizationpriority: medium
audience: ITPro
author: siosulli
ms.author: siosulli
ms.reviewer: sugamar
manager: deniseb
ms.custom: asr
ms.topic: conceptual
ms.collection:
 - m365-security
 - m365solution-asr-rules
 - highpri
 - tier1
 - mde-asr
ms.date: 08/14/2023
search.appverid: met150
---

# Test attack surface reduction rules

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Testing Microsoft Defender for Endpoint attack surface reduction rules helps you determine if rules impede line-of-business operations prior to enabling any rule. By starting with a small, controlled group, you can limit potential work disruptions as you expand your deployment across your organization.

In this section of the attack surface reduction rules deployment guide, you'll learn how to:

- configure rules using Microsoft Intune
- use Microsoft Defender for Endpoint attack surface reduction rules reports
- configure attack surface reduction rules exclusions
- enable attack surface reduction rules using PowerShell
- use Event Viewer for attack surface reduction rules events

> [!NOTE]
> Before you begin testing attack surface reduction rules, it is recommended that you first disable all rules that you have previously set to either **audit** or **enable** (if applicable). See [Attack surface reduction rules reports](attack-surface-reduction-rules-report.md) for information about using the attack surface reduction rules report to disable attack surface reduction rules.

Begin your attack surface reduction rules deployment with ring 1.

> :::image type="content" source="media/asr-rules-testing-steps.png" alt-text="The Microsoft Defender for Endpoint attack surface reduction (ASR rules) test steps. Audit attack surface reduction rules, configure ASR rules exclusions. Configure ASR rules Intune. ASR rules exclusions. ASR rules event viewer." lightbox="media/asr-rules-testing-steps.png":::

## Step 1: Test attack surface reduction rules using Audit

Begin the testing phase by turning on the attack surface reduction rules with the rules set to Audit, starting with your champion users or devices in ring 1. Typically, the recommendation is that you enable all the rules (in Audit) so that you can determine which rules are triggered during the testing phase. Rules that are set to Audit don't generally impact functionality of the entity or entities to which the rule is applied but do generate logged events for the evaluation; there is no effect on end users.

### Configure attack surface reduction rules using Intune

You can use Microsoft Intune Endpoint Security to configure custom attack surface reduction rules.

1. Open the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Go to **Endpoint Security** > **Attack surface reduction**.
3. Select **Create Policy**.
4. In **Platform**, select **Windows 10, Windows 11, and Windows Server**, and in **Profile**, select **Attack surface reduction rules**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/asr-mem-create-profile.png" alt-text="The profile creation page for ASR rules" lightbox="media/asr-mem-create-profile.png":::

5. Select **Create**.
6. In the **Basics** tab of the **Create profile** pane, in **Name** add a name for your policy. In **Description** add a description for your attack surface reduction rules policy.
7. In the **Configuration settings** tab, under **Attack Surface Reduction Rules**, set all rules to **Audit mode**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/asr-mem-configuration-settings.png" alt-text="The configuration of attack surface reduction rules to Audit mode" lightbox="media/asr-mem-configuration-settings.png":::

    > [!NOTE]
    > There are variations in some attack surface reduction rules mode listings; _Blocked_ and _Enabled_ provide the same functionality.

8. [Optional] In the **Scope tags** pane, you can add tag information to specific devices. You can also use role-based access control and scope tags to make sure that the right admins have the right access and visibility to the right Intune objects. Learn more: [Use role-based access control (RBAC) and scope tags for distributed IT in Intune](/mem/intune/fundamentals/scope-tags).
9. In the **Assignments** pane, you can deploy or "assign" the profile to your user or device groups. Learn more: [Assign device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign#exclude-groups-from-a-profile-assignment)

    > [!NOTE]
    > Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

10. Review your settings in the **Review + create** pane. Click **Create** to apply the rules.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="media/asr-mem-review-create.png" alt-text="The Create profile page" lightbox="media/asr-mem-review-create.png":::

Your new attack surface reduction policy for attack surface reduction rules is listed in **Endpoint security | Attack surface reduction**.

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="media/asr-mem-my-asr-rules.png" alt-text=" The Attack surface reduction page" lightbox="media/asr-mem-my-asr-rules.png":::

<a name='step-2-understand-the-asr-rules-reporting-page-in-the-microsoft-365-defender-portal'></a>

## Step 2: Understand the attack surface reduction rules reporting page in the Microsoft Defender portal

The attack surface reduction rules reporting page is found in **Microsoft Defender portal** > **Reports** > **Attack surface reduction rules**. This page has three tabs:

- Detections
- Configuration
- Add exclusions

### Detections tab

Provides a 30-day timeline of detected audit and blocked events.

> [!div class="mx-imgBorder"]
> :::image type="content" source="media/attack-surface-reduction-rules-report-main-detections-card.png" alt-text="Graph that shows the attack surface reduction rules report summary detections card." lightbox="media/attack-surface-reduction-rules-report-main-detections-card.png":::

The attack surface reduction rules pane provides an overview of detected events on a per-rule basis.

> [!NOTE]
> There are some variations in attack surface reduction rules reports. Microsoft is in the process of updating the behavior of the attack surface reduction rules reports to provide a consistent experience.

:::image type="content" source="media/attack-surface-reduction-rules-report-main-detections-configuration-card.png" alt-text="Graph that shows the attack surface reduction rules report summary configuration card." lightbox="media/attack-surface-reduction-rules-report-main-detections-configuration-card.png":::

Select **View detections** to open the **Detections** tab.

>:::image type="content" source="media/attack-surface-reduction-rules-report-main-tabs-search.png" alt-text="Screenshot that shows the attack surface reduction rules report search feature." lightbox="media/attack-surface-reduction-rules-report-main-tabs-search.png":::

The **GroupBy** and **Filter** pane provide the following options:

The **GroupBy** returns results set to the following groups:

- No grouping
- Detected file
- Audit or block
- Rule
- Source app
- Device
- User
- Publisher

> [!NOTE]
> When filtering by rule, the number of individual _detected_ items listed in the lower half of the report is currently limited to 200 rules. You can use **Export** to save the full list of detections to Excel.

:::image type="content" source="media/attack-surface-reduction-rules-report-main-tabs-search-configuration-tab.png" alt-text="Screenshot that shows the ASR rules report search feature on the configuration tab." lightbox="media/attack-surface-reduction-rules-report-main-tabs-search-configuration-tab.png":::

**Filter** opens the **Filter on rules** page, which enables you to scope the results to only the selected attack surface reduction rules:

> [!div class="mx-imgBorder"]
> :::image type="content" source="media/asr-defender365-filter.png" alt-text="The Attack surface reduction rules detections filter on rules" lightbox="media/asr-defender365-filter.png":::

> [!NOTE]
> If you have a Microsoft Microsoft 365 Security E5 or A5, Windows E5 or A5 license, the following link opens the Microsoft Defender 365  Reports > [Attack surface reductions](https://security.microsoft.com/asr?viewid=detections) > Detections tab.

### Configuration tab

Lists—on a per-computer basis—the aggregate state of attack surface reduction rules: Off, Audit, Block.

>:::image type="content" source="media/attack-surface-reduction-rules-report-main-configuration-tab.png" alt-text="Screenshot that shows the attack surface reduction rules report main configuration tab." lightbox="media/attack-surface-reduction-rules-report-main-configuration-tab.png":::

On the Configurations tab, you can check, on a per-device basis, which attack surface reduction rules are enabled, and in which mode, by selecting the device for which you want to review attack surface reduction rules.

>:::image type="content" source="media/attack-surface-reduction-rules-report-configuration-add-to-policy.png" alt-text="Screenshot that shows the ASR rules fly-out to add ASR rules to devices." lightbox="media/attack-surface-reduction-rules-report-configuration-add-to-policy.png":::

The **Get started** link opens the Microsoft Intune admin center, where you can create or modify an endpoint protection policy for attack surface reduction:

> [!div class="mx-imgBorder"]
> :::image type="content" source="media/asr-defender365-05b-mem1.png" alt-text="The *Endpoint security menu item on the Overview page" lightbox="media/asr-defender365-05b-mem1.png":::

In Endpoint security | Overview, select **Attack surface reduction**:

> [!div class="mx-imgBorder"]
> :::image type="content" source="media/asr-defender365-05b-mem2.png" alt-text="The Attack surface reduction in Intune" lightbox="media/asr-defender365-05b-mem2.png":::

The Endpoint Security | Attack surface reduction pane opens:

> [!div class="mx-imgBorder"]
> :::image type="content" source="media/asr-defender365-05b-mem3.png" alt-text="The Endpoint security Attack surface reduction pane" lightbox="media/asr-defender365-05b-mem3.png":::

> [!NOTE]
> If you have a Microsoft Defender 365 E5 (or Windows E5?) license, this link will open the Microsoft Defender 365  Reports > Attack surface reductions > [Configurations](https://security.microsoft.com/asr?viewid=configuration) tab.

### Add exclusions

This tab provides a method to select detected entities (for example, false positives) for exclusion. When exclusions are added, the report provides a summary of the expected impact.

> [!NOTE]
> Microsoft Defender Antivirus AV exclusions are honored by attack surface reduction rules.  See [Configure and validate exclusions based on extension, name, or location](configure-extension-file-exclusions-microsoft-defender-antivirus.md).

> [!div class="mx-imgBorder"]
> :::image type="content" source="media/asr-defender365-06d.png" alt-text="The pane for exclusion of the detected file" lightbox="media/asr-defender365-06d.png":::

> [!NOTE]
> If you have a Microsoft Defender 365 E5 (or Windows E5?) license, this link will open the Microsoft Defender 365  Reports > Attack surface reductions > [Exclusions](https://security.microsoft.com/asr?viewid=exclusions) tab.

For more information about using the attack surface reduction rules report, see [Attack surface reduction rules reports](attack-surface-reduction-rules-report.md).

## Configure attack surface reduction per-rule exclusions

Attack surface reduction rules now provide the capability to configure rule-specific exclusions, known as "Per Rule Exclusions."

> [!NOTE]
> Per-rule exclusions cannot currently be configured by using PowerShell or Group Policy.

To configure specific rule exclusions:

1. Open the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), and navigate to **Home** > **Endpoint security** > **Attack surface reduction**.

2. If it isn't already configured, set the rule for which you want to configure exclusions to **Audit** or **Block**.

3. In **ASR Only Per Rule Exclusion**, click the toggle to change from **Not configured** to **Configured.**

4. Enter the names of the files or application that you want to exclude.

5. At the bottom of the **Create profile** wizard, select **Next** and follow the wizard instructions.

>:::image type="content" source="media/attack-surface-reduction-rules-report-per-rule-exclusion.png" alt-text="Screenshot that shows the configuration settings for adding ASR per-rule exclusions." lightbox="media/attack-surface-reduction-rules-report-per-rule-exclusion.png":::

> [!TIP]
> Use the checkboxes next to your list of exclusion entries to select items to **Delete**, **Sort**, **Import**, or **Export**.

### Use PowerShell as an alternative method to enable attack surface reduction rules

You can use PowerShell - as an alternative to Intune - to enable attack surface reduction rules in audit mode to view a record of apps that would have been blocked if the feature was fully enabled. You can also get an idea of how often the rules fire during normal use.

To enable an attack surface reduction rule in audit mode, use the following PowerShell cmdlet:

```PowerShell
Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions AuditMode
```

Where `<rule ID>` is a [GUID value of the attack surface reduction rule](attack-surface-reduction-rules-reference.md).

To enable all the added attack surface reduction rules in audit mode, use the following PowerShell cmdlet:

```PowerShell
(Get-MpPreference).AttackSurfaceReductionRules_Ids | Foreach {Add-MpPreference -AttackSurfaceReductionRules_Ids $_ -AttackSurfaceReductionRules_Actions AuditMode}
```

> [!TIP]
> If you want to fully audit how attack surface reduction rules will work in your organization, you'll need to use a management tool to deploy this setting to devices in your network(s).

You can also use Group Policy, Intune, or mobile device management (MDM) configuration service providers (CSPs) to configure and deploy the setting. Learn more in the main [Attack surface reduction rules](attack-surface-reduction.md) article.

<a name='use-windows-event-viewer-review-as-an-alternative-to-the-attack-surface-reduction-rules-reporting-page-in-the-microsoft-365-defender-portal'></a>

## Use Windows Event Viewer Review as an alternative to the attack surface reduction rules reporting page in the Microsoft Defender portal

To review apps that would have been blocked, open Event Viewer and filter for Event ID 1121 in the Microsoft-Windows-Windows Defender/Operational log. The following table lists all network protection events.

Event ID | Description
-|-
 5007 | Event when settings are changed
 1121 | Event when an attack surface reduction rule fires in block mode
 1122 | Event when an attack surface reduction rule fires in audit mode

## Other articles in this deployment collection

[Attack surface reduction rules deployment overview](attack-surface-reduction-rules-deployment.md)

[Plan attack surface reduction rules deployment](attack-surface-reduction-rules-deployment-plan.md)

[Enable attack surface reduction rules](attack-surface-reduction-rules-deployment-implement.md)

[Operationalize attack surface reduction rules](attack-surface-reduction-rules-deployment-operationalize.md)

[Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
