---
title: "Data classification for your Microsoft 365 for enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/10/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-security-compliance
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to create and use retention labels on documents in your Microsoft 365 for enterprise test environment.
---

# Data classification for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can be used for both Microsoft 365 for enterprise and Office 365 Enterprise test environments.*

This article describes how to configure data classification using retention labels in your Microsoft 365 for enterprise test environment.

Classifying data in your test environment involves three phases:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Create retention labels](#phase-2-create-retention-labels)
- [Phase 3: Apply retention labels to documents](#phase-3-apply-retention-labels-to-documents)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you just want to configure retention labels in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure retention labels in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing retention labels doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It's provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization.

## Phase 2: Create retention labels

In this phase, create the retention labels for the different levels of retention for SharePoint Online documents folders:

1. Sign in to the [Microsoft 365 security center](https://security.microsoft.com/homepage) with your global admin account.
1. From the **Home - Microsoft 365 security** tab of your browser, select **Classification** > **Retention labels**.
1. Select **Create a label**.
1. In the **Name your label** pane, enter **Internal Public** in **Name your label**, and then select **Next**.
1. In the **File plan descriptors** pane, select **Next**.
1. In the **Label settings** pane, if needed, set **Retention** to **On**, and then select **Next**.
1. In the **Review your settings** pane, select **Create the label**.
1. Repeat steps 3-7 for additional labels with these names:
  - Private
  - Sensitive
  - Highly Confidential
1. In the **Retention labels** pane, select **Publish labels**.
1. In the **Choose labels to publish** pane, select **Choose labels to publish**.
1. In the **Choose labels** pane, select **Add** and select all four labels.
1. Select **Add**, and then select **Done**.
1. On the **Choose labels to publish** pane, select **Next**.
1. On the **Choose locations** pane, select **Next**.
1. On the **Name your policy** pane, enter **Example organization** in **Name**, and then select **Next**.
1. On the **Review your settings** pane, select **Publish labels**.
 
It might take a few minutes for the retention labels to be published.

## Phase 3: Apply retention labels to documents

In this phase, you discover the default retention label behavior for files in the Documents folder of a SharePoint Online site and manually change the retention label of a document.

First, create a sensitive-level SharePoint Online team site:
  
1. Using a private instance of your browser, sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) using your global admin account.
1. In the list of tiles, select **SharePoint**.
1. On the new **SharePoint** tab in your browser, select **Create site**.
1. On the **Create a site** page, select **Team site**.
1. In the **Team site name** box, enter **SensitiveFiles**.
1. In the **Team site description** box, enter **SharePoint site for sensitive files**.
1. In **Privacy settings**, select **Private - only members can access this site**, and then select **Next**.
1. In the **Who do you want to add?** pane, select **Finish**.
    
Next, configure the Documents folder of the SensitiveFiles team site for the Sensitive retention label.
  
1. In the **SensitiveFiles** tab of your browser, select **Documents**.
1. Select the **Settings** icon, and then select **Library settings**.
1. Under **Permissions and Management**, select **Apply label to items in this list or library**. If this option doesn't appear, your retention labels aren't yet published. Try this step at a later time.
1. In **Settings-Apply Label**, select **Sensitive** in the drop-down box, and then select **Save**.

Next, create a new document in the SensitiveFiles site and change its retention label.
    
1. In the documents folder, select **New** > **Word document**.
1. Enter some text in the blank document. Wait for the text to be saved.
1. On the menu bar, select **Shared Documents**.
1. Next to the **Document.docx** file name, select the vertical ellipsis, and then select **Details**.
1. In the right pane, in the **Properties** section, under **Apply retention label**, note that the document has had the **Sensitive** retention label automatically applied.
1. Click **Edit all**.
1. In the **Document.docx** pane, under **Apply retention label**, select the **Highly Confidential** label, and then select **Save**.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)