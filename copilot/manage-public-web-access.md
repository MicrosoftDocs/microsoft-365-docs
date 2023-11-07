---
title: Manage access to public web content in Microsoft 365 Copilot responses
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/31/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
description: "Learn how to manage Microsoft 365 Copilot access to public web content for your organization."
---

# Manage access to public web content in Microsoft 365 Copilot responses

Microsoft 365 Copilot combines the power of large language models (LLMs) with your organization’s data – all in the flow of work – to turn your words into one of the most powerful productivity tools on the planet. Copilot can provide summaries of chats, messages, and meetings, answer business questions, and generate content. For more information, see [How Microsoft 365 Copilot works](https://www.youtube.com/watch?v=B2-8wrF9Okc).

As your organization’s Microsoft 365 admin, you can turn off Copilot’s ability to access and include web content when it responds to your users’ prompts. For more information on how this control impacts data, privacy, and security within Microsoft 365 Copilot, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md#microsoft-365-copilot-and-public-web-content).

## Before you begin

- You must assign a Microsoft 365 Copilot license to your selected users before they can use Copilot. For more information, see Get started with Copilot in Microsoft 365.

- You must be a global admin or search admin to complete the task in this article. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Choose whether Microsoft 365 Copilot can access public web content

Microsoft 365 Copilot chat experiences in Bing, Microsoft Edge, and the Microsoft Teams app has a feature that allows Copilot to reference public web content when responding to user prompts. Allowing Microsoft 365 Copilot to reference web content enhances the end user experience and productivity with Copilot. The feature is automatically turned on when you first start using Copilot. You can turn off this feature by following these steps:

For Search admins and Global admins:

1. In the Microsoft 365 admin center, go to **Settings** > **Search & intelligence**.

2. On the **Configurations** page, select **Public web content in Microsoft 365 Copilot**.

3. Select Change.

4. Unselect the checkbox for Allow Copilot to reference public web content.

5. Select Save.

:::image type="content" source="media/public-web-content-active.png" alt-text="Screenshot showing Copilot access to public web content is active.":::

:::image type="content" source="media/allow-copilot-web-content.png" alt-text="Screenshot showing the option to allow Copilot to access public web content.":::

For Global admins only:

1. In the admin center, go to **Settings** > **Org settings**.
2. On the Copilot page, select **Public Web Content in Microsoft 365 Copilot**.
3. Select **Change**.
4. Unselect the checkbox for **Allow Copilot to reference public web content**.
5. Select **Save**.

All admin setting updates may take up to 24 hours to reflect any changes.

>[!NOTE]
> This method is the only way to turn off the ability of Microsoft 365 Copilot chat experiences to access public web content. The privacy controls for optional connected experiences available with Microsoft 365 Apps can’t be used.

## End user action required

There's a separate toggle for end users to enable and disable web access for Microsoft 365 Chat, and it can be found in the Plugins menu of Microsoft 365 Chat. This toggle is initially off by default, and users will have to enable it to receive this experience.

If you turn off web access from the admin center, this control is disabled. However, if you enable web access, your users must enable the toggle in their settings as well to allow web access.

## How to disable chat experiences

If you want to disable the chat experiences, you need to disable the service plan named **Business Chat** in the license management settings:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com), go to the navigation pane, and select **Users** > **Active users**.

2. On the **Active users** page, select a specific user, and then **Manage product licenses**. You can only manage licenses and apps for one user at a time.

3. To do this for multiple users, you must use a PowerShell query. In the **Licenses and apps** tab, clear the **Business Chat** checkbox.
