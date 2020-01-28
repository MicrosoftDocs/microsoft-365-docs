---
title: "Architect a classification schema for personal data"
f1.keywords:
- NOCSH
ms.author: bcarter
author: brendacarter
manager: laurawi
audience: ITPro
ms.topic: overview
ms.collection: 
- Strat_O365_Enterprise
- Ent_O365
- GDPR
- M365-security-compliance
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
description: "Determine whether your organization will implement labels as part of your GDPR plan."
---
# Architect a classification schema for personal data

Previous articles in this series focus on using sensitive information types to identify personal data that is subject to GDPR. Sensitive information types are a form of classification. This might be all the classification you need. However, many organizations implement a broader data governance strategy using labels. Use this topic to decide if you also want to implement labels as part of your GDPR plan. If you do, this topic provides some guidance and examples.

Note: Defining a classification schema for an organization and configuring policies, labels, and conditions requires careful planning and preparation. It's important to realize that this isn't an IT driven process. Be sure to work with your legal and compliance team to develop an appropriate classification and labeling schema for your organization’s data.

## Decide if you're using labels in addition to sensitive data types

You can take one of two approaches for classification in Office 365 for personal information. Either of these can be used for GDPR protection. If you decide to use only sensitive information types for classification, you can skip the rest of this topic.

Choose one of the following options.

### Option 1: Use only Office 365 sensitive information types

- Sensitive information types work well to identify and protect personal data subject to GDPR and other types of regulations.

- These are simpler to use if your organization doesn’t already have or plan to implement a broader data governance plan using labels.

- These work with DLP rules (so do retention labels).

- Sensitive information types work with Cloud App Security so you can detect sensitive information in other SaaS apps.

### Option 2: Use sensitive information types + retention labels

- You’ll need sensitive information types to automatically apply labels to personal data that is subject to GDPR, so these are a prerequisite.

- Using retention labels allows you to include personal data that is subject to GDPR into a broader data governance plan for your organization.

## Develop a label schema that includes personal data

Before using technical capabilities to apply labels and protection, first work across your organization to define a classification schema. Your organization might already have a classification schema, which makes it easier to add personal data. This topic includes an example classification schema. You can use this example as a starting point, if needed.

### Getting started

Begin by deciding on the number and names of labels to implement. Do this activity without worrying about which technology to use and how labels will be applied. Apply this schema universally throughout your organization, including data that resides on premises and in other cloud services.

### Recommendations 

When designing and implementing policies, labels and conditions, consider following these recommendations:

- Use existing classification schema (if any) &ndash; Many organizations already are using data classification in some form. Carefully evaluate the existing label schema and if possible use it as is. Using familiar labels that are recognizable to the end user will drive adoption.

- Start with default policies and labels &ndash; All solutions come with a set of predefined policies and labels. Carefully evaluate these against the organization's legal and business requirements and consider using them instead of creating new ones.

- Start small &ndash; There's virtually no limit to the number of labels that can be created. However, large numbers of labels and sub-labels will negatively impact the adoption. Too many choices often mean no choice at all.

- Use scenarios and use cases &ndash; Identify common use cases within the organization and use scenarios derived from the GDPR to verify if the envisioned label and classification configuration will work in practice.

- Question every request for a new label &ndash; Does every scenario or use case really need a new label or can you use what you already have? Keeping the number of labels to a minimum improves adoption.

- Use sub-labels for key departments &ndash; Some departments will have specific needs that require specific labels. Define these labels as sub-labels to an existing label, and consider using scoped policies that are assigned to user groups instead of globally.

- Consider scoped policies &ndash; Policies targeted at subsets of users will prevent "label overload". A scoped policy lets you assign role or department-specific (sub-)labels to just employees that work for that specific department.

- Use meaningful label names &ndash; We recommend that you don't use jargon, standards, or acronyms as label names. Try to use names that resonate with the end user to improve adoption. Instead of using labels like PII, PCI, HIPAA, LBI, MBI, and HBI, consider names like Non-Business, Public, General, Confidential, and Highly Confidential.

### Example classification schema

<table>
<thead>
<tr class="header">
<th align="left"><strong>Label name</strong></th>
<th align="left"><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Personal</td>
<td align="left">Non-business data, for personal use only.</td>
</tr>
<tr class="even">
<td align="left">Public</td>
<td align="left">Business data that is specifically prepared and approved for public consumption.</td>
</tr>
<tr class="odd">
<td align="left">Customer data</td>
<td align="left">Business data that contains personal identifiable information. Examples are credit card numbers, bank account numbers, and social security numbers.</td>
</tr>
<tr class="even">
<td align="left">HR data</td>
<td align="left">Human Resource data about Contoso employees, such as employee number and salary data.</td>
</tr>
<tr class="odd">
<td align="left">Confidential</td>
<td align="left">Sensitive business data that could cause damage to the business if shared with unauthorized people. Examples include contracts, security reports, forecast summaries, and sales account data.</td>
</tr>
<tr class="even">
<td align="left">Highly confidential</td>
<td align="left">Very sensitive business data that would cause damage to the business if it was shared with unauthorized people. Examples include employee and customer information, passwords, source code, and pre-announced financial reports.</td>
</tr>
</tbody>
</table>

## Define a taxonomy and search criteria for each label

After developing a classification schema for your organization, the next step is to develop the taxonomy and search criteria for finding this data. For personal data, you’ve already completed this work by identifying sensitive information types and customizing or creating new sensitive information types for your environment.

The following table provides an example schema, taxonomy, and search criteria for an organization. The labels are ordered by sensitivity level from least sensitive to most sensitive to ensure that data that matches multiple label conditions is assigned the appropriate label.

Note: The configuration example is provided for illustration only and is not intended as deployment guidance or reference.

The important takeaway is to ensure that the work you invest to classify personal data for GDPR compliance fits together with the objectives for your entire organization.

### Example schema, taxonomy, and search criteria

<table>
<thead>
<tr class="header">
<th align="left"><strong>Label</strong></th>
<th align="left"><strong>Taxonomy</strong></th>
<th align="left"><strong>Method</strong></th>
<th align="left"><strong>Search syntax</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Personal</td>
<td align="left">Documents manually labeled personal by the end user.</td>
<td align="left">Manual</td>
<td align="left">Documents manually labeled personal by the end user.</td>
</tr>
<tr class="even">
<td align="left">Public</td>
<td align="left">Documents containing the case insensitive phrase Approved for Public Release ##/#### where # represents any digit.</td>
<td align="left"><p>KQL</p>
<p>RegEx</p></td>
<td align="left"><p>KQL — Approved for Public Release*</p>
<p>RegEx — (?i)(\bApproved for Public Release \d{2}\/\d{4}\b)</p></td>
</tr>
<tr class="odd">
<td align="left">Customer data</td>
<td align="left">Sensitive information types for EU citizen data.</td>
<td align="left">Sensitive information types</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Human Resources — Employee Data</td>
<td align="left">Documents that include the case-sensitive employee id in the format CONTOSO-9##### where # represents any digit.</td>
<td align="left"><p>KQL</p>
<p>RegEx</p></td>
<td align="left"><p>KQL — CONTOSO-9*</p>
<p>RegEx — (\bCONTOSO-9\d{5}\b)</p></td>
</tr>
<tr class="odd">
<td align="left">Human Resources — Salary Data</td>
<td align="left">Documents that include the keyword (not case sensitive) Contoso AND either keyword (not case sensitive) Salary OR Compensation</td>
<td align="left"><p>KQL</p>
<p>RegEx</p></td>
<td align="left"><p>KQL — Contoso AND (Salary OR Compensation)</p>
<p>RegEx — (\bCONTOSO-9\d{5}\b)</p></td>
</tr>
<tr class="even">
<td align="left">Confidential</td>
<td align="left">Documents containing the phrase (not case sensitive) Contoso Confidential.</td>
<td align="left"><p>KQL</p>
<p>RegEx</p></td>
<td align="left"><p>KQL — Contoso Confidential</p>
<p>RegEx — (?i)(\bContoso Confidential\b)</p></td>
</tr>
<tr class="odd">
<td align="left">Highly confidential</td>
<td align="left">Documents that include either pharase (case sensitive) Contoso Secret or Secret-C#### where # represents any digit.</td>
<td align="left"><p>KQL</p>
<p>RegEx</p></td>
<td align="left"><p>KQL — Contoso Secret OR Secret-C*</p>
<p>RegEx — (?i)(\bContoso Secret\b)|(\bSecret-C\d{4}\b)</p></td>
</tr>
</tbody>
</table>
