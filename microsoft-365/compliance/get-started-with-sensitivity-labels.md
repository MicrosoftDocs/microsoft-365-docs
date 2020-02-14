---
title: "Get started with sensitivity labels"
f1.keywords:
- CSH
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
description: "Ready to start implementing sensitivity labels to help protect your organization's data, but not sure where to start? Read some practical guidance to help get you on your labeling journey."
---

# Get started with sensitivity labels

For information about what sensitivity labels are and how they can help you protect your organization's data, see [Learn about sensitivity labels](sensitivity-labels.md).

If you have [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/what-is-information-protection), determine whether you need to migrate labels to the unified labeling platform, and which labeling client to use:
- [How can I determine if my tenant is on the unified labeling platform?](https://docs.microsoft.com/azure/information-protection/faqs#how-can-i-determine-if-my-tenant-is-on-the-unified-labeling-platform)
- [Choose which labeling client to use for Windows computers](https://docs.microsoft.com/azure/information-protection/rms-client/use-client#choose-which-labeling-client-to-use-for-windows-computers)

When you're ready to start protecting your organization's data by using sensitivity labels:

1. **Create the labels.** Create and name your sensitivity labels according to your organization's classification taxonomy for different sensitivity levels of content. Use common names or terms that make sense to your users. If you don't already have an established taxonomy, consider starting with label names such as Personal, Public, General, Confidential, and Highly Confidential. You can then use sublabels to group similar labels by category. When you create a label, use the  tooltip text to help users select the appropriate label.

2. **Define what each label can do.** Configure the protection settings you want associated with each label. For example, you might want lower sensitivity content (such as a “General” label) to have just a header or footer applied, while higher sensitivity content (such as a “Confidential” label) should have a watermark, encryption, and endpoint protection applied.

3. **Publish the labels.** After your sensitivity labels are configured, publish them by using a label policy. Decide which users and groups should have the labels and what policy settings to use. A single label is reusable — you define it once, and then you can include it in several label policies assigned to different users. So for example, you could pilot your sensitivity labels by assigning a label policy to just a few users. Then when you're ready to roll out the labels across your organization, you can create a new label policy for your labels and this time, specify all users.

The basic flow for what the admin, user, and Office apps and services do to make sensitivity labels work:

![Diagram showing workflow for sensitivity labels](../media/Sensitivity-label-flow.png)

## Supported scenarios for sensitivity labels

Use the following documentation to support your sensitivity labeling deployment:

|I want to ...|Documentation|
|----------------|---------------|
|Create and publish sensitivity labels to protect my organization's data|[Create and configure sensitivity labels and their policies](create-sensitivity-labels.md)|
|Encrypt documents and emails with sensitivity labels and restrict how that content can be used|[Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md)|
|Enable collaboration capabilities in SharePoint (and OneDrive) for documents that are labeled with encryption | [Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md)
|Manage sensitivity labels for Office apps so that content is labeled as it's created |[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md)|
|Automatically apply sensitivity labels or recommend labels to users <br /><br />Note: Currently, the ability to automatically apply sensitivity labels is available  when content is created in Office apps and not to stored content | [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)|
|Use sensitivity labels to protect content in Teams and  SharePoint |[Use sensitivity labels with Microsoft Teams, Office 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md)|
|Visualize how sensitivity labels are being used to report status and fine-tune label configuration|[View label usage with label analytics](label-analytics.md)|

If you are using sensitivity labels with the Azure Information Protection unified labeling client, see the [Azure Information Protection documentation](https://docs.microsoft.com/azure/information-protection) for additional deployment instructions.


## End-user documentation for sensitivity labels

- [Apply sensitivity labels to your files and email in Office](https://support.office.com/article/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)

- [Known issues with sensitivity labels in Office](https://support.office.com/en-us/article/known-issues-with-sensitivity-labels-in-office-b169d687-2bbd-4e21-a440-7da1b2743edc)

- [Automatically apply or recommend sensitivity labels to your files and emails in Office](https://support.office.com/article/automatically-apply-or-recommend-sensitivity-labels-to-your-files-and-emails-in-office-622e0d9c-f38c-470a-bcdb-9e90b24d71a1)

- [Known issues with automatically applying or recommending sensitivity labels](https://support.office.com/article/known-issues-with-automatically-applying-or-recommending-sensitivity-labels-451698ae-311b-4d28-83aa-a839a66f6efc)


