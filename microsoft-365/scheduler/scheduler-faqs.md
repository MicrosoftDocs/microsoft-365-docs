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
# Scheduler for Microsoft 365 FAQs

**Question:** How does Scheduler integrate with other Cortana features, such as *Cortana for Windows*, *Daily Briefing Email*, and *Play My Emails*?</br>
Scheduler is an independent service from other Cortana features. Other Cortana features can be disabled at the tenant level, and Scheduler can still be enabled by using the cortana@yourdomain.com email address. Currently, users can only interact with Scheduler via email.

**Question:** Does this work only with Outlook? Are other email products supported?</br>
As long as you have a license, Other than the three requirements above, users can email cortana@yourdomain.com from any email client on any device.

**Question:** Can contacts be in a personal contact list on Outlook and GAL or other company equivalent?</br>
Meeting attendees can be anyone with an email address inside or outside the company. Unfortunately, Scheduler cannot automatically translate names to email addresses / alias by looking it up in the GAL today.

**Question:** Can I use Scheduler with my installed version (on-premises) version of Outlook?</br>
Scheduler requires Exchange Online. Does not work with Exchange Server (On-Prem). Works with any email client, Outlook Desktop, OWA, iOS, android, gmail, and so on.

**Question:** Does Outlook have to be open in the background?</br>
Outlook doesn't need to be open in the background. All you need to do is send Cortana a mail and rely on it to do the bulk of the work.

## Frequently Asked Trust and Privacy Questions

**Question:** How does Scheduler work?</br>
Scheduler uses Scheduling Intelligence (AI) augmented with human assistants. If AI models generate a need for support in the natural language of communication with Cortana, the meeting request escalates to a human for review and completion.

**Question:** Who are the humans that review escalated requests? </br>
Scheduler assistants are Microsoft Supplier Security and Privacy Assurance (SSPA) certified for personal and highly confidential information. 

**Question:** What can SSPA Assistants view?</br>
Scheduler and the SSPA Assistants can view  the emails that are addressed to Cortana. In a threaded email exchange, only the emails that include Cortana’s email address will be processed, not the previous emails in the thread before Cortana was added.   

**Question:** Is customer data retained in the Scheduler’s Data Flow?​ </br>
Scheduler stores all customer content within the tenant boundaries and retains data in accordance with GDPR guidelines, Microsoft 365 Trust & Privacy policies, and tenant email policies.

**Question:** How does Scheduler process the free/busy data of internal attendees?​ </br>
Scheduler’s automation uses the *findMeetingTimes* service to identify times that are mutually available for attendees and the organizer. This service powers other Outlook experiences such as *Suggested Times* in the Outlook meeting form. Free/busy attendee information is not consumed explicitly as free/busy blocks.​ 

**Question:** Is Scheduler GDPR Compliant? </br>
Yes.

**Question:** Who has access to the Cortana mailbox? </br>
Scheduler processes meeting requests and associated emails that are sent to your tenant’s Cortana mailbox. Microsoft does not have any other access to the Cortana mailbox except through Lockbox approval at the request of the tenant admin.  

**Question:** Is customer data used for training AI models?</br>
No customer content from Scheduler for Microsoft 365 can be used for data training sets. All customer content resides in the customer tenant. ​ 

**Question:** Will Scheduler process encrypted mail?</br>
No, encrypted mail will be rejected by the Scheduler workflow. 




