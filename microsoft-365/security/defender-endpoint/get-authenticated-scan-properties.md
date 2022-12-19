---
title: Authenticated scan methods and properties
description: The API response contains Microsoft Defender Vulnerability Management authenticated scans created in your tenant. You can request all the scans, all the scan definitions or add a new network our authenticated scan.
keywords: apis, scan, authenticated scan, get, authenticated methods, authenticated properties,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# Authenticated scan methods and properties

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!Include[Prerelease information](../../includes/prerelease.md)]

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

## Methods

Method|Description
:---|:---|:---
[Get all scan definitions](get-all-scan-definitions.md)|List all scan definitions.
[Add, delete or update a scan definition](add-a-new-scan-definition.md)|Add, delete, or update a new scan definition.
[Get all scan agents](get-all-scan-agents.md)|List all scan agents.
[Get scan history by definition](get-scan-history-by-definition.md)|List scan definition history.
[Get scan history by session](get-scan-history-by-session.md)|List scan history for a session.

Learn more about [Windows authenticated scan](../defender-vulnerability-management/windows-authenticated-scan.md) and [Network authenticated scans](./network-devices.md).

## Properties

Property ID|Data type|Description
:---|:---|:---
id|String| Scan id.
scanType|String|The type of scan.
scanName|String|Name of the scan.
isActive|Boolean|Status of the scan.
orgId | Related organization id.
intervalInHours|String |The interval at which the scan will run.
createdBy|String| Who created the scan.
targetType|Long|IP target range the scan applies to.
scanAuthenticationParams|String |Authenticated scan object contains: authentication type string, username string, password string.
scannerAgent|String|Scanner agent object contains: scanning agent id string, scanning agent device id string, scanning agent device name string, the date and time (in UTC) the device was last seen.
latestScan|String|Latest scan object contains: scan status string, failure string, the date and time (in UTC) the scan was executed.
