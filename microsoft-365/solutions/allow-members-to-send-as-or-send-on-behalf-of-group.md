---
title: "Allow members to send as or send on behalf of a Group"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: get-started-article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
search.appverid:
- MET150
ms.assetid: 0ad41414-0cc6-4b97-90fb-06bec7bcf590
description: "Learn how to allow members to send email as a Microsoft 365 group or send email on behalf of an Microsoft 365 group."
---

# Allow members to send as or send on behalf of a group

A member of a Microsoft 365 group who has been granted **Send as** or **Send on behalf** permissions can send email as the group, or on behalf of the group. This article explains how an admin can set these permissions.
  
For example, if Megan Bowen is part of the **Training** Microsoft 365 group, and has **Send as** permissions on the group, if she sends an email as the group, it will look like the **Training** group sent the email. 
  
The **Send on Behalf** permission lets a user send email on behalf of a Microsoft 365 group. For example, if Alex Wilber is a part of the **Marketing** Microsoft 365 group, and has **Send on Behalf** permissions and sends an email as the group, the email looks like it was sent by **Alex Wilber on behalf of Marketing**.

> [!IMPORTANT]
> You can configure **Send as** or **Send on behalf** for a given user, but not both. If you configure both, it will default to **Send as**.

> [!TIP]
> See [Send email from or on behalf of a Microsoft 365 group](https://support.microsoft.com/office/0f4964af-aec6-484b-a65c-0434df8cdb6b) to learn how to use Outlook and Outlook on the Web to send email from a group.
    
## Allow members to send email as a group

This section explains how to allow users to send email as a group in the [Exchange admin center](https://go.microsoft.com/fwlink/p/?linkid=2059104) (EAC) in Exchange Online.
  
1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>, go to **Recipients** \> **Groups**.
    
2. Select **Edit**  ![Edit group icon](../media/0cfcb590-dc51-4b4f-9276-bb2ce300d87e.png) on the group that you want to allow users to send as. 
    
3. Select **group delegation**.
    
4. In the **Send As** section, select the **+** sign to add the users that you want to send as the Group. 
    
    ![Select the plus sign to add the users that you want to send as the Microsoft 365 group](../media/1df167f6-1eff-4f98-9ecd-4230fab46557.png)
  
5. Type to search or pick a user from the list. Select **OK** and **Save**.
    
    ![Type to search or pick a user from the list](../media/522919cf-664c-4a25-8076-c51c8c9fbe43.png)
  
## Allow members to send email on behalf of a group

This section explains how to allow users to send email on behalf of a group in the Exchange admin center (EAC) in Exchange Online.
  
1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>, go to **Recipients** \> **Groups**.
    
2. Select **Edit** ![Edit group icon](../media/0cfcb590-dc51-4b4f-9276-bb2ce300d87e.png) on the group that you want to allow users to send as. 
    
3. Select **group delegation**.
    
4. In the Send on Behalf section, select the **+** sign to add the users that you want to send as the Group. 
    
    ![Select the plus sign to add the users that you want to send as the Microsoft 365 group](../media/2bae0579-8907-4d6b-8920-ddd6555897b4.png)
  
5. Type to search or pick a user from the list. Select **OK** and **Save**.
    
    ![Type to search or pick a user from the list](../media/522919cf-664c-4a25-8076-c51c8c9fbe43.png)

## Related articles

[Learn more about Microsoft 365 groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2)

[Add-RecipientPermission](https://go.microsoft.com/fwlink/p/?LinkId=723960)

[Set-UnifiedGroup](https://go.microsoft.com/fwlink/p/?LinkId=616189)
