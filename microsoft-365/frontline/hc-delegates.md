---
title: Message delegation
author: dstrome
ms.author: dstrome
manager: serdars
audience: ITPro
ms.topic: article
ms.service: msteams
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
appliesto: 
  - Microsoft Teams
ms.reviewer: acolonna
description: Learn how a user with Away status or Do Not Disturb status can explicitly set another user as a delegate in their status message.
ms.custom: seo-marvel-mar2020
---

# Message delegation

A user can already explicitly set their status to Away or Do not Disturb, and provide custom text. The message delegation feature works as follows:

1. A user @username mentions another user in part of a text status message, suggesting that while they are unavailable people who want to contact them instead contact the @username mentioned user.
2. The person who has been assigned as a delegate is notified that they were nominated to be a delegate.
3. Someone trying to contact the first user can then hover over the nominated delegate and easily message the delegate instead.  

This is a user-initiated process in the client, and no Admin involvement is required to enable the feature. 

## Delegation use scenario in Healthcare

*Usage example without setting delegates:*  Dr. Franco Piccio is on-call at the radiology department. He receives an urgent personal call and has to step away for the next couple of hours. He asks one of his peers in the radiology department, Dr. Lena Ehrle, to cover for him while he is gone. He informally hands over his pager to Dr. Ehrle, who is listening for urgent messages and pings on the pager and responds to them on behalf of Dr. Piccio in addition to her current responsibilities. Others on the team may not realize the informal delegation happened, and confusion ensues with a patient's care.

*Usage example with setting delegates:* Dr. Franco Piccio is on-call at the radiology department. He receives an urgent personal call and has to step away for the next couple of hours. He asks one of his peers in the radiology department, Dr. Lena Ehrle to cover for him while he is gone. He changes his custom status message to say something similar to "I am unavailable for the next few hours. Please contact @DrEhrle for any emergencies."  Others on the team realize the delegation happened as they're attempting to contact Dr. Piccio, so they now know to contact Dr. Ehrle in the meantime. Little to no confusion ensues with a patient's care.

## Impact of co-existence modes on user status in the Teams client

Admins should be aware that status notes and delegation mention behaviors will depend partly on a user's co-existence mode. This matrix shows the possibilities:

|Co-Existence Mode | Expected Behavior|
|---|---|
|TeamsOnly |Users can set a note only from Teams. <br> User's Teams note is visible in Teams & SfB. |
|Islands | User's note set in Teams visible only in Teams. <br> User's note set in SfB visible only in SfB |
|SfB* modes | Users can set a note only from SfB. <br> User's SfB note is visible in SfB & Teams.  |
|||

A user can only set a note in Teams if their mode is TeamsOnly or Islands.  

### Displaying notes set in Skype for Business
  
There is no visual indication that a note was set from Skype for Business.

Skype for Business doesn't enforce a character limit on status notes. Microsoft Teams will only display the first 280 characters of a note set from Skype for Business. An ellipse (...) at the end of a note indicates truncation.
  
Skype for Business doesn't support expiry times for notes.

Migration of notes from Skype for Business to Teams is not supported when a user is upgraded to TeamsOnly mode.

## Related topics

[Coexistence with Skype for Business](../../coexistence-chat-calls-presence.md)
