---
title: Take action on advanced hunting query results in Microsoft 365 Defender
description: Quickly address threats and affected assets in your advanced hunting query results
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, take action
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
ms.date: 02/16/2021
---

# Take action on advanced hunting query results

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

You can quickly contain threats or address compromised assets that you find in [advanced hunting](advanced-hunting-overview.md) using powerful and comprehensive action options. With these options, you can:

- Take various actions on devices
- Quarantine files

## Required permissions

To take action on devices through advanced hunting, you need a role in Microsoft Defender for Endpoint with [permissions to submit remediation actions on devices](/windows/security/threat-protection/microsoft-defender-atp/user-roles#permission-options). If you can't take action, contact a global administrator about getting the following permission:

*Active remediation actions > Threat and vulnerability management - Remediation handling*

To take action on emails through advanced hunting, you need a role in Microsoft Defender for Office 365 to [search and purge emails](/microsoft-365/security/office-365-security/scc-permissions).

## Take various actions on devices

You can take the following actions on devices identified by the `DeviceId` column in your query results:

- Isolate affected devices to contain an infection or prevent attacks from moving laterally
- Collect investigation package to obtain more forensic information
- Run an antivirus scan to find and remove threats using the latest security intelligence updates
- Initiate an automated investigation to check and remediate threats on the device and possibly other affected devices
- Restrict app execution to only Microsoft-signed executable files, preventing subsequent threat activity through malware or other untrusted executables

To learn more about how these response actions are performed through Microsoft Defender for Endpoint, [read about response actions on devices](/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts).

### Quarantine files

You can deploy the *quarantine* action on files so that they are automatically quarantined when encountered. When selecting this action, you can choose between the following columns to identify which files in your query results to quarantine:

- `SHA1`: In most advanced hunting tables, this column refers to the SHA-1 of the file that was affected by the recorded action. For example, if a file was copied, this affected file would be the copied file.
- `InitiatingProcessSHA1`: In most advanced hunting tables, this column refers to the file responsible for initiating the recorded action. For example, if a child process was launched, this initiator file would be part of the parent process.
- `SHA256`: This column is the SHA-256 equivalent of the file identified by the `SHA1` column.
- `InitiatingProcessSHA256`: This column is the SHA-256 equivalent of the file identified by the `InitiatingProcessSHA1` column.

To learn more about how quarantine actions are taken and how files can be restored, [read about response actions on files](/windows/security/threat-protection/microsoft-defender-atp/respond-file-alerts).

> [!NOTE]
> To locate files and quarantine them, the query results should also include `DeviceId` values as device identifiers.

To take any of the described actions, select one or more records in your query results and then select **Take actions**. A wizard will guide you through the process of selecting and then submitting your preferred actions.

:::image type="content" source="../../media/take-action-multiple.png" alt-text="Take actions option in the Microsoft 365 Defender portal" lightbox="../../media/take-action-multiple.png":::

## Take various actions on emails

Apart from device-focused remediation steps, you can also take some actions on emails from your query results. Select the records you want to take action on, select **Take actions**, then under **Choose actions**, select your choice from the following:

- `Move to mailbox folder` - select this to move the email messages to Junk, Inbox, or Deleted items folder

   :::image type="content" source="../../media/advanced-hunting-take-actions-email.png" alt-text="The option Take actions in the Microsoft 365 Defender portal" lightbox="../../media/advanced-hunting-take-actions-email.png":::

- `Delete email` - select this to move email messages to the Deleted items folder (**Soft delete**) or delete them permanently (**Hard delete**)

   :::image type="content" source="../../media/advanced-hunting-take-actions-email-del.png" alt-text="The Take actions option in the Microsoft 365 Defender portal" lightbox="../../media/advanced-hunting-take-actions-email-del.png":::

You can also provide a remediation name and a short description of the action taken to easily track it in the action center history. You can also use the Approval ID to filter for these actions in the action center. This ID is provided at the end of the wizard:

:::image type="content" source="../../media/choose-email-actions-entities.png" alt-text="take actions wizard showing choose actions for entities" lightbox="../../media/choose-email-actions-entities.png":::

These email actions are applicable to [custom detections](custom-detections-overview.md) as well.

## Review actions taken

Each action is individually recorded in the [action center](m365d-action-center.md) under **Action center** > **History** ([security.microsoft.com/action-center/history](https://security.microsoft.com/action-center/history)). Go to the action center to check the status of each action.

> [!NOTE]
> Some tables in this article might not be available in Microsoft Defender for Endpoint. [Turn on Microsoft 365 Defender](m365d-enable.md) to hunt for threats using more data sources. You can move your advanced hunting workflows from Microsoft Defender for Endpoint to Microsoft 365 Defender by following the steps in [Migrate advanced hunting queries from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mde.md).

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Action center overview](m365d-action-center.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
