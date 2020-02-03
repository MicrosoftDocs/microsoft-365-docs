---
title: "Automatically investigate and respond to threats in Office 365"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: M365-security-compliance
description: "Get started using automated investigation and response capabilities in Office 365 Advanced Threat Protection Plan 2."
---

# Automatically investigate and respond to threats in Office 365

## Overview

Depending on your subscription, [Office 365 Advanced Threat Protection](office-365-atp.md) can include automated investigation and response (AIR) capabilities that can save your security operations team time and effort in dealing with alerts and threats.

- To get started using automated investigation and response capabilities in Office 365, use this article. 
- To get an overview of how it works, see [Automated investigation and response in Office 365](automated-investigation-response-office.md).

> [!TIP]
> Do you have Microsoft 365 E5 or Microsoft 365 E3 together with Identity & Threat Protection? Consider trying [Automated investigation and response (AIR) in Microsoft Threat Protection](../mtp/mtp-autoir.md).

With automated investigation and response capabilities, when certain alerts are triggered, one or more security playbooks initiate, and the automated investigation process begins. During and after an automated investigation process, your security team can do the following:

- [View the details of an investigation](#view-details-of-an-investigation)
- [Review and approve actions as a result of an investigation](#review-and-approve-actions) 
- [View details about an alert related to an investigation](#view-details-about-an-alert-related-to-an-investigation)

> [!IMPORTANT]
> To perform the tasks described in this article, you must have appropriate permissions assigned. See [required permissions to use AIR capabilities](automated-investigation-response-office.md#required-permissions-to-use-air-capabilities).

## View details of an investigation

1. Go to [https://protection.office.com](https://protection.office.com) and sign in. This takes you to the the Security & Compliance Center.

2. Do one of the following:

    - Go to **Threat management** > **Dashboard**. This takes you to the [Security Dashboard](security-dashboard.md). Your AIR widgets appear across the top of the [Security Dashboard](security-dashboard.md). Select a widget, such as **Investigations summary**.

    - Go to **Threat management** > **Investigations**. 

    Either method takes you to a list of investigations.

    ![Main investigation page for AIR](../media/air-maininvestigationpage.png) 

3. In the list of investigations, select an item in the **ID** column. This opens investigation details page, starting with the investigation graph in view.

    ![AIR investigation graph page](../media/air-investigationgraphpage.png)

4. Use the various tabs to learn more about the investigation.

## Review and approve actions

In Office 365, automated investigations typically result in one or more recommended actions. However, no actions are taken until they are approved by your security operations team. Use the following procedure to review and approve actions.

1. Go to [https://protection.office.com](https://protection.office.com) and sign in. 

2. Go to **Threat management** > **Investigations**.

3. In the list of investigations, select an item in the **ID** column. 

3. On the investigation details view, select the **Actions** tab. Any actions that are pending approval are listed here.

4. Select an item in the list.

5. Select **Approve** to take the recommended action (or **Reject** to close the investigation without taking action).

## View details about an alert related to an investigation

Certain kinds of alerts trigger automated investigation in Office 365. To learn more, see [Alerts](automated-investigation-response-office.md#alerts). Use the following procedure to view details about an alert that is associated with an automated investigation.

1. Go to [https://protection.office.com](https://protection.office.com) and sign in. This takes you to the the Security & Compliance Center.

2. Go to **Threat management** > **Investigations**.

3. In the list of investigations, select an item in the **ID** column. 

4. With details of an investigation open, select the **Alerts** tab. Any alerts that triggered the investigation are listed here.

5. Select an item in the list. A flyout opens, with details about the alert and links to additional information and actions.

6. Review the information on the flyout, and, depending on the particular alert, take an action, such as **Resolve**, **Suppress**, or **Notify users**. 

    - **Resolve** is equivalent to closing an alert
    
    - **Suppress** causes a policy to not trigger alerts for a specified period of time
    
    - **Notify users** starts an email with users' email addresses already entered, and enables your security operations team to type a message to those users. (This is similar to sending a message to recipients using [Threat Explorer](threat-explorer.md).)  

## Use the Office 365 Management Activity API for custom or third-party reporting solutions

If your organization is using a custom or third-party reporting solution, you can view information about automated investigations in that solution by using the Office 365 Management Activity API.

Use the following resources to set this up:

|Resource  |Description  |
|---------|---------|
|[Office 365 Management APIs overview](https://docs.microsoft.com/office/office-365-management-api/office-365-management-apis-overview)     |The Office 365 Management Activity API provides information about various user, admin, system, and policy actions and events from Office 365 and Azure Active Directory activity logs.         |
|[Get started with Office 365 Management APIs](https://docs.microsoft.com/office/office-365-management-api/get-started-with-office-365-management-apis)     |The Office 365 Management API uses Azure AD to provide authentication services for your application to access Office 365 data. Follow the steps in this article to set this up.          |
|[Office 365 Management Activity API reference](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference)     |You can use the Office 365 Management Activity API to retrieve information about user, admin, system, and policy actions and events from Office 365 and Azure AD activity logs. Read this article to learn more about how this works.        |
|[Office 365 Management Activity API schema](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-schema)     |Get an overview of the [Common schema](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-schema#common-schema) and the [Office 365 ATP and threat investigation and response schema](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-schema#office-365-advanced-threat-protection-and-threat-investigation-and-response-schema) to learn about specific kinds of data available through the Office 365 Management Activity API.         |

## Next steps

- [Find out how to get AIR and see required permissions](automated-investigation-response-office.md#how-to-get-air)
- [Learn more about alerts](../../compliance/alert-policies.md)
- [Manually find and investigate malicious email that was delivered in Office 365](investigate-malicious-email-that-was-delivered.md)
- [Learn about AIR in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)
- [Visit the Microsoft 365 Roadmap to see what's coming soon and rolling out](https://www.microsoft.com/microsoft-365/roadmap?filters=)