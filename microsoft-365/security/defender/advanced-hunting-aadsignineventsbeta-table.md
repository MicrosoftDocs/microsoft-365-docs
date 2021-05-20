---
title: AADSignInEventsBeta table in the advanced hunting schema
description: Learn about information associated with Azure Active Directory sign-in events table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, file, IP address, device, machine, user, account, identity, AAD
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
# AADSignInEventsBeta

**Applies to:**

- Microsoft 365 Defender

>[!IMPORTANT]
> The `AADSignInEventsBeta` table is currently in beta and is being offered on a short-term basis to allow you to hunt through Azure Active Directory (AAD) sign-in events. We will eventually move all sign-in schema information to the `IdentityLogonEvents` table.

 

The `AADSignInEventsBeta` table in the advanced hunting schema contains
information about Azure Active Directory interactive and non-interactive
sign-ins. Learn more about sign-ins in [Azure
Active Directory sign-in activity reports -
preview](/azure/active-directory/reports-monitoring/concept-all-sign-ins).

Use this reference to construct queries that return information from the table.
For information on other tables in the advanced hunting schema, see [the
advanced hunting
reference](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-reference).

 

 

| Column name                 | Data type | Description          |
|---------------------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `Timestamp`                       | datetime      | Date and time when the record was generated                                                                                                                                         |
| `Application`                     | string        | Application that performed the recorded action                                                                                                                                       |
| `ApplicationId`                   | string        | Unique identifier for the application                                                                                                                                               |
| `LogonType`                       | string        | Type of logon session, specifically interactive, remote interactive (RDP), network, batch, and service                                                                              |
| `ErrorCode`                       | int        | Contains the error code if a sign-in error occurs. To find a description of a specific error code, visit <https://aka.ms/AADsigninsErrorCodes>.                                     |
| `CorrelationId`                   | string        | Unique identifier of the sign-in event                                                                                                                                              |
| `SessionId`                       | string        | Unique number assigned to a user by a website's server for the duration of the visit or session                                                                                     |
| `AccountDisplayName`              | string        | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initial, and a last name or surname.                             |
| `AccountObjectId`                 | string        | Unique identifier for the account in Azure AD                                                                                                                                       |
| `AccountUpn`                      | string        | User principal name (UPN) of the account                                                                                                                                            |
| `IsExternalUser`                  | int        | Indicates if the user that signed in is external. Possible values: -1 (not set) , 0 (not external), 1 (external).                                                                   |
| `IsGuestUser`                     | boolean       | Indicates whether the user that signed in is a guest in the tenant                                                                                                                  |
| `AlternateSignInName`             | string        | On-premises user principal name (UPN) of the user signing in to Azure AD                                                                                                            |
| `LastPasswordChangeTimestamp`     | datetime        | Date and time when the user that signed in last changed their password                                                                                                              |
| `ResourceDisplayName`             | string        | Display name of the resource accessed                                                                                                                                               |
| `ResourceId`                      | string        | Unique identifier of the resource accessed                                                                                                                                          |
| `ResourceTenantId`                | string        | Unique identifier of the tenant of the resource accessed                                                                                                                            |
| `DeviceName`                      | string        | Fully qualified domain name (FQDN) of the machine                                                                                                                                   |
| `AadDeviceId`                     | string   |      Unique identifier for the device in Azure AD                                                                                                                                                                               |
| `OSPlatform`                      | string        | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7.  |
| `DeviceTrustType`                 | string        | Indicates the trust type of the device that signed in. For managed device scenarios only. Possible values are Workplace, AzureAd, and ServerAd.                                     |
| `IsManaged`                       | int       | Indicates whether the device that initiated the sign-in is a managed device (1) or not a managed device (0)                                                                         |
| `IsCompliant`                     | int       | Indicates whether the device that initiated the sign-in is compliant (1) or non-compliant (0)                                                                                       |
| `AuthenticationProcessingDetails` | string        | Details about the authentication processor                                                                                                                                          |
| `AuthenticationRequirement`       | string        | Type of authentication required for the sign-in. Possible values: multiFactorAuthentication (MFA was required) and singleFactorAuthentication (no MFA was required).                |
| `TokenIssuerType`                 | int        | Indicates if the token issuer is Azure Active Directory (0) or Active Directory Federation Services (1)                                                                             |
| `RiskLevelAggregated`                       | int        | Aggregated risk level during sign-in. Possible values: 0 (aggregated risk level not set), 1 (none), 10 (low), 50 (medium), or 100 (high).                               |
| `RiskDetails`                      | int        | Details about the risky state of the user that signed in                                                                                                                            |
| `RiskState`                       | int        | Indicates risky user state. Possible values: 0 (none), 1 (confirmed safe), 2 (remediated), 3 (dismissed), 4 (at risk), or 5 (confirmed compromised).                                |
| `UserAgent`                       | string        | User agent information from the web browser or other client application                                                                                                             |
| `ClientAppUsed`                   | string        | Indicates the client app used                                                                                                                                                       |
| `Browser`                         | string        | Details about the version of the browser used to sign in                                                                                                                            |
| `ConditionalAccessPolicies`       | string        | Details of the conditional access policies applied to the sign-in event                                                                                                             |
| `ConditionalAccessStatus`         | int        | Status of the conditional access policies applied to the sign-in. Possible values are 0 (policies applied), 1 (attempt to apply policies failed), or 2 (policies not applied).      |
| `IPAddress`                       | string        | IP address assigned to the endpoint and used during related network communications                                                                                                  |
| `Country`                     | string        | Two-letter code indicating the country where the client IP address is geolocated                                                                                                    |
| `State`                           | string        | State where the sign-in occurred, if available                                                                                                                                      |
| `City`                            | string        | City where the account user is located                                                                                                                                              |
| `Latitude`                        | string        | The north to south coordinates of the sign-in location                                                                                                                              |
| `Longitude`                       | string        | The east to west coordinates of the sign-in location                                                                                                                                |
| `NetworkLocationDetails`          | string        | Network location details of the authentication processor of the sign-in event                                                                                                       |
| `RequestId`                       | string        |  Unique identifier of the request                                                                                                                                                   |
|`ReportId` | string | Unique identifier for the event |

 

 

## Related articles

-   [AADSpnSignInEventsBeta](./advanced-hunting-aadspnsignineventsbeta-table.md)
-   [Advanced hunting
    overview](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview)
-   [Learn the query
    language](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-query-language)
-   [Understand the
    schema](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-schema-reference)

 