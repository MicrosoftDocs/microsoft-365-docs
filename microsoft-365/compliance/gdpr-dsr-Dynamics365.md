---
title: Dynamics 365 Data Subject Requests for the GDPR and CCPA
description: Learn how to find and act on personal data and respond to DSR and CCPA requests made by Dynamics 365 customers.
keywords: Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR, CCPA
localization_priority: Priority
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: 
- GDPR
- M365-security-compliance
hideEdit: true
ms.custom:
- seo-marvel-mar2020
titleSuffix: Microsoft GDPR
---

# Dynamics 365 Data Subject Requests for the GDPR and CCPA

The European Union [General Data Protection Regulation (GDPR)](https://ec.europa.eu/justice/data-protection/reform/index_en.htm) gives rights to people (known in the regulation as *data subjects*) to manage the personal data that has been collected by an employer or other type of agency or organization (known as the *data controller* or just *controller*). Personal data is defined broadly under the GDPR as any data that relates to an identified or identifiable natural person. The GDPR gives data subjects specific rights to their personal data; these rights include obtaining copies of it, requesting changes to it, restricting the processing of it, deleting it, or receiving it in an electronic format so it can be moved to another controller. A formal request by a data subject to a controller to take an action on their personal data is called in this document a *Data Subject Rights Request* or DSR request.

Similarly, the California Consumer Privacy Act (CCPA), provides privacy rights and obligations to California consumers, including rights similar to GDPR's Data Subject Rights, such as the right to delete, access, and receive (portability) their personal information.  The CCPA also provides for certain disclosures, protections against discrimination when electing exercise rights, and "opt-out/ opt-in" requirements for certain data transfers classified as "sales". Sales are broadly defined to include the sharing of data for a valuable consideration. For more information about the CCPA, see the [California Consumer Privacy Act](offering-ccpa.md) and the [California Consumer Privacy Act FAQ](ccpa-faq.md).

The guide discusses how to use Microsoft's products, services, and administrative tools to help our controller customers find and act on personal data to respond to DSR requests. Specifically, this includes how to find, access, and act on personal data or personal information that reside in Microsoft's cloud. Here's a quick overview of the processes outlined in this guide:

- **Discover:** Use search and discovery tools to more easily find customer- data that may be the subject of a DSR request. Once potentially responsive documents are collected, you can perform one or more of the DSR actions described in the following steps to respond to the request. Alternatively, you may determine that the request doesn't meet your organizations guidelines for responding to DSR requests.
- **Access:** Retrieve personal data that resides in the Microsoft cloud and, if requested, make a copy of it that is available to the data subject.
- **Rectify:** Make changes or implement other requested actions on the personal data, where applicable.
- **Restrict:** Restrict the processing of personal data, either by removing licenses for various online services or turning off the desired services where possible. You can a
- **Delete:** Permanently remove personal data that resided in Microsoft's cloud.
- **Export/Receive (Portability):** Provide an electronic copy (in a machine-readable format) of personal data or personal information to the data subject. Personal information under the CCPA is any information relating to an identified or identifiable person. There is no distinction between a person's private, public, or work roles. The defined term "personal information" roughly aligns with "personal data" under GDPR. However, the CCPA also includes family and household data. For more information about the CCPA, see the [California Consumer Privacy Act](offering-ccpa.md) and the [California Consumer Privacy Act FAQ](ccpa-faq.md).

Each section in this guide outlines the technical procedures that a data controller organization can take to respond to a DSR request for personal data in Microsoft's cloud

## GDPR terminology

The following list provides definitions of terms that are relevant to this guide:

- **Controller:** The natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data; where the purposes and means of such processing are determined by Union or Member State law, the controller, or the specific criteria for its nomination may be provided for by Union or Member State law.
- **Personal data and data subject:** Any information relating to an identified or identifiable natural person ('data subject'); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person.
- **Processor:** A natural or legal person, public authority, agency, or other body, which processes personal data on behalf of the controller.
- **Customer Data:** All data, including all text, sound, video, or image files, and software, that are provided to Microsoft by, or on behalf of, a customer through use of the enterprise service. Customer Data includes both (1) identifiable information of end users (for example, user names and contact information in Azure Active Directory) and Customer Content that a customer uploads into or creates in specific services (for example, customer content in an Azure Storage account, customer content of an Azure SQL Database, or a customer's virtual machine image in Azure Virtual Machines).
- **System-Generated Logs:** Logs and related data generated by Microsoft that help Microsoft provide enterprise services to users. System-generated logs contain primarily pseudonymized data, such as unique identifiers—typically a number generated by the system that cannot on its own identify an individual person but is used to deliver the enterprise services to users. System-generated logs may also contain identifiable information about end users, such as a user name.

## How this guide can help you meet your controller responsibilities

The guide, divided into two parts, describes how to use Dynamics 365 products, services, and administrative tools to help you find and act on data in the Microsoft cloud in response to requests by data subjects who are exercising their rights under the GDPR. The first part addresses personal data that is included in customer data, followed by a part addressing other pseudonymized personal data captured in system-generated logs.

- **Part 1: Responding to Data Subject Rights (DSR) requests for Personal Data included in customer data:** Part 1 of this guide discusses how to access, rectify, restrict, delete, and export personal data from Dynamics 365 applications (software as a service), which is processed as part of the customer data you have provided to the online service.
- **Part 2: Responding to data subject rights requests for Pseudonymized Data:** When you use Dynamics 365 enterprise services, Microsoft generates some information (referred to within this document as *system-generated logs*) to provide the service, which is limited to the usage footprint left behind by end users to identify their actions in the system. Although this data cannot be attributed to a specific data subject without the use of additional information, some of it may be deemed personal under the GDPR. Part 2 of this guide discusses how to access, delete, and export system-generated logs produced by Dynamics 365.

## Preparing for data subject rights investigations

When data subjects exercise their rights and make requests, consider the following points:

- Properly identify the person and role—such as employee, customer, vendor—by using information that the data subject gave you as part of his or her request. This information might be a name, an employee ID or customer number, or other identifier.
- Record the data and time of the request. (You have 30 days to complete the request.)
- Affirm that the request meets your organization's requirements for honoring or declining a data subject's request. For example, you must make sure that executing the request doesn't conflict with any other legal, financial, or regulatory obligations that you have, or infringe on the rights and freedoms of others.
- Verify that you have the information that is related to the request.

## Part 1: Responding to Data Subject Rights Requests for personal data Included in customer data

In the following articles, you'll find information to help you prepare for and respond to DSR requests for personal data included in customer data processed in Dynamics 365. It is important to note that personal data could be present in other categories of data processed by Microsoft during the course of the service of an online services subscription, such as administrator data or support data defined in the Microsoft Privacy Statement. This document is limited to assist you in the process of discovery and management of DSR requests affecting personal data present in the customer data that you have provided to Dynamics 365.

Dynamics 365 is an online service that offers multiple data processing capabilities as a software-as-a-service (SaaS). As such, Dynamics 365 offers a broad array of functionality intended to process a diverse collection of data, which could vary by nature, purpose or other specific attributes, such as sales data, transactions, financials, HR information, etc. In light of this diversity, Dynamics 365 offers multiple forms, fields, schemas, end points, and logic to process customer data, which is also reflected in the multiple ways in which DSR requests could be addressed in each application. When Dynamics 365 applications offer several ways to address specific DSR requests, we will note those in this guide by pointing to the technical descriptions offered by each application.

### Dynamics 365

#### Finding customer data

The first step in responding to a data subject rights request is to search for and identify the customer data that is the subject of the request.

Classifying customer data appropriately is the cornerstone of working with personal data in Dynamics 365 Customer Engagement business applications. Dynamics 365 for Customer Engagement offers flexibility to build out an application extension around data classification. Proper classification enables you to identify information as personal data, thereby making it possible to locate and retrieve it when responding to requests from a data subject. It can also help enable compliance with legislative and regulatory requirements for collecting and managing personal data.

Microsoft provides capabilities that assist you in responding to data subject rights requests, and thereby accessing customer data. However, it is your responsibility to ensure that personal data is located and classified appropriately.

***Dynamics 365 for Customer Engagement*** provides multiple methods for you to search for personal data within records such as: Advanced Find Search and Search for Records. These functions all enable you to identify (find) personal data.

- [Advanced Find Search](https://docs.microsoft.com/dynamics365/customer-engagement/basics/save-advanced-find-search)
- [Search for Records](https://docs.microsoft.com/dynamics365/customer-engagement/basics/search-records) across multiple record types

In Dynamics 365 for Marketing, you have the following additional capabilities:

1. [Build Power BI reports](https://docs.microsoft.com/power-bi/service-connect-to-microsoft-dynamics-crm) in order to filter and identify customer data.
2. Utilize the Insight Views on contacts and objects of marketing execution to identify additional data points that may contain customer data.

***Dynamics 365 Customer Service Insights*** provides a list of resources to help you [find customer data](https://docs.microsoft.com/dynamics365/ai/customer-service-insights/gdpr-discovery) in order to respond to GDPR requests from customers.

***Dynamics 365 for Finance and Operations*** provide several ways for you to search for customer data. You as a Tenant Admin can perform the following actions to search for customer data:

- Organize your customer data in a way that serves the purpose of rapidly discovering personal data, see [how to classify data inventory](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-guide#detailed-inventory) for this purpose.
- Use the [Person search report](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-guide#the-person-search-report) to find and collect personal data.
- [Extend the Person search report](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-extend-person-search-report) by authoring a new entity or extending an existing entity.
- Use search and filter features to find specific personal data and export that data by using the Microsoft Office Export functionality or print that information to a .pdf using browser extensions.
- Author a custom form that locates and exports personal data.
- Author an external portal or website that allows an authenticated customer to see his or her personal data.

***Dynamics 365 Business Central*** provides several ways for you to search for customer data. For details, see [Searching, filtering, and sorting data](https://docs.microsoft.com/dynamics365/business-central/ui-enter-criteria-filters).

***Dynamics 365 for Talent*** provides advanced search and filter features to find specific personal data and Microsoft Office Export functionality to export or print that information to a .pdf using browser extensions.

- Use the [Person search report](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-guide#the-person-search-report) to find and collect customer data.
- [Extend the Person search report](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-extend-person-search-report) by authoring a new entity or extending an existing entity.

### Providing a copy of customer data

Customer data in ***Dynamics 365 for Customer Engagement*** can be exported using the comprehensive entity export capabilities. Customer data can be exported to a static Excel file to facilitate a data portability request. Using Excel, you can then edit the personal data to be included in the portability request and then save as a commonly used, machine-readable format such as .csv or .xml. Dynamics 365 for Customer Engagement records also can be exported via the [Common Data Service Web API](https://docs.microsoft.com/powerapps/developer/common-data-service/webapi/overview).

Additionally, for Dynamics 365 for Marketing a [dedicated API](https://docs.microsoft.com/dynamics365/customer-engagement/marketing/developer/retrieve-interactions-contact) is provided that allows customer to build extensions that retrieve additional records of captured customer interactions that may contain personal data. The API loads all the relevant information from the back-end system and assembles it into a single, portable document.

***Dynamics 365 Customer Service Insights*** enables you to [provide a copy of customer data](https://docs.microsoft.com/dynamics365/ai/customer-service-insights/gdpr-export) by using data export.

Customer data in ***Dynamics 365 for Finance and Operations*** can be exported using the comprehensive entity export capabilities. Using [*Data management and integration entities*](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/data-entities/data-management-integration-data-entity), the Tenant Admin may utilize provided entities, create new, or extend existing, entities for a repeatable personal data export to Excel or a number of other common formats using [*Data import and export jobs*](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/data-entities/data-import-export-job).  Alternatively, many lists can be exported to a static Excel file to facilitate a data portability request. When customer data is exported to Excel, you can then edit the personal data to be included in the portability request and then save the file as a commonly used, machine-readable format such as .csv or .xml. You may also consider using the *Person Search Report* to provide the data subject with data that you've classified as personal data.

In ***Dynamics 365 Business Central***, you can make use of two features to provide a copy of customer data to a data subject:

You can export customer data to an Excel file. In Excel, you can then edit the customer data to be included in the portability request, and save it in a commonly used, machine-readable format, such as .csv or .xml. For details, see [Exporting your business data to Excel.](https://docs.microsoft.com/dynamics365/business-central/about-export-data)

In ***Dynamics 365 for Talent***, you may use [Extend the Person search report](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-extend-person-search-report) to gather information in support of a request for a copy of the data subject's personal data.

### Rectifying customer data

***Dynamics 365 for Customer Engagement*** gives you following methods for correcting inaccurate or incomplete customer data, or erasing customer data:

- Search for customer data using the capabilities mentioned in "Finding customer data" and directly edit data in Customer Engagement Forms. Edits can be done at a single row level or multiple rows can be modified directly.
- Bulk editing multiple Customer Engagement records, you can utilize the Microsoft Office add-in to export data to Microsoft Excel, make your changes, and then import that modified data from Excel into Dynamics 365 for Customer Engagement.

Additionally, for Dynamics 365 for Marketing you can also:

- Update-my-data landing page, by editing single or multiple rows directly
- Prepare a [subscription centers](https://docs.microsoft.com/dynamics365/customer-engagement/marketing/set-up-subscription-center) page that has as many editable contact fields that can be included. This page enables an end user to update their own information as much as possible.

***Dynamics 365 Customer Service Insights*** also provides capabilities that enable organizations to [rectify or make changes to customer data](https://docs.microsoft.com/dynamics365/ai/customer-service-insights/gdpr-summary).

In ***Dynamics 365 for Finance and Operations***, you may also use of [*customization tools*](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/dev-tools/developer-home-page), but the decision and implementation is your responsibility.

***Dynamics 365 Business Central*** offers two ways to correct inaccurate or incomplete customer data.

To quickly bulk-edit multiple Business Central records, you can export lists to Excel using the [Business Central Excel Add-in](https://docs.microsoft.com/dynamics365/business-central/finance-analyze-excel#the--excel-add-in) to correct multiple records, and then publish the modified data from Excel in Business Central. For details, see [Exporting your Business Data to Excel](https://docs.microsoft.com/dynamics365/business-central/about-export-data).

You can change customer data stored in any field—such as information about a customer in the Customer card—by manually editing the data element containing the target personal data. For details, see [Entering data](https://docs.microsoft.com/dynamics365/business-central/ui-enter-data).

#### Brief note about modifying entries in business transactions

Transactional records, such as general, customer, and tax ledger entries, are essential to the integrity of an enterprise resource planning system. Personal data that is part of a financial or other transaction is kept "as is" for compliance with financial laws (for example, tax laws), prevention of fraud (such as security audit trail), or compliance with industry certifications. Therefore, Dynamics 365 for Finance and Operations and Dynamics 365 Business Central restrict modifying data in such records.

If you store personal data in business transaction records, the only way to correct, delete, or restrict processing of personal data to honor a data subject's request is to use the Dynamics 365 Business Central [customization capabilities](https://docs.microsoft.com/dynamics365/business-central/dev-itpro/index). [The decision to honor a modification data subject request](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/gdpr-guide#reasons-why-certain-personal-data-may-not-be-modified-or-deleted) and implementation thereof is your responsibility.

### Restricting the processing of customer data

When you receive a request from a data subject to restrict processing of customer data, you can easily extract the affected customer data from the online service and store it in a separate container (that is, on-premise storage or separate web service with data isolation capabilities) isolated from the processing functions offered by any cloud application.

Alternative mechanism such as data processing block is offered by ***Dynamics 365 Business Central***, where users are offered the ability to block specific data subject's record. For details, see [Restrict data processing for a data subject](https://docs.microsoft.com/dynamics365/business-central/admin-responding-to-requests-about-personal-data#restrict-data-processing-for-a-data-subject). When a record is marked as blocked, Dynamics 365 Business Central will discontinue processing the customer data of that data subject. You cannot create new transactions that use a blocked record; for example, you cannot create a new invoice for a customer, when either the customer or salesperson is blocked.

### Deleting customer data

When a data subject asks you to delete their customer data, there are several ways to do so:

- Bulk editing multiple Dynamics 365 records, you can utilize the Microsoft Office add-in to export data to Microsoft Excel, make your changes, and then import that modified data from Excel back into the online service.
- You can delete customer data stored in any field by locating the data you want to delete and then manually deleting the data element containing the target customer data, for example like employing a hard delete on the contact record representing the data subject and other records that contain personal data

Additionally, For Dynamics 365 Marketing, deletion of a contact will assure that interaction data with personal information will be removed as well. For any custom fields or entities, you must customize your system to make sure it deletes all customer data from related records and/or unlinks them from the contact record so that all personal information is removed. More information: [Developer Guide (Marketing)](https://docs.microsoft.com/dynamics365/customer-engagement/marketing/developer/marketing-developer-guide).

***Dynamics 365 Customer Service Insights*** also provides organizations with capabilities to [delete customer data](https://docs.microsoft.com/dynamics365/ai/customer-service-insights/gdpr-delete).

Alternatively, in ***Dynamics 365 for Finance and Operations*** you may use [*customization tools*](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/dev-tools/developer-home-page) to erase/modify customer data.

In ***Dynamics 365 Business Central***, when a data subject asks you to delete their personal data that happens to be included in your customer data, there are several ways to address this request:

- To quickly bulk-edit multiple Business Central records, you can export data to Excel using the [Business Central Excel Add-in](https://docs.microsoft.com/dynamics365/business-central/finance-analyze-excel#the--excel-add-in) to delete multiple records, and then publish these changes from Excel back in Business Central. For details, see [Exporting your Business Data to Excel](https://docs.microsoft.com/dynamics365/business-central/about-export-data).
- You can delete customer data stored in any field by manually deleting the data element containing the target customer data. For details, see [Entering data](https://docs.microsoft.com/dynamics365/business-central/ui-enter-data).
- You can directly delete customer data, for example by deleting a contact and then running the Delete Canceled Interaction Log Entries batch job to delete interactions for that contact.
- You can [delete documents](https://docs.microsoft.com/dynamics365/business-central/admin-manage-documents) containing customer data—for example, memos and posted sales and purchase invoices.

Besides bulk or individual deletion of discrete records, please note that only terminated workers can be fully deleted from ***Dynamics 365 for Talent***. [Follow these steps to delete terminated workers](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/gdpr/respond-dsr-request-talent#additional-notes-that-apply-to-requests-for-personal-data).

### Exporting customer data

To respond to a data portability request, customer data in ***Dynamics 365 for Customer Engagement*** can be exported using the comprehensive entity export capabilities. Customer data can be exported to a static Excel file to facilitate a data portability request. Using Excel, you can then edit the personal data to be included in the portability request and then save as a commonly used, machine-readable format such as .csv or .xml.

Additionally, for Dynamics 365 for Marketing a [dedicated API](https://docs.microsoft.com/dynamics365/customer-engagement/marketing/developer/retrieve-interactions-contact) is provided that allows customer to build extensions that retrieve additional records of captured customer interactions that may contain personal data. The API loads all the relevant information from the back-end system and assembles it into a single, portable document.

For ***Dynamics 365 Customer Service Insights***, you [export customer data](https://docs.microsoft.com/dynamics365/ai/customer-service-insights/gdpr-export) through the Azure management portal.

***Dynamics 365 for Finance and Operations*** offers [Data management and integration entities that enables provided entities, newly created entities, or extended entities for a repeatable personal data export to Excel or a number of other common formats using [Data import and export jobs](https://docs.microsoft.com/dynamics365/unified-operations/dev-itpro/data-entities/data-import-export-job).  Alternatively, many lists can be exported to a static Excel file to facilitate a data portability request. When customer data is exported to Excel in this fashion, you can then edit the personal data to be included in the portability request and then save the file as a commonly used, machine-readable format such as .csv or .xml.

Both Dynamics 365 for Finance and Operations and ***Dynamics 365 for Talent*** offer Person Search Report to provide the data subject with data that you've classified as personal data.

***Dynamics 365 Business Central*** offers the following features:

- You can export customer data to an Excel file. In Excel, you can then edit the customer data to be included in the portability request, and save it in a commonly used, machine-readable format, such as .csv or .xml. For details, see [Exporting your business data to Excel](https://docs.microsoft.com/dynamics365/business-central/about-export-data).
- You can export customer data to an Excel file. In Excel, you can then edit the customer data to be included in the portability request, and save it in a commonly used, machine-readable format, such as .csv or .xml. For details, see [Exporting your business data to Excel](https://docs.microsoft.com/dynamics365/business-central/about-export-data).


## Part 2: Responding to DSRs for system-generated logs

Microsoft also provides you with the ability to access, export, and delete system-generated logs that may be deemed personal under the GDPR's broad definition of "personal data." Examples of system-generated logs that may be deemed personal under GDPR include:

- Product and service usage data such as user activity logs
- User search requests and query data
- Data generated by product and services as a product of system functionality and interaction by users or other systems

The ability to restrict or rectify data in system-generated logs is not supported. Data in system-generated logs constitutes factual actions conducted within the Microsoft cloud and diagnostic data, and modifications to such data would compromise the historical record of actions and increase fraud and security risks.

### Accessing and exporting system-generated logs

Admins can access system-generated logs associated with a particular user's use of Dynamics 365 services and applications. To access and export system-generated logs:

1. Go to the [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/) and sign in using the credentials of a Dynamics 365 global administrator.
2. In the **Privacy** drop-down list at the top of the page, click **Data Subject Request**.
3. On the **Data Subject Request** page, under **System-Generated Logs**, click **Data Log Export**.
    > [!NOTE]
    > The **Data Log Export** is displayed. Note that a list of export data requests submitted by your organization is displayed.
4. To create a new request for a user, click **Create Export Data Request**.

After you create a new request, it will be listed on the **Data Log Export** page where you can track its status. After a request is complete, you can click a link to access the system-generated logs, which will be exported to your organization's Azure Storage location within 30 days of creating the request. The data will be saved in common, machine-readable file formats such as JSON or XML. If you don't have an Azure account and Azure Storage location, you'll need to create an Azure account and/or Azure Storage location for your organization so that the Data Log Export tool can export the system-generated logs.

Azure supports this request by enabling your organization to export the data in the native JSON format, to your specified Azure Storage Container[. Introduction to Microsoft Azure Storage—Blob storage](https://docs.microsoft.com/azure/storage/common/storage-introduction#blob-storage) article. The data retrieved will not include data that may compromise the security and stability of the service.

> [!IMPORTANT]
> You must be a tenant administrator to export user data from the tenant.

The following table summarizes accessing and exporting system-generated logs:

| | |
|:----|:---|
| | |
|**How long does the Microsoft Data Log Export tool take to complete a request?**| This can depend on several factors. In most cases it should complete in one or two days, but it can take up to 30 days. |
|**What format will the output be in?**| The output will be structured machine-readable files such as XML, CSV, or JSON. |
|**What data does the Data Log Export tool return?**| The Data Log Export tool returns system-generated logs that Microsoft stores. Exported data will span across various Microsoft services including Office 365, Azure, and Dynamics. |
|***Who has access to Data Log Export tool to submit access requests for system-generated logs?**| Dynamics 365 global administrators will have access to the GDPR Log Manager utility. |
|**How is data returned to the user?**| Data will be exported to your organization&#39;s Azure Storage location; it will be up to admins in your organization to determine how they will show/return this data to users. |
|**What will data in system-generated logs look like?**| Example of a system-generated log record in JSON format: <br><br> "DateTime": "2017-04-28T12:09:29-07:00", <br> "AppName": "SharePoint", <br> "Action": "OpenFile", <br> "IP": "154.192.13.131", <br> "DevicePlatform": "Windows 1.0.1607" |

### Deleting system-generated logs

To delete system-generated logs retrieved through an access request, you must remove the user from the service and permanently delete their Azure Active Directory account. For instructions on how to permanently delete a user, see the [Step 5: Delete](gdpr-dsr-azure.md#step-5-delete) section in the Azure Data Subject Requests topic. It's important to note that permanently deleting a user account is irreversible once initiated. Permanently deleting a user account removes the user's data from system-generated logs, except for data that may compromise the security or stability of the service, for nearly all Dynamics 365 services within 30 days.

## Learn more

- [Microsoft Trust Center](https://www.microsoft.com/trust-center/privacy/gdpr-overview)
