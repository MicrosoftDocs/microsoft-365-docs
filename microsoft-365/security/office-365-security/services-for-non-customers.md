---
title: Services for external organizations sending mail to Microsoft 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: overview
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid: 19fd3e0f-8dbf-4049-a810-2c8ee6cefd48
ms.collection:
  - m365-security
  - tier2
description: To help maintain user trust in the use of email, Microsoft has put in place various policies and technologies to help protect our users.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/23/2023
---

# Microsoft 365 services for external email senders

Email abuse, junk email, and fraudulent email (phishing) continue to burden internet email. To help maintain trust in the use of email, Microsoft uses several features to help protect our users. However, we understand the importance of not affecting legitimate email. Therefore, we have a suite of services to help external senders proactively manage their sender reputation and improve their ability to deliver email to Microsoft 365 users.

This overview provides information about the benefits we provide to your organization, even if you aren't a Microsoft 365 customer.

## Sender solutions

|Service|Benefits|
|---|---|
|This article|Provides: <ul><li>A starting point for any questions related to delivering email to Microsoft 365 users.</li><li>Includes a simple online guide with our policies and requirements.</li><li>An overview of the junk email filters and authentication technologies employed by Microsoft.</li><ul>|
|[Microsoft support](#microsoft-support)|Provides self-help and escalation support for delivery issues.|
|[Anti-Spam IP Delist Portal](#anti-spam-ip-delist-portal)|A tool to submit IP delist requests. Before submitting this request, it's the sender's responsibility to ensure that any further mail originating from the IP in question isn't abusive or malicious.|
|[Abuse and spam reporting for junk email originating from Exchange Online](#abuse-and-spam-reporting-for-junk-email-originating-from-exchange-online)|Keeps spam and other unwanted mail from being sent from Microsoft 365.|

## Microsoft support

Microsoft offers several support options for people having trouble sending mail to Microsoft 365 recipients. We recommend that you:

- Follow the instructions in any non-delivery report (also known as an NDR or bounce message) that you receive.
- Check out the most common problems that external senders encounter in [Troubleshooting mail sent to Office 365](mail-flow-troubleshooting.md).
- Use the delist portal at <https://sender.office.com> to submit a request to have your IP removed from the blocked senders list.
- Check the [Microsoft community forums](https://community.office365.com/f/).
- Ask the Microsoft 365 recipient to contact Microsoft Support and open a support ticket on your behalf. Typically, external senders can't open support tickets in Microsoft 365. But, there are legal reasons that might require Microsoft Support to communicate directly with owner of the blocked source IP address space.  

  For more information about Microsoft Technical support for Microsoft 365, see [Support](/office365/servicedescriptions/office-365-platform-service-description/support).

## Anti-Spam IP Delist Portal

This self-service portal at <https://sender.office.com/> allows you to request your removal from the Microsoft 365 blocked senders list. Use the portal if you get errors sending messages to Microsoft 365 recipients. For more information, see [Use the delist portal to remove yourself from the blocked senders list](use-the-delist-portal-to-remove-yourself-from-the-office-365-blocked-senders-lis.md).

## Abuse and spam reporting for junk email originating from Exchange Online

Third parties occasionally violate our terms of use and use Microsoft 365 to send junk email. If you receive junk email from Microsoft 365 senders, you can report these messages to Microsoft. For instructions, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).
