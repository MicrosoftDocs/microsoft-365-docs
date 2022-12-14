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
[Add a new scan definition](../defender-endpoint/get-browser-extensions-permission-info.md)|Add a new scan definition.
[Get all scan agents](../defender-endpoint/get-assessment-browser-extensions.md)|List all scan agents.
[Get all scan definitions](../defender-endpoint/get-browser-extensions-permission-info.md)|List all scan definitions.

Learn more about [Windows authenticated scan](../defender-vulnerability-management/windows-authenticated-scan.md) and [Network authenticated scans](./network-devices.md)

## Properties

Property ID|Data type|Description
:---|:---|:---
scanType|String|The type of scan
scanName|String|Name of the scan
isActive|Boolean|Status of the scan
target|Long|IP target range the scan applies to
scannerAgent|String|Id of te scanning device
intervalInHours| String |The interval at which the scan will run
scanAuthenticationParams| Array of authentication related parameters. See [add a new scan definition](./add-a-new-scan-definition.md)
