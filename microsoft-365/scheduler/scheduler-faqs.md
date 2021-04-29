---
title: "Scheduler for Microsoft 365 FAQs"
ms.author: v-aiyengar
author: AshaIyengar21
manager: serdars
audience: Admin
ms.topic: article
ms.service: scheduler
localization_priority: Normal
description: "Scheduler for Microsoft 365 FAQs"
---
# Scheduler for Microsoft 365 FAQ's

**Question:** Can I use Scheduler with Daily Briefing, Play My Email, Cortana in Teams, Cortana in Windows and other Cortana features?</br>
No. Scheduler only interacts with email via the cortana@yourdomain.com/cortana@yourdomain.com address. As a result, Scheduler works on any device where email is available. Scheduler is not integrated with other Cortana services.

**Question:** Does this work only with Outlook? Are other email products supported?</br>  
As long as you have a license, Other than the three requirements above, users can email cortana@yourdomain.com from any email client on any device.

**Question:** Can contacts be in a personal contact list on Outlook as well as GAL or other company equivalent?</br>
Meeting attendees can be anyone with an email address inside or outside the company. Unfortunately, Scheduler cannot automatically translate names to email addresses / alias by looking it up in the GAL today.

**Question:** Can I use this with my installed version (on-premises) version of Outlook?</br>
Scheduler requires Exchange Online. Does not work with Exchange Server (On-Prem). Works with any email client, Outlook Desktop, OWA, iOS, android, gmail, etc.

**Question:** Does Outlook have to be open in the background?</br>
Outlook does not need to be open in the background. All you need to do is send Cortana a mail and rely on it to do the bulk of the work.

## Frequently Asked Trust and Privacy Questions

**Question:** How does Scheduler work?</br>
Scheduler uses Scheduling Intelligence (AI) augmented with human assistants. If AI models generate a need for support in the natural language of communication with Cortana, the meeting request escalates to a human for review and completion.

**Question:** Who are the humans that review escalated requests? </br>
Scheduler assistants are Microsoft Supplier Security and Privacy Assurance (SSPA) certified for personal and highly confidential information. 

**Question:** What can SSPA Assistants view?</br>
When a task (ticket) is generated, Assistants view a snapshot of only the email that was addressed to Cortana (not the entire thread). The snapshot is taken from the Organizer’s mailbox and viewed through a link in a browser. The link is active for 48 hours but can not be accessed after the task is completed.​ 

**Question:** Is customer data retained in the Scheduler’s Data Flow?​ </br>
Scheduler retains no customer data in the processing of meeting requests. All data resides within the Customer’s tenant in the Cortana or Organizer mailbox. All data processing occurs within the M365 Trust and Privacy boundary.

**Question:** How does Scheduler process the free/busy data of internal attendees?​ </br>
Scheduler’s automation utilizes the findMeetingTimes service to identify times that are mutually available for attendees and the organizer. This service powers other Outlook experiences such as Suggested Times in the Outlook meeting form. Free/busy attendee information is not consumed explicitly as free/busy blocks.​ 

**Question:** Is Scheduler GDPR Compliant? </br>
Yes.

**Question:** Who has access to the Cortana mailbox? </br>
Microsoft does not have standing access to the contents of your Cortana mailbox. The contents of the mailbox can only be accessed by Microsoft via Lockbox approval.​ 

**Question:** Is customer data used for training AI models?</br>
No customer data from Scheduler for M365 can be used for data training sets. All data permanently resides in the customer tenant. ​ 

**Question:** Will Scheduler process encrypted mail?</br>
No, encrypted mail will be rejected by the Scheduler workflow. 




