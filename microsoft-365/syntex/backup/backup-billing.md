---
title: Set up pay-as-you-go billing for Microsoft 365 Backup (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 02/12/2024
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: backup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and configure pay-as-you-go billing for Microsoft 365 Backup.
---

# Set up pay-as-you-go billing for Microsoft 365 Backup (Preview)

As a first step to sign up for Microsoft 365 Backup, you should link an Azure subscription in Syntex pay-as-you-go, if you have not already done so. Although Microsoft 365 Backup is not part of the Syntex product suite, this offering is still leveraging the Syntex billing setup for consistency with other Microsoft 365 pay-as-you-go offerings.

Use these steps to set up pay-as-you-go billing for Microsoft 365 Backup.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Setup**.

3. On the **Setup** page, in the **Files and content** section, select **Use content AI with Microsoft Syntex**.

4. On the **Use content AI with Microsoft Syntex** page, select **Set up billing**.

    ![Screenshot of the Set up billing option in the Microsoft 365 admin center.](../../media/content-understanding/backup-setup-billing.png)

> [!NOTE]
> To set up pay-as-you-go billing for Microsoft 365 Backup, you must provide an owner or contribution role on the Azure subscription to be used.

5. If you *do not* have an Azure subscription or resource group, follow these steps. If you have an Azure subscription and resource group, go to step 6.

    a.	To create a new Azure subscription with the same organization and Microsoft Entra tenant as your Microsoft 365 subscription, follow the below simple 3 steps: 
1.	Sign in to the Azure portal (https://portal.azure.com) with your Microsoft 365 Microsoft Entra DC admin, or Global admin account.
2.	In the left navigation, click Subscriptions, and then click Add.
3.	On the Add subscription page, select an offer and complete the payment information and agreement.
 
b.	To create a new Azure resource group, select ‘Learn more about Azure resource groups’ on the flyout. Alternatively, you can follow steps here <link to azure resource group document>to create a resource group. 

Note that the resource group should be mapped to the azure subscription provided while setting up Pay-as-you-go. 

 

6.	If you have an Azure subscription, select the subscription from the drop-down menu. 
Please note that the subscription dropdown will not populate if you do not have an owner or contributor on the subscription. Check your role on subscription using the learn document here. 
 

7.	Select the Azure subscription, resource group and region from the drop down, accept terms of service and hit Save. 
Now you have successfully set up billing for the product, you can proceed to Step 2: Enable Microsoft 365 Backup

