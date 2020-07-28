---
title: Take action on advanced hunting query results in Microsoft Threat Protection
description: Immediately address threats and affected assets in your advanced hunting query results
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, take action
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Take action on advanced hunting query results

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

You can quickly contain threats or address compromised assets that you find in [advanced hunting](advanced-hunting-overview.md) using powerful and comprehensive action options. With the *take action*, you can:

- Take various actions on devices
- Quarantine files
- Mark accounts as compromised

## Take various actions on devices
You can take the following actions on devices identified by the `DeviceId` column of you query results:

- Isolate affected devices to contain an infection or prevent attacks from moving laterally
- Collect investigation package to obtain more forensic information
- Run an antivirus scan to find and remove threats using the latest security intelligence updates
- Initiate an automated investigation to check and remediate threats on the device and possibly other affected devices
- Restrict app execution to only Microsoft-signed executable files, preventing subsequent threat activity through malware or other untrusted executables
   
## Quarantine files
You can deploy the *quarantine* action on files, so that they are automatically quarantined when encountered. When selecting this action, you can choose between the following columns to identify which files in your query results to quarantine:

- `SHA1` — In most advanced hunting tables, this is the SHA-1 of the file that was affected by the recorded action. For example, if a file was copied, this would be the copied file.
- `InitiatingProcessSHA1` — In most advanced hunting tables, this is the file responsible for initiating the recorded action. For example, if a child process was launched, this would be the parent process. 
- `SHA256` — This is the SHA-256 equivalent of the file identified by the `SHA1` column.
- `InitiatingProcessSHA256` — This is the SHA-256 equivalent of the file identified by the `InitiatingProcessSHA1` column.

## Mark account as compromised
Marking a user account as "compromised" generates an [alert on Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/monitor-alerts) and triggers corresponding enforcement actions depending on the policies that are currently in place. You can choose between the following columns in your query results to identify which accounts to mark: 

- `AccountObjectId` — In most advanced hunting tables, this is the Active Directory object ID for the account affected by the recorded action. For example, if account information was queried, this would be the account being queried.
- `IdentityProcessAccountObjectId`— In most advanced hunting tables, this is the Active Directory object ID for the account used to perform the recorded action, such as the account used to initiate a process or to query Active Directory for other account information.

## Take action
To take any of the described actions, select one or more records in your query results and then select **Take actions**. A wizard will guide you through the process of selecting and then submitting your preferred actions.

![Image of selected record with panel for inspecting the record](../../media/mtp-ah/inspect-record.png)

## Review taken actions
Each action is individually recorded in the action center under **Action center** > **History** ([security.microsoft.com/action-center/history](https://security.microsoft.com/action-center/history)). Go to the action center to check the status of each action.
 
## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](custom-detections-overview.md)
