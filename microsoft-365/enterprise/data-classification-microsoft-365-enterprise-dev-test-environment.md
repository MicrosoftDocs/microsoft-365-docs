---
title: "Data classification for your Microsoft 365 Enterprise test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/16/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to create and use Office 365 labels on documents in your Microsoft 365 Enterprise test environment.
---

# Data classification for your Microsoft 365 Enterprise test environment

With the instructions in this article, you configure data classification using Office 365 labels in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure Office 365 labels in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure Office 365 labels in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing Office 365 labels does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for a Windows Server AD forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 

## Phase 2: Create Office 365 labels

In this phase, you create the labels for the different levels of security for SharePoint Online documents folders.
  
1. If needed, use a private instance of your Internet browser and sign in to the Office 365 portal with your global administrator account. For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
    
2. From the **Microsoft Office Home** tab, click the **Admin** tile.
    
3. From the new **Office Admin center** tab of your browser, click **Admin centers > Security &amp; Compliance**.
    
4. From the new **Home - Security &amp; Compliance** tab of your browser, click **Classifications > Labels**.
    
5. From the **Home > Labels** pane, click **Create a label**.
    
6. On the **Name your label** pane, type **Internal Public**, and then click **Next**.
    
7. On the **Label settings** pane, click **Next**.
    
8. On the **Review your settings** pane, click **Create this label**, and then click **Close**.
    
9. Repeat steps 5-8 for these additional labels:
    
  - Private
    
  - Sensitive
    
  - Highly Confidential
    
10. From the **Home > Labels** pane, click **Publish labels**.
    
11. On the **Choose labels to publish** pane, click **Choose labels to publish**.
    
12. On the **Choose labels** pane, click **Add** and select all four labels.
    
13. Click **Done**.
    
14. On the **Choose labels to publish** pane, click **Next**.
    
15. On the **Choose locations** pane, click **Next**.
    
16. On the **Name your policy** pane, type **Example organization** in **Name**, and then click **Next**.
    
17. On the **Review your settings** pane, click **Publish labels**, and then click **Close**.

Note that it might take a few minutes for the labels to be published.

## Phase 3: Apply Office 365 labels to documents

In this phase, you discover the default label behavior for files in the Documents folder of a SharePoint Online site and manually change the label of a document.

First, create a sensitive-level SharePoint Online team site:
  
1. Using a browser on your local computer, sign in to the Office 365 portal using your global administrator account. For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
    
2. In the list of tiles, click **SharePoint**.
    
3. On the new **SharePoint** tab in your browser, click **Create site**.
    
4. On the **Create a site** page, click **Team site**.
    
5. In **Team site name**, type **SensitiveFiles**.
    
6. In **Team site description**, type **SharePoint site for sensitive files**.
    
7.  In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.
    
8. On the **Who do you want to add?** pane, click **Finish**.
    
Next, configure the Documents folder of the SensitiveFiles team site for the Sensitive label.
  
1. In the **SensitiveFiles** tab of your browser, click **Documents**.
    
2. Click the settings icon, and then click **Library settings**.
    
3. Under **Permissions and Management**, click **Apply label to items in this library**.
    
4. In **Settings-Apply Label**, select **Sensitive** in the drop-down box, and then click **Save**.

Next, create a new document in the SensitiveFiles site and change its label.
    
1. In the documents folder, click **New > Word document**.
    
2. Type some text in the blank document. Wait for the text to be saved.
    
3. In the menu bar, click **Shared Documents**.
    
4. Click the Word icon next to the **Document.docx** file name.
    
5. In the right-hand pane, in the **Properties** section, under **Apply label**, note that the document has had the **Sensitive** label automatically applied.
    
6. Click **Edit all**.
    
7. In the **Document.docx** pane, under **Apply label**, select the **Highly Confidential** label, and then click **Save**.

See the [Configure classification for your environment](data-classification-microsoft-365-enterprise-dev-test-environment.md) step in the **Information protection** phase for information and links to Office 365 labels in production.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)

 