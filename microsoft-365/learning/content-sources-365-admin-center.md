---
title: "Configure learning content sources for Microsoft Viva Learning (Preview) in the Microsoft 365 admin center"
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
localization_priority: None
description: "Learn how to configure learning content sources for Microsoft Viva Learning (Preview) in the Microsoft 365 admin center."
---

# Configure learning content sources for Microsoft Viva Learning (Preview) in the Microsoft 365 admin center

> [!NOTE]
> The information in this article relates to a preview product that may be substantially modified before it's commercially released. 

The administrators for the Microsoft 365 admin center—either by themselves or by assigning the knowledge admin role to selected individuals in your organization—can manage settings related to Viva Learning (Preview) and can configure the learning content sources.

The administrator selects which additional learning content sources (for example, SharePoint or supported third-party content provider sources) will be available to users of Viva Learning (Preview). The admin then configures those sources to make sure the content is available for search and discovery and can be browsed by the employees who use Viva Learning (Preview).

> [!NOTE]
>  Users sign in to non-Microsoft and LinkedIn Learning Pro learnings in a browser or embedded viewer. This configured learning is subject to the separate license, privacy and service terms between your organization and the third party, and not the Viva Learning (Preview) terms. Before selecting this type of learning, verify you have an agreement in place for your organization and users.

## Assign the knowledge admin role [Optional]

You must be a Microsoft 365 global administrator to perform these tasks.

> [!TIP]
> The knowledge admin should be moderately technical and have existing SharePoint admin credentials, preferably someone who is well-versed in the education, learning, training, or employee experience part of the organization.

To assign a knowledge admin for Viva Learning, follow these steps:

1.	In the left navigation of the Microsoft 365 admin center, go to **Roles**.

2.	On the **Roles** page, on the **Azure AD** tab, select **Knowledge admin**.
 
3.	On the **Knowledge admin** page, in the **Assigned Admins** section, select **Add**, and then add the person you choose for the role.

## Configure settings for the learning content sources

You must be a Microsoft 365 global administrator or knowledge admin to perform these tasks.

To configure settings for learning content sources in Viva Learning, follow these steps:

1.	In the left navigation of the Microsoft 365 admin center, go to **Settings** > **Org settings**.

2.	On the **Org settings** page, on the **Services** tab, select **Learning app (Preview)**.

     ![Settings page in the Microsoft 365 admin center showing the Learning app listed](../media/learning/learning-sharepoint-configure1.png)

3.	On the **Learning app (Preview)** panel, select the learning content sources you want to configure for the organization, and then select **Save**.

     ![Learning panel in the Microsoft 365 admin center showing content sources options](../media/learning/learning-sharepoint-configure2.png)

Among all the learning sources that exist, some will be enabled by default. These include:

- LinkedIn Learning (free content)
- Microsoft Learn
- Microsoft 365 Training

> [!NOTE]
> If your organization has a LinkedIn Learning Standard or Pro subscription, the content repository will be unlocked for the employees in your organization. Only those employees who have permission will be able to use the entire content repository. <br>Other sources might need to be enabled or configured manually. Learning sources that are not from Microsoft are separately licensed between your organization and the third party. You’ll need to verify you’ve signed up for their learning for you and your users.

To enable or disable a learning content source, select the check box next to the source. If a source is enabled, a check mark will be visible.

## Next step

[Configure SharePoint as a learning content source for Microsoft Viva Learning (Preview)](configure-sharepoint-content-source)