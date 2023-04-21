---
title: Microsoft Defender for Endpoint data storage and privacy
description: Learn about how Microsoft Defender for Endpoint handles privacy and data that it collects.
keywords: Microsoft Defender for Endpoint, data storage and privacy, storage, privacy, licensing, geolocation, data retention, data
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Microsoft Defender for Endpoint data storage and privacy

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

This section covers some of the most frequently asked questions regarding privacy and data handling for Defender for Endpoint.

> [!NOTE]
> This document explains the data storage and privacy details related to Defender for Endpoint. For more information related to Defender for Endpoint and other products and services like Microsoft Defender Antivirus and Windows, see [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=827576). See also [Windows privacy FAQ](https://go.microsoft.com/fwlink/?linkid=827577) for more information.

## What data does Microsoft Defender for Endpoint collect?

Microsoft Defender for Endpoint will collect and store information from your configured devices in a customer dedicated and segregated tenant specific to the service for administration, tracking, and reporting purposes.

Information collected includes file data (such as file names, sizes, and hashes), process data (running processes, hashes), registry data, network connection data (host IPs and ports), and device details (such as device identifiers, names, and the operating system version).

Microsoft stores this data securely in Microsoft Azure and maintains it in accordance with Microsoft privacy practices and [Microsoft Trust Center policies](https://go.microsoft.com/fwlink/?linkid=827578).

This data enables Defender for Endpoint to:

- Proactively identify indicators of attack (IOAs) in your organization
- Generate alerts if a possible attack was detected
- Provide your security operations with a view into devices, files, and URLs related to threat signals from your network, enabling you to investigate and explore the presence of security threats on the network.

Microsoft does not use your data for advertising.

## Data protection and encryption

The Defender for Endpoint service utilizes state of the art data protection technologies which are based on Microsoft Azure infrastructure.

There are various aspects relevant to data protection that our service takes care of. Encryption is one of the most critical and it includes data encryption at rest, encryption in flight, and key management with Key Vault. For more information on other technologies used by the Defender for Endpoint service, see [Azure encryption overview](/azure/security/security-azure-encryption-overview).

In all scenarios, data is encrypted using 256-bit [AES encryption](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard) at the minimum.

## Data storage location

Defender for Endpoint operates in the Microsoft Azure datacenters in the European Union, the United Kingdom, or in the United States. Customer data collected by the service may be stored in: (a) the geo-location of the tenant as identified during provisioning or, (b) if Defender for Endpoint uses another Microsoft online service to process such data, the geolocation as defined by the data storage rules of that other online service. For more information, see [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations).

Customer data in pseudonymized form may also be stored in the central storage and processing systems in the United States.

Once configured, you cannot change the location where your data is stored. This provides a convenient way to minimize compliance risk by actively selecting the geographic locations where your data will reside.



## Data sharing for Microsoft Defender for Endpoint

Microsoft Defender for Endpoint shares data, including customer data, among the following Microsoft products also licensed by the customer.

- Microsoft Sentinel
- Microsoft Tunnel for Mobile Application Management - Android
- Microsoft Defender for Cloud 

## Is my data isolated from other customer data?

Yes, your data is isolated through access authentication and logical segregation based on customer identifier. Each customer can only access data collected from its own organization and generic data that Microsoft provides.

## How does Microsoft prevent malicious insider activities and abuse of high privilege roles?

Microsoft developers and administrators have, by design, been given sufficient privileges to carry out their assigned duties to operate and evolve the service. Microsoft deploys combinations of preventive, detective, and reactive controls including the following mechanisms to help protect against unauthorized developer and/or administrative activity:

- Tight access control to sensitive data
- Combinations of controls that greatly enhance independent detection of malicious activity
- Multiple levels of monitoring, logging, and reporting

Additionally, Microsoft conducts background verification checks of certain operations personnel, and limits access to applications, systems, and network infrastructure in proportion to the level of background verification. Operations personnel follow a formal process when they are required to access a customer's account or related information in the performance of their duties.

Access to data for services deployed in Microsoft Azure Government data centers is only granted to operating personnel who have been screened and approved to handle data that is subject to certain government regulations and requirements, such as FedRAMP, NIST 800.171 (DIB), ITAR, IRS 1075, DoD L4, and CJIS.

## Is data shared with other customers?

No. Customer data is isolated from other customers and is not shared. However, threat intelligence on the data resulting from Microsoft processing, and which don't contain any customer-specific data, might be shared with other customers. Each customer can only access data collected from its own organization and generic data that Microsoft provides.

## How long will Microsoft store my data? What is Microsoft's data retention policy?

### At service onboarding

Data from Microsoft Defender for Endpoint is retained for 180 days, visible across the portal. However, in the advanced hunting investigation experience, it is accessible via a query for a period of 30 days. 

### At contract termination or expiration

Your data will be kept and will be available to you while the license is under grace period or suspended mode. At the end of this period, that data will be erased from Microsoft's systems to make it unrecoverable, no later than 180 days from contract termination or expiration.

### Advanced Hunting data

Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data.

## Can Microsoft help us maintain regulatory compliance?

Microsoft provides customers with detailed information about Microsoft's security and compliance programs, including audit reports and compliance packages, to help customers assess Defender for Endpoint services against their own legal and regulatory requirements. Defender for Endpoint has achieved a number of certifications including ISO, SOC, FedRAMP High, and PCI and continues to pursue additional national, regional and industry-specific certifications.

By providing customers with compliant, independently verified services, Microsoft makes it easier for customers to achieve compliance for the infrastructure and applications they run.

For more information on the Defender for Endpoint certification reports, see [Microsoft Trust Center](https://servicetrust.microsoft.com/). 

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-datastorage-belowfoldlink)
