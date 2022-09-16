---
title: Message delegation
author: samanro
ms.author: samanro
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: microsoft-365-frontline
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
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: acolonna
description: Learn how a user with Away status or Do Not Disturb status can explicitly set another user as a delegate in their status message.
ms.custom: seo-marvel-mar2020
---

# Message delegation

Users in Microsoft Teams can set their status to Away or Do not Disturb, and include a custom text status message. A user who's going to be away can assign someone as a delegate who people can contact instead. The message delegation feature works as follows:

1. The user who's going to be away @mentions another user (the delegate) in their status message to let people know to contact the delegate instead while the user is away.

    ![Screenshot of a status message with a user set as a delegate.](media/message-delegation.png)

1. The user who's been @mentioned gets notified that they've been nominated as a delegate.
1. When someone opens a chat with the away user and sees their status message, they can hover over the delegate and easily message them instead.

Users can initiate the process themselves, and no admin involvement is required to enable the feature.

## Delegation use scenario in Healthcare

**Usage example without setting delegates**

Dr. Franco Piccio is on call at the radiology department. He receives an urgent personal call and has to step away for the next couple of hours. He asks one of his peers in the radiology department, Dr. Lena Ehrle, to cover for him while he's gone. He informally hands over his pager to Dr. Ehrle, who listens for urgent messages and pings on the pager and responds to them on behalf of Dr. Piccio in addition to her current responsibilities. Others on the team may not realize the informal delegation happened. Confusion ensues with a patient's care.

**Usage example with setting delegates**

Dr. Franco Piccio is on call at the radiology department. He receives an urgent personal call and has to step away for the next couple of hours. He asks one of his peers in the radiology department, Dr. Lena Ehrle to cover for him while he's gone. He changes his custom status message to say "I am unavailable for the next few hours. Please contact @DrEhrle for any emergencies."  Others on the team realize the delegation happened as they're attempting to contact Dr. Piccio, so they now know to contact Dr. Ehrle in the meantime. Little to no confusion ensues with a patient's care.

## Impact of co-existence modes on user status in the Teams client

Status notes and delegation mention behaviors depend partly on a user's co-existence mode. This matrix shows the possibilities:

|Co-Existence Mode | Expected Behavior|
|---|---|
|TeamsOnly |Users can set a note only from Teams. <br> User's Teams note is visible in Teams & SfB. |
|Islands | User's note set in Teams visible only in Teams. <br> User's note set in SfB visible only in SfB |
|SfB* modes | Users can set a note only from SfB. <br> User's SfB note is visible in SfB & Teams.  |

A user can only set a note in Teams if their mode is TeamsOnly or Islands.  

### Displaying notes set in Skype for Business
  
There's no visual indication that a note was set from Skype for Business.

Skype for Business doesn't enforce a character limit on status notes. However, Microsoft Teams will only display the first 280 characters of a note set from Skype for Business. An ellipses (...) at the end of a note indicates that it's been truncated.
  
Skype for Business doesn't support expiry times for notes.

Migration of notes from Skype for Business to Teams isn't supported when a user is upgraded to TeamsOnly mode.

## Related topics

[Learn more about Coexistence with Skype for Business](/microsoftteams/coexistence-chat-calls-presence).
