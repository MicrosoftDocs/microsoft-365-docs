---
title: "Office 365 Skype for Business Data Deletion"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, you can find an explanation of data deletion in Skype for Business, including what types of content are not retained.
ms.custom: seo-marvel-apr2020
---

# Skype for Business Data Deletion in Office 365

Skype for Business provides archiving of peer-to-peer instant messages, multiparty instant messages, and content upload activities in meetings. The archiving capability requires Exchange and is controlled by the user's Exchange mailbox In-Place Hold attribute, which archives both email and Skype for Business contents.

All archiving in Skype for Business is considered "user-level archiving" because you enable or disable it for one or more specific users or groups of users by creating, configuring, and applying a user-level archiving policy for those users. There is no direct control of archiving settings from within the Skype for Business admin center.

The following types of content are not archived in Skype for Business:

- Peer-to-peer file transfers
- Audio/video for peer-to-peer instant messages and conferences
- Application sharing for peer-to-peer instant messages and conferences
- Conferencing annotations 

## Meeting Content Retention

Customers using Skype for Business can upload content to a Skype for Business meeting as attachments, such as PowerPoint presentations, OneNote files, and other files. The retention period for content that has been uploaded to a meeting is as follows:

- **One-time meeting** - Content is retained for 15 days starting from when the last person leaves the meeting.
- **Recurring meeting** - Content is retained for 15 days after the last person leaves the last session of the meeting. The retention timer resets if someone joins the same meeting session within 15 days. For example, assume a Skype for Business meeting is scheduled to occur on a weekly basis for one year, and a file is uploaded to the meeting during the first instance. If at least one person joins the meeting session every week, the file is retained in Skype for Business Online servers for the entire year plus 15 days after the last person leaves the last meeting of the series.
- **Meet Now meeting** - Content is retained for 8 hours after the meeting end time.

> [!NOTE]
> If a user is unlicensed or disabled (e.g., if **msRTCSIP-userenabled** is set to *False*), and is then re-licensed or reenabled, meeting content is not retained.

## Meeting Expiration

Users can access a specific meeting after the meeting has ended, subject to the following expiration time periods:

- **One-time meeting** - Meeting expires 14 days after the scheduled meeting end time.
- **Recurring meeting with end date** - Meeting expires 14 days after the scheduled end time of the last meeting occurrence.
- **Meet Now meeting** - Meeting expires after 8 hours.

## Whiteboard Collaboration

Annotations made on whiteboards will be seen by all participants. When saving a whiteboard, the whiteboard and all annotations will be stored on a Skype for Business server, and it will be retained on the server according to meeting content expiration policies set by the administrator.

## Audio Test Service

A short (approximately 5 seconds) sample of your voice is recorded during the Audio Test Service call. The voice sample is used by you to check and/or verify the sound quality of your Skype for Business call based on the quality of the recording. When the Audio Test Service call ends, the voice sample is deleted.

## Persistent Group Chat

Persistent Group Chat stores the content of group chat conversations. If enabled, the administrator can control the retention period, the server on which this information is stored, if Group Chat history is archived for compliance or other purposes, and manage/modify any properties on a room. Users with different roles have different access to the persisted data, as follows:

- Administrators can delete older content (for example, content posted before a certain date) from any chat room to keep the size of the database from growing greatly. Or, they can remove or replace messages considered inappropriate for a given chat room (or considered unsuitable).
- End-users, including message authors, cannot delete content from any chat room.
- Chat room managers can disable rooms but cannot delete rooms. Only administrators can delete a chat room after it is created.