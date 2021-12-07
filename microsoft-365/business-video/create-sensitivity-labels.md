---
title: "Create sensitivity labels"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management 
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- adminvideo
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to create and manage sensitivity labels."
---

# Protect documents with sensitivity labels

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3VRGT?autoplay=false]

Sensitivity labels allow you to classify and protect content that is sensitive to your business.

## Try it!

1. From the [Microsoft 365 compliance center](https://compliance.microsoft.com/), select **Solutions** > **Information protection**.
    
    If you don't immediately see this option, first select **Show all**.

2. On the **Labels** page, select **+ Create a label** to start the new sensitivity label configuration. 

    For example, from the Microsoft 365 compliance center:

    ![Create a sensitivity label.](../media/create-sensitivity-label-full.png)

3. On the **Define the scope for this label** page, the options selected determine the label's scope for the settings that you can configure and where they will be visible when they are published:

    ![Scopes for sensitivity labels.](../media/sensitivity-labels-scopes.png)

    - If **Files & emails** is selected, you can configure settings that apply to apps that support sensitivity labels, such as Office Word and Outlook. If this option isn't selected, you see the first page of these settings but you can't configure them and the labels won't be available for users to select in these apps.

    - If **Groups & sites** is selected, you can configure settings that apply to Microsoft 365 groups, and sites for Teams and SharePoint. If this option isn't selected, you see the first page of these settings but you can't configure them and the labels won't be available for users to select for groups and sites.

4. Follow the configuration prompts for the label settings.

5. Repeat these steps to create more labels. However, if you want to create a sublabel, first select the parent label and select **...** for **More actions**, and then select **Add sub label**.

6. When you have created all the labels you need, review their order and if necessary, move them up or down. To change the order of a label, select **...** for **More actions**, and then select **Move up** or **Move down**. 

To edit an existing label, select it, and then select the **Edit label** button:

![Edit label button to edit a sensitivity label.](../media/edit-sensitivity-label-full.png)

This button starts the **Edit sensitivity label** configuration, which lets you change all the label settings in step 4.


> [!NOTE]
> If you edit a label that's already published by using a label policy, no extra steps are needed when you finish the configuration. For example, you don't need to add it to a new label policy for the changes to become available to the same users. However, allow up to 24 hours for the changes to replicate to all apps and services.

> [!IMPORTANT]
> On this **Labels** tab, do not select the **Publish labels** tab (or the **Publish label** button when you edit a label) unless you need to create a new label policy. You need multiple label policies only if users need different labels or different policy settings. Aim to have as few label policies as possible—it's not uncommon to have just one label policy for the organization.

In order for your labels to work, each user needs to download the Azure Information Protection unified labeling client. Search the web for **AzinfoProtection_UL.exe**, then download it from the Microsoft Download Center, and run it on your users' computers.

The next time you open an Office app like Word, you'll see the sensitivity labels that were created. To change or apply a label, select Sensitivity, and choose a label.

