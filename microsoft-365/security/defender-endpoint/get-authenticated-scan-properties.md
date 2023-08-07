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
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/14/2022
---

# Authenticated scan methods and properties

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
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
[Get scan agent by Id](../defender-endpoint/Get-agent-details.md)| Retrieves the details for a specified agent by its Id.
[Get scan history by definition](get-scan-history-by-definition.md)|List scan definition history.
[Get scan history by session](get-scan-history-by-session.md)|List scan history for a session.

Learn more about [Windows authenticated scan](../defender-vulnerability-management/windows-authenticated-scan.md) and [Network authenticated scans](./network-devices.md).

## Properties

Property|Data type|Description
:---|:---|:---
id|String| Scan ID.
scanType|Enum|The type of scan. Possible values are: "Windows", "Network".
scanName|String|Name of the scan.
isActive|Boolean|Status of whether the scan actively running.
orgId |String| Related organization ID.
intervalInHours|Int|The interval at which the scan runs.
createdBy|String| Unique identity of the user that created the scan.
targetType|String|The target type in the target field. Possible types are "IP Address" or "Hostname". Default value is IP Address.
target|String| A comma separated list of targets to scan, either IP addresses or hostnames.
scanAuthenticationParams|Object|An object representing the authentication parameters, see [Authentication parameters object properties](#authentication-parameters-object-properties) for expected fields. This property is mandatory when creating a new scan and is optional when updating a scan.
scannerAgent|Object|An object representing the scanner agent, contains the machine Id of the scanning device.

### Authentication parameters object properties

Property|Data type|Description
:---|:---|:---
@odata.type|Enum|The scan type authentication parameters. Possible values are: "#microsoft.windowsDefenderATP.api.SnmpAuthParams" for "Network" scan type, and "#microsoft.windowsDefenderATP.api.WindowsAuthParams" for "Windows" scan type.
type|Enum|The authentication method. Possible values vary based on @odata.type property. <br/> - If @odata.type is "SnmpAuthParams", possible values are "CommunityString", "NoAuthNoPriv", "AuthNoPriv", "AuthPriv". <br/> - If @odata.type is "WindowsAuthParams" possible values are "Kerberos" or "Negotiate".
KeyVaultUrl|String (Optional)|An optional property that specifies from which KeyVault the scanner should retrieve credentials. If KeyVault is specified there's no need to specify username, password.
KeyVaultSecretName|String (Optional)|An optional property that specifies KeyVault secret name from which the scanner should retrieve credentials. If KeyVault is specified there's no need to specify username, password.
Domain|String (Optional)|Domain name when using "WindowsAuthParams".
Username|String (Optional)|Username when using "WindowsAuthParams" or the username when choosing "SnmpAuthParams" with any type other than "CommunityString".
IsGMSAUser|Boolean (Optional)|Must be set to true when choosing "WindowsAuthParams".
CommunityString|String (Optional)|Community string to use when choosing "SnmpAuthParams" with "CommunityString"
AuthProtocol|String (Optional)|Auth protocol to use with "SnmpAuthParams" and "AuthNoPriv" or "AuthPriv". Possible values are "MD5", "SHA1".
AuthPassword|String (Optional)|Auth password to use with "SnmpAuthParams" and "AuthNoPriv" or "AuthPriv".
PrivProtocol|String (Optional)|Priv protocol to use with "SnmpAuthParams" and "AuthPriv". Possible values are "DES", "3DES", "AES".
PrivPassword|String (Optional)|Priv password to use with "SnmpAuthParams" and "AuthPriv".
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
