---
title: Privacy and personal data
description: Details the data collected, stored, and used by the service
keywords: GDPR, retention, deletion, storage, retention, processing, security, auditing
ms.service: m365-md
ms.sitesec: library
author: jaimeo
manager: laurawi
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.topic: article
audience: Admin, ITPro
ms.localizationpriority: normal
---

# Privacy and personal data

Users can receive, transmit, and store data on devices managed by Microsoft Managed Desktop. They trust that the data's privacy is protected and used only in a way that is consistent with their expectations. This article explains how Microsoft Managed Desktop collects, stores, retains, processes, secures, shares, audits, and exports personal data. You'll also learn how an admin can view, correct, and delete personal data.

Microsoft Managed Desktop does not use any personal data collected as part of providing the service for profiling, advertising, or marketing purposes.

## Data collection of Microsoft Managed Desktop

When users enroll corporate devices into Microsoft Managed Desktop, data collection is handled – on the technical layer – by using Windows and Microsoft Intune. These sources collect personal data about users' devices, such as device names for Microsoft Managed Desktop to be able to identify the device to be managed and provided with the Microsoft Managed Desktop experiences.

Microsoft Managed Desktop does not collect data by itself to provide its service (except for [IT Admin contact information](#it-admin-contact-information). Instead, Microsoft Managed Desktop reuses data that other sources, such as Windows and Microsoft Intune, have already collected. Microsoft Managed Desktop uses data these services collect from enrolled devices:

- Windows diagnostic data from devices managed by Microsoft Managed Desktop is sent to Microsoft's Windows diagnostic data stores.
- Microsoft Managed Desktop uses [modern management](/learn/modules/introduction-to-modern-management-in-microsoft-365/) for managing the enrolled devices. As part of "modern management," the devices must be enrolled in the tenant’s Azure Active Directory.
- For distributing its highly optimized and secure configuration to enrolled devices, Microsoft Managed Desktop uses Microsoft Intune.
- Microsoft Managed Desktop uses security intelligence data from Microsoft Defender Advanced Thread Protection for those customers that use that service.

## Data storage and sources in Microsoft Managed Desktop

After Microsoft Managed Desktop gets the data, it needs to provide its service, storage, and processing of that data proceeds as follows:

### Storing data, storage location, and data retention

Microsoft Managed Desktop stores its data in one or more of the following Microsoft storage services:

- Azure SQL
- Azure storage
- Dynamics 365

Microsoft Managed Desktop stores its data in the United States. Personal data is retained by Microsoft Managed Desktop for a maximum of 30 days, except for alert data for Microsoft Managed Desktop devices collected by Microsoft Defender for Endpoint. The actual alert data (which could include personal data) is stored for 180 days. Alert data with personal data removed is stored for up to two years. In compliance with the General Data Protection Regulation (GDPR) and California Consumer Privacy Act (CCPA), Microsoft Managed Desktop honors the data subject rights for any personal data that is stored in alert data.

### Staff location

The Microsoft Managed Desktop Operations and Security Operations teams are located in the United States and India.

## Data usage of Microsoft Managed Desktop

Microsoft Managed Desktop uses this data:


| Data sources |Use with Microsoft Managed Desktop  |
|---------|---------|
|Azure Active Directory data     | Used in reports created for tenant admins, which are available in the Microsoft Managed Desktop Admin portal.        |
|Intune data     | Used in reports created for tenant admins, which are available in the Microsoft Managed Desktop Admin portal.        |
|Microsoft Defender for Endpoint     |  Used for addressing security threats detected on enrolled devices by Microsoft Managed Desktop’s Security Operations Center (SOC).  |
|Windows diagnostic data     |Used to determine the update status of managed devices and to provide and improve Microsoft Managed Desktop’s IT-as-a-Service (ITaaS) offering.         |
|Admin contact data     | Used by Microsoft Managed Desktop to communicate with tenant administrators.        |


### Entities processed by Microsoft Managed Desktop

Microsoft Managed Desktop processes these entities to provide the service:

- Device data
- Device security settings
- Device operating system and hardware
- Aggregated information about device health
- Device diagnostic information
- Tenant data
- Azure Active Directory resources
- Policy and configuration data
- Microsoft Defender for Endpoint metadata and alert data
- Windows diagnostic data
- Product and service usage data

### Microsoft Azure Active Directory

Identity data used by Microsoft Managed Desktop is stored by Azure Active Directory in a geographical location based on the address provided by the organization when subscribing for a Microsoft online service such as Office 365 or Azure. See [Microsoft Azure—Where is my customer data?](http://azuredatacentermap.azurewebsites.net/) for a map showing the datacenters for Azure Active Directory.

For more information about the regions Azure uses for data storage, see [Azure Active Directory–Where is your data located](https://msit.powerbi.com/view?r=eyJrIjoiODdjOWViZDctMWRhZS00ODUzLWI4MmQtNWM5NjBkZTBkNjFlIiwidCI6IjcyZjk4OGJmLTg2ZjEtNDFhZi05MWFiLTJkN2NkMDExZGI0NyIsImMiOjV9).

### Microsoft Intune

Intune data can be stored in a few different regions, such as Europe North (Ireland) and Europe West (Netherlands). Your IT administrator creates a tenant account and chooses the country where data will be stored when they initially enroll in Intune services. For a list of datacenter locations used by Intune, see [Where your Microsoft 365 customer data is stored?](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide/). For more information about data storage and use by Intune, see [Data collection in Intune](/intune/privacy-data-collect).

### Microsoft Defender for Endpoint

Microsoft Defender for Endpoint data can be stored in a few different regions. For this reason, Defender for Endpoint operates in the Microsoft Azure datacenters in the European Union, the United Kingdom, and in the United States, as stated at [Microsoft Defender for Endpoint—Data storage locations](http://intunedatacentermap.azurewebsites.net/). For more information about data storage and use by Defender for Endpoint, see [What data does Microsoft Defender for Endpoint collect?](/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy#what-data-does-microsoft-defender-atp-collect)

### Windows 10

As stated in the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement), “personal data collected by Microsoft may be stored and processed in your region, in the United States, and in any other country where Microsoft or its affiliates, subsidiaries, or service providers operate facilities. […] Typically, the primary storage location is in the customer’s region or in the United States, often with a backup to a datacenter in another region. The storage location(s) are chosen in order to operate efficiently, to improve performance, and to create redundancies in order to protect the data if there is an outage or other problem. We take steps to ensure that the data we collect under this privacy statement is processed according to the provisions of this statement and the requirements of applicable law wherever the data is located.”

For more information about the diagnostic data collection of Windows 10, see the ["Where we store and process personal data"](https://privacy.microsoft.com/privacystatement#mainwherewestoreandprocessdatamodule) section of the Microsoft Privacy Statement.

## Data access protection

Direct access to Microsoft Managed Desktop’s internal data stores is restricted in several ways:

- It requires engineering lead level approval.
- It is both audited and time limited.
- It requires the use of a highly secured and restricted workstation.
- All data is encrypted while it is stored.
- There is no standing access.
- Access to Microsoft Managed Desktop’s internal management portal requires a highly secured and restricted workstation.

## Processing personal data in a compliant manner
Microsoft Managed Desktop processes personal data with ISO-certified systems. For more information, see [Compliance](../intro/compliance.md).

## Profiling and marketing

Microsoft Managed Desktop does not use any personal data collected as part of providing the service for profiling, advertising, or marketing purposes.

## Data Subject Requests for the GDPR and CCPA

The European Union [General Data Protection Regulation (GDPR)](https://ec.europa.eu/justice/data-protection/reform/index_en.htm) gives rights to people (known in the regulation as data subjects) to manage the personal data that has been collected by an employer or other type of agency or organization (known as the data controller or just controller). Personal data is defined very broadly under the GDPR as any data that relates to an identified or identifiable natural person. The GDPR gives data subjects specific rights to their personal data; these rights include obtaining copies of personal data, requesting corrections to it, restricting the processing of it, deleting it, or receiving it in an electronic format so it can be moved to another controller. A formal request by a data subject to a controller to take an action on their personal data is called a Data Subject Request or DSR.

Similarly, the CCPA provides privacy rights and obligations to California consumers, including rights similar to GDPR's Data Subject Rights, such as the right to delete, access, and receive (portability) their personal information. The CCPA also provides for certain disclosures, protections against discrimination when electing exercise rights, and "opt-out / opt-in" requirements for certain data transfers classified as "sales". Sales are broadly defined to include the sharing of data for a valuable consideration. For more information about the CCPA, see the [California Consumer Privacy Act](/compliance/regulatory/offering-ccpa?view=o365-worldwide) and the [California Consumer Privacy Act FAQ](/compliance/regulatory/ccpa-faq?view=o365-worldwide).

The following section discusses how Microsoft Managed Desktop helps controllers to find, access, and act on personal data or personal information used by Microsoft Managed Desktop.

> [!NOTE]
> If you're looking for general information about the GDPR, see the [GDPR section](https://servicetrust.microsoft.com/ViewPage/GDPRGetStarted) of the Service Trust Portal.

### IT Admin contact information

A tenant administrator can view, correct, and delete their own personal data (such as their own contact information) directly in the Admin Contact section of the Microsoft Managed Desktop Portal.

## Microsoft Defender for Endpoint alert data

Security administrators can request an extraction or deletion of personal data related to Microsoft Defender for Endpoint alerts on a Microsoft Managed Desktop managed device in their environment. The security administrator should sign in to the Microsoft Managed Desktop [Admin Portal](https://aka.ms/memadmin) and submit a support request. Select **Support request type** of **Change request**, **Category** of **Security**, and **Subcategory** of **Other**, and then provide the relevant device names in the description along with your request for extraction or deletion of data.

### User-related personal data

Aside from this, Microsoft Managed Desktop does not collect personal data on its own. Instead, it relies on and uses personal data that other Microsoft Enterprise Online Services collected. IT Admins looking to respond to their user requests to view, correct, and delete their personal data can use the respective functionality of the underlying services that Microsoft Managed Desktop depends on. If you are interested in viewing or deleting personal data used by these services, see the [Azure Data Subject Requests for the GDPR](/compliance/regulatory/gdpr-dsr-Azure) article first.

Furthermore, use the following guidance to exercise DSRs for the services Microsoft Managed Desktop depends on for the collection of personal data:

- [Azure Active Directory](/compliance/regulatory/gdpr-dsr-Azure?view=o365-worldwide)
- [Microsoft Intune](/compliance/regulatory/gdpr-dsr-Intune?view=o365-worldwide)
- [Microsoft  Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy)
- [Windows 10](/windows/privacy/windows-10-and-privacy-compliance)
