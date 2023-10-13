---
title: "Change user profile photo"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 9/29/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
  - VSBFY23
  - MSStore_Link
  - AdminSurgePortfolio
  - AdminTemplateSet
  - has-azure-ad-ps-ref
search.appverid:
description: "Learn how a Microsoft 365 global admin can add, update, and remove the pictures in user account profiles and Microsoft 365 Group profiles."
---

# Change user profile photos

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

This article explains how to manage profile photos on user accounts and [Microsoft 365 Groups](../create-groups/office-365-groups.md).

> [!TIP]
> If you need help with the steps in this article, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

You must be a [global admin](about-admin-roles.md) to complete these steps.

You can't remove existing user photos using the Microsoft 365 admin center. You can only use Microsoft Graph PowerShell.

You can't manage user photos for Microsoft 365 Groups using the Microsoft 365 admin center. You can only use Microsoft Graph PowerShell.

The maximum supported size of a photo is 4 MB.

## Use the Microsoft 365 admin center to change a user's profile photo

1. In the Microsoft 365 admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user by clicking anywhere in the row other than the check box. In the details flyout that opens, select **Change photo** under their existing photo placeholder or photo at the top of the flyout.

   :::image type="content" source="../../media/user-photo-user-properties.png" alt-text="The Change user action in the properties of the user account in the Microsoft 365 admin center." lightbox="../../media/user-photo-user-properties.png":::

3. In the **Change photo** flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-import-icon.png" border="false"::: **Choose photo**.

4. In the **File upload** dialog that opens, find and select the photo, and then select **Open**.

5. Back on the **Change photo** flyout, select **Save changes**, and then select :::image type="icon" source="../../media/m365-cc-sc-back-icon.png" border="false"::: **Back** to return to the details flyout, or :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: **Close** to return to the **Active users** page

> [!TIP]
> In the user details flyout or the **Change photo** flyout, you can download an existing photo by right-clicking on the photo and selecting **Save image as**.

## Manage user photos in Microsoft Graph PowerShell

After you [install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation), use the **Connect-MgGraph** cmdlet to sign in with the required scopes. You need to sign in with an admin account to consent to the required scopes.

- **Users only**:

  ```powershell
  Connect-MgGraph -Scopes "User.ReadWrite.All"
  ```

- **Microsoft 365 Groups only**:

  ```powershell
  Connect-MgGraph -Scopes "Group.ReadWrite.All"
  ```

- **Users and Microsoft 365 groups**:

  ```powershell
  Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All"
  ```

### Add user photos in Microsoft Graph PowerShell

- **Users**:

  ```powershell
  Set-MgUserPhotoContent -UserId <UPN> -InFile "<PhotoPathAndFileName>"
  ```

  For example:

  ```powershell
  Set-MgUserPhotoContent -UserId albertas@contoso.onmicrosoft.com -InFile "C:\Upload\Alberta Sanchez.png"
  ```

  For detailed syntax and parameter information, see [Set-MgUserPhotoContent](/powershell/module/microsoft.graph.users/set-mguserphotocontent).

- **Microsoft 365 Groups**:

  ```powershell
  Set-MgGroupPhotoContent -GroupId <ID> -InFile "<PhotoPathAndFileName>"
  ```

  You get the ID GUID value of the Microsoft 365 Group from the output of a **Get-MgGroup** command.

  For example:

  ```powershell
  Set-MgGroupPhotoContent -GroupId 173cd812-5563-439c-9da4-bc2715fa2aee -InFile "C:\Upload\Sales Department.png"
  ```

  For detailed syntax and parameter information, see [Set-MgGroupPhotoContent](/powershell/module/microsoft.graph.users/set-mggroupphotocontent).

### Get information about user photos in Microsoft Graph PowerShell

The commands return the following information about the existing photo:

- **Id**: The value is Default.
- **Height**: In pixels.
- **Width**: In pixels.

If the user has no photo, the commands return the error: `Exception of type 'Microsoft.Fast.Profile.Core.Exception.ImageNotFoundException' was thrown.`.

- **Users**:

  ```powershell
  Get-MgUserPhoto -UserId <UPN>
  ```

  For example:

  ```powershell
  Get-MgUserPhoto -UserId albertas@contoso.onmicrosoft.com
  ```

  For detailed syntax and parameter information, see [Get-MgUserPhoto](/powershell/module/microsoft.graph.users/get-mguserphoto).

- **Microsoft 365 Groups**:

  ```powershell
  Get-MgGroupPhoto -GroupId <ID>
  ```

  You get the ID GUID value of the Microsoft 365 Group from the output of a **Get-MgGroup** command.

  For example:

  ```powershell
  Get-MgGroupPhoto -GroupId 173cd812-5563-439c-9da4-bc2715fa2aee
  ```

  For detailed syntax and parameter information, see [Get-MgGroupPhoto](/powershell/module/microsoft.graph.users/get-mggroupphoto).

### Download user photos in Microsoft Graph PowerShell

- **Users**:

  ```powershell
  Get-MgUserPhotoContent -UserId <UPN> -OutFile "<PhotoPathAndFileName>
  ```

  For example:

  ```powershell
  Get-MgUserPhotoContent -UserId albertas@contoso.onmicrosoft.com -OutFile "C:\Download\Alberta Sanchez.png"
  ```

  For detailed syntax and parameter information, see [Get-MgUserPhotoContent](/powershell/module/microsoft.graph.users/get-mguserphotocontent).

- **Microsoft 365 Groups**:

  ```powershell
  Get-MgGroupPhotoContent -GroupId <ID> -OutFile "<PhotoPathAndFileName>
  ```

  You get the ID GUID value of the Microsoft 365 Group from the output of a **Get-MgGroup** command.

  For example:

  ```powershell
  Get-MgGroupPhotoContent -GroupId 173cd812-5563-439c-9da4-bc2715fa2aee -OutFile "C:\Download\Sales Department.png"
  ```

  For detailed syntax and parameter information, see [Get-MgGroupPhotoContent](/powershell/module/microsoft.graph.users/get-mggroupphotocontent).

### Remove user photos in Microsoft Graph PowerShell

- **Users**:

  ```powershell
  Remove-MgUserPhoto -UserId <UPN>
  ```

  For example:

  ```powershell
  Remove-MgUserPhoto -UserId albertas@contoso.onmicrosoft.com
  ```

  For detailed syntax and parameter information, see [Remove-MgUserPhoto](/powershell/module/microsoft.graph.users/remove-mguserphoto).

- **Microsoft 365 Groups**:

  ```powershell
  Remove-MgGroupPhoto -GroupId <ID>
  ```

  You get the ID GUID value of the Microsoft 365 Group from the output of a **Get-MgGroup** command.

  For example:

  ```powershell
  Remove-MgGroupPhoto -GroupId 173cd812-5563-439c-9da4-bc2715fa2aee
  ```

  For detailed syntax and parameter information, see [Remove-MgGroupPhoto](/powershell/module/microsoft.graph.users/get-mggroupphoto).
