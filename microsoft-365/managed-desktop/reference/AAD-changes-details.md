---
title: Azure Active Directory tenant details
description:  This topic describes changes made to your AAD account when you enroll in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
---

# Azure Active Directory tenant details
{gory details about accounts, API calls, perms, etc., etc.}


## Data transmitted to and from your AAD account


Data sent to your account from Microsoft:

- Group names
- Security policy configuration
- Device orders
- User accounts (msadmin, mstest, mwaas_soc_ro, mwaas_wdgsoc)
- E5 License assignment to the user accounts
- Windows update policies for update rings

Data sent to Microsoft from your account:

- Device update, usage and reliability data
- App deployment and reliability data
- Update and security policy deployment data
- Users assigned to devices  

Data transmitted from your account is stored in Azure SQL databases in the Microsoft tenant hosted in the USA. Data is stored and handled in accordance the policies described in {Microsoft Azure security}. 

## API permissions and calls

**During enrollment:**

API permissions:
- DeviceManagementServiceConfig.ReadWrite.All
- Directory.AccessAsUser.All
- User.ReadWrite.All
- DeviceManagementConfiguration.ReadWrite.All
- DeviceManagementManagedDevices.ReadWrite.All
- Group.ReadWrite.All

API calls:
- POST /organization/{organizationId}/setMobileDeviceManagementAuthority
- GET/POST /directoryRoles/{id}/members
- GET/POST /users
- GET/POST /groups
- PATCH /groups/{id}
- GET/POST /deviceManagement/deviceConfigurations
- GET /deviceManagement/detectedApps

**After enrollment, during ordinary management:**

API permissions:
- DeviceManagementManagedDevices.ReadWrite.All
- DeviceManagementApps.ReadWrite.All
- DeviceManagementConfiguration.ReadWrite.All
- Reports.Read.All
- User.ReadWrite.All
- Group.ReadWrite.All
- Directory.AccessAsUser.All

API calls:
- GET/POST /directoryRoles/{id}/members
- GET/PATCH/POST /users
- GET/POST /groups
- PATCH /groups/{id}
- GET/POST /deviceManagement/deviceConfigurations
- GET/POST /deviceAppManagement/mobileApps
- GET /deviceManagement/detectedApps
- GET /devices
- POST /users/{id | userPrincipalName}/assignLicense
- GET /subscribedSkus

## Accounts used by Microsoft Managed Desktop





| Account | Description  | Conditional access  | Multi-factor authentication  | Why this is OK |
|---------|---------|---------|---------|--------------|
| msadmin@*onmmicrosoft.com | Limited service account with administrator privileges, used as a Microsoft Intune and User administrator {what's this?} to define and configure the tenant for Microsoft Modern Desktop devices.  Does not have interactive login permissions; performs operations only through the service.  | Excluded, because it doesn't originate in your network        | Excluded because there is no interactive logon        | Password stored in Azure Key Vault |
| mstest@*onmmicrosoft.com     |         |         |         |
| mssupport@*onmmicrosoft.com     |         |         |         |
| msadminint@*onmmicrosoft.com     |         |         |         |
