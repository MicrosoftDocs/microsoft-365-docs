---
title: "Data classification for your Microsoft 365 Enterprise test environment"
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
description: Use this Test Lab Guide to create and use Office 365 retention labels on documents in your Microsoft 365 Enterprise test environment.
---

# Data classification for your Microsoft 365 Enterprise test environment

*This Test Lab Guide can be used for both Microsoft 365 Enterprise and Office 365 Enterprise test environments.*

With the instructions in this article, you configure data classification using Office 365 retention labels in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](../media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure Office 365 retention labels in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure Office 365 retention labels in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing Office 365 retention labels does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 

## Phase 2: Create Office 365 retention labels

In this phase, you create the retention labels for the different levels of retention for SharePoint Online documents folders.

1. Sign in to the [Microsoft 365 security center](https://security.microsoft.com/homepage) with your global admin account.
    
2. From the **Home - Microsoft 365 security** tab of your browser, click **Classification > Retention labels**.
    
3. Click **Create a label**.
    
4. In the **Name your label** pane, type **Internal Public** in **Name your label**, and then click **Next**.

5. In the **File plan descriptors** pane, click **Next**.
    
6. In the **Label settings** pane, if needed, set **Retention** to **On**, and then click **Next**.
    
7. In the **Review your settings** pane, click **Create the label**.
    
8. Repeat steps 3-7 for additional labels with these names:
    
  - Private
    
  - Sensitive
    
  - Highly Confidential
  
9. In the **Retention labels** pane, click **Publish labels**.
    
10. In the **Choose labels to publish** pane, click **Choose labels to publish**.
    
11. In the **Choose labels** pane, click **Add** and select all four labels.
    
12. Click **Add**, and then click **Done**.
    
13. On the **Choose labels to publish** pane, click **Next**.
    
14. On the **Choose locations** pane, click **Next**.
    
15. On the **Name your policy** pane, type **Example organization** in **Name**, and then click **Next**.
    
16. On the **Review your settings** pane, click **Publish labels**.
 
Note that it might take a few minutes for the retention labels to be published.

## Phase 3: Apply Office 365 retention labels to documents

In this phase, you discover the default retention label behavior for files in the Documents folder of a SharePoint Online site and manually change the retention label of a document.

First, create a sensitive-level SharePoint Online team site:
  
1. Using a private instance of your browser, sign in to the [Office 365 portal](https://portal.office.com) using your global admin account.
    
2. In the list of tiles, click **SharePoint**.
    
3. On the new **SharePoint** tab in your browser, click **Create site**.
    
4. On the **Create a site** page, click **Team site**.
    
5. In **Team site name**, type **SensitiveFiles**.
    
6. In **Team site description**, type **SharePoint site for sensitive files**.
    
7.  In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.
    
8. In the **Who do you want to add?** pane, click **Finish**.
    
Next, configure the Documents folder of the SensitiveFiles team site for the Sensitive retention label.
  
1. In the **SensitiveFiles** tab of your browser, click **Documents**.
    
2. Click the settings icon, and then click **Library settings**.
    
3. Under **Permissions and Management**, click **Apply label to items in this list or library**. If this option does not appear, your retention labels are not yet published. Try this step at a later time.
    
4. In **Settings-Apply Label**, select **Sensitive** in the drop-down box, and then click **Save**.

Next, create a new document in the SensitiveFiles site and change its retention label.
    
1. In the documents folder, click **New > Word document**.
    
2. Type some text in the blank document. Wait for the text to be saved.
    
3. In the menu bar, click **Shared Documents**.
    
4. Click the vertical ellipsis next to the **Document.docx** file name, and then click **Details**.
    
5. In the right-hand pane, in the **Properties** section, under **Apply retention label**, note that the document has had the **Sensitive** retention label automatically applied.
    
6. Click **Edit all**.
    
7. In the **Document.docx** pane, under **Apply retention label**, select the **Highly Confidential** label, and then click **Save**.

See the [Configure classification for your environment](infoprotect-configure-classification.md) step in the **Information protection** phase for information and links to how to deploy Office 365 retention labels in production.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)

 
