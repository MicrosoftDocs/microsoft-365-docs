---
title: "Apply a sensitivity label to content automatically"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.service: O365-seccomp
ms.date: 
localization_priority: Priority
ms.collection: 
- M365-security-compliance
ms.topic: article
search.appverid: 
- MOE150
- MET150
description: "When you create a sensitivity label, you can automatically assign a label to a document or email, or you can prompt users to select the label that you recommend."
---

# Apply a sensitivity label to content automatically

When you create a sensitivity label, you can automatically assign that label to content when it contains sensitive information, or you can prompt users to apply the label that you recommend.

The ability to apply sensitivity labels to content automatically is important because:

- You don't need to train your users on all of your classifications.

- You don't need to rely on users to classify all content correctly.

- Users no longer need to know about your policies — they can instead focus on their work.

There are two different scenarios for automatically applying a sensitivity label:

- **Client-side labeling when content is created or in use by users**: Use auto-labeling for Office apps (Word, Excel, PowerPoint, and Outlook. 
    
    This scenario supports recommending a label to users, as well as automatically applying a label. But in both cases, the user decides whether to accept or reject the label, to help ensure the correct labeling of content. This is proactive labeling, with very little delay because the label is applied as soon as the document is saved, or the emai is sent.
    
    For instructions, see [How to configure auto-labeling for Office apps](#how-to-configure-auto-labeling-for-office-apps).

- **Service-side labeling when content is stored (in SharePoint Online or OneDrive for Business) or emailed (from Exchange Online)**: Use auto-labeling with SharePoint, OneDrive, and Exchange, currently in preview. 
    
    This scenario doesn't support recommended labeling because the user doesn't interact with the labeling process. Instead, the administrator runs the policies in simulation mode to help ensure the correct labeling of content before deployment. This is reactive labeling, for content that isn't already labeled and the document is already saved and the email sent by the user (but not yet sent from the organization). These two conditions are sometimes referred to as "data at rest" and "data in transit" respectively.
    
    For instructions, see [How to configure auto-labeling for SharePoint, OneDrive, and Exchange](#how-to-configure-auto-labeling-for-sharepoint-onedrive-and-exchange)


## How to configure auto-labeling for Office apps

Automatic labeling in Office apps for Windows is supported by the Azure Information Protection unified labeling client. For built-in labeling in Office apps, this capability is [in preview for some apps](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps).

The auto-labeling settings for Office apps are available when you [create or edit a sensitivity label](create-sensitivity-labels.md):

![Auto labeling options for sensitivity labels](../media/sensitivity-labels-auto-labeling-options.png)

You can choose to apply sensitivity labels to content automatically when that content contains specific types of sensitive information. Choose from a list of sensitive info types or classifers:

![Label conditions for auto-labeling in Office apps](../media/sensitivity-labels-conditions.png)

> [!NOTE]
> Currently, the option for **Classifers** is in limited preview and requires you to submit a form to Microsoft to enable this capability for your tenant. For more information, see the blog post [Announcing automatic labeling in Office Apps using built-in classifiers - Limited Preview](https://techcommunity.microsoft.com/t5/security-privacy-and-compliance/announcing-automatic-labeling-in-office-apps-using-built-in/ba-p/1192889).

When this sensitivity label is automatically applied, the user sees a notification in their Office app. They can choose **OK** to dismiss the notification.

![Notification that a document had a label applied automatically](../media/sensitivity-labels-msg-doc-was-auto-labeled.PNG)

### Configuring sensitive info types for a label

When you select the **Sensitive info types** option, you see the same list of sensitive information types as when you create a data loss prevention (DLP) policy. So you can, for example, automatically apply a Highly Confidential label to any content that contains customers' personally identifiable information (PII), such as credit card numbers or social security numbers:

![Sensitive info types for auto-labeling in Office apps](../media/sensitivity-labels-sensitive-info-types.png)

After you select your sensitive information types, you can refine your condition by changing the instance count or match accuracy. For more information, see [Tuning rules to make them easier or harder to match](data-loss-prevention-policies.md#tuning-rules-to-make-them-easier-or-harder-to-match).

Further, you can choose whether a condition must detect all sensitive information types, or just one of them. And to make your conditions more flexible or complex, you can add groups and use logical operators between the groups. For more information, see [Grouping and logical operators](data-loss-prevention-policies.md#grouping-and-logical-operators).

![Options for instance count and match accuracy](../media/Sensitivity-labels-instance-count-match-accuracy.png)

### Configuring classifers for a label

When you select the **Classifers** option, select one or more of the built-in classifiers:

![Options for classifers and sensitivity labels](../media/sensitivity-labels-classifers.png)

For more information about these classifers, see [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md).

During the preview period, the following apps support classifers for sensitivity labels:

- Office 365 ProPlus desktop apps for Windows, from [Office Insider](https://office.com/insider):
    - Word
    - Excel
    - PowerPoint

- Office for the web apps, when you have [enabled sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md):
    - Word
    - Excel
    - PowerPoint
    - Outlook

### Recommend that the user applies a sensitivity label

If you prefer, you can recommend to your users that they apply the label. With this option, your users can accept the classification and any associated protection, or dismiss the recommendation if the label isn't suitable for their content.

Recommended labels are supported for Word, Excel, and PowerPoint.

![Option for recommending a sensitivity label to users](../media/Sensitivity-labels-Recommended-label-option.png)

Here's an example of a prompt when you configure a condition to apply a label as a recommended action, with a custom policy tip. You can choose what text is displayed in the policy tip.

![Prompt to apply a recommended label](../media/Sensitivity-label-Prompt-for-required-label.png)

### How automatic or recommended labels are applied

- Automatic labeling applies to Word, Excel, and PowerPoint when you save a document, and to Outlook when you send an email. These conditions detect sensitive information in the body text in documents and emails, and to headers and footers — but not in the subject line or attachments of email.

- You can't use automatic labeling for documents and emails that were previously manually labeled, or previously automatically labeled with a higher sensitivity. Remember, you can only apply a single sensitivity label to a document or email (in addition to a single retention label).

- Recommended labeling applies to Word, Excel, and PowerPoint when you save documents.

- You can't use recommended labeling for documents that were previously labeled with a higher sensitivity. When the content's already labeled with a higher sensitivity, the user won't see the prompt with the recommendation and policy tip.

### How multiple conditions are evaluated when they apply to more than one label

The labels are ordered for evaluation according to their position that you specify in the policy: The label positioned first has the lowest position (least sensitive) and the label positioned last has the highest position (most sensitive). For more information on priority, see [Label priority (order matters)](sensitivity-labels.md#label-priority-order-matters).

### Don't configure a parent label to be applied automatically or recommended

Remember, you can't apply a parent label (a label with sublabels) to content. Make sure that you don't configure a parent label to be auto-applied or recommended, because the parent label won't be applied to content in Office apps that use the Azure Information Protection unified labeling client. For more information on parent labels and sublabels, see [Sublabels (grouping labels)](sensitivity-labels.md#sublabels-grouping-labels).

## How to configure auto-labeling for SharePoint, OnDrive, and Exchange

> [!NOTE]
> This functionality is currently in preview and subject to change.

### Prerequisites

- At least one active Office 365 E5 license in your tenant.

- To auto-label files in SharePoint and OneDrive, the file mustn't be open by another process or user.

- Auditing for Office 365 is turned on, which is a requirement for simulation mode. For instructions, see [Turn Office 365 audit log search on or off](turn-audit-log-search-on-or-off.md).

-  If you plan to use [custom sensitive information types](custom-sensitive-info-types.md) rather than the built-in sensitivity types: 
    - Custom sensitivity information types are evaluated for content that is created after the custom sensitivity information types are saved. 
    - To test new custom sensitive information types, create them before you create your auto-labeling policy, and then create new documents with sample data for testing.

- You already have one or more sensitivity labels [created and published](create-sensitivity-labels.md) (to at least one user) that you can select for your auto-labeling policy. For these labels:
    - It doesn't matter if the auto-labeling in Office apps label setting is turned on or off, because that label setting supplements auto-labeling policies, as explained in the introduction. 
    - If the labels you want to use for auto-labeling are configured to use visual markings (headers, footers, watermarks), these are not applied with auto-labeling policies.

### Learn about simulation mode

Simulation mode is unique to auto-labeling policies and woven into the workflow. You can't automatically label documents and emails until your policy has run at least one simulation.

The simulated deployment runs like the WhatIf parameter for PowerShell. You see results reported as if the auto-labeling policy had applied your selected label, using the rules that you defined. You can then refine your rules for accuracy if needed, and rerun the simulation.

Simulation mode also lets you gradually increase the scope of your auto-labeling policy before deployment. For example, you might start with a single location, such as a SharePoint site, with a single document library. Then, with iterative changes, increase the scope to multiple sites, and then to another location, such as OneDrive.

Finally, you can use simulation mode to provide an approximation of the time needed to run, to help you plan and schedule your deployment.


### How to create an auto-labeling policy

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to sensitivity labels:
    
    - **Solutions** > **Information protection**
    
    If you don't immediately see this option, first select **Show all**.

2. Select the **Auto-labeling (preview)** tab.

3. Select **+ Create policy**.

4. For the page **Choose info you want this label applied to**: Select one of the templates, such as **Financial** or **Privacy**. You can refine your search by using the **Show options for** dropdown. Or, select **Custom policy** if the templates don't meet your requirements. Select **Next**.

5. For the page **Name your auto-labeling policy**: Provide a unique name, and optionally a description to help identify the automatically applied label, locations, and conditions that identify the content to label.

6. For the page **Choose locations where you want to apply the label**: Select and specify locations for Exchange, SharePoint sites, and OneDrive. Then select **Next**.

7. For the **Define policy settings** page: Keep the default of **Find content that contains** to define rules that identify content to label across all your selected locations. If you need different rules per location, select **Advanced settings**. Then select **Next**.
    
    The rules use conditions that include sensitive information types and optionally, the content is shared:
    - For sensitive information types, you can select both built-in and custom sensitive information types.
    - For the shared options, you can choose **only with people inside my organization** or **with people outside my organization**.
    
8. For the **Set up rules to define what content is labeled** page: Select **+ Create rule** and then select **Next**.

9. On the **Create rule** page, name and define your rule, using sensitive information types or the sharing option, and then select **Save**.

10. Back on the **Set up rules to define what content is labeled** page: Select **+ Create rule** again if you need another rule to identify the content to label, and repeat the previous step. When you have defined all the rules you need, and confirmed their status is on, select **Next**.

11. For the **Choose a label to auto-apply** page: Select **+ Choose a label**, select a label from the **Choose a sensitivity label** pane, and then select **Next**.

12. For the **Choose a mode for the policy** page: Select **Test it out** if you're ready to run the auto-labeling policy now, in simulation mode. Otherwise, select **Leave it turned off**. Select **Next**. 

13. For the **Summary** page: Select **Submit**.