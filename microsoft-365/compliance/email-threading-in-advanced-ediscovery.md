---
title: Email threading in Advanced eDiscovery
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
description: "When conducting an Advanced eDiscovery analysis, email threading parses an email conversation and separates each message into different categories."
ms.custom: seo-marvel-mar2020
---

# Email threading in Advanced eDiscovery

Consider an email conversation that has been going on for a while. In most cases, the last email on the thread will include the contents of all the preceding emails; reviewing the last email will give a complete context of the conversation that happened in the thread. Email threading identifies such emails so that reviewers can review a fraction of collected documents without losing any context.

## What does email threading do?

Email threading parses each email and deconstructs it to individual messages; each email is a chain of individual messages. It then analyzes all emails in the review set to determine whether an email message has unique content or if the chain (parent messages) is wholly contained in the final email. Email messages are divided into four inclusive values:

- **Inclusive**: An inclusive email is the final email message in an email thread and contains all the previous history of that email thread.

- **Inclusive minus**: An email message is designated as inclusive minus if there are one or more attachments associated with the specific message within the email thread. A reviewer can use the inclusive minus value to determine which specific email message within the thread has associated attachments. 

- **Inclusive copy**: An email message is considered an Inclusive copy if it is an exact copy of an inclusive/inclusive minus email. 

- **None**: The content of this email is wholly contained in at least one email that is marked as inclusive/inclusive minus.

## How is it different from conversations in Outlook?

At a glance, this sounds similar to conversation groupings in Outlook. However, there are some important distinctions. Consider an email conversation that got forked into two conversations; for instance, someone responded to an email that is not the latest in the conversation so the last two emails in the conversation both have unique content.

Outlook would still group the emails into a single conversation; reading only the last email would mean missing the context of the second-to-last email, which also contains unique content. Because email threading parses out each email into individual components and compares them, email threading would mark both of the last two emails as inclusive, ensuring that you won't miss any context as long as you read all emails marked as inclusive.
