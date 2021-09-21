---
title: "Microsoft Privacy management (preview)"
f1.keywords:
- CSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- M365-privacy-management
search.appverid: 
- MOE150
- MET150
description: "Microsoft privacy management offers solutions for evaluating personal data your organization stores in Microsoft 365, and helps you identify and remediate privacy risks."
---

# Microsoft privacy management (preview)

## What is privacy management?

Understanding the private data that your organization controls and maintaining it in a way that reduces risks for you, your customers, and your partners are at the heart of the privacy management discipline. Governments, industries, and other regulatory bodies have established privacy management laws and standards that must be followed, including practices around how data is stored and shared and the rights of individuals to control their own personal information. The best practices that organizations use to keep information safe and comply with these laws and standards are continually evolving.

To help your organization meet these needs, Microsoft 365 privacy management provides solutions for managing personal data in your Microsoft 365 environment and gives your workers tools for efficient data review, issue remediation, and collaboration.

## Microsoft 365 privacy management solutions

Microsoft 365 privacy management provides solutions that enable you to:

- **Find and visualize personal data**: Protecting data starts with having a thorough understanding of what your organization is storing, where it lives across the services you use, and the conditions under which it's managed in the long term.
- **Manage privacy risks**: Use privacy management to evaluate your data for key risk scenarios, and use built-in tools to set alerts and remediate issues like unintended oversharing, exposure, or unnecessary storage of personal information.
- **Efficiently fulfill personal data requests**: When individuals, also referred to as *data subjects*, request to manage the personal data that you store about them, use the privacy management solution to collect data, review the findings, and produce reports.

> [!NOTE]
> These services are currently in preview and subject to the terms and conditions in the [Online Services Terms](https://www.microsoft.com/en-us/licensing/product-licensing/products).

### Understand your data

With privacy management, you can gain insights into your organization's entire Microsoft 365 privacy landscape. The solution will evaluate your data for personal information, give you a clear view into what you store, and offer opportunities to investigate areas of key interest.

These insights are presented across your **Overview** dashboard, which provides dynamic updates about your data and important trends, and the **data profile**, which allows you to explore ongoing analytics. The findings and alerts here can inform your next actions for managing data.

To learn more, see [Find and visualize your personal data](privacy-management-data-profile.md).

### Manage risk scenarios

Complex data environments can present potentially risky scenarios for personal data. Privacy management provides easy ways to detect risks in the following areas and establish ongoing processes for handling essential scenarios, such as:

- **Overexposed personal data**: Companies may collect various types of information that can be used to identify individual customers or employees. Access rights to this data must be properly managed to protect privacy and prevent inappropriate use.
- **Data transfers**: Transferring personal data between departments in your organization or across country or regional borders may increase the risk of exposure of data, or of stepping out of accordance with privacy regulations and laws.
- **Data minimization**: Companies may collect excess information or keep it longer than necessary, resulting in storage of unused personal data. This data should be minimized to help prevent privacy risks.

Microsoft 365 privacy management provides built-in templates for setting up data-handling policies tailored to these situations. Based on the policies you set, privacy management can evaluate your data on an ongoing basis, alert you to potential issues, and help you remediate these issues. As a result, your employees can better follow best privacy practices and stay aware of recommended actions to take. The templates can either be used as provided or customized to meet your company’s specific needs.

To learn more, see [Create and manage policies](privacy-management-policies.md).

### Manage subject rights requests

In accordance with certain privacy regulations around the world, individuals may make requests to review or manage the personal data about themselves that companies have collected. For companies that store large amounts of information, finding the relevant data can be a formidable task.

Microsoft 365 privacy management can help you handle these inquiries through the subject rights request solution. It provides automation and workflow capabilities for helping you search for subject data that you’ve stored in Microsoft 365, review the findings, select the appropriate files, and produce reports. Along the way, you can securely collaborate with other experts in your organization to bring the request to completion.

To learn more, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

## Where privacy management identifies personal data

Microsoft 365 privacy management evaluates data and files stored by your organization in Microsoft 365’s cloud services:

- Microsoft Exchange
- Microsoft SharePoint
- Microsoft OneDrive
- Microsoft Teams

Privacy management does not collect data beyond what is already collected in Microsoft 365, and will not make modifications to the data on its own. Also, since privacy management specifically evaluates data that your organization manages, any consumer accounts your employees or customers may have on these services will not be in scope.

## How privacy management identifies items with personal data

Privacy management utilizes the capabilities of Microsoft 365 to help you identify and tag sensitive items. This is done through the use of [sensitive information types (SIT)](sensitive-information-type-learn-about.md), trainable [classifiers](classifier-learn-about.md), and auto and manual application of [sensitivity labels](sensitivity-labels.md).

Sensitive information types (SIT) are the data types supported by Microsoft data classification. For example, these data types include personal information about individuals such as their name, address, or Social Security number.

For more information about how Microsoft 365 defines sensitive information, see [Learn about sensitive information types](sensitive-information-type-learn-about.md).

## Additional resources

For more information about how Microsoft approaches privacy and safeguards your data, see the following resources:

- [Microsoft Privacy Principles](https://www.microsoft.com/en-us/trust-center/privacy)
- [Privacy overview](/compliance/assurance/assurance-privacy)

## Next steps

To continue, see [Get started with privacy management](privacy-management-setup.md).
