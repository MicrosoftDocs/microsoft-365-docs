---
title: "Protect information subject to data privacy regulation"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 05/01/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- M365solutions
ms.custom: 
description: add.
---

# Protect information subject to data privacy regulation

A number of information protection controls can be employed in your subscription to help address data privacy compliance needs, including a number that are specific to General Data Protection Regulation (GDPR), HIPAA-HITECH (the United States health care privacy act), California Consumer Protection Act (CCPA), and the Brazil Data Protection Act (LGPD). 

These controls primarily fall into the following solution areas:

- Sensitivity labels
- Data loss prevention (DLP)
- Office message encryption (OME)
- Teams and sites access controls
 
## Data privacy regulations impacting information protection controls

A sample listing of data privacy regulations that may relate to information protection controls is provided below.

- GDPR Article 5(1)(f))
- GDPR Article (32)(1)(a)
- LGPD Article 46
- HIPAA-HITECH (45 CFR 164.312(e)(1))
- HIPAA-HITECH (45 C.F.R. 164.312(e)(2)(ii))

See the [assess data privacy risks and identify sensitive information article](information-protection-deploy-assess.md) for more information on each of the above.

In summary, the data privacy regulations generally call for the following in the area of information protection:

- Protect against loss or unauthorized access, usage and/or transmission
- Risk-based application of protective mechanisms
- Use of encryption where appropriate

Your organization may also wish to protect Microsoft 365 content for other purposes (i.e., other compliance needs or for business reasons), so establishing your information protection scheme for data privacy should be done as part of overall information protection planning, implementation and management.

To help you get started with an information protection scheme in Microsoft 365, inclusive of that applicable to data privacy regulations, a short list of related capabilities and improvement actions for Microsoft 365 are listed in the following section. This purposefully omits capabilities that are increasingly considered legacy relative to newer methods, such as SharePoint Online and OneDrive information rights management (IRM).

## Managing information protection in Microsoft 365 - Overview

Microsoft [information protection solutions](../compliance/protect-information.md) include a number of integrated capabilities across Microsoft 365, Azure, and Windows. In Microsoft 365, information protection solutions include:

- [Sensitive information types](../compliance/what-the-sensitive-information-types-look-for.md) (described in the [assess data privacy risks and identify sensitive information article](information-protection-deploy-assess.md))
- Sensitivity labels
   - Service/container-level
   - Client-side/content-level
   - Automated for data-at-rest in SharePoint Online and OneDrive
- Data Loss Prevention (DLP)
- Office Message Encryption (OME)

In addition, site and library level protection are important mechanisms to include in any protection scheme.

For additional information on other information protection capabilities outside of Microsoft 365, see:

- [Microsoft Cloud Application Security (MCAS)](https://docs.microsoft.com/cloud-app-security/)
- [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/what-is-information-protection)
- [Microsoft Endpoint Manager](https://www.microsoft.com/microsoft-365/microsoft-endpoint-manager)
- [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip)].

## Sensitivity Labels

[Sensitivity labels](../compliance/sensitivity-labels.md) from the Microsoft Information Protection framework let you classify and protect your organization's data, while making sure that user productivity and their ability to collaborate isn't hindered.

![Sensitivity labels in Microsoft 365](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-labels.png)
 
### Pre-requisites for Sensitivity Labels

The following activities are recommended prior to implementing any of the sensitivity label-based capabilities highlighted below, for data privacy purposes or otherwise.

1. Understand the modern sensitivity label capability in Microsoft 365 and business reasons for their application
   - **Business requirements.** Establish the business reasons for applying sensitivity labels in your enterprise. For example, your data privacy requirements for information protection.
   - **Modern sensitivity label capabilities.** Sensitivity labelling can get complex, so make sure to read the Sensitivity labels set of articles before getting started. 
   - **Key things to remember** – sensitivity labels are managed in one place (Microsoft Compliance admin center) but the targeting and application options vary significantly, namely:
      - There are sensitivity labels for sites, groups and Teams (container level – settings do not apply to content inside the container). These are published to users/groups of users who apply them when a site, group or Team is provisioned. 
      - There are sensitivity labels for active (opened) content. These are also published to user/groups of users, who either manually apply them, or they get applied automatically (based on policy settings) when: (a) the file is opened/edited/saved, either to the user’s desktop or a SharePoint site; or (b) an email is drafted and sent.
      - There are sensitivity labels for automatic application to files at rest in SharePoint Online and OneDrive (as well as to emails in transit through Exchange). These are targeted to either all sites or specific ones (no exclusion rules) as well as all or specific Exchange users (no exclusion rules) and automatically apply to the files at rest in these environments (or emails in transit). Thus, this may make sense as part of a more macro strategy but should be reconciled with other methods.

2. Rationalize modern sensitivity labelling with past or alternative methods 

- Azure Information Protection
  A new modern sensitivity labelling scheme may need to be reconciled with any existing [Azure Information Protection](../compliance/sensitivity-labels.md#sensitivity-labels-and-azure-information-protection) labeling implementation.
- OME
  If you are planning to use modern sensitivity labelling for email protection and existing email encryption methods like OME are in place, they can co-exist, but you should understand the scenarios in which either should be applied. Refer to [OME](#office-message-encryption-ome), which includes a table comparing modern sensitivity label-type protection with OME-based protection.

3. Plan for integration into a broader information protection scheme. On top of coexistence with OME, modern sensitivity labels can be used along-side capabilities like Microsoft 365 data loss prevention (DLP) and Microsoft Cloud App Security (refer to [Sensitivity Labels and Microsoft Cloud App Security(../compliance/sensitivity-labels#sensitivity-labels-and-microsoft-cloud-app-security)]) to achieve your data privacy-related information protection goals. 

4. Develop a sensitivity label classification and control scheme. A good article to help you with developing a sensitivity labelling classification scheme can be found on the Services Trust Portal: [Data Classification and Sensitivity Label Taxonomy](https://aka.ms/dataclassificationwhitepaper).

### General guidance

1. **Define your schema.** Before using technical capabilities to apply labels and protection, first work across your organization to define a classification schema. Your organization might already have a classification schema, which makes it easier to add personal data. This article includes an example sensitivity labelling scheme. You can use this as a starting point, if needed.
2. **Getting started.** Begin by deciding on the number and names of labels to implement. Do this activity without worrying about which technology to use and how labels will be applied. Apply this schema universally throughout your organization, including data that resides on premises and in other cloud services.
3. **Additional recommendations**  When designing and implementing policies, labels, and conditions, consider following these recommendations:
  - **Use existing classification schema (if any).** Many organizations already are using data classification in some form. Carefully evaluate the existing label schema and (if possible) use it as is. Using familiar labels that are recognizable to the end-user will drive adoption.
  - **Start small.** There is virtually no limit to the number of labels that can be created. However, large numbers of labels and sub-labels will negatively impact the adoption. Too many choices often means no choice at all.
  - **Use scenarios and use cases.** Identify common use cases within the organization and use scenarios derived from the the data privacy regulations you are subject to to verify if the envisioned label and classification configuration will work in practice.
  - **Question every request for a new label.** Does every scenario or use case really need a new label or can we use what we already have? Keeping the number of labels to a minimum improves adoption.
  - **Use sub-labels for key departments.** Some departments will have specific needs that require specific labels. Define these labels as sub-labels to an existing label and consider using scoped policies that are assigned to user groups instead of globally.
  - **Consider scoped policies.** Policies targeted at subsets of users will prevent "label overload". A scoped policy enables assigning role or department specific (sub-)labels to just employees that work for that specific department. 
  - **Use meaningful label names.** Try not to use jargon, standards, or acronyms as label names. Try to use names that resonate with the end user to improve adoption. Instead of using labels like PII, PCI, HIPAA, LBI, MBI and HBI consider names like Non-Business, Public, General, Confidential and Highly Confidential.

#### Example sensitivity label scheme

An example sensitivity-labelling scheme is provided here for reference. Yours may vary, but consider this table a good starting point (note that the sensitivity labels for sites type have a “_site” suffix appended to them to differentiate them from content-targeted labels).


| Type/target | Sensitivity label | Sub-label | Example settings |
|:-------|:-----|:-------|:-------|
| Site | Public-General_site | N/A | Public, external allowed, unmanaged devices allowed |
|  | Public-Internal_site | N/A | Public, no external sharing, managed devices only |
|  | Private-Confidential_site | N/A | Private, no external sharing, managed devices only |
| Content (client-side and service-side application) | Non-business | N/A | Data does not belong to your organization, is not encrypted and cannot be tracked or revoked. <br> Not to be used for personal data. |
|  | Public | N/A |Data produced for <your org> and is approved for public consumption, is not encrypted, and cannot be tracked or revoked.  |
|  | General | N/A | Internal <your org> data that is not meant for public consumption but can be shared internally and with guests and partners. No encryption, and cannot be tracked or revoked |
|  | Confidential | Recipients only | Data is classified and protected with “Do Not Forward” rules. Recipients can read but cannot forward, print, or copy content. |
|  |  | FTE | Data is classified and protected with “Do Not Forward” rules. Recipients (FTEs) can view, edit, reply, forward and print. Recipients can unprotect content with proper justification. |
|  |  | Extended | Data is classified and protected with “Do Not Forward” rules. Recipients (FTEs and non-employees) can read, edit, reply, forward and print. Recipients can unprotect content with proper justification. |
|  | Highly confidential | Recipients only | Data is classified and protected with “Do Not Forward” rules. Recipients can read but cannot forward, print, or copy content. <br> Conversation owner has full permission to their message and all replies. |
|  |  | FTE | Data is classified and protected with “Do Not Forward” rules. Recipients (FTEs) can view, edit, and reply. |
|  |  | Extended | Data is classified and protected with “Do Not Forward” rules. Recipients (FTEs and non-employees) can view, edit, and reply. |
|||||

### Create and deploy sensitivity labels for sites, groups and teams

When you create [sensitivity labels](../compliance/sensitivity-labels-teams-groups-sites.md) in the Microsoft 365 compliance center, you can now apply them to these containers: 

- Microsoft Teams sites 
- Microsoft 365 groups (formerly Office 365 groups)
- SharePoint Online sites

Use the following label settings to help protect the content in those containers:

- Privacy (public or private) of Microsoft 365 group-connected Teams sites
- External user access
- Access from unmanaged devices

For data privacy, containers that will be used for storing content with sensitive personal data, prevent external sharing, mark the files containing the data as private, and require managed devices. 

### Create and deploy sensitivity labels for content 

[Sensitivity labels](../compliance/get-started-with-sensitivity-labels.md) for content allow you to encrypt content, watermark content, and define other controls on content worked with in Office applications, including Outlook and Office on the web.
 
When you're ready to start protecting your organization's data by using sensitivity labels:

1. **Create the labels.** Create and name your sensitivity labels according to your organization's classification taxonomy for different sensitivity levels of content. For more information on developing a classification taxonomy, see the [Data Classification and Sensitivity Label Taxonomy white paper](https://aka.ms/dataclassificationwhitepaper).
2. **Define what each label can do.** Configure the protection settings you want associated with each label. For example, you might want lower sensitivity content (such as a "General" label) to have just a header or footer applied, while higher sensitivity content (such as a "Confidential" label) should have a watermark, encryption, and endpoint protection applied.
3. **Publish the labels.** After your sensitivity labels are configured, publish them by using a label policy. Decide which users and groups should have the labels and what policy settings to use. A single label is reusable — you define it once, and then you can include it in several label policies assigned to different users. 

The basic flow for deploying and applying sensitivity labels is: When you have published sensitivity labels from the Microsoft 365 compliance center, they start to appear in [Office apps](../compliance/sensitivity-labels-office-apps.md) for users to classify and protect data as it's created or edited.

![Sensitivity label deployment flow in Microsoft 365](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-label-flow.png)

For data privacy, you manually apply a sensitivity label with encryption and other rules to email or content containing sensitive personal information.

>[!Note]
>Sensitivity labels applied to email (with encryption) have some overlapping functionality with OME. See [Secure email scenarios comparison](#comparison).
>

### Client-side auto-labeling when users edit documents or compose (also reply or forward) emails

When you create a sensitivity label, you can [automatically assign that label](../compliance/apply-sensitivity-label-automatically.md) to content (including email) when it matches conditions that you specify.
The ability to apply sensitivity labels to content automatically is important because:

- You don't need to train your users when to use each of your classifications.
- You don't need to rely on users to classify all content correctly.
- Users no longer need to know about your policies—they can instead focus on their work.

This method supports recommending a label to users, as well as automatically applying a label. But in both cases, the user decides whether to accept or reject the label, to help ensure the correct labeling of content. For email specifically, you can also configure your sensitivity label policy to automatically apply the highest level of classification of your attachment to your email, if the user doesn’t: a) choose a label at the email level; or b) choose a lower classification on the email than what the attachment(s) classification says.
 
This client-side labeling has minimal delay for documents because the label can be applied even before the document is saved. However, not all client apps support auto-labeling. This capability is supported by the Azure Information Protection unified labeling client, and [some versions of Office apps](../compliance/sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps).

For configuration instructions, see [How to configure auto-labeling for Office apps](../compliance/sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps).

For data privacy, you auto-apply sensitivity labels for content containing sensitive personal information.

### Service-side auto-labeling when content is already saved

This method is referred to as auto classification with sensitivity labels. You might also hear it referred to as auto-labeling for data at rest (documents in SharePoint and OneDrive) and data in transit (email that is sent or received by Exchange). For Exchange, it doesn't include emails at rest (mailboxes).
 
Because this labeling is applied by the service itself rather than by user application, you don't need to worry about what apps users have and what version. As a result, this capability is immediately available throughout your organization and suitable for labeling at scale. Auto-labeling policies don't support recommended labeling because the user doesn't interact with the labeling process. Instead, the administrator runs the policies in simulation mode to help ensure the correct labeling of content before actually applying the label.

For configuration instructions, see [How to configure auto-labeling policies for SharePoint, OneDrive, and Exchange](../compliance/apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange).

For data privacy, for sites of concern, push sensitivity labels for automatic encryption of content containing sensitive personal information.

## Data loss prevention 

Microsoft 365 [data loss prevention (DLP)](../compliance/data-loss-prevention-policies.md) can be used as a measure to detect, warn and block risky sharing activities such as sharing of data containing personal information with an external user.

In summary, DLP allows you to:

- Identify and monitor risky sharing activities
- Educate users with in-context guidance to make the right decisions
- Enforce data use policies upon content without inhibiting productivity
- Integrate with classification & labeling to detect and protect data at egress

### Supported workloads for Microsoft 365 DLP

With a DLP policy in the Microsoft 365 Security & Compliance Center, you can identify, monitor, and automatically protect sensitive information across many locations in Microsoft 365, such as Exchange Online, SharePoint Online, OneDrive for Business, and Microsoft Teams.

For example, you can identify any document containing a credit card number that's stored in any OneDrive for Business site, or you can monitor just the OneDrive sites of specific people.

You can also monitor and protect sensitive information in the desktop versions of Excel, PowerPoint, and Word. These Office desktop programs include the ability to identify sensitive information and apply DLP policies. DLP provides continuous monitoring when people share content in these Office programs.

![Supported workloads for Microsoft 365 DLP](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-supported-workloads.png)

### Example use case for protecting personal data using DLP

In the use case shown in the diagram below, DLP is used to identify a document or email containing a health record and then automatically blocks access to that document (or blocks the email from being sent) and notifies the recipient with “policy tips”; and an alert is sent to the end-user and admin.

![Example use case for protecting personal data using DLP](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-dlp-example-use.png)
 
### Prerequisites for DLP – Planning your DLP scheme relative to other information protection and governance mechanisms in place

Your DLP scheme needs to be carefully plotted out based on: 

- Business requirements
- A risk-based assessment of the organization as highlighted in the [assess data privacy risks and identify sensitive information article](information-protection-deploy-assess.md)
- Other information protection and governance mechanisms in place or in planning for data privacy (or other) concerns. A few additional considerations to take into account in this sort of planning are highlighted below.

**Sensitive information types.** First in line will be what you’ve identified as “sensitive data” per your assessment work as outlined in the [assess data privacy risks and identify sensitive information article](information-protection-deploy-assess.md). DLP policy conditions can currently be predicated on both sensitive information types and retention labels, and Microsoft plans to provide the ability to add Sensitivity Labels as a condition in the future as well.

**Sensitivity Labels.** Although they can’t be used in DLP policy conditions, certain protection scenarios may be achievable through sensitivity labels alone, since they too can be auto-applied based on sensitive information types and prevent access per Sensitivity Label settings for a given label. If a robust sensitivity labelling scheme is in place (or planned), here’s where DLP should be considered as an augmentative protection mechanism:

- DLP can prevent sharing of files vs. sensitivity labels, which can just prevent access, though email with a “do not forward” will block an email send, just like a DLP policy applied to the email would, assuming it was configured with an equivalent rule (this may change in the future with Unified DLP, which moves away from using Exchange Transfer Rules (ETRs). 
- DLP has more granular levels of control in terms of rules, conditions, and actions.
- DLP policies can be applied to Teams chat and channel messages whereas sensitivity labels cannot because they’re applied to documents and email.

**Retention labels.** If you plan on specifying DLP conditions based on retention labels, your labelling scheme will need to be well-planned and stable enough to base any concerted DLP policy application dependent on them to be effective. Refer to the article 6. Govern information subject to data privacy regulation in your organization - Retention labels for more information on planning out this capability.

**Management and maintenance.** DLP policies require concerted planning, management, and response, requiring someone in the organization to operate and tune the capability, so make sure the DLP scheme you have in mind provides required, augmentative functionality relative to other methods available to you, including sensitivity labelling and other forms of information protection, including that available with Microsoft Cloud Application Security (MCAS).

### DLP Policies

DLP policies are configured in the Microsoft Compliance admin center and specify the level of protection, sensitive information type (SIT) the policy is looking for, and the target workloads. Their basic components consist of identifying the protection and the types of documents.

![DLP policy configuration in Microsoft 365](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-dlp-config.png)

### Example policy

Here is an example DLP policy for awareness of GDPR.

![Example use case for protecting personal data using DLP](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-dlp-example-use.png)

Refer to the detailed documentation for more information on creating and applying DLP policies. As noted previously, Microsoft plans to allow sensitivity labels as a condition parameter in the future.

### Protection levels for data privacy

The following table lists three configurations of increasing protection using DLP. The first configuration, “Awareness”, can be used as a starting point and minimum level of protection to address compliance needs like those related to data privacy regulations.

![Protection levels for data privacy](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-dlp-protection-levels.png)

>[!Note]
>As the levels of protection increase, the ability of users to share and access information will decrease in some cases, and could potentially impact their productivity or ability to complete day to day tasks.
>

Increasing protection levels by implementing policies that impact employees is typically accompanied by end user training, educating users on new security policies and procedures to help them continue to be productive in a more secure environment.

### Sensitivity labels and DLP

The following figure shows the various types of sensitivity labels working together with DLP to protect data privacy in a highly regulated environment.

![Sensitivity labels working with DLP](../media/information-protection-deploy-protect-information/information-protection-deploy-protect-information-sensitivity-lables-dlp.png)

The key steps are:

1. Regulatory and otherwise business requirements for data privacy are documented.
2. Target data sources, types and ownership are characterized relative to data privacy concerns.
3. An overall strategy to address requirements and protect/govern data privacy “hotspots” is established.
4. A phased action plan to address the data privacy control strategy is put into place.

Here are some example protection scenarios using integrated protection with Step 5:

Step 5A: 
- Sensitivity labels for content are published by an administrator to users and groups for manual or automatic application to content and email.
- User A applies the labels manually or automatically when interacting with content, with encryption or other settings applied.
- User A sends a protected email or file to user B, a guest user.

Step 5B: 
- DLP policy published by an administrator to User A blocks user A from sending the email and/or file to user B.

Step 5C:
- Sensitivity label with “owner can’t invite guests” setting is published to User A, who provisions a Team environment or SharePoint site. Another user of the site selectively tries sharing a file to user B, but DLP blocks it.

Step 5D: 
- Sensitivity label for auto-application to site content is published to one or more sites, providing another layer of protection, resulting in the example protected site shown in the graphic.


## Office message encryption (OME)

People often use email to exchange sensitive information, such as patient health information or customer and employee information. As a result, mailboxes can become repositories for large amounts of potentially sensitive information and information leakage can become a serious threat to your organization.

With [OME](../compliance/ome.md), your organization can send and receive encrypted email messages between people inside and outside your organization. OME works with Outlook.com, Yahoo!, Gmail, and other email services. Email message encryption helps ensure that only intended recipients can view message content.
 
For data privacy, you use OME to protect internal emails containing sensitive personal information.

In addition, [Advanced Message Encryption](https://docs.microsoft.com/office365/securitycompliance/ome-advanced-message-encryption) helps customers meet compliance obligations that require more flexible controls over external recipients and their access to encrypted emails. With Advanced Message Encryption in Microsoft 365, you can control sensitive emails shared outside the organization with automatic policies. 

For data privacy, you configure these policies to identify sensitive information types such as PII or Health IDs, or you can use keywords to enhance protection. Once you've configured the policies, you pair policies with custom branded email templates and then add an expiration date for extra control of emails that fit the policy. Also, admins can further control encrypted emails accessed externally through a secure web portal by revoking access to the mail at any time.

You can only revoke and set an expiration date for emails sent to external recipients. 

For data privacy, if sharing of email with an external party is critical, you can specify expiration parameters and can revoke emails, even if sent to external parties.

### Secure email scenarios comparison with OME and sensitivity labels
<a name="comparison"></a>

OME and sensitivity labels applied to email (with encryption) have some overlap, so it’s important to understand which scenarios either may apply to, as shown in this table.

| Scenario | Sensitivity Labels | OME |
|:-------|:-----|:-------|
| Internal + partners <br> Securely communicate and collaborate between internal users and trusted partners | Recommend – labels with fully customized classification and protection | Yes – Encrypt only or Do Not Forward protection with no classification |
| External parties <br> Securely communicate and collaborate with any external/consumer users | Yes – predefine recipients in label | Recommend – just-in-time protection based on recipients |
| Internal + partners, with expiration/revocation <br> Control access of mail and content with internal users and trusted partners with expiration and revocation | Recommend - fully customized protection with access duration, user can manually track and revoke files | No – no revocation or expiration for internal mail |
| External parties with expiration/revocation <br> Control access of mail and content with external/consumer users with expiration and revocation | Yes – user can manually track and revoke files | Recommend (E5) – user can revoke mail from Outlook* |
| Auto-labelling <br> Organization wants to automatically protect mail/attachments with specific sensitive content and/or specific recipients | Recommend (E5) - Auto-labeling in Exchange service and Outlook clients, augments ETR and DLP policy | Yes - ETR and DLP policy with Encrypt only or Do Not Forward protection |
||||

There will also be differences in end-user and admin experiences between these two methods.

## Teams with protection for highly sensitive data

For organizations that plan to store personal data (subject to data privacy regulations) in Teams, see [Configure a team with security isolation](secure-teams-security-isolation.md), which provides detailed guidance and configuration steps for:

- Identity and device access
- Creation of a private team
- Lockdown of underlying team site permissions
- A group-based sensitivity label with encryption
