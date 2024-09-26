---
title: Overview of Loop components in the Microsoft 365 ecosystem
ms.author: jenz
author: jenzamora
manager: jtremper
audience: Admin
ms.topic: conceptual
ms.service: loop
ms.reviewer: michalbr
ms.date: 09/13/2024
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
  - M365-collaboration
  - essentials-overview
description: Learn how to manage Loop components in the Microsoft 365 ecosystem.
f1.keywords:
- CSH
ms.custom: 
  - NewAdminCenter_Update
  - chat-teams-channels-revamp
appliesto: 
  - Microsoft Teams
---

# Overview of Loop components in the Microsoft 365 ecosystem

Loop components in Teams chat, Outlook emails, Whiteboards, or other places in the Microsoft 365 ecosystem offer a new way to ideate, create, and make decisions together. Send a component—like a table, task list, or paragraph—where everyone in your chat, email, or document can edit inline and see changes as they're made.

> [!Note]
> Loop components is the first feature of the [Microsoft Loop app](https://www.microsoft.com/en-us/microsoft-loop) to become available in Teams.

**Get tasks done faster together.** Crowd-source an agenda, track a group's action items, or take notes collectively are just a few scenarios made easier with Loop components.

**Share components.** In this release, you can share Loop components into different Teams chats, Outlook emails, Whiteboards, and other places in the Microsoft 365 ecosystem. Recipients can edit from wherever they are and see updates instantly, no matter where the changes were made.

**Start in chat or email, build from there.** Every component you create from Teams chat or Outlook email is automatically saved to a file in OneDrive. You might begin collaborating in chat and then later move to the file in a full tab in Loop, where you have a larger visual space for editing and can add more content and more components as needed.

For information on admin settings for Loop components in Teams, see [Settings management for Loop functionality in Teams](loop-components-configuration.md#settings-management-for-loop-functionality-in-teams).

## Clients and platforms

- Available on Loop apps on Windows, iOS, Android, and web.
- Available on Teams apps on Windows, Mac, iOS, Android, and web.
- Available on Outlook apps on Windows and web.
- Available on OneNote apps on Windows and web.
- Available on Whiteboard apps on Windows, Surface, iOS, Android, and web. iOS and Android are "view and edit," but users can't paste new ones.
- Available on Office apps on iOS and Android.

## Loop components and .loop files

Loop components created in Teams and Outlook are just .loop files (earlier versions of Loop-created .fluid) stored in the creator's OneDrive. A file being in OneDrive means that users can create, discover, and manage Loop components (.loop files) as easily as any Office document.

## How are .loop files stored?

The .loop files appear on Office.com and OneDrive, such as in the Recent and Recommended areas. They also appear in the Loop app. Users can search for content in .loop files from Loop, Office.com, and OneDrive. The .loop files can be restored to previous versions from OneDrive. To create Loop components, chat or email creators must have a OneDrive account. Without a valid OneDrive account, chat or email creators might still be able to collaborate on a component created by other users who have a valid OneDrive account, but can't create their own Loop components.

Moving a .loop file from OneDrive to a SharePoint site results in the Loop component failing to load in Teams chat, Outlook email, or any other place it was previously shared to.

## What happens if the owner of the file leaves the company?

[OneDrive retention policies](/sharepoint/retention-and-deletion) apply to the .loop files just as they do to other content created by the user.

## How are .loop files shared?

Loop components can be inserted in Teams chat, Teams channels, Outlook email, and so on, or be copied from one chat, email, channel, and so on, to another. They default to the organization's existing permissions, but users can change permissions before sending to ensure everyone has access.

Opening components from Teams chat, Teams channels, Outlook email, or Whiteboard in Loop offers share functionality at the top of the window, similar to the sharing options offered for other Office documents.

## What if a .loop file becomes corrupted or damaged?

Version History allows you to review, restore, or copy from previous versions of the file.

## What apps can open and edit .loop files?

The .loop files can only be opened as links in your browser, such as in Loop, and as Loop components in Teams chat, Outlook email, and all of the apps listed in the "Clients and Platforms" section above. If downloaded, they can't be opened again without first uploading them back to OneDrive or SharePoint.

## If Loop is disabled from the admin switch, what will the user experience be?

If you disable these experiences as outlined in the [Settings management](loop-components-configuration.md#settings-management-in-cloud-policy) section, the following experience-changes apply:
- The create/insert entry point within Teams messaging and Outlook email is hidden. The users won't be able to create new .loop files.
- Existing messages will no longer render as an interactive Loop component, instead they render as a hyperlink. No interactive content will be displayed within the app that Loop components are disabled.
- When you click on the hyperlink or browse to a .loop file in OneDrive and click it to open, it opens in a separate browser tab in the Loop component viewer and editor. You'll still be able to edit the file if you have edit permissions.

## Known issues

- With your tenant's default file permissions set to *Specific people* (only the people the user specifies), copying the link to the Loop component and pasting it in another Teams chat requires the sender to use the permissions dialog and add the recipients in the Specific people option to grant access properly.
- With your tenant's default file permissions set to *Specific people* (only the people the user specifies), creating a Loop component in a group chat with more than 20 members requires the sender to manually select the permission options for the component.
- Searching for Loop components in Teams search or Outlook email search returns a link to the Loop component, not the message itself that contained the Loop component link.
- Loop components are disabled in most federated environments.
- External recipients of emails aren't able to view or collaborate on a Loop component unless your organization has enabled sharing with the recipients of that email.
- Loop components don't load if the file was moved to a different library. If the file is moved to a different folder within the same library, then the Loop components continue to load in the message containing the link to the Loop component.

## Related articles

[Overview of Loop components in Teams](/microsoftteams/live-components-in-teams)

[Use Loop components in Outlook](https://support.microsoft.com/office/9b47c279-011d-4042-bd7f-8bbfca0cb136)

[Use Loop components in OneNote](https://support.microsoft.com/office/use-loop-components-in-onenote-ed8a43d9-f6fd-4ad6-bc9d-8841db4da459)

[Use Loop components in Word for the web](https://support.microsoft.com/office/use-loop-components-in-word-for-the-web-645cc20d-5c98-4bdb-b559-380c5a27c5e5)

[Loop components in Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347)

[Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
