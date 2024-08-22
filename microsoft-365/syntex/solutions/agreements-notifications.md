---
title: Approval notifications in the SharePoint Agreements AI solution (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 09/01/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about the approval notifications in the SharePoint Agreements AI solution.
---

# Approval notifications in the SharePoint Agreements AI solution (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change. For the complete list of articles to help you set up and use this feature, see [Preview documentation](agreements-overview.md#preview-documentation).

When a template or agreement creator sends the template or agreements for approval, two notification flows can be invoked. One flow is required and is via the Approvals app in Microsoft Teams. The second flow is optional and is via email.

The process to configure and send approvals is provided in [Create a template with the SharePoint Agreements AI solution](agreements-create-template.md). This article provides the actions a recipient of the notification for an approval request can take.

## Receive a notification by Approvals app

1. You receive an approval notification as a pop-up notification in the lower right of your screen. The notification indicates that you have an action to perform in the Approvals app in Microsoft Teams.

2. To acknowledge the notification, go to the [Approvals app in Microsoft Teams](/power-automate/teams/native-approvals-in-teams#use-the-approvals-app-in-teams). If you expect to commonly receive such notifications, right-click the app and pin it to the left-hand quick launch.

3. The Approvals app shows all the current approvals regardless of status. Filter on the request status (**Requested**, **Approved**, or **Canceled**) or on the custom values. Use the **Requested** status and your own name to show the results if you have many approval requests.

4. When you locate the approval request, select the request title to open a dialog that includes the link to the file, information about other approvers and actions, including **Approve** or **Reject**, **Cancel request**, **Follow up**, or **Reassign**. At this point, you can add additional comments before taking an action.

5. After you select the appropriate action (for example, **Approve**), the status of the request changes. In addition, if email notification has been set up, the originator of the request receives an update notification via email.

## Receive a notification by email

1. When you receive a notification by email, the email has the title “Action requested: \<username> sent you an approval request."

2. The message contains a link to view the document and take appropriate action. It also indicates which user the workflow is pending action on.

3. Select the link to open the document in Microsoft Word. The right-hand panel contains the approval workflow details, including the required approval stages. If the document being approved is a template and it's approved by the user, then the option to publish the template is also available.

<br>

> [!div class="nextstepaction"]
> [See the complete list of preview documentation.](agreements-overview.md#preview-documentation)