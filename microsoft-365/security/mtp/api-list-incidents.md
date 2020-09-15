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

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


## API description

The Incident API allows you to sort through incidents to prioritize and create an informed cybersecurity response. It exposes a collection of incidents that were flagged from devices, email accounts, and users in your network, within the time range you specified in your environment retention policy. The most recent incidents are displayed at the top of the list. Each incident contains an array of related alerts, and their related entities.

<br>The API supports the following **OData** operators:
<br>```$filter``` on: ```lastUpdateTime```, ```createdTime```, ```status``` and ```assignedTo``` properties.
<br>```$top``` with max value of **100**
<br>```$skip```

## Limitations

1. Maximum page size is **100 incidents**.
2. Maximum rate of requests is **50 calls per minute** and **1500 calls per hour**.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Access Microsoft Threat Protection APIs](api-access.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Incident.Read.All |	'Read all incidents'
Application |	Incident.ReadWrite.All | 'Read and write all incidents'
Delegated (work or school account) | Incident.Read | 'Read incidents'
Delegated (work or school account) | Incident.ReadWrite | 'Read and write incidents'

> [!Note]
> When obtaining a token using user credentials:
> - The user needs to have view permission for incidents in the portal.
> - The response will only include incidents that the user is exposed to.

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
| incidentId                                | Unique identifier to represent the incident.                                                                                                                                                                                                                                                                                                                                                | 924565                                                                                                                                                                                                                                            |
| redirectIncidentId                        | Only populated in case an incident is being grouped together with another incident, as part of the incident processing logic.                                                                                                                                                                                                                                                           | 924569                                                                                                                                                                                                                                            |
| incidentName                              | String value available for every incident.                                                                                                                                                                                                                                                                                                                                                  | Ransomware activity                                                                                                                                                                                                                               |
| createdTime                               | Time when incident was first created.                                                                                                                                                                                                                                                                                                                                                      | 2020-09-06T14:46:57.0733333Z                                                                                                                                                                                                                      |
| lastUpdateTime                            | Time when incident was last updated at the backend.<br> This field can be used when setting the request parameter for the range of time that incidents are retrieved.                                                                                                                                                                                                                      | 2020-09-06T14:46:57.29Z                                                                                                                                                                                                                           |
| assignedTo                                | Owner of the incident, or *null* if no owner is assigned.                                                                                                                                                                                                                                                                                                                         | secop2@contoso.com                                                                                                                                                                                                |
| classification                            | The specification for the incident. The property values are: *Unknown*, *FalsePositive*, *TruePositive*                                                                                                                                                                                                                                                                           | Unknown                                                                                                                                                                                                                                           |
| determination                             | Specifies the determination of the incident. The property values are: *NotAvailable*, *Apt*, *Malware*, *SecurityPersonnel*, *SecurityTesting*, *UnwantedSoftware*, *Other*                                                                                                                                                                                                                | NotAvailable                                                                                                                                                                                                                                      |
| status                                    | Categorize incidents (as *Active*, or *Resolved*). This helps you organize and manage your response to incidents.                                                                                                                                                                                                                                                                  | Active                                                                                                                                                                                                                                            |
| severity                                  | Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention.<br>One of the following values: *Informational*, *Low*, *Medium, and *High*.                                                                                                                                | Medium                                                                                                                                                                                                                                            |
| tags                                      | Array of custom tags associated with an incident, for example to flag a group of incidents with a common characteristic.                                                                                                                                                                                                                                                                  | \[\]                                                                                                                                                                                                                                              |
| alerts                                    | Array of all the alerts related to the incident and other information, such as severity, entities that were involved in the alert, the source of the alerts.                                                                                                                                                                                                                     | \[\] (see details on alert fields below)                                                                                                                                                                                                          |
| **Alerts metadata**                           |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| alertId                                   | Unique identifier to represent the alert                                                                                                                                                                                                                                                                                                                                                   | caD70CFEE2-1F54-32DB-9988-3A868A1EBFAC                                                                                                                                                                                                            |
| incidentId                                | Unique identifier to represent the incident this alert is associated with                                                                                                                                                                                                                                                                                                                  | 924565                                                                                                                                                                                                                                            |
| serviceSource                             | Service that the alert originates from, such as Microsoft Defender ATP, Microsoft Cloud App Security, Azure ATP, or Office 365 ATP.                                                                                                                                                                                                                                                                     | MicrosoftCloudAppSecurity                                                                                                                                                                                                                         |
| creationTime                              | Time when alert was first created.                                                                                                                                                                                                                                                                                                                                                         | 2020-09-06T14:46:55.7182276Z                                                                                                                                                                                                                      |
| lastUpdatedTime                           | Time when alert was last updated at the backend.                                                                                                                                                                                                                                                                                                                                           | 2020-09-06T14:46:57.2433333Z                                                                                                                                                                                                                      |
| resolvedTime                              | Time when alert was resolved.                                                                                                                                                                                                                                                                                                                                                              | 2020-09-10T05:22:59Z                                                                                                                                                                                                                              |
| firstActivity                             | Time when alert first reported that activity was updated at the backend.                                                                                                                                                                                                                                                                                                                             | 2020-09-04T05:22:59Z                                                                                                                                                                                                                              |
| title                                     | Brief identifying string value available for each alert.                                                                                                                                                                                                                                                                                                                                                     | Ransomware activity                                                                                                                                                                                                                               |
| description                               | String value describing each alert.                                                                                                                                                                                                                                                                                                                                                        | The user Test User2 (testUser2@contoso.com) manipulated 99 files with multiple extensions ending with the uncommon extension *herunterladen*. This is an unusual number of file manipulations and is indicative of a potential ransomware attack. |
| category                                  | Visual and numeric view of how far the attack has progressed along the kill chain. Aligned to the [MITRE ATT&CK™ framework](https://attack.mitre.org/).                                                                                                                                                                                                                           | Impact                                                                                                                                                                                                                                            |
| status                                    | Categorize alerts (as *New*, *Active*, or *Resolved*). This helps you organize and manage your response to alerts.                                                                                                                                                                                                                                                                   | New                                                                                                                                                                                                                                               |
| severity                                  | Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention.<br>One of the following values: *Informational*, *Low*, *Medium, and *High*.                                                                                                                                   | Medium                                                                                                                                                                                                                                            |
| investigationId                           | The automated investigation id triggered by this alert.                                                                                                                                                                                                                                                                                                                                | 1234                                                                                                                                                                                                                                              |
| investigationState                        | Information on the investigation's current status. One of the following: *Unknown*, *Terminated*, *SuccessfullyRemediated*, *Benign*, *Failed*, *PartiallyRemediated*, *Running*, *PendingApproval*, *PendingResource*, *PartiallyInvestigated*, *TerminatedByUser*, *TerminatedBySystem*, *Queued*, *InnerFailure*, *PreexistingAlert*, *UnsupportedOs*, *UnsupportedAlertType*, *SuppressedAlert*. | UnsupportedAlertType                                                                                                                                                                                                                              |
| classification                            | The specification for the incident. The property values are: *Unknown*, *FalsePositive*, *TruePositive* or *null*                                                                                                                                                                                                                                                                   | Unknown                                                                                                                                                                                                                                           |
| determination                             | Specifies the determination of the incident. The property values are: *NotAvailable*, *Apt*, *Malware*, *SecurityPersonnel*, *SecurityTesting*, *UnwantedSoftware*, *Other* or  *null*                                                                                                                                                                                                     | Apt                                                                                                                                                                                                                                               |
| assignedTo                                | Owner of the incident, or *null* if no owner is assigned.                                                                                                                                                                                                                                                                                                                            | secop2@contoso.com                                                                                                                                                                                                 |
| actorName                                 | The activity group, if any, the  associated with this alert.                                                                                                                                                                                                                                                                                                                                        | BORON                                                                                                                                                                                                                                             |
| threatFamilyName                          | Threat family associated with this alert.                                                                                                                                                                                                                                                                                                                                                   | null                                                                                                                                                                                                                                              |
| mitreTechniques                           | The attack techniques, as aligned with the [MITRE ATT&CK](https://attack.mitre.org/)™ framework.                                                                                                                                                                                                                                                                                                                              | \[\]                                                                                                                                                                                                                                              |
| devices                                   | All devices where alerts related to the incident were sent.                                                                                                                                                                                                                                                                                                     | \[\] (see details on entity fields below)                                                                                                                                                                                                         |
| **Device format**                             |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| DeviceId                                  | The device ID as designated in Microsoft Defender ATP.                                                                                                                                                                                                                                                                                                                                                       | 24c222b0b60fe148eeece49ac83910cc6a7ef491                                                                                                                                                                                                          |
| aadDeviceId                               |  The device Id as designated in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis) (AAD). Only available for domain-joined devices.                                                                                                                                                                                                                                                                                                                              | null                                                                                                                                                                                                                                              |
| deviceDnsName                             | The fully qualified domain name for the device.                                                                                                                                                                                                                                                                                                                                                                        | user5cx.middleeast.corp.contoso.com                                                                                                                                                                                                    |
| osPlatform                                | The OS platform the device is running.                                                                                                                                                                                                                                                                                                                                                                     | WindowsServer2016                                                                                                                                                                                                                                 |
| osBuild                                   | The build version for the OS the device is running.                                                                                                                                                                                                                                                                                                                                                                | 14393                                                                                                                                                                                                                                             |
| rbacGroupName                             | The [role-based access control](https://docs.microsoft.com/azure/role-based-access-control/overview) (RBAC) group associated with the device.                                                                                                                                                                                                                                                                                                                             | WDATP-Ring0                                                                                                                                                                                                                                       |
| firstSeen                                 | Time when device was first seen.                                                                                                                                                                                                                                                                                                                                                           | 2020-02-06T14:16:01.9330135Z                                                                                                                                                                                                                      |
| healthStatus                              | The health state of the device.                                                                                                                                                                                                                                                                                                                                                                        | Active                                                                                                                                                                                                                                            |
| riskScore                                 | The risk score for the  device.                                                                                                                                                                                                                                                                                                                                                                       | High                                                                                                                                                                                                                                              |
| entities                                  | All entities that have been identified to be part of, or related to, a given alert.                                                                                                                                                                                                                                                                                | \[\] (see details on entity fields below)                                                                                                                                                                                                         |
| **Entity Format**                             |                                                                                                                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                   |
| entityType                                | Entities that have been identified to be part of, or related to, a given alert.<br>The properties values are: *User*, *Ip*, *Url*, *File*, *Process*, *MailBox*, *MailMessage*, *MailCluster*, *Registry*                                                                                                                                                                                                     | User                                                                                                                                                                                                                                              |
| sha1                                      | Available if entityType is *File*.<br>The file hash for alerts associated with a file or process.                                                                                                                                                                                                                                                                                    | 5de839186691aa96ee2ca6d74f0a38fb8d1bd6dd                                                                                                                                                                                                          |
| sha256                                    | Available if entityType is *File*.<br>The file hash for alerts associated with a file or process.                                                                                                                                                                                                                                                                                    | 28cb017dfc99073aa1b47c1b30f413e3ce774c4991eb4158de50f9dbb36d8043                                                                                                                                                                                  |
| fileName                                  | Available if entityType is *File*.<br>The file name for alerts associated with a file or process                                                                                                                                                                                                                                                                                    | Detector.UnitTests.dll                                                                                                                                                                                                                            |
| filePath                                  | Available if entityType is *File*.<br>The file path for alerts associated with a file or process                                                                                                                                                                                                                                                                                    | C:\\\\Agent\\\\\_work\\\\\_temp\\\\Deploy\_SYSTEM 2020-09-06 12\_14\_54\\\\Out                                                                                                                                                                    |
| processId                                 | Available if entityType is *Process*.                                                                                                                                                                                                                                                                                                                                                     | 24348                                                                                                                                                                                                                                             |
| processCommandLine                        | Available if entityType is *Process*.                                                                                                                                                                                                                                                                                                                                                     | "\\"Your File Is Ready To Download\_1911150169.exe\\" "                                                                                                                                                                                           |
| processCreationTime                       | Available if entityType is *Process*.                                                                                                                                                                                                                                                                                                                                                     | 2020-07-18T03:25:38.5269993Z                                                                                                                                                                                                                      |
| parentProcessId                           | Available if entityType is *Process*.                                                                                                                                                                                                                                                                                                                                                   | 16840                                                                                                                                                                                                                                             |
| parentProcessCreationTime                 | Available if entityType is *Process*.                                                                                                                                                                                                                                                                                                                                                     | 2020-07-18T02:12:32.8616797Z                                                                                                                                                                                                                      |
| ipAddress                                 | Available if entityType is *Ip*. <br>IP address for alerts associated with network events, such as *Communication to a malicious network destination*.                                                                                                                                                                                                                                   | 62.216.203.204                                                                                                                                                                                                                                    |
| url                                       | Available if entityType is *Url*. <br>Url for alerts associated to network events, such as, *Communication to a malicious network destination*.                                                                                                                                                                                                                                  | down.esales360.cn                                                                                                                                                                                                                                 |
| accountName                               | Available if entityType is *User*.                                                                                                                                                                                                                                                                                                                                                         | testUser2                                                                                                                                                                                                                                         |
| domainName                                | Available if entityType is *User*.                                                                                                                                                                                                                                                                                                                                                        | europe.corp.contoso                                                                                                                                                                                                                              |
| userSid                                   | Available if entityType is *User*.                                                                                                                                                                                                                                                                                                                                                        | S-1-5-21-1721254763-462695806-1538882281-4156657                                                                                                                                                                                                  |
| aadUserId                                 | Available if entityType is *User*.                                                                                                                                                                                                                                                                                                                                                        | fc8f7484-f813-4db2-afab-bc1507913fb6                                                                                                                                                                                                              |
| userPrincipalName                         | Available if entityType is *User*/*MailBox*/*MailMessage*.                                                                                                                                                                                                                                                                                                                                | testUser2@contoso.com                                                                                                                                                                                      |
| mailboxDisplayName                        | Available if entityType is *MailBox*.                                                                                                                                                                                                                                                                                                                                                     | test User2                                                                                                                                                                                                                                        |
| mailboxAddress                            | Available if entityType is *User*/*MailBox*/*MailMessage*.                                                                                                                                                                                                                                                                                                                                | testUser2@contoso.com                                                                                                                                                                                      |
| clusterBy                                 | Available if entityType is  *MailCluster*.                                                                                                                                                                                                                                                                                                                                                 | Subject;P2SenderDomain;ContentType                                                                                                                                                                                                                |
| sender                                    | Available if entityType is *User*/*MailBox*/*MailMessage*.                                                                                                                                                                                                                                                                                                                                  | user.abc@mail.contoso.co.in                                                                                                                                                                 |
| recipient                                 | Available if entityType is *MailMessage*.                                                                                                                                                                                                                                                                                                                                                | testUser2@contoso.com                                                                                                                                                                                       |
| subject                                   | Available if entityType is *MailMessage*.                                                                                                                                                                                                                                                                                                                                                 | \[EXTERNAL\] Attention                                                                                                                                                                                                                            |
| deliveryAction                            | Available if entityType is *MailMessage*.                                                                                                                                                                                                                                                                                                                                                 | Delivered                                                                                                                                                                                                                                         |
| securityGroupId                           | Available if entityType is  *SecurityGroup*.                                                                                                                                                                                                                                                                                                                                               | 301c47c8-e15f-4059-ab09-e2ba9ffd372b                                                                                                                                                                                                              |
| securityGroupName                         | Available if entityType is  *SecurityGroup*.                                                                                                                                                                                                                                                                                                                                               | Network Configuration Operators                                                                                                                                                                                                                   |
| registryHive                              | Available if entityType is  *Registry*.                                                                                                                                                                                                                                                                                                                                                    | HKEY\_LOCAL\_MACHINE                                                                                                                                                                                                                              |
| registryKey                               | Available if entityType is  *Registry*.                                                                                                                                                                                                                                                                                                                                                     | SOFTWARE\\\\Microsoft\\\\Windows NT\\\\CurrentVersion\\\\Winlogon                                                                                                                                                                                 |
| registryValueType                         | Available if entityType is  *Registry*.                                                                                                                                                                                                                                                                                                                                                    | String                                                                                                                                                                                                                                            |
| registryValue                             | Available if entityType is  *Registry*.                                                                                                                                                                                                                                                                                                                                                    | 31-00-00-00                                                                                                                                                                                                                                       |
| deviceId                                  | The ID, if any, of the device related to the entity.                                                                                                                                                                                                                                                                                                                                           | 986e5df8b73dacd43c8917d17e523e76b13c75cd                                                                                                                                                                                                          |



## Example

**Request**

```
GET https://api.security.microsoft.com/api/incidents
```

**Response**
```json
{
	"@odata.context": "https://api.security.microsoft.com/api/$metadata#Incidents",
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
					"description": "The user Test User2 (testUser2@contoso.com) manipulated 99 files with multiple extensions ending with the uncommon extension herunterladen. This is an unusual number of file manipulations and is indicative of a potential ransomware attack.",
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
							"domainName": "europe.corp.contoso",
							"userSid": "S-1-5-21-1721254763-462695806-1538882281-4156657",
							"aadUserId": "fc8f7484-f813-4db2-afab-bc1507913fb6",
							"userPrincipalName": "testUser2@contoso.com",
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
							"deviceDnsName": "user5cx.middleeast.corp.contoso.com",
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
							"userPrincipalName": "testUser3@contoso.com",
							"mailboxDisplayName": "test User3",
							"mailboxAddress": "testUser3@contoso.com",
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
							"userPrincipalName": "testUser4@contoso.com",
							"mailboxDisplayName": "test User4",
							"mailboxAddress": "test.User4@contoso.com",
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
							"userPrincipalName": "test.User4@contoso.com",
							"mailboxDisplayName": null,
							"mailboxAddress": null,
							"clusterBy": null,
							"sender": "user.abc@mail.contoso.co.in",
							"recipient": "test.User4@contoso.com",
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
