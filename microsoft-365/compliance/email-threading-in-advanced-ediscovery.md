---
title: Email threading in eDiscovery (Premium)
description: "When conducting an eDiscovery (Premium) analysis, email threading parses an email conversation and separates each message into different categories."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-mar2020
---

# Email threading in eDiscovery (Premium)

Consider an email conversation that has been going on for a while. In most cases, the last message in the email thread will include the contents of all the preceding messages. Therefore, reviewing the last message will give a complete context of the conversation that happened in the thread. Email threading identifies such messages so that reviewers can review a fraction of collected documents without losing any context.

## What does email threading do?

Email threading parses each email thread and deconstructs it to individual messages. Each email thread is a chain of individual messages. Microsoft Purview eDiscovery (Premium) analyzes all email messages in the review set to determine whether an email message has unique content or if the chain (parent messages) are wholly contained in the final message in the email thread. Email messages are divided into four inclusive values:

- **Inclusive**: An *Inclusive* email is the final email message in an email thread and contains all the previous content of that email thread.

- **Inclusive minus**: An email message is designated as *Inclusive minus* if there are one or more attachments associated with the specific message within the email thread. A reviewer can use the Inclusive minus value to determine which specific email message within the thread has associated attachments. 

- **Inclusive copy**: An email message is considered an *Inclusive copy* if it's an exact copy of an Inclusive or Inclusive minus message. 

- **None**: The *None* value indicates that the content of the message is wholly contained in at least one other email message that is marked as Inclusive or Inclusive minus.

## How is it different from conversations in Outlook?

At a glance, this sounds similar to conversation groupings in Outlook. However, there are some important distinctions. Consider an email conversation that got forked into two conversations; for instance, someone responded to an email that isn't the latest in the conversation so the last two emails in the conversation both have unique content.

Outlook would still group the emails into a single conversation; reading only the last email would mean missing the context of the second-to-last email, which also contains unique content. Because email threading parses out each email into individual components and compares them, email threading would mark both of the last two emails as inclusive, ensuring that you won't miss any context as long as you read all emails marked as inclusive.
