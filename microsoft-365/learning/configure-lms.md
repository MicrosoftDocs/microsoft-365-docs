---
title: Add learning management systems for Microsoft Viva Learning
ms.author: daisyfeller
author: daisyfell
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 11/01/2021
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
localization_priority: medium
description: Learn how to configure learning management systems as a learning content source for Microsoft Viva Learning.
---

# Add learning management systems for Microsoft Viva Learning

A growing set of learning management systems are available through Viva Learning. This set may change at any time as more providers join or change their status with the program.

Learning management systems are not enabled by default. To enable these sources, you will need to [add them in the Microsoft 365 admin center](content-sources-365-admin-center.md#configure-settings-for-the-learning-content-sources) and follow the specific instructions shown in the following table.

>[!NOTE]
>You'll need a Premium license to connect learning management systems. [Learn more about licensing](https://www.microsoft.com/microsoft-viva/learning).

>[!NOTE]
>It can take 24 to 48 hours for Viva Learning users to see content for the sources you enabled in the admin portal.

## Learning management systems

|Learning management system  |Configuration instructions  |
|---------|---------|
|Cornerstone OnDemand |[Configure Cornerstone OnDemand as a content source](configure-cornerstone-content-source.md)         |
|Saba    |[Configure Saba as a content source](configure-saba-content-source.md)         |
|SAP SuccessFactors   |[Configure SAP SuccessFactors as a content source](configure-successfactors-content-source.md)         |

>[!NOTE]
>Available learning management systems are subject to change. Depending on your organization, you may have access to different learning management systems than are listed here.

## Content ingestion errors

If you experience any errors in your Microsoft 365 admin center during content ingestion, refer to the table below for next steps. Please note that this is an exhaustive list and may contain more error codes in the future.

|Learning management system |Error code |Error code description |
|:----------------|:----------|:----------------------|
|All LMSs |USR_ERROR_INVALID_RESOURCE_CREDENTIALS |The authentication credentials you provided are Invalid. Make sure you enter the correct credentials. You can contact Microsoft customer support for more details. |
|All LMSs |USR_ERROR_ACCESS_DENIED |Access denied by partner. Confirm that the credentials you entered are correct or contact the content provider's support team. |
|SuccessFactors |USR_ERROR_SFTP_NO_FILES_FOUND |No new content ingested because there were no files present in the SuccessFactors SFTP server. |
|SuccessFactors |USR_ERROR_SF_PACKAGE_NOT_FOUND |No new content ingested as the required package was not found in the SuccessFactors SFTP server. |
|Cornerstone OnDemand |USR_ERROR_INVALID_RESOURCE_CREDENTIALS |The authentication credentials you provided are Invalid. Make sure the credentials are being copied from Microsoft Viva Learning in Cornerstone OnDemand portal. |

## Content consumption for end users

Once you've added a learning management system as a content source from the Microsoft 365 admin center, content from the LMS will flow to the Viva Learning app and will be visible to end users.

Once a user chooses to play a course in Viva Learning, they will be directed to the LMS webpage and will need to enter the login credentials on the LMS sign in page. [Learn more about how to consume content with Viva Learning](https://support.microsoft.com/office/01bfed12-c327-41e0-a68f-7fa527dcc98a).
