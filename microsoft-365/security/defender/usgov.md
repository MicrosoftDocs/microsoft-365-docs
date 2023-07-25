---
title: Microsoft 365 Defender for US Government customers
description: Learn about the Microsoft 365 Defender for US Government customers requirements and capabilities available
keywords: government, gcc, high, requirements, capabilities, defender, Microsoft 365 Defender, xdr, dod
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance
- tier3
ms.topic: conceptual
ms.date: 12/07/2021
---

# Microsoft 365 Defender for US Government customers

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender for US Government customers, built in the Azure US Government environment, uses the same underlying technologies as Microsoft 365 Defender in Azure Commercial.

This offering is available to GCC, GCC High, and DoD customers and is based on the same prevention, detection, investigation, and remediation as the commercial version. However, there are some differences in the availability of capabilities for this offering.

> [!NOTE]
> If you are a GCC customer using Defender for Cloud Apps, Defender for Endpoint, or Defender for Identity in Commercial, you need to transition those services to their GCC versions to be eligible for Microsoft 365 Defender GCC.

## Licensing requirements

Microsoft 365 Defender for US Government customers requires one of the following Microsoft volume licensing offers:

### Desktop licensing

<br />

****

|GCC|GCC High|DoD|
|---|---|---|
|Microsoft 365 GCC G5|Microsoft 365 E5 for GCC High|Microsoft 365 G5 for DOD|
|Microsoft 365 G5 Security GCC|Microsoft 365 G5 Security for GCC High|Microsoft 365 G5 Security for DOD|
|Enterprise Mobility + Security G5 GCC|Enterprise Mobility + Security E5 for GCC High|Enterprise Mobility + Security E5 for DOD|
|Office 365 G5 GCC|Office 365 E5 for GCC High|Office 365 E5 for DOD|
|Microsoft Defender for Cloud Apps GCC|Microsoft Defender for Cloud Apps for GCC High|Microsoft Defender for Cloud Apps for DOD|
|Microsoft Defender for Endpoint - GCC|Microsoft Defender for Endpoint for GCC High|Microsoft Defender for Endpoint for DOD|
|Microsoft Defender for Identity - GCC|Microsoft Defender for Identity for GCC High|Microsoft Defender for Identity for DOD|
|Microsoft Defender for Office 365 (Plan 2) GCC|Microsoft Defender for Office 365 (Plan 2) for GCC High|Microsoft Defender for Office 365 (Plan 2) for DOD|
|Windows 10 Enterprise E5 GCC|Windows 10 Enterprise E5 for GCC High|Windows 10 Enterprise E5 for DOD|
|

### Server licensing

<br />

****

|GCC|GCC High|DoD|
|---|---|---|
|Microsoft Defender for Endpoint Server GCC|Microsoft Defender for Endpoint Server for GCC High|Microsoft Defender for Endpoint Server for DOD|
|Microsoft Defender for servers|Microsoft Defender for servers - Government|Microsoft Defender for servers - Government|
|

## Portal URLs

The following are the Microsoft 365 Defender portal URLs for US Government customers:

<br />

****

|Customer type|Portal URL|
|---|---|
|GCC|<https://security.microsoft.com>|
|GCC High|[https://security.microsoft.us](https://security.microsoft.us)|
|DoD|[https://security.apps.mil](https://security.apps.mil)|
|
> [!NOTE]
> If you are a GCC customer and in the process of moving from Microsoft Defender for Endpoint commercial to GCC, use https://transition.security.microsoft.com to access your Microsoft Defender for Endpoint commercial data.

## API

Instead of the public URIs listed in our [API documentation](api-overview.md), you'll need to use the following URIs:

<br />

****

|Endpoint type|GCC|GCC High & DoD|
|---|---|---|
|Login|`https://login.microsoftonline.com`|`https://login.microsoftonline.us`|
|Microsoft 365 Defender API|`https://api-gcc.security.microsoft.us`|`https://api-gov.security.microsoft.us`|
|

## Feature parity with commercial

Microsoft 365 Defender for US Government customers doesn't have complete parity with the commercial offering. While our goal is to deliver all commercial features and functionality to our US Government customers, there are some capabilities not yet available we want to highlight.

These are the known gaps:

<br />

****

|Feature name|GCC|GCC High|DoD|
|---|:---:|:---:|:---:|
|Microsoft Threat Experts|![No](../defender-endpoint/images/svg/check-no.svg) On engineering backlog|![No](../defender-endpoint/images/svg/check-no.svg) On engineering backlog|![No](../defender-endpoint/images/svg/check-no.svg) On engineering backlog|

For detailed list of Event Streaming API tables, see [Microsoft 365 Defender streaming event types supported in Event Streaming API](supported-event-types.md).

## More details

For more information, see the individual workloads US Gov pages:

- [Microsoft Defender for Cloud Apps](/enterprise-mobility-security/solutions/ems-cloud-app-security-govt-service-description).
- [Microsoft Defender for Identity](/enterprise-mobility-security/solutions/ems-mdi-govt-service-description).
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/gov).
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
