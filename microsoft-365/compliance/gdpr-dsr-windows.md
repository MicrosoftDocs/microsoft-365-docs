---
title: Data processor service for Windows Enterprise Data Subject Requests for the GDPR and CCPA
description: Learn how to use Microsoft products, services, and admin tools to find and act on personal data to respond to DSRs.
keywords: Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR
localization_priority: Priority
ROBOTS: NOINDEX, NOFOLLOW
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: siosulli
author: DaniHalfin
manager: dansimp
audience: itpro
ms.collection: 
- GDPR
- M365-security-compliance
---

# Data processor service for Windows Enterprise Data Subject Requests for the GDPR and CCPA 

>[!NOTE]
>This topic is intended for participants in the data processor service for Windows Enterprise preview program and requires acceptance of specific terms of use. To learn
more about the program and agree to the terms of use, see [https://aka.ms/WindowsEnterprisePublicPreview](https://aka.ms/WindowsEnterprisePublicPreview).

## Introduction to Data Subject Requests (DSRs) 
The EU General Data Protection Regulation (GDPR) gives rights to people (known in the regulation as _data subjects_) to manage the personal data that has been collected by an employer or other type of agency or organization (known as the _data controller_ or just _controller_). Personal data is defined broadly under the GDPR as any data that relates to an identified or identifiable natural person. The GDPR gives data subjects specific rights to their personal data; these rights include obtaining copies of personal data, requesting corrections to it, restricting the processing of it, deleting it, or receiving it in an electronic format so it can be moved to another controller. A formal request by a data subject to a controller to take an action on their personal data is called a _Data Subject Request_ or DSR. 

Similarly, the California Consumer Privacy Act (CCPA), provides privacy rights and obligations to California consumers, including rights similar to GDPR’s Data Subject Rights, such as the right to delete, access, and receive (portability) their personal information. The CCPA also provides for certain disclosures, protections against discrimination when electing exercise rights, and “opt-out/ opt-in” requirements for certain data transfers classified as “sales". Sales are broadly defined to include the sharing of data for a valuable consideration. For more information about the CCPA, see the [California Consumer Privacy Act](https://docs.microsoft.com/microsoft-365/compliance/offering-ccpa) and the [California Consumer Privacy Act FAQ](https://docs.microsoft.com/microsoft-365/compliance/ccpa-faq).

The guide discusses how to use Microsoft products, services, and administrative tools to help our controller customers find and act on personal data to respond to DSRs. Specifically, this includes how to find, access, and act on personal data that reside in the Microsoft cloud. Here’s a quick overview of the processes outlined in this guide: 

1. **Access**—Retrieve personal data that resides in the Microsoft cloud and, if requested, make a copy of it that can be available to the data subject. 
2. **Delete**—Permanently remove personal data that resided in the Microsoft cloud. 
3. **Export**—Provide an electronic copy (in a machine-readable format) of personal data to the data subject. Personal information under the CCPA is any information relating to an identified or identifiable person.

Personal information under the CCPA is any information relating to an identified or identifiable person. There is no distinction between a person’s private, public, or work roles. The defined term “personal information” roughly aligns with “personal data” under GDPR. However, the CCPA also includes family and household data. For more information about the CCPA, see the [California Consumer Privacy Act](https://docs.microsoft.com/microsoft-365/compliance/offering-ccpa) and the [California Consumer Privacy Act FAQ](https://docs.microsoft.com/microsoft-365/compliance/ccpa-faq).

Each section in this guide outlines the technical procedures that a data controller organization can take to respond to a DSR for personal data in the Microsoft cloud. 

## Terminology

The following list provides definitions of terms that are relevant to this guide. 

* _Controller_—The natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data; where the purposes and means of such processing are determined by Union or Member State law, the controller, or the specific criteria for its nomination may be provided for by Union or Member State law. 

* _Personal data and data subject_—Any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person. 

* _Processor_—A natural or legal person, public authority, agency, or other body that processes personal data on behalf of the controller. 

* _Customer Data_—All data, including all text, sound, video, or image files, and software, that are provided to Microsoft by, or on behalf of, a customer through use of the enterprise service. 

* _Windows Diagnostic Data_—Vital technical data from Windows devices about the device and how Windows and related software are performing. It is used to keep Windows up to date, secure, reliable, performant, and improves Windows through the aggregate analysis of the use of Windows. Some examples of Windows Diagnostic Data are the type of hardware being used, applications installed with their respective usage, and reliability information on device drivers. Some Windows components and apps connect to Microsoft services directly, but the data they exchange is not Windows Diagnostic Data. For example, exchanging a user’s location for local weather or news is not an example of Windows Diagnostic Data. 

## How to use this guide 

When you use data processor service for Windows Enterprise enrolled devices, Windows generates some information, known as Windows Diagnostic Data, in order to provide the service.

## Windows Diagnostic Data 

Microsoft provides you with the ability to access, delete, and export Windows Diagnostic Data associated with a user’s use of the data processor service for Windows Enterprise.

>[!IMPORTANT]
>The ability to rectify Windows Diagnostic Data is not supported. Windows Diagnostic Data constitutes factual actions conducted within Windows, and modifications to such data would compromise the historical record of actions, increasing security risks and harming reliability. All data covered in this document is considered Windows Diagnostic Data. 

## Executing DSRs against Windows Diagnostic Data 

Microsoft provides the ability to access, delete, and export certain Windows diagnostic data through the Azure portal, and also directly via pre-existing application programming interfaces (APIs).

### Step 1: Access 

The tenant admin is the only person within your organization who can access Windows Diagnostic Data associated with a particular user’s use of a data processor service for Windows Enterprise enrolled device. The data retrieved for an access request will be provided, via export, in a machine-readable format and will be provided in files that will allow the user to know which devices and services the data is associated with. As noted previously, the data retrieved will not include data that may compromise the security or stability of the Windows device. 

Microsoft offers a portal experience, providing the enterprise customer’s tenant administrator the capability to manage DSR access requests. [Azure DSR, Part 2, Step 3: Export](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-azure#step-3-export), describes how to execute a DSR access request, via export, through the Azure portal.

### Step 2: Delete 

Microsoft provides a way to execute user-based DSR delete requests based on a particular user’s Azure Active Directory object.

For user-based delete requests, Microsoft offers a portal experience, providing the enterprise customer’s tenant administrator the capability to manage DSR delete requests. [Azure DSR, Part 1, Step 5: Delete](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-azure#step-5-delete), describes how to execute a DSR delete request through the Azure portal. 

Microsoft provides the ability to delete users, which in turn will delete Customer Data, directly via a pre-existing application programming interface (API). Details are described in the [API reference documentation](https://docs.microsoft.com/graph/api/directory-deleteditems-delete?view=graph-rest-beta). 

>[!IMPORTANT]  
>Deleting collected data does not stop further collection. To turn off data collection follow the procedure described in the [respective service’s reference documentation](https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enterprise-management).
 
 Additionally, user-based delete requests require deleting the user account itself. 

### Step 3: Export 

The tenant admin is the only person within your organization who can access Windows diagnostic data associated with a particular user’s use of a data processor service for Windows Enterprise enrolled device. The data retrieved for an export request will be provided in a machine-readable format and will be provided in files that will allow the user to know which devices and services the data is associated with. As noted previously, the data retrieved will not include data that may compromise the security or stability of the Windows device. [Azure DSR, Part 2, Step 3: Export](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-azure#step-3-export), describes how to execute a DSR export request through the Azure portal. 

Microsoft provides the ability to export Customer Data directly via a pre-existing application programming interface (API). Details are described in the [API reference documentation](https://docs.microsoft.com/graph/api/user-exportpersonaldata?view=graph-rest-1.0).

## Notify about exporting or deleting issues 

If you run into issues while exporting or deleting data from the Azure portal, go to the Azure portal **Help + Support** blade and submit a new ticket under **Subscription Management > Other Security and Compliance Request > Privacy Blade and GDPR Requests**. 
