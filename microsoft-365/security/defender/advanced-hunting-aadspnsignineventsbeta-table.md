---
title: AADSpnSignInEventsBeta table in the advanced hunting schema
description: Learn about information associated with Azure Active Directory service principal and managed identity sign-in events table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, AlertInfo, alert, entities, evidence, file, IP address, device, machine, user, account, identity, AAD
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---
# AADSpnSignInEventsBeta

**Applies to:**

- Microsoft 365 Defender

>[!IMPORTANT]
> The `AADSpnSignInEventsBeta` table is currently in beta and is being offered on a short-term basis to allow you to hunt through Azure Active Directory (AAD) service principal and managed identity sign-in events. We will eventually move all sign-in schema information to the `IdentityLogonEvents` table.<br><br>
> Customers who can access Microsoft 365 Defender through the Azure Security Center’s integrated Microsoft Defender for Endpoint solution, but do not have licenses for Microsoft Defender for Office, Microsoft Defender for Identity, or Microsoft Cloud App Security, will not be able to view this schema. 



The `AADSpnSignInEventsBeta` table in the advanced hunting schema contains
information about Azure Active Directory service principal and managed identity
sign-ins. You can learn more about the different kinds of sign-ins in [Azure
Active Directory sign-in activity reports -
preview](https://docs.microsoft.com/azure/active-directory/reports-monitoring/concept-all-sign-ins).

Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the
advanced hunting
reference](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-reference).





| Column name     | Data type | Description   |
| ----- | ----- | ---- |
| `Timestamp` | datetime      | Date and time when the record was generated                                                                                                     |
| `Application`          | string        | Application that performed the recorded action                                                                                                   |
| `ApplicationId`        | string        | Unique identifier for the application                                                                                                           |
| `IsManagedIdentity`    | boolean       | Indicates whether the sign-in was initiated by a managed identity                                                                               |
| `ErrorCode`            | int        | Contains the error code if a sign-in error occurs. To find a description of a specific error code, visit <https://aka.ms/AADsigninsErrorCodes>. |
| `CorrelationId`        | string        | Unique identifier of the sign-in event                                                                                                          |
| `ServicePrincipalName` | string        | Name of the service principal that initiated the sign-in                                                                                        |
| `ServicePrincipalId`   | string        | Unique identifier of the service principal that initiated the sign-in                                                                           |
| `ResourceDisplayName`  | string        | Display name of the resource accessed                                                                                                           |
| `ResourceId`           | string        | Unique identifier of the resource accessed                                                                                                      |
| `ResourceTenantId`     | string        | Unique identifier of the tenant of the resource accessed                                                                                        |
| `IPAddress`            | string        | IP address assigned to the endpoint and used during related network communications                                                              |
| `Country`          | string        | Two-letter code indicating the country where the client IP address is geolocated                                                                |
| `State`                | string        | State where the sign-in occurred, if available                                                                                                  |
| `City`                 | string        | City where the account user is located                                                                                                          |
| `Latitude`             | string        | The north to south coordinates of the sign-in location                                                                                          |
| `Longitude`            | string        | The east to west coordinates of the sign-in location                                                                                            |
| `RequestId`            | string        | Unique identifier of the request                                                                                                                |
|`ReportId` | string | Unique identifier for the event | 

 

## Related articles

-   [AADSignInEventsBeta](https://docs.microsoft.com/microsoft-365/security/defender/advanced-hunting-aadsignineventsbeta-table)
-   [Advanced hunting
    overview](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview)
-   [Learn the query
    language](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-query-language)
-   [Understand the
    schema](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-schema-reference)

