---
title: "Learn about the free trial for Microsoft Information Protection"
f1.keywords:
- CSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
description: Learn about the free trial for Microsoft Information Protection (MIP) to classify and protect sensitive content.
---

# Learn about the free trial for Microsoft Information Protection

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

The free trial for Microsoft Information Protection from Microsoft 365 Compliance includes the following default configurations:

- Sensitivity labels and a sensitivity label policy
- Client-side auto-labeling
- Service-side auto-labeling
- Teams DLP
- Endpoint DLP


These default configurations help you get up and running quickly. You can use them as-is, make just a few changes, or fully customize them to better suit your business requirements. 

New customers: If you've had Microsoft 365 Compliance for less than 30 days, your tenant will come with all the listed default configurations. You can always disable, remove, or edit them.

Existing customers: If you've had Microsoft 365 Compliance for more than 30 days, you'll get the default configurations if you haven't yet configured an equivalent:

| Default configuration| Equivalent |
|:-----|:-----|
|Sensitivity labels and a sensitivity label policy | Published sensitivity labels |
|Client-side auto-labeling | One or more sensitivity labels configured to automatically apply (or recommend to users) in Office apps|
|Service-side auto-labeling | At least one auto-label policy that's turned on|
|Teams DLP | At least one DLP policy for Teams|
|Endpoint DLP | At least one DLP policy for Endpoint|

## Default sensitivity labels

When you don't have sensitivity labels that are published, we'll create the following labels for you:

| Label name| Label description for users |
|:-----|:-----|
|Personal | Non-business data, for personal use only |
|Public | Organization data that’s specifically prepared and approved for public consumption |
|General   | Organization data that is not intended for public consumption. However, this can be shared with external partners, as required. Examples include a company internal telephone directory, organizational charts, internal standards, and most internal communication. |
|General \ Anyone (unrestricted)  | Organization data that isn’t intended for public consumption but can be shared with external partners if appropriate. Examples include customer conversations that don’t include sensitive info or released marketing materials |
|General \ All Employees (unrestricted) | Non-business data, for personal use only |
|Confidential  | Sensitive business data that could cause damage to the business if shared with unauthorized people. Examples include contracts, security reports, forecast summaries, and sales account data |
|Confidential \ Anyone (unrestricted | Confidential data that doesn’t need to be encrypted. Use this option with care and with appropriate business justification. Make sure to protect the data through other means like DLP |
|Confidential \ All Employees | Confidential data that requires protection, which allows all employees full permission. Data owners can track and revoke content.  |
|Confidential \ Trusted People | Confidential data for internal/external sharing that can be reshared by trusted recipients.  |
|Highly Confidential | Very sensitive business data that would cause damage to the business if it was shared with unauthorized people. Examples include employee and customer information, passwords, source code, and pre-announced financial reports.  |
|Highly Confidential \ All Employees | Highly confidential data that allows all employees view, edit, and reply permissions to this content. Data owners can track and revoke content. |
|Highly Confidential \ Specified People | Highly Confidential data that requires protection and that can only be viewed by specified people, with limited rights. |

## Default sensitivity label policy

The default label policy ensures that your labels are published for information workers to start labeling their documents and emails with sensitivity labels.

Default label policy has the following conditions: 

Publish Label Schema 

Justification upon down grade 

General Label as Default for Emails and Documents 

## Client-side auto-labeling 

Client-side auto-labeling automatically suggest for information workers to label their documents with either Confidential Unrestricted (no protection) or Highly Confidential Unrestricted (no protection) when we detect credit card numbers in the documents they’re working with. This is just a suggestion and not a requirement but serves as a good first step for highlighting concerning documents and introducing information workers to the practice of labeling documents. 

Client-side auto-labeling only works for files in use. 

Default Client-side auto-labeling has the following conditions: 

If there are 1-9 instances of credit card numbers found in a document, recommend end user to label the document as Confidential Unrestricted (no protection) 

If there are >= 10 instances of credit card numbers found in a document, recommend end user to label the document as Highly Confidential Unrestricted (no protection) 

## Service-side auto-labeling 

Server-side auto-labeling helps label documents at rest, in transit, and in use. Our default server-side auto-labeling policy creates a policy in simulation mode, meaning it will not actually label your documents until you turn on the policy mode from simulation mode. Simulation mode allows you to preview what documents would get labeled in our policy to provide you with confidence in our labeling before you deploy to your tenant for actual labeling. 

Once turned on from simulation mode our server-side auto-labeling policy will automatically label documents with credit with either Confidential Unrestricted (no protection) or Highly Confidential Unrestricted (no protection) when we detect credit card numbers in the documents. 

Default Server-side auto-labeling has the following conditions: 

If there are 1-9 instances of credit card numbers found in a document, the document will get labeled as Confidential Unrestricted (no protection) 

If there are >= 10 instances of credit card numbers found in a document, the document will get labeled as Highly Confidential Unrestricted (no protection) 

 

## Teams DLP  

This policy detects the presence of credit card numbers in All Teams chats and channel messages. When this sensitive information is detected, admins will get a low severity Alert notification. Users would not see any policy tip. However, you can edit these actions anytime. 

## Endpoint DLP 

This policy detects the presence of credit card numbers on all Endpoint devices and audits (does not block) the following: 

Upload to cloud service domains or access by unallowed browsers 

copy to clipboard, USB, or network share 

Access by unallowed apps 

Print 

Copy or move using unallowed Bluetooth app 

Remote desktop services 

If content that contains 10 or more instances of credit cards match an activity above, trigger a medium severity alert to admins. 

This policy is unintrusive to end users, as they would not see any policy tip, but admins will have records of all suspicious activity. You can edit these actions anytime. 