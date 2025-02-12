---
title: "Manage Scheduled prompts for Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 12/06/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: "Learn about managing Scheduled prompts for Microsoft 365 Copilot, admin controls, data policies, and user management steps."
---

# Manage Scheduled prompts for Microsoft 365 Copilot

Scheduled prompts in Microsoft 365 Copilot allow users to automate Copilot prompts to run at set times and frequencies in Microsoft Teams, Office.com/chat, and Microsoft Outlook for the web and Desktop. As an admin, you can manage this feature for your organization.

>[!NOTE]
> This feature is in preview. As an admin, you can opt-in to making this feature available to your organization. To learn more, see [Opt in or out of preview](#opt-in-or-out-of-preview).

## Before you begin

You must have both of the following licenses to manage Scheduled prompts:

- Microsoft 365 Copilot license (in the Copilot subscription)
- Standard Microsoft Power Automate license

Before you start using the Scheduled prompts feature, ensure that the Optional connected experiences setting is on in your tenant admin portal. This setting should be on by default, but you can double-check by accessing the Optional connected experiences setting at [config.office.com](https://config.office.com/).

Additionally, if you block all new connectors by default using Power Platform Data Loss Prevention (DLP) policies, you need to run the following command to explicitly reclassify the connector:

```powershell
$connectorsToReclassify = @([pscustomobject]@{
 id = "/providers/Microsoft.PowerApps/apis/shared_bizchat"
 name = "Copilot for Microsoft 365"
 type = "providers/Microsoft.PowerApps/apis"
})
Add-ConnectorsToPolicy -PolicyName {TENANT_DLP_POLICY_GUID} -Connectors $connectorsToReclassify -Classification {'Confidential'|'General'}
```

To learn more about adding connectors to policies, see [Add-ConnectorsToPolicy](/powershell/module/microsoft.powerapps.administration.powershell/add-connectorstopolicy).

## Admin controls

To use the Scheduled prompts feature as an admin, no action is required if no DLP policies are in place and if the Optional connected experiences setting is already enabled. This feature is automatically included as part of the Optional Connected Experiences admin setting. However, if you have DLP policies in place that block new connectors, you might need to run the command script mentioned previously. You can check if you have such policies in the [Power Platform admin center](https://admin.powerplatform.microsoft.com).

If you prefer to not have this feature available to your organization, you can disable the Optional connected experiences setting at [config.office.com](https://config.office.com/). For more information, see [Admin controls for optional connected experiences](/microsoft-365-apps/privacy/optional-connected-experiences).

If you turn off the Optional connected experiences setting, this action prevents anyone in your organization from seeing Scheduled prompts in Copilot.

### Data policies

To prevent exposing organizational data, you should also create a data policy in the [Power Platform admin center](https://admin.powerplatform.microsoft.com). Creating a data policy in the center allows you to control access to these connectors in various ways to help reduce risk in your organization. To learn more, see [Data policies - Power Platform](/microsoft-365-apps/privacy/optional-connected-experiences).

## Disabling Scheduled prompts

:::image type="content" source="media/prompts-org-policy.png" alt-text="Screenshot showing the pop-up that informs users of their organization's data policy." lightbox="media/prompts-org-policy.png":::

If you disable this feature after someone in your organization has already used it:

- Users will no longer be able to manage previously scheduled prompts.
- Sessions for previously run scheduled prompts continue to exist.
- Users will no longer see the Scheduled prompts feature or the prompt management pane if the Optional Connected Experiences setting is disabled.

Users will still see the feature if the Optional Connected Experiences setting is enabled and DLP policies are in place, but they won't be able to successfully create a scheduled prompt, and will be made aware that this failure is a result of their organization’s data policy.

## User controls

:::image type="content" source="media/prompt-set-up.png" alt-text="Screenshot showing the setup text for a new scheduled prompt in Copilot." lightbox="media/prompt-set-up.png":::

Your users can find the Scheduled prompts feature by hovering over a prompt they have submitted to Copilot. When a user selects the Save and activate button to confirm the scheduled prompt, a user's prompt information will be sent to the Power Automate and Power Platform system, and the [Power Automate terms of service and privacy policy](/power-platform/admin/wp-compliance-data-privacy) apply.

To manage their Scheduled prompts, users can follow these steps:

1. Hover over the prompt they have submitted to Copilot.
2. Select the prompt management pane.
3. From there, users can view and delete their scheduled prompts.

Users can schedule up to 10 prompts to run at specific times, with responses delivered to the right rail of their Microsoft 365 Copilot Chat experience. These prompts can be set to run on a recurring basis, ensuring users receive necessary information aligned with their workflow. Responses from scheduled prompts are bolded and have a recurring icon to help users identify them easily.

To learn more about prompts for your users, see [Learn about Copilot prompts](https://support.microsoft.com/topic/learn-about-copilot-prompts-f6c3b467-f07c-4db1-ae54-ffac96184dd5).

## Opt in or out of preview

If you’re interested in joining the preview, you must opt in. To be eligible, you must have:

- Copilot license
- Optional connected experiences admin toggle enabled
- DLP policies configured to allow the Microsoft 365 Copilot connector in your default Power Platform environment

You can start the opt-in process by submitting a support ticket and stating that you would like to join the Scheduled Prompts preview. Our engineers can help validate eligibility criteria and enroll you into the preview program.

To opt out of the preview, you can similarly submit a customer support ticket requesting to opt out. To learn more about how to do this, see [Get support for Microsoft 365 for business](/microsoft-365/admin/get-help-support).
