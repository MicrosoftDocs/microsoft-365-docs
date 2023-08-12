---
title: Use a Teams status message to assign a delegate
author: lana-chin
ms.author: v-chinlana
manager: serdars
audience: ITPro
ms.topic: how-to
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
  - highpri
  - EngageScoreSep2022
  - contentengagementFY23
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: acolonna
description: Learn how a user with Away status or Do Not Disturb status can explicitly set another user as a delegate in their Microsoft Teams status message.
ms.custom: seo-marvel-mar2020
ms.date: 11/03/2022
---

# Use a Teams status message to assign a delegate

Users in Microsoft Teams can set their status to Away or Do not Disturb, and include a custom text status message. A user who's going to be away can assign someone as a delegate who people can contact instead. The message delegation feature works as follows:

1. The user who's going to be away @mentions another user (the delegate) in their status message to let people know to contact the delegate instead while the user is away.

    ![Screenshot of a status message with a user set as a delegate.](media/message-delegation.png)

1. The user who's been @mentioned gets notified that they've been nominated as a delegate.
1. When someone opens a chat with the away user and sees their status message, they can hover over the delegate and easily message them instead.

Users can initiate the process themselves, and no admin involvement is required to enable the feature.

> [!NOTE]
> Status notes and delegation mention behaviors are also available in Skype for Business, but their availability depends on the user's co-existence mode. Skype for Business doesn't enforce a character limit on status notes. However, Microsoft Teams will only display the first 280 characters of a note set from Skype for Business. An ellipses (...) at the end of a note indicates that it's been truncated. Skype for Business doesn't support expiry times for notes. <br>Skype for Business Online was retired on July 31, 2021. [Learn how to upgrade to Microsoft Teams](/microsoftteams/upgrade-start-here).

## Teams status message delegation use scenario in Healthcare

**Usage example without setting delegates**

Dr. Franco Piccio is on call at the radiology department. He receives an urgent personal call and has to step away for the next couple of hours. He asks one of his peers in the radiology department, Dr. Lena Ehrle, to cover for him while he's gone. He informally hands over his pager to Dr. Ehrle, who listens for urgent messages and pings on the pager and responds to them on behalf of Dr. Piccio in addition to her current responsibilities. Others on the team may not realize the informal delegation happened. Confusion ensues with a patient's care.

**Usage example with setting delegates**

Dr. Franco Piccio is on call at the radiology department. He receives an urgent personal call and has to step away for the next couple of hours. He asks one of his peers in the radiology department, Dr. Lena Ehrle to cover for him while he's gone. He changes his custom status message to say "I am unavailable for the next few hours. Please contact @DrEhrle for any emergencies."  Others on the team realize the delegation happened as they're attempting to contact Dr. Piccio, so they now know to contact Dr. Ehrle in the meantime. Little to no confusion ensues with a patient's care.
