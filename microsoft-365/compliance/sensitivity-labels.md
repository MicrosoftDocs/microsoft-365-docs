---
title: "Overview of sensitivity labels"
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "With sensitivity labels, you can classify and help protect your sensitive content, while making sure that your people’s productivity and ability to collaborate isn’t hindered. You can use sensitivity labels to apply protection settings that include encryption and watermarks on labeled content."
---

# Overview of sensitivity labels

To get their work done, people in your organization collaborate with others both inside and outside the organization. This means that content no longer stays behind a firewall — it can roam everywhere, across devices, apps, and services. And when it roams, you want it to do so in a secure, protected way that meets your organization’s business and compliance policies.

With sensitivity labels, you can classify and help protect your organization's data, without hindering your people’s productivity and ability to collaborate.

Example showing sensitivity labels:

![Sensitivity label on Excel ribbon and status bar](media/Sensitivity-label-in-Excel.png)

Sensitivity labels are supported for tenants in the global (public) cloud only. Currently, sensitivity labels aren't supported for tenants in other clouds such as [national clouds](https://docs.microsoft.com/azure/active-directory/develop/authentication-national-cloud).

> [!NOTE]
> Sensitivity labels aren't yet available in US Government Community (GCC) organizations.

To apply sensitivity labels, users must be signed in to Office with their work or school account.

You can use sensitivity labels to:
  
- **Enforce protection settings such as encryption or watermarks on labeled content.** For example, your users can apply a Confidential label to a document or email, and that label can encrypt the content and apply a Confidential watermark.

- **Protect content in Office apps across different platforms and devices.** For a list of supported apps, see [Sensitivity labels in Office apps](sensitivity-labels-office-apps.md).

- **Prevent sensitive content from leaving your organization on devices running Windows** by using endpoint protection in Microsoft Intune. After a sensitivity label has been applied to content that resides on a Windows device, endpoint protection can prevent that content from being copied to a third-party app, such as Twitter or Gmail. Or being copied to removable storage, such as a USB drive.

- **Protect content in third-party apps and services** by using Microsoft Cloud App Security. With Cloud App Security, you can detect, classify, label, and protect content in third-party apps and services, such as SalesForce, Box, or DropBox, even if the third-party app or service does not read or support sensitivity labels.

- **Extend sensitivity labels to third-party apps and services.** With the [Microsoft Information Protection SDK](https://docs.microsoft.com/information-protection/develop/), third-party apps can read sensitivity labels and apply protection settings.

- **Classify content without using any protection settings.** You can also simply assign a classification to content (like a sticker) that persists and roams with the content as it's used and shared. You can use this classification to generate usage reports and see activity data for your sensitive content. Based on this information, you can always choose to apply protection settings later.

In all these cases, sensitivity labels in Microsoft 365 can help you take the right actions on the right content. With sensitivity labels, you can classify data across your organization, and enforce protection settings based on that classification.

## What a sensitivity label is

When you assign a sensitivity label to a document or email, it’s like a stamp that's applied to content that is:

- **Customizable.** You can create categories for different levels of sensitive content in your organization, such as Personal, Public, General, Confidential, and Highly Confidential.

- **Clear text.** Because the label is stored in clear text in the content's metadata, third-party apps and services can read it and then apply their own protective actions, if required.

- **Persistent.** After you apply a sensitivity label to content, the label is stored in the metadata of that email or document. This means the label roams with the content, including the protection settings, and this data becomes the basis for applying and enforcing policies.

In Office apps, a sensitivity label appears like a tag to users on an email or document.

Each item of content can have a single sensitivity label applied to it. An item can have both a single sensitivity label and a single [retention label](labels.md) applied to it.

![Sensitivity label applied to an email](media/Sensitivity-label-on-email.png)

## What sensitivity labels can do

In addition to email and documents, sensitivity labels are available in multiple public preview releases. For more information about how sensitivity labels can be used for files, teams, groups, and sites, see these articles:

- [Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md)

- [Use sensitivity labels with Microsoft Teams, Office 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md)

After a sensitivity label is applied to an email or document, any configured protection settings for that label are enforced on the content. With a sensitivity label, you can:

- **Encrypt** email only or both email and documents. You can choose which users or group have permissions to perform which actions and for how long. For example, you can choose to allow users in a specific group in another organization to have permissions to review the content for only 7 days after the content is labeled. Alternatively, instead of administrator-defined permissions, you can allow your users to assign permissions to the content when they apply the label. For more information, see [Restrict access to content by using encryption in sensitivity labels](encryption-sensitivity-labels.md).

- **Mark the content** when you use Office apps, by adding watermarks, headers, or footers to email or documents that have the label applied. Watermarks can be applied to documents but not email, and they're limited to 255 characters. Headers and footers for are limited to 1024 characters, except in Excel. Excel has a total limit of 255 characters for headers and footers but this limit includes characters that aren't visible, such as formatting codes. If that limit is reached, the string you enter is not displayed in Excel. For information about when the content markings are applied, see [When Office 365 applies content marking and encryption to content](sensitivity-labels-office-apps.md#when-office-365-applies-content-marking-and-encryption-to-content).
    
    ![Watermark and header applied to document](media/Sensitivity-label-watermark-header.png)

- **Prevent data loss** by turning on endpoint protection in Intune. If sensitive content gets downloaded, you can help prevent the loss of data from Windows devices. For example, you can’t copy labeled content into Dropbox, Gmail, or a USB drive. Before your sensitivity labels can use Windows Information Protection (WIP), you first need to create an app protection policy in the Azure portal. For more information, see [How Windows Information Protection protects files with a sensitivity label](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/how-wip-works-with-labels?branch=vsts17546553).

- **Apply the label automatically to content that contains sensitive information.** You can choose what types of sensitive information that you want labeled, and the label can either be applied automatically, or you can prompt users to apply the label that you recommend. If you recommend a label, the prompt displays whatever text you choose. For more information, see [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md).

    ![Prompt to assign a required label](media/Sensitivity-label-Prompt-for-required-label.png)

### Label priority (order matters)

When you create your sensitivity labels in your admin center, they appear in a list on the **Sensitivity** tab on the **Labels** page. In this list, the order of the labels is important because it reflects their priority. You want your most restrictive sensitivity label, such as Highly Confidential, to appear at the **bottom** of the list, and your least restrictive sensitivity label, such as Public, to appear at the **top**.

You can apply just one sensitivity label to a document or email. If you set an option that requires your users to provide a justification for changing a label to a lower classification, the order of this list identifies the lower classifications. However, this option does not apply to sublabels.

The ordering of sublabels is used with [automatic labeling](apply-sensitivity-label-automatically.md), though. When you configure labels to be applied automatically or as a recommendation, multiple matches can result for more than one label. To determine the label to apply or recommend, the label ordering is used: The last sensitive label is selected, and then if applicable, the last sublabel.

![Option to create a sublabel](media/Sensitivity-label-sublabel-options.png)

### Sublabels (grouping labels)

With sublabels, you can group one or more labels below a parent label that a user sees in an Office app. For example, under Confidential, your organization might use several different labels for specific types of that classification. In this example, the parent label Confidential is simply a text label with no protection settings, and because it has sublabels, it can’t be applied to content. Instead, users must choose Confidential to view the sublabels, and then they can choose a sublabel to apply to content.

Sublabels are simply a way to present labels to users in logical groups. Sublabels don’t inherit any settings from their parent label. When you publish a sublabel for a user, that user can then apply that sublabel to content but can't apply just the parent label.

Don't choose a parent label as the default label, or configure a parent label to be auto-applied or recommended, because the parent label won't be applied to content in Office apps that use the Azure Information Protection unified labeling client.

Example of how sublabels display for users:

![Grouped sublabels on the Ribbon](media/Sensitivity-label-grouped-labels.png)

### Editing or deleting a sensitivity label

If you delete a sensitivity label from your admin center, the label is not automatically removed from content, and any protection settings continue to be enforced on content that had that label applied.

If you edit a sensitivity label, the version of the label that was applied to content is what’s enforced on that content.

## What label policies can do

After you create your sensitivity labels, you need to publish them, to make them available to people and services in your organization. The sensitivity labels can then be applied to documents and emails. Unlike retention labels, which are published to locations such as all Exchange mailboxes, sensitivity labels are published to users or groups. Sensitivity labels then appear in Office apps for those users and groups.

With a label policy, you can:

- **Choose which users and groups see the labels.** Labels can be published to any email-enabled security group, Office 365 group, or dynamic distribution group.

- **Apply a default label** to all new documents and email created by the users and groups included in the label policy. Consider using a default label to set a base level of protection settings that you want applied to all your content. However, without user training and other controls, this setting can also result in inaccurate labeling. 

- **Require a justification for changing a label.** If content is marked Confidential and a user tries to remove that label or replace it with a lower classification, such as a label named Public, you can require that the user provides a justification to perform this action. Currently, the justification reason isn't sent to [label analytics](label-analytics.md) for the admin to review. However, the [Azure Information Protection unified labeling client](https://docs.microsoft.com/azure/information-protection/rms-client/aip-clientv2) sends this information to [Azure Information Protection analytics](https://docs.microsoft.com/azure/information-protection/reports-aip).

    ![Prompt where users enter a justification](media/Sensitivity-label-justification-required.png)

- **Require users to apply a label to their email and documents.** Also known as mandatory labeling: To help ensure that content is labeled, you can require that a label must be applied before users can save documents and send emails. The label can be assigned manually by the user, automatically as a result of a condition that you configure, or be assigned by default (the default label option described above). Here's the prompt shown in Outlook when a user is required to assign a label.

    ![Prompt in Outlook asking user to apply required label](media/sensitivity-labels-mandatory-prompt-aipv2-outlook.PNG)
    
    > [!NOTE]
    > Mandatory labeling requires an Azure Information Protection subscription. To use this feature, you must install the [Azure Information Protection unified labeling client](https://docs.microsoft.com/azure/information-protection/rms-client/install-unifiedlabelingclient-app). This client runs only on Windows, so this feature is not yet supported on Mac, iOS, and Android.

- **Provide help link to a custom help page.** If your users aren’t sure what your sensitivity labels mean or how they should be used, you can provide a Learn More URL that appears at the bottom of the **Sensitivity label** menu in the Office apps.

    ![Learn more link on Sensitivity button on Ribbon](media/Sensitivity-label-learn-more.png)

After you create a label policy that assigns sensitivity labels to users and groups, allow up to 24 hours for these users to see the labels in their Office apps.

There is no limit to the number of sensitivity labels that you can create and publish, with one exception: If the label applies encryption, there is a maximum of 500 labels. However, as a best practice to lower admin overheads and reduce complexity for your users, try to keep the number of labels to a minimum. Real-word deployments have proved effectiveness to be noticeably reduced when users have more than five main labels or more than five sublabels per main label.

### Label policy priority (order matters)

You make your sensitivity labels available to users by publishing them in a sensitivity label policy that appears in a list on the **Sensitivity policies** tab on the **Label policies** page. Just like sensitivity labels (see [Label priority (order matters)](#label-priority-order-matters)), the order of the sensitivity label policies is important because it reflects their priority. The label policy with lowest priority is shown at the **top**, and the label policy with the highest priority is shown at the **bottom**.

A label policy consists of:

- A set of labels.
- The scope of the label policy, meaning the users and groups included in the policy.
- The settings of the label policy described above (default label, justification, mandatory label, and help link).

You can include a user in multiple label policies, and the user will see all the sensitivity labels from those policies. However, a user gets the policy settings from only the label policy with the highest priority.

If you're not seeing the label or label policy setting that you expect for a user or group, and you have waited 24 hours, check the order of the sensitivity label policies. To re-order the label policies, select a sensitivity label policy > choose the ellipsis on the right > **Move down** or **Move up**.

![Move option on the page for sensitivity label policies](media/sensitivity-label-policy-priority.png)

While priority matters for sensitivity label policies, it does **not** matter for retention label policies. As explained in [The principles of retention, or what takes precedence?](labels.md#the-principles-of-retention-or-what-takes-precedence), content can be subject to multiple retention policies.

## Sensitivity labels and Azure Information Protection

If you have deployed labels with Azure Information Protection, use the following sections for guidance before you start to use sensitivity labels.

### Azure Information Protection labels

If you are using Azure Information Protection labels because your tenant isn't yet on the [unified labeling platform](https://docs.microsoft.com/azure/information-protection/faqs#how-can-i-determine-if-my-tenant-is-on-the-unified-labeling-platform), we recommend that you avoid creating sensitivity labels until you activate unified labeling. In this scenario, the labels you see in the Azure portal are Azure Information Protection labels rather than sensitivity labels. These labels can't be used by devices running macOS, iOS, or Android. To resolve this, [migrate these labels](/azure/information-protection/configure-policy-migrate-labels) to sensitivity labels.

The metadata applied by both sets of labels are compatible, so you don't need to relabel documents and emails when the migration is complete.

### Azure Information Protection clients

When you use sensitivity labels in Office 365 ProPlus apps on Windows computers, you have a choice of using an Azure Information Protection client, or use labeling that's built into Office. 

By default, built-in labeling is turned off in these apps when the Azure Information Protection client is installed. For more information, see [About the Office built-in labeling client](sensitivity-labels-office-apps.md#about-the-office-built-in-labeling-client).

If you need help deciding which labeling client to use, see [Choose which labeling client to use for Windows computers](https://docs.microsoft.com/azure/information-protection/rms-client/use-client#choose-which-labeling-client-to-use-for-windows-computers) from the Azure Information Protection documentation.

## Sensitivity labels and Microsoft Cloud App Security

By using Cloud App Security (CAS), you can detect, classify, label, and protect content in third-party services and apps, such as SalesForce, Box, or Dropbox. 

Cloud App Security works with both Azure Information Protection labels and sensitivity labels:

- If the labeling admin centers have the same labels as those in the Azure portal: Sensitivity labels are used. To select these labels in Cloud App Security, at least one label must be [published](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy) to at least one user.

- If the labeling admin centers don't have the same labels as those in the Azure portal: Sensitivity labels are not used from the labeling admin centers, and instead, Azure Information Protection labels are retrieved from the Azure portal.

For instructions to use Cloud App Security with these labels, see [Automatically apply Azure Information Protection classification labels](https://docs.microsoft.com/cloud-app-security/use-case-information-protection).

## Sensitivity labels and the Microsoft Information Protection SDK

Because a sensitivity label is persisted as clear text in the metadata of a document, third-party apps and services can choose to support identifying and protecting content that contains such a label. Support in other apps and services is always expanding.

With the [Microsoft Information Protection SDK](https://docs.microsoft.com/information-protection/develop/overview#microsoft-information-protection-sdk), third-party apps and services can read and apply sensitivity labels and protection to documents across many platforms. To learn more, see the [announcement on the Tech Community blog](https://techcommunity.microsoft.com/t5/Microsoft-Information-Protection/Microsoft-Information-Protection-SDK-Now-Generally-Available/ba-p/263144). 

You can also learn about [partner solutions that are integrated with Microsoft Information Protection](https://techcommunity.microsoft.com/t5/Azure-Information-Protection/Microsoft-Information-Protection-showcases-integrated-partner/ba-p/262657).

## Get started with sensitivity labels

1. **Create the labels.** Create and name your sensitivity labels according to your organization's classification taxonomy for different sensitivity levels of content. Use common names or terms that make sense to your users. If you don't already have an established taxonomy, consider starting with label names such as Personal, Public, General, Confidential, and Highly Confidential. You can then use sublabels to group similar labels by category. When you create a label, use the  tooltip to help users select the appropriate label.

2. **Define what each label can do.** Then, configure the protection settings you want associated with each label. For example, you might want lower sensitivity content (such as a “General” label) to have just a header or footer applied, while higher sensitivity content (such as a “Confidential” label) should have a watermark, encryption, and endpoint protection applied.

3. **Publish the labels.** After your sensitivity labels are configured, publish them by using a label policy. Decide which users and groups should have the labels and what policy settings to use. A single label is reusable — you define it once, and then you can include it in several label policies assigned to different users. So for example, you could pilot your sensitivity labels by assigning a label policy to just a few users. Then when you're ready to roll out the labels across your organization, you can create a new label policy for your labels and this time, specify all users.

Basic flow for what the admin, user, and Office apps and services do to make sensitivity labels work:

![Diagram showing workflow for sensitivity labels](media/Sensitivity-label-flow.png)

You're now ready to [create and configure sensitivity labels and their policies](create-sensitivity-labels.md). For more information about using sensitivity labels for Office apps, see [Sensitivity labels in Office apps](sensitivity-labels-office-apps).