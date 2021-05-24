---
title: "Preserve Bcc and expanded distribution group recipients for eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 6/19/2017
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: eb8ddf15-0080-457e-9d83-e73e193da334
description: "In-Place Hold, Litigation Hold, and Microsoft 365 retention policies allow you to preserve mailbox content to meet regulatory compliance and eDiscovery requirements."
---

# Preserve Bcc and expanded distribution group recipients for eDiscovery
  
In-Place Hold, Litigation Hold, and [Microsoft 365 retention policies](./retention.md) (created in the Security & Compliance Center) allow you to preserve mailbox content to meet regulatory compliance and eDiscovery requirements. Information about recipients directly addressed in the To and Cc fields of a message is included in all messages by default. But your organization may require the ability to search for and reproduce details about all recipients of a message. This includes:
  
- **Recipients addressed using the Bcc field of a message:** Bcc recipients are stored in the message in the sender's mailbox, but not included in headers of the message delivered to recipients. 
    
- **Expanded distribution group recipients:** Recipients who receive the message because they're members of a distribution group to which the message was addressed, either in the To, Cc or Bcc fields. 
    
Exchange Online and Exchange Server 2013 (Cumulative Update 7 and later versions) retain information about Bcc and expanded distribution group recipients. You can search for this information by using an In-Place eDiscovery search in the Exchange admin center (EAC) or a Content Search in the Security & Compliance Center. 
  
## How Bcc recipients and expanded distribution group recipients are preserved

As stated earlier, information about Bcc'ed recipients is stored with the message in the sender's mailbox. This information is indexed and available to eDiscovery searches and holds. 
  
Information about expanded distribution group recipients is stored with the message after you place a mailbox on In-Place Hold or Litigation Hold. In Office 365, this information is also stored when a Microsoft 365 retention policy is applied to a mailbox. Distribution group membership is determined at the time the message is sent. The expanded recipients list stored with the message is not impacted by changes to membership of the group after the message is sent. 
  
| Information about… | Is stored in… | Is stored by default? | Is accessible to… |
|:-----|:-----|:-----|:-----|
|To and Cc recipients  <br/> |Message properties in the sender and recipients' mailboxes.  <br/> |Yes  <br/> |Sender, recipients, and compliance officers  <br/> |
|Bcc recipients  <br/> |Message property in the sender's mailbox.  <br/> |Yes  <br/> |Sender and compliance officers  <br/> |
|Expanded distribution group recipients  <br/> |Message properties in the sender's mailbox.  <br/> |No. Expanded distribution group recipient information is stored after a mailbox is placed on In-Place Hold or Litigation Hold, or assigned to a Microsoft 365 retention policy.  <br/> |Compliance officers  <br/> |
   
## Searching for messages sent to Bcc and expanded distribution group recipients

When searching for messages sent to a recipient, eDiscovery search results now include messages sent to a distribution group that the recipient is a member of. The following table shows the scenarios where messages sent to Bcc and expanded distribution group recipients are returned in eDiscovery searches.
  
Scenario 1: John is a member of the US-Sales distribution group. This table shows eDiscovery search results when Bob sends a message to John directly or indirectly via a distribution group.
  
| When you search Bob's mailbox for messages sent… | And the message is sent with… | Results include message? |
|:-----|:-----|:-----|
|To:John  <br/> |John on TO  <br/> |Yes  <br/> |
|To:John  <br/> |US-Sales on TO  <br/> |Yes  <br/> |
|To:US-Sales  <br/> |US-Sales on TO  <br/> |Yes  <br/> |
|Cc:John  <br/> |John on CC  <br/> |Yes  <br/> |
|Cc:John  <br/> |US-Sales on CC  <br/> |Yes  <br/> |
|Cc:US-Sales  <br/> |US-Sales on CC  <br/> |Yes  <br/> |
   
Scenario 2: Bob sends an email to John (To/Cc) and Jack (Bcc directly, or indirectly via a distribution group). The table below shows eDiscovery search results.
  
| When you search… | For messages sent… | Results include message? | Notes |
|:-----|:-----|:-----|:-----|
|Bob's mailbox  <br/> |To/Cc:John  <br/> |Yes  <br/> |Presents an indication that Jack was Bcc'ed.  <br/> |
|Bob's mailbox  <br/> |Bcc:Jack  <br/> |Yes  <br/> |Presents an indication that Jack was Bcc'ed.  <br/> |
|Bob's mailbox  <br/> |Bcc:Jack (via distribution group)  <br/> |Yes  <br/> |List of members of the Bcc'ed distribution group, expanded when the message was sent, is visible in eDiscovery search preview, export, and logs.  <br/> |
|John's mailbox  <br/> |To/Cc:John  <br/> |Yes  <br/> |No indication of Bcc recipients.  <br/> |
|John's mailbox  <br/> |Bcc:Jack (directly or via distribution group)  <br/> |No  <br/> |Bcc information is not stored in the message delivered to recipients. You must search the sender's mailbox.  <br/> |
|Jack's mailbox  <br/> |To/Cc:John (directly or via distribution group)  <br/> |Yes  <br/> |To/Cc information is included in message delivered to all recipients.  <br/> |
|Jack's mailbox  <br/> |Bcc:Jack (directly or via distribution group)  <br/> |No  <br/> |Bcc information is not stored in the message delivered to recipients. You must search the sender's mailbox.  <br/> |
   
## Frequently asked questions

 **Q. When and where is Bcc recipient information stored?**
  
A. Bcc recipient information is preserved by default in the original message in sender's mailbox. If the Bcc recipient is a distribution group, distribution group membership is only expanded if the sender's mailbox is on hold or assigned to a Microsoft 365 retention policy.
  
 **Q. When and where is the list of expanded distribution group recipients stored?**
  
A. Group membership is expanded at the time the message is sent. The list of expanded distribution group members is stored in the original message in the sender's mailbox. The sender's mailbox must be on In-Place Hold, Litigation Hold, or assigned to a Microsoft 365 retention policy.
  
 **Q. Can the To/Cc recipients see which recipients were Bcc'ed?**
  
A. No. This information is not included in message headers, and isn't visible to To/Cc recipients. The sender can see the Bcc field stored in the original message stored in their mailbox. Compliance officers can see this information when searching the sender's mailbox.
  
 **Q. How can I ensure that expanded distribution group recipients are always preserved?**
  
A. To ensure that expanded distribution group members are always preserved with a message, [Place all mailboxes on hold](/Exchange/policy-and-compliance/holds/place-all-mailboxes-on-hold) or create an organization-wide Microsoft 365 retention policy. 
  
 **Q. Which types of groups are supported?**
  
A. Distribution groups, mail-enabled security groups, and dynamic distribution groups are supported. 
  
 **Q. Is there a limit on the number of distribution group recipients that are expanded and stored in the message?**
  
A. Up to 10,000 members of a distribution group is preserved.
  
 **Q. Are nested distribution groups supported?**
  
A. Yes, 25 levels of nested distribution groups are expanded.
  
 **Q. Where is the Bcc and expanded distribution group recipient information visible?**
  
A. Bcc and expanded distribution group recipients information is visible to Compliance officers when performing an eDiscovery search. Bcc and expanded distribution group recipients are included in search results copied to a Discovery mailbox or exported to a PST file and in the eDiscovery log included in search results. Bcc recipient information is also available in search preview.
  
 **Q. What happens if a member of a distribution group is hidden from the organization's global address list (GAL)?**
  
A. There's no impact. If recipients are hidden from the GAL, they are still included in the list of recipients for the expanded distribution group.