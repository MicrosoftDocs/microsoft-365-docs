---
title: Create and manage custom detection rules in Microsoft Threat Protection
description: Learn how to create and manage custom detections rules based on advanced hunting queries
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, rules, schema, kusto, microsoft 365, Microsoft Threat Protection
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

# Create and manage custom detections rules

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Custom detection rules built from [Advanced hunting](advanced-hunting-overview.md) queries let you proactively monitor various events and system states, including suspected breach activity and misconfigured machines. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

> [!NOTE]
> To create or manage custom detection rules, [your role](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group) needs to have the **manage security settings** permission.

## Create a custom detection rule
### 1. Prepare the query.

In Microsoft 365 security center, go to **Advanced hunting** and select an existing query or create a new query. When using an new query, run the query to identify errors and understand possible results.

#### Required columns in the query results
To create a custom detection rule, the query must return the following columns:

- `Timestamp`
- An entity represented by any of the following columns:
    - `DeviceId`
    - `RecipientEmailAddress`
    - `SenderFromAddress` (envelope sender or Return-Path address)
    - `SenderMailFromAddress` (sender address displayed by email client)
    - `RecipientObjectId`
- `ReportId` 

Simple queries, such as those that don't use the `project` or `summarize` operator to customize or aggregate results, typically return these common columns.

There are various ways to ensure more complex queries return these columns. For example, if you prefer to aggregate and count by entity under a column such as `DeviceId`, you can still return `Timestamp` and `ReportId` by getting these values from the most recent event involving unique `DeviceId`.

The sample query below counts the number of unique machines (`DeviceId`) with antivirus detections and uses this count to find only the machines with more than five detections. To return the latest `Timestamp` and the corresponding `ReportId`, it uses the `summarize` operator with the `arg_max` function.

```kusto
DeviceEvents
| where Timestamp > ago(7d)
| where ActionType == "AntivirusDetection"
| summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count() by DeviceId
| where count_ > 5
```

### 2. Create new rule and provide alert details.

With the query in the query editor, select **Create detection rule** and specify the following alert details:

- **Detection name** — name of the detection rule
- **Frequency** — interval for running the query and taking action. [See additional guidance below](#rule-frequency)
- **Alert title** — title displayed with alerts triggered by the rule
- **Severity** — potential risk of the component or activity identified by the rule. [Read about alert severities](alerts-queue.md#severity)
- **Category** — type of threat component or activity, if any. [Read about alert categories](alerts-queue.md#understanding-alert-categories)
- **Description** — more information about the component or activity identified by the rule 
- **Recommended actions** — additional actions that responders might take in response to an alert 

#### Rule frequency
When saved, custom detections rules immediately run. They then run again at fixed intervals based on the frequency you choose. Rules that run less frequently will have longer lookback durations:

- **Every 24 hours** — checks data from the past 30 days
- **Every 12 hours** — checks data from the past 24 hours
- **Every 3 hours** — checks data from the past 6 hours
- **Every hour** — checks data from the past 2 hours

Whenever a rule runs, similar detections on the same machine could be aggregated into fewer alerts, so running a rule less frequently can generate fewer alerts. Select the frequency that matches how closely you want to monitor detections, and consider your organization's capacity to respond to the alerts.

### 3. Choose the impacted entities.
Identify the columns in your query results where you expect to find main affected or impacted entity. For example, a query might return sender (`SenderFromAddress` or `SenderMailFromAddress`) and recipient (`RecipientEmailAddress`) addresses. By identifying the main impacted entity among these addresses, you guide the service on how to aggregate relevant alerts, correlate incidents, and target response actions.

You can select only one column for each entity type (mailbox, user, or device). Columns that are not returned by your query can't be selected.

### 3. Specify actions on files or machines.
Your custom detection rule can automatically take actions on files or machines that are returned by the query.

#### Actions on machines
These actions are applied to machines in the `DeviceId` column of the query results:
- **Isolate machine** — uses Microsoft Defender ATP to applies full network isolation, preventing the machine from connecting to any application or service. [Learn more about Microsoft Defender ATP machine isolation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts#isolate-machines-from-the-network)
- **Collect investigation package** — collects machine information in a ZIP file. [Learn more about the Microsoft Defender ATP investigation package](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts#collect-investigation-package-from-machines)
- **Run antivirus scan** — performs a full Windows Defender Antivirus scan on the machine
- **Initiate investigation** — initiates an [automated investigation](mtp-autoir.md) on the machine

#### Actions on files
These actions are applied to files in the `SHA1` or the `InitiatingProcessSHA1` column of the query results:
- **Allow/Block** — automatically adds the file to your [Microsoft Defender ATP custom indicator list](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators) so that it is always allowed to run or blocked from running. You can set the scope of this action so that it is taken only on selected machine groups. This scope is independent of the scope of the rule.
- **Quarantine file** — deletes the file from its current location and places a copy in quarantine

### 4. Click **Create** to save and turn on the rule.
When saved, the custom detection rule immediately runs. It runs again every 24 hours to check for matches, generate alerts, and take response actions.

## Manage existing custom detection rules
You can view the list of existing custom detection rules, check their previous runs, and review the alerts they have triggered. You can also run a rule on demand and modify it.

### View existing rules

To view all existing custom detection rules, navigate to **Hunting** > **Custom detections**. The page lists all the rules with the following run information:

- **Last run** — when a rule was last run to check for query matches and generate alerts
- **Last run status** — whether a rule ran successfully
- **Next run** — the next scheduled run
- **Status** — whether a rule has been turned on or off

### View rule details, modify rule, and run rule

To view comprehensive information about a custom detection rule, select the name of rule from the list of rules in **Hunting** > **Custom detections**. This opens a page about the custom detection rule with general information about the rule, including the details of the alert, run status, and scope. It also provides the list of triggered alerts and triggered actions.

![Custom detection rule details page](../../images/custom-detection-details.png)<br>
*Custom detection rule details*

You can also take the following actions on the rule from this page:

- **Run** — run the rule immediately. This also resets the interval for the next run.
- **Edit** — modify the rule without changing the query
- **Modify query** — edit the query in advanced hunting
- **Turn on** / **Turn off** — enable the rule or stop it from running
- **Delete** — turn off the rule and remove it

### View and manage triggered alerts

In the rule details screen (**Hunting** > **Custom detections** > **[Rule name]**), go to **Triggered alerts** to view the list of alerts generated by matches to the rule. Select an alert to view detailed information about that alert and take the following actions on that alert:

- Manage the alert by setting its status and classification (true or false alert)
- Link the alert to an incident
- Run the query that triggered the alert on advanced hunting

### Review actions
In the rule details screen (**Hunting** > **Custom detections** > **[Rule name]**), go to **Triggered actions** to view the list of actions taken based on matches to the rule.

>[!TIP]
>To quickly view information and take action on an item in a table, use the selection column [&#10003;] at the left of the table.

## Related topic
- [Custom detections overview](custom-detections-overview.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the advanced hunting query language](advanced-hunting-query-language.md)
