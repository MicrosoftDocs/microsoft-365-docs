---
title: "Allow members to send as or send on behalf of a group"
ms.reviewer: rahulnayak
ms.date: 10/28/2024
f1.keywords: NOCSH
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
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

A member of a Microsoft 365 group who has been granted **Send as** or **Send on behalf** permissions can send email as the group, or on behalf of the group. (Guests in the group cannot be granted these permissions.)

This article explains how a global or Exchange administrator can set these permissions.
  
For example, if Megan Bowen is part of the **Training** Microsoft 365 group, and has **Send as** permissions on the group, if she sends an email as the group, it will look like the **Training** group sent the email. 
  
The **Send on Behalf** permission lets a user send email on behalf of a Microsoft 365 group. For example, if Alex Wilber is a part of the **Marketing** Microsoft 365 group, and has **Send on Behalf** permissions and sends an email as the group, the email looks like it was sent by **Alex Wilber on behalf of Marketing**.

> [!IMPORTANT]
> You can configure **Send as** or **Send on behalf** for a given user, but not both. If you configure both, it will default to **Send as**.

> [!NOTE]
> **Send as** and **Send on behalf** are not supported on Outlook for Mac in hybrid Exchange configurations.

## Considerations for scheduling meetings
> [!NOTE]
> Meeting invitations sent from a Microsoft 365 group mailbox currently display the sender as *User on behalf of Group*, even if **Send as** permission is assigned. There is no native method for meeting invites to appear purely as the group.

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

## Related articles

[Send email from or on behalf of a Microsoft 365 group](https://support.microsoft.com/office/0f4964af-aec6-484b-a65c-0434df8cdb6b)

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Learn more about Microsoft 365 groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2)

[Add-RecipientPermission](/powershell/module/exchange/add-recipientpermission)

[Set-UnifiedGroup](/powershell/module/exchange/set-unifiedgroup)
