---
title: "Allow members to send as or send on behalf of a group"
ms.reviewer: rahulnayak
ms.date: 10/28/2024
f1.keywords: NOCSH
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: how-to
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-subscription-management 
- Adm_O365
- m365solution-collabgovernance
- Tier1
ms.custom: admindeeplinkEXCHANGE
search.appverid:
- MET150
ms.assetid: 0ad41414-0cc6-4b97-90fb-06bec7bcf590
recommendations: false
description: "Learn how to allow group members to send email as a Microsoft 365 group or send email on behalf of a Microsoft 365 group."
---

# Allow members to send as or send on behalf of a group

A member of a Microsoft 365 group who has been granted **Send as** or **Send on behalf** permissions can send email as the group, or on behalf of the group. (Guests in the group can't be granted these permissions.)

This article explains how a global or Exchange administrator can set these permissions.
  
For example, if Megan Bowen is part of the **Training** Microsoft 365 group, and has **Send as** permissions on the group, if she sends an email as the group, it will look like the **Training** group sent the email. 
  
The **Send on Behalf** permission lets a user send email on behalf of a Microsoft 365 group. For example, if Alex Wilber is a part of the **Marketing** Microsoft 365 group, and has **Send on Behalf** permissions and sends an email as the group, the email looks like it was sent by **Alex Wilber on behalf of Marketing**.

> [!IMPORTANT]
> You can configure **Send as** or **Send on behalf** for a given user, but not both. If you configure both, it will default to **Send as**.

> [!NOTE]
> **Send as** and **Send on behalf** aren't supported on Outlook for Mac in hybrid Exchange configurations.

## Considerations for scheduling meetings
> [!NOTE]
> Meeting invitations sent from a Microsoft 365 group mailbox currently display the sender as *User on behalf of Group*, even if **Send as** permission is assigned. There's no native method for meeting invites to appear purely as the group.

## Allow members to send email as a group

This section explains how to allow users to send email as a group in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center (EAC)</a> in Exchange Online.
  
1. In the Exchange admin center, go to **Recipients** \> <a href="https://go.microsoft.com/fwlink/?linkid=2183233" target="_blank">**Groups**</a>.
2. Select the group that you want to allow users to send as. 
3. Select **Settings** > **Edit manage delegates**.
4. In the **Add a delegate** section, enter the email address of the user that you would like to have **Send as** access.
5. Select **Permission Type** as **Send as** from the drop-down.
6. Select **Save changes**.
    
## Allow members to send email on behalf of a group

This section explains how to allow users to send email on behalf of a group in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center (EAC)</a> in Exchange Online.
  
1. In the Exchange admin center, go to **Recipients** \> <a href="https://go.microsoft.com/fwlink/?linkid=2183233" target="_blank">**Groups**</a>.
2. Select the group that you want to allow users to send on behalf of. 
3. Select **Settings** > **Edit manage delegates**.
4. In the **Add a delegate** section, enter the email address of the user that you would like to have **Send on behalf** access.
5. Select **Permission Type** as **Send on behalf** from the drop-down.
6. Select **Save changes**.

## Send email as a group

After permissions are assigned, users can send an email using the group's email address by composing a new email. To send an email as a group using the new Outlook or the Outlook on the web, follow these steps:

1. Click **New mail**.

    :::image type="content" source="../media/new-mail.png" alt-text="Screenshot of the New email option in Outlook.":::

2. To open in new window, click the **Arrow** to pop out the email.
   
    :::image type="content" source="../media/open-in-new-window-email-outlook.png" alt-text="Screenshot of the Arrow that opens in new window in Outlook.":::
3. Go to the **Options** tab and select **Show From**.
    
    :::image type="content" source="../media/show-from-options-in-outlook.png" alt-text="Screenshot of the Options tab in outlook.":::
4. Click the drop-down menu and select **Other email address…**.
    
    :::image type="content" source="../media/other-email-addresses-in-outlook.png" alt-text="Screenshot of the other email addresses in outlook.":::
5. Enter the email address of the Microsoft 365 Group for which the user has been assigned **Send As** permission.
    
    :::image type="content" source="../media/send-as-group-email.png" alt-text="Screenshot of the From dropdown in outlook.":::
6. Compose and send the email.

To send an email as a group using the classic Outlook, follow these steps:

1. Click **New mail**.
2. Go to the **Options** tab and select **From**.
   
    :::image type="content" source="../media/classic-outlook-options.png" alt-text="Screenshot of Options tab in classic Outlook.":::
3. Click the **From** drop-down and select **Other Email Address…**.
   
   :::image type="content" source="../media/classic-outlook-from-dropdown.png" alt-text="Screenshot of the From dropdown in classic Outlook.":::
4. Type in the group's email address and select **OK**.
    
    :::image type="content" source="../media/classic-outlook-from-dialog-box.png" alt-text="Screenshot of the From dialog box in classic outlook.":::
     >[!NOTE]
     >Ensure the user has been assigned **Send As** permission on the group.
5. Compose and send the email.

## Related articles

[Send email from or on behalf of a Microsoft 365 group](https://support.microsoft.com/office/0f4964af-aec6-484b-a65c-0434df8cdb6b)

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Learn more about Microsoft 365 groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2)

[Add-RecipientPermission](/powershell/module/exchange/add-recipientpermission)

[Set-UnifiedGroup](/powershell/module/exchange/set-unifiedgroup)
