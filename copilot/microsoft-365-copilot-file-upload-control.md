---
title: Controls to manage file uploads in Microsoft 365 Copilot and Copilot Chat
description: Overview of a control that allows admins to determine whether users can upload local files or attach cloud files when using Copilot or Copilot Chat. 
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 06/26/2025
audience: Admin
ms.reviewer: suparekh; davidedwards
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
- trust-pod
ms.custom: [copilot-learning-hub]
robots: NOINDEX, NOFOLLOW
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Controls to manage file uploads in Microsoft 365 Copilot and Microsoft 365 Copilot Chat

File upload is enabled by default in both Microsoft 365 Copilot and Microsoft 365 Copilot Chat. It lets users upload files like Word docs, Excel files, and PDFs to prompt Copilot and Copilot Chat to reason over them as part of its response. File upload limits apply in Copilot Chat.

To manage the file upload feature so it aligns with organizational policies, user preferences, and security considerations, an admin control is available. This control allows admins to determine whether users can upload local files or attach cloud files when using Copilot or Copilot Chat.

> [!NOTE]
> The file upload control will be available in mid-July 2025. Once implemented, it may take up to 24 hours for the changes to be reflected for end users.

## IT admin file upload control

The file upload control is available only in [Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy). If you enable this policy setting, you can choose one of the following options for file uploads in Copilot and Copilot Chat:  
- **Allow file uploads in both Microsoft 365 Copilot and Microsoft 365 Copilot Chat**—allows users to upload files in both experiences. This is the default setting.
- **Prevent file uploads in both Microsoft 365 Copilot and Microsoft 365 Copilot Chat**—disables file upload in both experiences.
- **Disable file uploads in Microsoft 365 Copilot Web mode and Microsoft 365 Copilot Chat while allowing file uploads in Microsoft 365 Copilot Work mode**—enables file upload in Microsoft 365 Copilot Chat *Work mode only* and disables file upload in Microsoft 365 Copilot Web mode and Microsoft 365 Copilot Chat.
 
:::image type="content" source="media/copilot-file-upload-800.png" alt-text="Screenshot that shows Microsoft 365 Copilot file upload control." lightbox="media/copilot-file-upload-raw.png":::
 
If you use the file upload control to prevent users from uploading files to Microsoft 365 Copilot and Microsoft 365 Copilot Chat, the *Files* tab does not appear for those users in the Microsoft 365 Copilot app.

:::image type="content" source="media/copilot-file-upload-screenshot-sm.png" alt-text="Screenshot that shows Microsoft 365 Copilot file upload control." lightbox="media/copilot-file-upload-screenshot-raw.png":::

If you don't configure the **File upload control in Copilot policy**, the file upload feature remains available by default to users in both Microsoft 365 Copilot and Microsoft 365 Copilot Chat.  

> [!NOTE]
> The file upload control only manages the feature in Chat for the Microsoft 365 Copilot app (Windows, web). The control will be available to manage the feature for Microsoft 365 apps in late 2025. 