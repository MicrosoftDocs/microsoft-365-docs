---
title: List incidents API in Microsoft Threat Protection
description: Learn how to list incidents API in Microsoft Threat Protection
keywords: list, incident, incidents, api
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# List incidents API in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

>[!IMPORTANT] 
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


## API description
The Incident API exposes a collection of incidents that were flagged from devices, email accounts, users in your network.

It will help you sort through incidents to prioritize and create an informed cybersecurity response decision.

The API returns incidents that occurred in the range of your environment retention policy, with the most recent incident showing at the top of the list, each incident contains an array of related alerts and their related entities.

<br>The API supports the following **OData** operators:
<br>```$filter``` on: ```lastUpdateTime```, ```createdTime```, ```status``` and ```assignedTo``` properties.
<br>```$top``` with max value of **100**
<br>```$skip```

## Limitations

1. Maximum page size is 100.
2. Rate limitations for this API are 50 calls per minute and 1500 calls per hour.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Access Microsoft Threat Protection APIs](api-access.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Incident.Read.All |	'Read all incidents'
Application |	Incident.ReadWrite.All | 'Read and write all incidents'
Delegated (work or school account) | Incident.Read | 'Read incidents'
Delegated (work or school account) | Incident.ReadWrite | 'Read and write incidents'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have permission the view incidents in the portal.
>- The response will include only incidents that the user is exposed to.

## HTTP request

```
GET /api/incidents
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
None.

## Response
If successful, this method returns 200 OK, and a list of [incidents](api-incident.md) in the response body.

## Schema mapping

| Field name                                | Description                                                                                                                                                                                                                                                                                                                                                                                | Example value                                                                                                                                                                                                                                     |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Incident metadata**                         |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| incidentId                                | Unique identifier to represent the incident                                                                                                                                                                                                                                                                                                                                                | 924565                                                                                                                                                                                                                                            |
| redirectIncidentId                        | This field is populated in case an incident is being grouped together with another one as part of the incident processing logic.                                                                                                                                                                                                                                                           | 924569                                                                                                                                                                                                                                            |
| incidentName                              | String value available for every incident                                                                                                                                                                                                                                                                                                                                                  | Ransomware activity                                                                                                                                                                                                                               |
| createdTime                               | Time when incident was first created.                                                                                                                                                                                                                                                                                                                                                      | 2020-09-06T14:46:57.0733333Z                                                                                                                                                                                                                      |
| lastUpdateTime                            | Time when incident was last updated at the backend.<br> This field can be used when setting the request parameter for the range of time that incidents are retrieved.                                                                                                                                                                                                                      | 2020-09-06T14:46:57.29Z                                                                                                                                                                                                                           |
| assignedTo                                | Owner of the incident or 'null' in case there is no owner assigned                                                                                                                                                                                                                                                                                                                         | [secop2@contoso.com](mailto:secop2@contoso.com)                                                                                                                                                                                                   |
| classification                            | Specifies the specification of the incident. The property values are: 'Unknown', 'FalsePositive', 'TruePositive'                                                                                                                                                                                                                                                                           | Unknown                                                                                                                                                                                                                                           |
| determination                             | Specifies the determination of the incident. The property values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'                                                                                                                                                                                                                | NotAvailable                                                                                                                                                                                                                                      |
| status                                    | Categorize incidents (as Active, or Resolved). This helps you organize and manage how your team can respond to incidents.                                                                                                                                                                                                                                                                  | Active                                                                                                                                                                                                                                            |
| severity                                  | The severity of an incident is indicative of the impact it can have in your assets. The higher the severity the bigger the impact and typically requires the most immediate attention.<br>One of the following values: informational, low, medium and high.                                                                                                                                | Medium                                                                                                                                                                                                                                            |
| tags                                      | Array of custom tags assosiated with an incident, for example to flag a group of incidents with a common characteristics.                                                                                                                                                                                                                                                                  | \[\]                                                                                                                                                                                                                                              |
| alerts                                    | Array of all the alerts related to the incident and other information about them such as severity, entities that were involved in the alert, the source of the alerts.                                                                                                                                                                                                                     | \[\] (see details on alert fields below)                                                                                                                                                                                                          |
| **Alerts metadata**                           |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| alertId                                   | Unique identifier to represent the alert                                                                                                                                                                                                                                                                                                                                                   | caD70CFEE2-1F54-32DB-9988-3A868A1EBFAC                                                                                                                                                                                                            |
| incidentId                                | Unique identifier to represent the incident this alert is assosiated with                                                                                                                                                                                                                                                                                                                  | 924565                                                                                                                                                                                                                                            |
| serviceSource                             | Alerts can be from different sources (Microsoft Defender ATP, Microsoft Cloud App Security, Azure ATP, Office 365 ATP)                                                                                                                                                                                                                                                                     | MicrosoftCloudAppSecurity                                                                                                                                                                                                                         |
| creationTime                              | Time when alert was first created.                                                                                                                                                                                                                                                                                                                                                         | 2020-09-06T14:46:55.7182276Z                                                                                                                                                                                                                      |
| lastUpdatedTime                           | Time when alert was last updated at the backend.                                                                                                                                                                                                                                                                                                                                           | 2020-09-06T14:46:57.2433333Z                                                                                                                                                                                                                      |
| resolvedTime                              | Time when alert was resolved.                                                                                                                                                                                                                                                                                                                                                              | 2020-09-10T05:22:59Z                                                                                                                                                                                                                              |
| firstActivity                             | Time when alert related first activity updated at the backend.                                                                                                                                                                                                                                                                                                                             | 2020-09-04T05:22:59Z                                                                                                                                                                                                                              |
| title                                     | String value available for every alert                                                                                                                                                                                                                                                                                                                                                     | Ransomware activity                                                                                                                                                                                                                               |
| description                               | String value discribing every alert                                                                                                                                                                                                                                                                                                                                                        | The user Test User2 (testUser2@microsoft.com) manipulated 99 files with multiple extensions ending with the uncommon extension herunterladen. This is an unusual number of file manipulations and is indicative of a potential ransomware attack. |
| category                                  | The attack categories give you visual and numeric view of how advanced the attack has progressed against the kill chain. Aligned to the MITRE ATT&CK™ framework.                                                                                                                                                                                                                           | Impact                                                                                                                                                                                                                                            |
| status                                    | Categorize alerts (as New, Active, or Resolved). This helps you organize and manage how your team can respond to alerts.                                                                                                                                                                                                                                                                   | New                                                                                                                                                                                                                                               |
| severity                                  | The severity of an alert is indicative of the impact it can have in your assets. The higher the severity the bigger the impact and typically requires the most immediate attention.<br>One of the following values: informational, low, medium and high.                                                                                                                                   | Medium                                                                                                                                                                                                                                            |
| investigationId                           | See the automated investigation id triggered by this alert.                                                                                                                                                                                                                                                                                                                                | 1234                                                                                                                                                                                                                                              |
| investigationState                        | information on the investigation status. One of the following: 'Unknown', 'Terminated', 'SuccessfullyRemediated', 'Benign', 'Failed', 'PartiallyRemediated', 'Running', 'PendingApproval', 'PendingResource', 'PartiallyInvestigated', 'TerminatedByUser', 'TerminatedBySystem', 'Queued', 'InnerFailure', 'PreexistingAlert', 'UnsupportedOs', 'UnsupportedAlertType', 'SuppressedAlert'. | UnsupportedAlertType                                                                                                                                                                                                                              |
| classification                            | Specifies the specification of the incident. The property values are: 'Unknown', 'FalsePositive', 'TruePositive' or null                                                                                                                                                                                                                                                                   | Unknown                                                                                                                                                                                                                                           |
| determination                             | Specifies the determination of the incident. The property values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other' or  'null'                                                                                                                                                                                                     | Apt                                                                                                                                                                                                                                               |
| detectionSource <Remove from doc for now> | Alerts can be from different sources (Microsoft Defender ATP, Microsoft Cloud App Security, Azure ATP, Office 365 ATP)                                                                                                                                                                                                                                                                     | MCAS                                                                                                                                                                                                                                              |
| assignedTo                                | Owner of the alert or 'null' in case there is no owner assigned                                                                                                                                                                                                                                                                                                                            | [secop2@contoso.com](mailto:secop2@contoso.com)                                                                                                                                                                                                   |
| actorName                                 | Available for alerts related to a known actor group                                                                                                                                                                                                                                                                                                                                        | BORON                                                                                                                                                                                                                                             |
| threatFamilyName                          | Threat family assosiated with this alert                                                                                                                                                                                                                                                                                                                                                   | null                                                                                                                                                                                                                                              |
| mitreTechniques                           | The attack techniques aligned to the MITRE ATT&CK™ framework.                                                                                                                                                                                                                                                                                                                              | \[\]                                                                                                                                                                                                                                              |
| devices                                   | The devices array lists all the devices where alerts related to the incident are seen.                                                                                                                                                                                                                                                                                                     | \[\] (see details on entity fields below)                                                                                                                                                                                                         |
| **Device format**                             |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| DeviceId                                  | The microsoft defender ATP device ID                                                                                                                                                                                                                                                                                                                                                       | 24c222b0b60fe148eeece49ac83910cc6a7ef491                                                                                                                                                                                                          |
| aadDeviceId                               | AAD device Id in case this is a device joined and information                                                                                                                                                                                                                                                                                                                              | null                                                                                                                                                                                                                                              |
| deviceDnsName                             | The device DNS name                                                                                                                                                                                                                                                                                                                                                                        | azeusenjubld05cx.middleeast.corp.microsoft.com                                                                                                                                                                                                    |
| osPlatform                                | The device OS platform                                                                                                                                                                                                                                                                                                                                                                     | WindowsServer2016                                                                                                                                                                                                                                 |
| osBuild                                   | The Device OS Build version                                                                                                                                                                                                                                                                                                                                                                | 14393                                                                                                                                                                                                                                             |
| rbacGroupName                             | The Role based access control group assosiated with the device                                                                                                                                                                                                                                                                                                                             | WDATP-Ring0                                                                                                                                                                                                                                       |
| firstSeen                                 | Time when device was first seen.                                                                                                                                                                                                                                                                                                                                                           | 2020-02-06T14:16:01.9330135Z                                                                                                                                                                                                                      |
| healthStatus                              | Device health state                                                                                                                                                                                                                                                                                                                                                                        | Active                                                                                                                                                                                                                                            |
| riskScore                                 | The devie risk score                                                                                                                                                                                                                                                                                                                                                                       | High                                                                                                                                                                                                                                              |
| entities                                  | The entities array lists all entities that have been identified to be part of, or related to a given alert.                                                                                                                                                                                                                                                                                | \[\] (see details on entity fields below)                                                                                                                                                                                                         |
| **Entity Format**                             |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| entityType                                | Entities that have been identified to be part of, or related to a given alert.<br>The properties values are: User, Ip, Url, File, Process, MailBox, MailMessage, MailCluster, Registry                                                                                                                                                                                                     | User                                                                                                                                                                                                                                              |
| sha1                                      | Available for entity of type "File"<br>File hash available for alerts associated with a file or process                                                                                                                                                                                                                                                                                    | 5de839186691aa96ee2ca6d74f0a38fb8d1bd6dd                                                                                                                                                                                                          |
| sha256                                    | Available for entity of type "File"<br>File hash available for alerts associated with a file or process                                                                                                                                                                                                                                                                                    | 28cb017dfc99073aa1b47c1b30f413e3ce774c4991eb4158de50f9dbb36d8043                                                                                                                                                                                  |
| fileName                                  | Available for entity of type "File"<br>File name available for alerts associated with a file or process                                                                                                                                                                                                                                                                                    | Detector.UnitTests.dll                                                                                                                                                                                                                            |
| filePath                                  | Available for entity of type "File"<br>File path available for alerts associated with a file or process                                                                                                                                                                                                                                                                                    | C:\\\\Agent\\\\\_work\\\\\_temp\\\\Deploy\_SYSTEM 2020-09-06 12\_14\_54\\\\Out                                                                                                                                                                    |
| processId                                 | Available for entity of type "Process"                                                                                                                                                                                                                                                                                                                                                     | 24348                                                                                                                                                                                                                                             |
| processCommandLine                        | Available for entity of type "Process"                                                                                                                                                                                                                                                                                                                                                     | "\\"Your File Is Ready To Download\_1911150169.exe\\" "                                                                                                                                                                                           |
| processCreationTime                       | Available for entity of type "Process"                                                                                                                                                                                                                                                                                                                                                     | 2020-07-18T03:25:38.5269993Z                                                                                                                                                                                                                      |
| parentProcessId                           | Available for entity of type "Process"                                                                                                                                                                                                                                                                                                                                                     | 16840                                                                                                                                                                                                                                             |
| parentProcessCreationTime                 | Available for entity of type "Process"                                                                                                                                                                                                                                                                                                                                                     | 2020-07-18T02:12:32.8616797Z                                                                                                                                                                                                                      |
| ipAddress                                 | Available for entity of type "Ip"<br>Available for alerts associated to network events. For example, 'Communication to a malicious network destination'.                                                                                                                                                                                                                                   | 62.216.203.204                                                                                                                                                                                                                                    |
| url                                       | Available for entity of type "Url"<br>Available for alerts associated to network events. For example, 'Communication to a malicious network destination'.                                                                                                                                                                                                                                  | down.esales360.cn                                                                                                                                                                                                                                 |
| accountName                               | Available for entity of type "User"                                                                                                                                                                                                                                                                                                                                                        | testUser2                                                                                                                                                                                                                                         |
| domainName                                | Available for entity of type "User"                                                                                                                                                                                                                                                                                                                                                        | urope.corp.microsoft                                                                                                                                                                                                                              |
| userSid                                   | Available for entity of type "User"                                                                                                                                                                                                                                                                                                                                                        | S-1-5-21-1721254763-462695806-1538882281-4156657                                                                                                                                                                                                  |
| aadUserId                                 | Available for entity of type "User"                                                                                                                                                                                                                                                                                                                                                        | fc8f7484-f813-4db2-afab-bc1507913fb6                                                                                                                                                                                                              |
| userPrincipalName                         | Available for entity of type "User / MailBox / MailMessage"                                                                                                                                                                                                                                                                                                                                | [testUser2@microsoft.com](mailto:testUser2@microsoft.com)                                                                                                                                                                                         |
| mailboxDisplayName                        | Available for entity of type "MailBox"                                                                                                                                                                                                                                                                                                                                                     | test User2                                                                                                                                                                                                                                        |
| mailboxAddress                            | Available for entity of type "User / MailBox / MailMessage"                                                                                                                                                                                                                                                                                                                                | [testUser2@microsoft.com](mailto:testUser2@microsoft.com)                                                                                                                                                                                         |
| clusterBy                                 | Available for entity of type "MailCluster"                                                                                                                                                                                                                                                                                                                                                 | Subject;P2SenderDomain;ContentType                                                                                                                                                                                                                |
| sender                                    | Available for entity of type "User / MailBox/MailMessage"                                                                                                                                                                                                                                                                                                                                  | [br.kapara@mail.pbgb.co.in](mailto:br.kapara@mail.pbgb.co.in)                                                                                                                                                                                     |
| recipient                                 | Available for entity of type "MailMessage"                                                                                                                                                                                                                                                                                                                                                 | [test.User4@microsoft.com](mailto:test.User4@microsoft.com)                                                                                                                                                                                       |
| subject                                   | Available for entity of type "MailMessage"                                                                                                                                                                                                                                                                                                                                                 | \[EXTERNAL\] Attention                                                                                                                                                                                                                            |
| deliveryAction                            | Available for entity of type "MailMessage"                                                                                                                                                                                                                                                                                                                                                 | Delivered                                                                                                                                                                                                                                         |
| securityGroupId                           | Available for entity of type "SecurityGroup"                                                                                                                                                                                                                                                                                                                                               | 301c47c8-e15f-4059-ab09-e2ba9ffd372b                                                                                                                                                                                                              |
| securityGroupName                         | Available for entity of type "SecurityGroup"                                                                                                                                                                                                                                                                                                                                               | Network Configuration Operators                                                                                                                                                                                                                   |
| registryHive                              | Available for entity of type "Registry"                                                                                                                                                                                                                                                                                                                                                    | HKEY\_LOCAL\_MACHINE                                                                                                                                                                                                                              |
| registryKey                               | Available for entity of type "Registry"                                                                                                                                                                                                                                                                                                                                                    | SOFTWARE\\\\Microsoft\\\\Windows NT\\\\CurrentVersion\\\\Winlogon                                                                                                                                                                                 |
| registryValueType                         | Available for entity of type "Registry"                                                                                                                                                                                                                                                                                                                                                    | String                                                                                                                                                                                                                                            |
| registryValue                             | Available for entity of type "Registry"                                                                                                                                                                                                                                                                                                                                                    | 31-00-00-00                                                                                                                                                                                                                                       |
| deviceId                                  | The id of device related to the entity if exists                                                                                                                                                                                                                                                                                                                                           | 986e5df8b73dacd43c8917d17e523e76b13c75cd                                                                                                                                                                                                          |



## Example

**Request**

```
GET https://api.security.microsoft.com/api/incidents
```

**Response**
```json
{
	"@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Incidents",
	"value": [
			{
			"incidentId": 924565,
			"redirectIncidentId": null,
			"incidentName": "Ransomware activity",
			"createdTime": "2020-09-06T14:46:57.0733333Z",
			"lastUpdateTime": "2020-09-06T14:46:57.29Z",
			"assignedTo": null,
			"classification": "Unknown",
			"determination": "NotAvailable",
			"status": "Active",
			"severity": "Medium",
			"tags": [],
			"alerts": [
				{
					"alertId": "caD70CFEE2-1F54-32DB-9988-3A868A1EBFAC",
					"incidentId": 924565,
					"serviceSource": "MicrosoftCloudAppSecurity",
					"creationTime": "2020-09-06T14:46:55.7182276Z",
					"lastUpdatedTime": "2020-09-06T14:46:57.2433333Z",
					"resolvedTime": null,
					"firstActivity": "2020-09-04T05:22:59Z",
					"lastActivity": "2020-09-04T05:22:59Z",
					"title": "Ransomware activity",
					"description": "The user Test User2 (testUser2@microsoft.com) manipulated 99 files with multiple extensions ending with the uncommon extension herunterladen. This is an unusual number of file manipulations and is indicative of a potential ransomware attack.",
					"category": "Impact",
					"status": "New",
					"severity": "Medium",
					"investigationId": null,
					"investigationState": "UnsupportedAlertType",
					"classification": null,
					"determination": null,
					"detectionSource": "MCAS",
					"assignedTo": null,
					"actorName": null,
					"threatFamilyName": null,
					"mitreTechniques": [],
					"devices": [],
					"entities": [
						{
							"entityType": "User",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": "testUser2",
							"domainName": "europe.corp.microsoft",
							"userSid": "S-1-5-21-1721254763-462695806-1538882281-4156657",
							"aadUserId": "fc8f7484-f813-4db2-afab-bc1507913fb6",
							"userPrincipalName": "testUser2@microsoft.com",
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": null,
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "Ip",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": "62.216.203.204",
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": null,
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						}
					]
				}
			]
		},
		{
			"incidentId": 924521,
			"redirectIncidentId": null,
			"incidentName": "'Mimikatz' hacktool was detected on one endpoint",
			"createdTime": "2020-09-06T12:18:03.6266667Z",
			"lastUpdateTime": "2020-09-06T12:18:03.81Z",
			"assignedTo": null,
			"classification": "Unknown",
			"determination": "NotAvailable",
			"status": "Active",
			"severity": "Low",
			"tags": [],
			"alerts": [
				{
					"alertId": "da637349914833441527_393341063",
					"incidentId": 924521,
					"serviceSource": "MicrosoftDefenderATP",
					"creationTime": "2020-09-06T12:18:03.3285366Z",
					"lastUpdatedTime": "2020-09-06T12:18:04.2566667Z",
					"resolvedTime": null,
					"firstActivity": "2020-09-06T12:15:07.7272048Z",
					"lastActivity": "2020-09-06T12:15:07.7272048Z",
					"title": "'Mimikatz' hacktool was detected",
					"description": "Readily available tools, such as hacking programs, can be used by unauthorized individuals to spy on users. When used by attackers, these tools are often installed without authorization and used to compromise targeted machines.\n\nThese tools are often used to collect personal information from browser records, record key presses, access email and instant messages, record voice and video conversations, and take screenshots.\n\nThis detection might indicate that Windows Defender Antivirus has stopped the tool from being installed and used effectively. However, it is prudent to check the machine for the files and processes associated with the detected tool.",
					"category": "Malware",
					"status": "New",
					"severity": "Low",
					"investigationId": null,
					"investigationState": "UnsupportedOs",
					"classification": null,
					"determination": null,
					"detectionSource": "WindowsDefenderAv",
					"assignedTo": null,
					"actorName": null,
					"threatFamilyName": "Mimikatz",
					"mitreTechniques": [],
					"devices": [
						{
							"mdatpDeviceId": "24c222b0b60fe148eeece49ac83910cc6a7ef491",
							"aadDeviceId": null,
							"deviceDnsName": "azeusenjubld05cx.middleeast.corp.microsoft.com",
							"osPlatform": "WindowsServer2016",
							"version": "1607",
							"osProcessor": "x64",
							"osBuild": 14393,
							"healthStatus": "Active",
							"riskScore": "High",
							"rbacGroupName": "WDATP-Ring0",
							"rbacGroupId": 9,
							"firstSeen": "2020-02-06T14:16:01.9330135Z"
						}
					],
					"entities": [
						{
							"entityType": "File",
							"sha1": "5de839186691aa96ee2ca6d74f0a38fb8d1bd6dd",
							"sha256": null,
							"fileName": "Detector.UnitTests.dll",
							"filePath": "C:\\Agent\\_work\\_temp\\Deploy_SYSTEM 2020-09-06 12_14_54\\Out",
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": null,
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": "24c222b0b60fe148eeece49ac83910cc6a7ef491"
						}
					]
				}
			]
		},
		{
			"incidentId": 924518,
			"redirectIncidentId": null,
			"incidentName": "Email reported by user as malware or phish",
			"createdTime": "2020-09-06T12:07:55.1366667Z",
			"lastUpdateTime": "2020-09-06T12:07:55.32Z",
			"assignedTo": null,
			"classification": "Unknown",
			"determination": "NotAvailable",
			"status": "Active",
			"severity": "Informational",
			"tags": [],
			"alerts": [
				{
					"alertId": "faf8edc936-85f8-a603-b800-08d8525cf099",
					"incidentId": 924518,
					"serviceSource": "OfficeATP",
					"creationTime": "2020-09-06T12:07:54.3716642Z",
					"lastUpdatedTime": "2020-09-06T12:37:40.88Z",
					"resolvedTime": null,
					"firstActivity": "2020-09-06T12:04:00Z",
					"lastActivity": "2020-09-06T12:04:00Z",
					"title": "Email reported by user as malware or phish",
					"description": "This alert is triggered when any email message is reported as malware or phish by users -V1.0.0.2",
					"category": "InitialAccess",
					"status": "InProgress",
					"severity": "Informational",
					"investigationId": null,
					"investigationState": "Queued",
					"classification": null,
					"determination": null,
					"detectionSource": "OfficeATP",
					"assignedTo": "Automation",
					"actorName": null,
					"threatFamilyName": null,
					"mitreTechniques": [],
					"devices": [],
					"entities": [
						{
							"entityType": "MailBox",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": "testUser3@microsoft.com",
							"mailboxDisplayName": "test User3",
							"mailboxAddress": "testUser3@microsoft.com",
							"clusterBy": null,
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "MailBox",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": "testUser4@microsoft.com",
							"mailboxDisplayName": "test User4",
							"mailboxAddress": "test.User4@microsoft.com",
							"clusterBy": null,
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "MailMessage",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": "test.User4@microsoft.com",
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": null,
							"sender": "br.kapara@mail.pbgb.co.in",
							"recipient": "test.User4@microsoft.com",
							"subject": "[EXTERNAL] Attention",
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "MailCluster",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": "Subject;P2SenderDomain;ContentType",
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "MailCluster",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": "Subject;SenderIp;ContentType",
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "MailCluster",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": "BodyFingerprintBin1;P2SenderDomain;ContentType",
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "MailCluster",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": null,
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": "BodyFingerprintBin1;SenderIp;ContentType",
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						},
						{
							"entityType": "Ip",
							"sha1": null,
							"sha256": null,
							"fileName": null,
							"filePath": null,
							"processId": null,
							"processCommandLine": null,
							"processCreationTime": null,
							"parentProcessId": null,
							"parentProcessCreationTime": null,
							"ipAddress": "49.50.81.121",
							"url": null,
							"accountName": null,
							"domainName": null,
							"userSid": null,
							"aadUserId": null,
							"userPrincipalName": null,
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": null,
							"sender": null,
							"recipient": null,
							"subject": null,
							"deliveryAction": null,
							"securityGroupId": null,
							"securityGroupName": null,
							"registryHive": null,
							"registryKey": null,
							"registryValueType": null,
							"registryValue": null,
							"deviceId": null
						}
					]
				}
			]
		},
		...
	]
}
```

## Related topic
- [Incident APIs](api-incident.md)
- [Update incident](api-update-incidents.md)