---
title: Add Admin contacts in Microsoft Managed Desktop admin portal 
description:  Tell us who to contact for each area of focus.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 09/24/2018
ms.collection: M365-modern-desktop
---

# Add Admin contacts in Microsoft Managed Desktop Admin portal

There are several ways that Microsoft Managed Desktop service communicates with customers. To streamline communication and ensure we’re checking with the best contacts, you need to provide a set of admin contacts. Microsoft Managed Desktop IT Operations will contact these people for assistance troubleshooting issues for your tenant. 

## Azure Active Directory access for Microsoft Managed Desktop Admin portal

Microsoft Managed Desktop Admin portal requires that people accessing the portal have one of these Azure Active Directory (AD) roles:
- Global Administrator
- Intune Service Administrator
- Billing Administrator
- Service Support Administrator

The Global Administrator must be the one to enroll the customer in Microsoft Managed Desktop. All five roles have the same access within the Admin portal to initiate and view tasks. For more information on assigning these roles in Azure AD, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). 

## Admin contact focus areas

Admin contacts should be the best person or group that can answer questions and make decisions for different focus areas. Microsoft Managed Desktop Operations will contact these Admin contacts for questions involving support requests filed by the customer. These Admin contacts will receive notifications for support request updates and new messages. These areas include:

Focus area | For questions about
--- | ---
Apps | Troubleshooting App Packaging
Devices | Device health, troubleshooting with Microsoft Managed Desktop devices
Security | Troubleshooting security issues with Microsoft Managed Desktop devices
IT Help desk | in cases where Microsoft Managed Desktop Support hands over end user tickets outside of MMD support areas 
Other | For issues not covered by other areas

Whoever you choose for these contacts needs to have the knowledge and authority to make decisions for your Microsoft Managed Desktop environment. When you onboard your Microsoft Managed Desktop environment, you’re prompted to add contacts for your local Helpdesk and Security. 

Admin contacts are required when you [submit a Support request](../working-with-managed-desktop/support.md). You’ll need to have an admin contact for the focus area of the Support request. 

**To add admin contacts**

1.	Sign in to [Microsoft Managed Desktop admin portal](http://aka.ms/mwaasportal). 

2.	Under **Support**, select **Admin contacts**. 

    ![Support menu, Admin contacts](images/admincontacts.png)

3. Select **Add**.

    ![Admin portal Add button](images/adminadd.png)

4.	Select an **Area of focus** and enter the info for the contact. 

    ![the list of areas of focus](images/areaoffocus.png)

5. Repeat for each area of focus. 

