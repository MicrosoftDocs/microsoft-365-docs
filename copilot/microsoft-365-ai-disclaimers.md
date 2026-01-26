---
title: Turn on AI Disclaimers in Microsoft 365 Copilot
description: Learn how to turn on AI Disclaimers in Microsoft 365 Copilot for your organization.
author: kwekuako
ms.author: kwekua
ms.reviewer: 
manager: scotv
ms.date: 12/10/2025
ms.topic: how-to
ms.service: microsoft-365-copilot
audience: Admin
appliesto:
- ✅ Microsoft 365 Copilot
---


# Turn on AI disclaimers in Microsoft 365 Copilot

As the administrator of a Microsoft 365 organization, you can turn on Microsoft 365 Copilot AI disclaimer messages across supported applications. This helps your organization address regulatory requirements and build user trust by making it clear that AI-generated results may be inaccurate. When you turn on this feature, the disclaimer AI-generated content may be inaccurate is displayed in supported apps. An information icon provides a tooltip explaining the organization’s emphasis on accuracy, and admins can add a link to their internal AI policy or use the default Microsoft content.

The AI disclaimer appears in the following apps: Word, Excel, PowerPoint, Outlook, OneNote, and the Microsoft 365 Copilot app. The AI disclaimer won’t appear in the following apps: SharePoint, OneDrive, Whiteboard, and Forms. This article provides requirements and step-by-step instructions for turning on the Copilot AI disclaimer in your organization.

## Before you begin

To turn on the Copilot AI disclaimer, you need to be assigned the AI Administrator role. For more information about the types of administrator roles, see [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference).

## Turn on Microsoft 365 Copilot AI disclaimers

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to **Copilot** -> **Settings** -> **Copilot actions** -> **Copilot AI disclaimer**.
2. On the **Copilot AI disclaimer** page, select **Standard** or **Bold** to select the font for the disclaimer.
3. Optional: Create a page with your organization’s internal AI policy and add the URL under Provide a web address that's available from the tooltip. Or leave this field blank if you want to keep the default Microsoft Copilot AI disclaimer.
4. Review the disclaimer and select **Save** to apply the setting.

> [!NOTE]
> Make sure that your users see the updated disclaimer in the supported apps.

You can use available reporting tools and logs to track user exposure and interactions with the disclaimer for compliance and auditing purposes.
