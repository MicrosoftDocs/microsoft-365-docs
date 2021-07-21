---
title: "Data Loss Prevention policy reference"
f1.keywords: CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- SPO160
- MET150
ms.assetid: 6501b5ef-6bf7-43df-b60d-f65781847d6c
ms.collection:
- M365-security-compliance
- SPO_Content
recommendations: false
description: "DLP policy component and configuration reference"
ms.custom: seo-marvel-apr2021
---
# Data Loss Prevention policy reference

Data loss prevention (DLP) policies have many components that can be configured. In order to create an effective policy, you need to understand what the purpose of each component is and how its configuration alters the behavior of the policy. This article provides a detailed anatomy of a DLP policy.

### Policy templates 

DLP policy templates are pre-sorted into four categories:

- ones that can detect and protect types of **Financial** information
- ones that can detect and protect types of **Medical and health** information
- ones that can detect and protect types of **Privacy** information
- a **Custom** template that you can use to build your own policy if one of the others doesn't meet your organizations needs.

This table lists all policy templates and the sensitive information types (SIT) that they cover. 

Current as of 6/23/2021

|Category| Template | SIT |
|---------|---------|---------|
|Financial| Australia Financial Data| -	[SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia bank account number](sensitive-information-type-entity-definitions.md#australia-bank-account-number) </br> - [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| Canada Financial data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> -	[Canada bank account number](sensitive-information-type-entity-definitions.md#canada-bank-account-number)|
|Financial| France Financial data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number)|
|Financial| Germany Financial Data |- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number)|
|Financial| Israel Financial Data |- [Israel bank account number](sensitive-information-type-entity-definitions.md#israel-bank-account-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| Japan Financial Data |- [Japan bank account number](sensitive-information-type-entity-definitions.md#japan-bank-account-number) </br> - [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| PCI Data Security Standard (PCI DSS)|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number)|
|Financial| Saudi Arabia Anti-Cyber Crime Law|- [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [International banking account number (IBAN)](sensitive-information-type-entity-definitions.md#international-banking-account-number-iban) |
|Financial| Saudi Arabia Financial Data	|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code) </br> - [International banking account number (IBAN)](sensitive-information-type-entity-definitions.md#international-banking-account-number-iban)|
|Financial| UK Financial Data|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Financial| US Financial Data|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [ABA Routing Number](sensitive-information-type-entity-definitions.md#aba-routing-number)|
|Financial| U.S. Federal Trade Commission (FTC) Consumer Rules|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [ABA Routing Number](sensitive-information-type-entity-definitions.md#aba-routing-number)|
|Financial| U.S. Gramm-Leach-Bliley Act (GLBA) Enhanced|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [U.S. / U.K. passport number](sensitive-information-type-entity-definitions.md#us--uk-passport-number) </br> -[U.S. driver's license number](sensitive-information-type-entity-definitions.md#us-drivers-license-number)|
|Financial| U.S. Gramm-Leach-Bliley Act (GLBA)|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Medical and health| Australia Health Records Act (HRIP Act) Enhanced |- [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia medical account number](sensitive-information-type-entity-definitions.md#australia-medical-account-number)|
|Medical and health| Australia Health Records Act (HRIP Act)|- [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia medical account number](sensitive-information-type-entity-definitions.md#australia-medical-account-number)|
|Medical and health| Canada Health Information Act (HIA) |- [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Medical and health| Canada Personal Health Information Act (PHIA) Manitoba|- [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Medical and health| Canada Personal Health Act (PHIPA) Ontario |- [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Medical and health| U.K. Access to Medical Reports Act|- [U.K. national health service number](sensitive-information-type-entity-definitions.md#uk-national-health-service-number) </br> - [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino)|
|Medical and health| U.S. Health Insurance Act (HIPAA) Enhanced|</br> - [International classification of diseases (ICD-9-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-9-cm) </br> - [International classification of diseases (ICD-10-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-10-cm) |
|Medical and health| U.S. Health Insurance Act (HIPAA)| - [International classification of diseases (ICD-9-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-9-cm) </br> - [International classification of diseases (ICD-10-CM)](sensitive-information-type-entity-definitions.md#international-classification-of-diseases-icd-10-cm)|
|Privacy| Australia Privacy Act Enhanced|- [Australia driver's license number](sensitive-information-type-entity-definitions.md#australia-drivers-license-number) </br> - [Australia passport number](sensitive-information-type-entity-definitions.md#australia-passport-number)|
|Privacy| Australia Privacy Act|- [Australia driver's license number](sensitive-information-type-entity-definitions.md#australia-drivers-license-number) </br> - [Australia passport number](sensitive-information-type-entity-definitions.md#australia-passport-number)|
|Privacy| Australia Personally Identifiable Information (PII) Data|- [Australia tax file number](sensitive-information-type-entity-definitions.md#australia-tax-file-number) </br> - [Australia driver's license number](sensitive-information-type-entity-definitions.md#australia-drivers-license-number)|
|Privacy| Canada Personally Identifiable Information (PII) Data|- [Canada driver's license number](sensitive-information-type-entity-definitions.md#canada-drivers-license-number)</br> - [Canada bank account number](sensitive-information-type-entity-definitions.md#canada-bank-account-number) </br> - [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Privacy| Canada Personal Information Protection Act (PIPA)|- [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Privacy| Canada Personal Information Protection Act (PIPEDA)|- [Australia passport number](sensitive-information-type-entity-definitions.md#australia-passport-number) </br> [Canada driver's license number](sensitive-information-type-entity-definitions.md#canada-drivers-license-number) </br> - [Canada bank account number](sensitive-information-type-entity-definitions.md#canada-bank-account-number) </br> - [Canada passport number](sensitive-information-type-entity-definitions.md#canada-passport-number)</br> - [Canada social insurance number](sensitive-information-type-entity-definitions.md#canada-social-insurance-number) </br> - [Canada health service number](sensitive-information-type-entity-definitions.md#canada-health-service-number) </br> - [Canada Personal Health Identification Number](sensitive-information-type-entity-definitions.md#canada-personal-health-identification-number-phin)|
|Privacy| France Data Protection Act|- [France national id card (CNI)](sensitive-information-type-entity-definitions.md#france-national-id-card-cni) </br> - [France social security number (INSEE)](sensitive-information-type-entity-definitions.md#france-social-security-number-insee)|
|Privacy| France Personally Identifiable Information (PII) Data|- [France social security number (INSEE)](sensitive-information-type-entity-definitions.md#france-social-security-number-insee) </br> - [France driver's license number](sensitive-information-type-entity-definitions.md#france-drivers-license-number) </br> - [France passport number](sensitive-information-type-entity-definitions.md#france-passport-number) </br> - [France national id card (CNI)](sensitive-information-type-entity-definitions.md#france-national-id-card-cni)|
|Privacy| General Data Protection Regulation (GDPR) Enhanced|- [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number) </br> - [EU driver's license number](sensitive-information-type-entity-definitions.md#eu-drivers-license-number) </br> - [EU national identification number](sensitive-information-type-entity-definitions.md#eu-national-identification-number) </br> - [EU passport number](sensitive-information-type-entity-definitions.md#eu-passport-number) </br> - [EU social security number or equivalent identification](sensitive-information-type-entity-definitions.md#eu-social-security-number-or-equivalent-identification) </br> - [EU Tax identification number](sensitive-information-type-entity-definitions.md#eu-tax-identification-number)| 
|Privacy| General Data Protection Regulation (GDPR)|- [EU debit card number](sensitive-information-type-entity-definitions.md#eu-debit-card-number) </br> - [EU driver's license number](sensitive-information-type-entity-definitions.md#eu-drivers-license-number) </br> - [EU national identification number](sensitive-information-type-entity-definitions.md#eu-national-identification-number)</br> - [EU passport number](sensitive-information-type-entity-definitions.md#eu-passport-number) </br> - [EU social security number or equivalent identification](sensitive-information-type-entity-definitions.md#eu-social-security-number-or-equivalent-identification)</br> - [EU Tax identification number](sensitive-information-type-entity-definitions.md#eu-tax-identification-number)|
|Privacy| Germany Personally Identifiable Information (PII) Data|- [Germany driver's license number](sensitive-information-type-entity-definitions.md#germany-drivers-license-number) </br> - [Germany passport number](sensitive-information-type-entity-definitions.md#germany-passport-number)| 
|Privacy| Israel Personally Identifiable Information (PII) Data|- [Israel national identification number](sensitive-information-type-entity-definitions.md#israel-national-identification-number)| 
|Privacy| Israel Protection of Privacy|- [Israel national identification number](sensitive-information-type-entity-definitions.md#israel-national-identification-number)</br> - [Israel bank account number](sensitive-information-type-entity-definitions.md#israel-bank-account-number)|
|Privacy| Japan Personally Identifiable Information (PII) Data enhanced|- [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin)</br> - [Japan My Number - Personal](sensitive-information-type-entity-definitions.md#japan-my-number---personal)</br> - [Japan passport number](sensitive-information-type-entity-definitions.md#japan-passport-number)</br> - [Japan driver's license number](sensitive-information-type-entity-definitions.md#japan-drivers-license-number)|
|Privacy| Japan Personally Identifiable Information (PII) Data|- [Japan resident registration number](sensitive-information-type-entity-definitions.md#japan-resident-registration-number) </br> - [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin)|
|Privacy| Japan Protection of Personal Information Enhanced|- [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin) </br> - [Japan My Number - Personal](sensitive-information-type-entity-definitions.md#japan-my-number---personal)</br> - [Japan passport number](sensitive-information-type-entity-definitions.md#japan-passport-number) </br> - [Japan driver's license number](sensitive-information-type-entity-definitions.md#japan-drivers-license-number)| 
|Privacy| Japan Protection of Personal Information|- [Japan resident registration number](sensitive-information-type-entity-definitions.md#japan-resident-registration-number)</br> - [Japan Social Insurance Number (SIN)](sensitive-information-type-entity-definitions.md#japan-social-insurance-number-sin)|
|Privacy| Saudi Arabia Personally Identifiable (PII) Data|- [Saudi Arabia National ID](sensitive-information-type-entity-definitions.md#saudi-arabia-national-id)|
|Privacy| U.K. Data Protection Act|- [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino) </br> - [U.S. / U.K. passport number](sensitive-information-type-entity-definitions.md#us--uk-passport-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Privacy| U.K. Privacy and Electronic Communications Regulations|- [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Privacy| U.K. Personally Identifiable Information (PII) Data|- [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino) </br> - [U.S. / U.K. passport number](sensitive-information-type-entity-definitions.md#us--uk-passport-number)|
|Privacy| U.K. Personal Information Online Code of Practice (PIOCP)|- [U.K. national insurance number (NINO)](sensitive-information-type-entity-definitions.md#uk-national-insurance-number-nino) </br> - [U.K. national health service number](sensitive-information-type-entity-definitions.md#uk-national-health-service-number) </br> - [SWIFT code](sensitive-information-type-entity-definitions.md#swift-code)|
|Privacy| U.S Patriot Act Enhanced|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Privacy| U.S. Patriot Act|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> - [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Privacy| U.S. Personally Identifiable Information (PII) Data Enhanced|- [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [U.S. / U.K. passport number](sensitive-information-type-entity-definitions.md#us--uk-passport-number)|
|Privacy| U.S. Personally Identifiable Information (PII) Data|- [U.S. Individual Taxpayer Identification Number (ITIN)](sensitive-information-type-entity-definitions.md#us-individual-taxpayer-identification-number-itin)  </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)</br> - [U.S. / U.K. passport number](sensitive-information-type-entity-definitions.md#us--uk-passport-number)|
|Privacy| U.S. State Breach Notification Laws Enhanced|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> -[U.S. driver's license number](sensitive-information-type-entity-definitions.md#us-drivers-license-number) </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn) </br> - [U.S. / U.K. passport number](sensitive-information-type-entity-definitions.md#us--uk-passport-number)|
|Privacy| U.S. State Breach Notification Laws|- [Credit card number](sensitive-information-type-entity-definitions.md#credit-card-number) </br> - [U.S. bank account number](sensitive-information-type-entity-definitions.md#us-bank-account-number)</br> -[U.S. driver's license number](sensitive-information-type-entity-definitions.md#us-drivers-license-number) </br> - [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)|
|Privacy| U.S. State Social Security Number Confidentiality Laws|- [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn)| 



### Locations

<!--This section covers a mapping of data-at-rest, data-in-use, and data-in-motion to the locations/workloads. It introduces the idea that the options that are selected here have a direct impact on the UI that they will encounter further along in the policy creation/edit flow. It will also cover the dependencies between locations (eg. Teams chat and channel requires SharePoint and ODB). It will also include the impact of the different scope settings. eg. If you want the policy to be applied to DEF, but not HIJ, you should configure your include/exclude scopes like this......--> 


A DLP policy can find and protect items that contain sensitive information across multiple locations.


|Location  |Include/Exclude scope  |data state  |additional pre-requisites |
|---------|---------|---------|---------|
|Exchange email online |distribution group | - data-at-rest </br> - data-in-use| no |
|SharePoint online sites   |sites       | - data-at-rest </br> - data-in-use | no|
|OneDrive for Business accounts| account or distribution group |- data-at-rest </br> - data-in-use|no|
|Teams chat and channel messages     | account or distribution group |- data-in-motion </br> data-in-use |  no       |
|Microsoft Cloud App Security (MCAS)   | cloud app instance       |- data-at-rest         | - [Use data loss prevention policies for non-Microsoft cloud apps (preview)](dlp-use-policies-non-microsoft-cloud-apps.md#use-data-loss-prevention-policies-for-non-microsoft-cloud-apps-preview)        |
|Devices  |user or group         |-data-at-rest </br> - data-in-use </br> - data-in-motion         |- [Learn about Microsoft 365 Endpoint data loss prevention](endpoint-dlp-learn-about.md#learn-about-microsoft-365-endpoint-data-loss-prevention) </br> [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md#get-started-with-endpoint-data-loss-prevention) </br> [Configure device proxy and internet connection settings for Endpoint DLP](endpoint-dlp-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-endpoint-dlp)        |
|On-premises repositories (file shares and SharePoint)    |repository         |- data-at-rest         | - [Learn about the Microsoft 365 data loss prevention on-premises scanner (preview)](dlp-on-premises-scanner-learn.md#learn-about-the-microsoft-365-data-loss-prevention-on-premises-scanner-preview) </br> - [Get started with the data loss prevention on-premises scanner (preview)](dlp-on-premises-scanner-get-started.md#get-started-with-the-data-loss-prevention-on-premises-scanner-preview)         |

If you choose to include specific distribution groups in Exchange, the DLP policy will be scoped only to the members of that group. Similarly excluding a distribution group will exclude all the members of that distribution group from policy evaluation. You can choose to scope a policy to the members of distribution lists, dynamic distribution groups, and security groups. A DLP policy can contain no more than 50 such inclusions and exclusions.

If you choose to include or exclude specific SharePoint sites or OneDrive accounts, a DLP policy can contain no more than 100 such inclusions and exclusions. Although this limit exists, you can exceed this limit by applying either an org-wide policy or a policy that applies to entire locations.

If you choose to include or exclude specific OneDrive accounts or groups, a DLP policy can contain no more than 100 user accounts or 50 groups as inclusion or exclusion.

#### Location support for how content can be defined

DLP policies detect sensitive items by matching them to a sensitive information type (SIT), to a sensitivity label, or a retention label. Each location supports different methods of defining sensitive content. Additionally, when you combine locations in a policy, how the content can be defined can change from how it can be defined by a single location. 

> [!IMPORTANT]
> When you select multiple locations for a policy, a "no" value for a content definition category takes precedence over "yes" value. For example, when you select SharePoint sites only, the policy will support detecting sensitive items by one or more of SIT, by sensitivity label, or by retention label. But, when you select SharePoint sites ***and*** Teams chat and channel messages locations, the policy will only support detecting sensitive items by SIT. 

|location|	content can be defined by SIT|	content can be defined sensitivity label|	content can be defined by retention label|
|---------|---------|---------|---------|
|Exchange email online|yes|	yes|	no|
|SharePoint online sites|	yes|	yes|	yes|
|OneDrive for Business accounts|	yes|	yes|	yes|
|Teams Chat and Channel messages |	yes|	no|	no|
|Devices	|yes |	yes| 	no|
|Microsoft Cloud App Security|	yes|	yes|	yes|
|On-Premises repositories|	yes|	yes|	no|

### Rules

<!--This section introduces the classifications of content that, when detected, can be protected. Link out to [Learn about sensitive information types]() and [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md#sensitive-information-type-entity-definitions) as well as labels (cross referenced by supporting workload). It will touch on the purpose of multiple conditions, confidence levels (link out to [more on confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels)) and confidence levels video. How to use the confidence level to change the behavior of a policy in conjunction with the instance count.  eg. if you want your policy to trigger when it encounters situation DEF, set your conditions like HIJ.-->
<!--
- What is a rule in the context of a Policy?
- when and why should I have more than one rule?
- The purpose of rule groups
- How do I tune the behavior of a Policy through the tuning of rules
- what's in a rule-->

Rules are the business logic of DLP policies. They consist of:

- [**Conditions**](#conditions) that when matched, trigger the policy
- [**Exceptions**](#exceptions) to the conditions
- [**Actions**](#actions) to take when the policy is triggered
- [**User notifications**](#user-notifications) to inform your users when they are doing something that triggers a policy and help educate them on how your org wants sensitive information treated
- [**User Overrides**](#user-overrides) when configured by an admin, allow users to selectively override a blocking action
- [**Incident Reports**](#incident-reports) that notify admins and other key stakeholders when a rule match occurs
- [**Additional Options**](#additional-options) which define the priority for rule evaluation and can stop further rule and policy processing.

 A policy contains one or more rules. Rules are executed sequentially, starting with the highest-priority rule in each policy.

#### The priority by which rules are processed

Each rule is assigned a priority in the order in which it's created — meaning, the rule created first has first priority, the rule created second has second priority, and so on. 
  
![Rules in priority order](../media/dlp-rules-in-priority-order.png)

When content is evaluated against rules, the rules are processed in priority order. If content matches multiple rules, the first rule evaluated that has the most restrictive action is enforced. For example, if content matches all of the following rules, Rule 3 is enforced because it's the highest priority, most restrictive rule:
  
- Rule 1: only notifies users
- Rule 2: notifies users, restricts access, and allows user overrides
- Rule 3: notifies users, restricts access, and does not allow user overrides
- Rule 4: restricts access

Rules 1, 2, and 4 would be evaluated, but not applied. In this example, matches for all of the rules are recorded in the audit logs and shown in the DLP reports, even though only the most restrictive rule is applied.

You can use a rule to meet a specific protection requirement, and then use a DLP policy to group together common protection requirements, such as all of the rules needed to comply with a specific regulation.
  
For example, you might have a DLP policy that helps you detect the presence of information subject to the Health Insurance Portability and Accountability Act (HIPAA). This DLP policy could help protect HIPAA data (the what) across all SharePoint Online sites and all OneDrive for Business sites (the where) by finding any document containing this sensitive information that's shared with people outside your organization (the conditions) and then blocking access to the document and sending a notification (the actions). These requirements are stored as individual rules and grouped together as a DLP policy to simplify management and reporting.
  
![Diagram shows that DLP policy contains locations and rules](../media/c006860c-2d00-42cb-aaa4-5b5638d139f7.png)

#### Conditions

Conditions are inclusive and are where you define what you want the rule to look for and context in which those items are being used. They tell the rule &#8212; when you find an item that looks like *this* and is being used like *that* &#8212; it's a match and the rest of the actions in the policy should be taken on it. You can use conditions to assign different actions to different risk levels. For example, sensitive content shared internally might be lower risk and require fewer actions than sensitive content shared with people outside the organization.

> [!NOTE]
> Users who have non-guest accounts in a host organization's Active Directory or Azure Active Directory tenant are considered as people inside the organization. 

##### Content contains

 All locations support the **Content contains** contains condition. You can select multiple instances of each content type and further refine the conditions by using the **Any of these** (logical OR) or **All of these** (logical AND) operators:

- [sensitive information types](sensitive-information-type-learn-about.md#learn-about-sensitive-information-types)
- [sensitivity labels](sensitivity-labels.md)
- [retention labels](#using-a-retention-label-as-a-condition-in-a-dlp-policy)

depending on the [location(s)](#location-support-for-how-content-can-be-defined) you choose to apply the policy to. 

SITs have a pre-defined [**confidence level**](https://www.microsoft.com/videoplayer/embed/RE4Hx60) which you can alter if needed. For more information, see [More on confidence levels](sensitive-information-type-learn-about.md#more-on-confidence-levels). SITs also have a pre-defined range of occurrences of a SIT that must be found to match the rule, for example, if the **Instance count** range is set from one to nine, the SIT must occur at least once and up to nine times for the rule to match.

The rule will only look for the presence of any **sensitivity labels** and **retention labels** you pick. 

##### Condition context

The available context options change depending on which location you choose. If you select multiple locations, only the conditions that the locations have in common are available.

###### Conditions Exchange supports:

- Content contains
- Content is shared from Microsoft 365
- Content is received from
- Sender IP address is
- Has sender overridden the policy tip
- Sender is
- Sender domain is
- Sender address contains words
- Sender address contains patterns
- Sender AD Attribute contains words or phrases
- Sender AD Attribute matches patterns
- Sender is a member of
- Any email attachment's content could not be scanned
- Any email attachment's content didn't complete scanning
- Attachment is password protected
- File extension is
- Recipient is member of
- Recipient domain is
- Recipient is
- Recipient address contains words
- Recipient address matches patterns
- Recipient AD Attribute contains words or phrases
- Recipient AD Attribute matches patterns
- Document name contains words or phrases
- Document name matches patterns
- Document property is
- Document size equals or is greater than
- Document content contains words or phrases
- Document content matches patterns
- Subject contains words or phrases
- Subject matches patterns
- Subject or Body contains words or phrases
- Subject or body matches patterns
- Content character set contains words
- Header contains words or phrases
- Header matches patterns
- Message size equals or is greater than
- Message type is
- Message importance is

###### Conditions SharePoint supports
 
- Content contains
- Content is shared from Microsoft 365
- File extension is
- Document property is

###### Conditions OneDrive accounts supports

- Content contains
- Content is shared from Microsoft 365
- File extension is
- Document property is

###### Conditions Teams chat and channel messages support

- Content contains
- Content is shared from Microsoft 365

###### Conditions Devices supports

- content contains
- See, [Endpoint activities you can monitor and take action on](endpoint-dlp-learn-about.md#endpoint-activities-you-can-monitor-and-take-action-on)

###### Conditions Microsoft Cloud App Security support

- Content contains
- Content is shared from Microsoft 365

###### On-premises repositories

- Content contains
- File extension is
- Document property is

##### Condition groups

Sometimes you need a rule to only identify one thing, like all content that contains a U.S. Social Security Number, which is defined by a single SIT. But in many scenarios, where the types of items you are trying to identify are more complex and therefore harder to define, more flexibility in defining conditions is required.

For example, to identify content subject to the U.S. Health Insurance Act (HIPAA), you need to look for:
  
- Content that contains specific types of sensitive information, such as a U.S. Social Security Number or Drug Enforcement Agency (DEA) Number.
    
    AND
    
- Content that's more difficult to identify, such as communications about a patient's care or descriptions of medical services provided. Identifying this content requires matching keywords from very large keyword lists, such as the International Classification of Diseases (ICD-9-CM or ICD-10-CM).
    
You can identify this type of data by grouping conditions and using logical operators (AND, OR) between the groups.
    
For the **U.S. Health Insurance Act (HIPPA)**, conditions are grouped like this:

![HIPPA policy conditions](../media/dlp-rules-condition-groups-booleans.png)

The first group contains the SITs that identify and individual and the second group contains the SITs that identify medical diagnosis.

#### Exceptions

In rules, exceptions define conditions that are used to exclude an item from the policy. Logically, exclusive conditions that are evaluated after the inclusive conditions and context. They tell the rule &#8212; when you find an item that looks like *this* and is being used like *that* its a match and the rest of the actions in the policy should be taken on it ***except if***... &#8212; 

For example, keeping with the HIPPA policy, we could modify the rule to exclude any item that contains a Belgium drivers license number, like this:

![HIPPA policy with exclusions](../media/dlp-rule-exceptions.png)

The exceptions conditions that are supported by location are identical to all the inclusion conditions with the only difference being the prepending of "Except if" to each supported condition.

Just as all locations support the inclusive condition:

- Content contains

the exception would be:

- **Except if** content contains 

#### Actions

Any item that makes it through the inclusive ***conditions*** and exclusive ***exceptions*** filters will have any ***actions*** that are defined in the rule applied to it. You'll have to configure the required options to support the action. For example, if you select Exchange with the **Restrict access or encrypt the content in Microsoft 365 locations** action you need to choose from these options:

- Block users from accessing shared SharePoint, OneDrive, and Teams content
    - Block everyone. Only the content owner, last modifier, and site admin will continue to have access
    - Block only people from outside your organization. Users inside your organization will continue to have access.
- Encrypt email messages (applies only to content in Exchange)

The actions that are available in a rule are dependent on the locations that have been selected. If you select only one location for the policy to be applied to, the available actions are listed below.

##### Exchange location actions:

- Restrict access or encrypt the content in Microsoft 365 locations
- Set headers
- Remove header
- Redirect the message to specific users
- Forward the message for approval to sender's manager
- Forward the message for approval to specific approvers
- Add recipient to the To box
- Add recipient to the Cc box
- Add recipient to the Bcc box
- Add the sender's manager as recipient
- Removed O365 Message Encryption and rights protection
- Prepend Email Subject
- Add HTML Disclaimer

##### SharePoint sites location actions:

- Restrict access or encrypt the content in Microsoft 365 locations

##### OneDrive account locations:

- Restrict access or encrypt the content in Microsoft 365 locations

##### Teams Chat and Channel Messages

- Restrict access or encrypt the content in Microsoft 365 locations

##### Devices:

- Audit or restrict activities on Windows devices

> [!NOTE]
> Devices gives the option to **Audit** an activity, **Block** an activity, or **Block with override** an activity.

The devices location provide a number of sub-activities (conditions) and actions. To learn more, see [Endpoint activities you can monitor and take action on](endpoint-dlp-learn-about.md#endpoint-activities-you-can-monitor-and-take-action-on). 

##### Microsoft Cloud App Security:

- Restrict access or encrypt the content in Microsoft 365 locations
- Restrict Third Party Apps

##### On-premises repositories:

- Restrict access or remove on-premises files

##### Actions available when you combine locations

If you select Exchange and any other single location for the policy to be applied to, the

- Restrict access or encrypt the content in Microsoft 365 locations

and

- all actions for the non-Exchange location

actions will be available.

If you select two or more non-Exchange locations for the policy to be applied to, the

- Restrict access or encrypt the content in Microsoft 365 locations

AND

- all actions for non-Exchange locations 

actions will be available.

For example, if you select Exchange and Devices as locations, these actions will be available:

- Restrict access or encrypt the content in Microsoft 365 locations
- Audit or restrict activities on Windows devices

If you select Devices and Microsoft Cloud App Security, these actions will be available:

- Restrict access or encrypt the content in Microsoft 365 locations
- Audit or restrict activities on Windows devices
- Restrict Third Party Apps

Whether actions take effect or not depends on how you configure the mode of the policy. You can choose to run the policy in test mode with or without showing policy tip by selecting the **Test it out first** option. You choose to run the policy as soon as an hour after it is created by selecting the **Turn it on right away** option, or you can choose to just save it and come back to it later by selecting the **Keep it off** option. 


<!-- This section needs to explain that the actions available depend on the locations selected AND that the observed behavior of a policy is produced through an interaction of the configured actions AND the configured status (off, test, apply) of a policy. It will detail the purpose of each of the available actions and the location/desired outcome interaction and provide examples eg. how to use the Restrict Third Party apps in the context of a policy that is applied to endpoints so that users can't use a upload content to a third party site or the interaction of on-premises scanner with restrict access or remove on-premises files.  Also what happens when I select multiple locations? provide abundant examples for most common scenarios-->


#### User notifications and policy tips

<!--This section introduces the business need for user notifications, what they are, their benefit, how to use them, how to customize them, and links out to 

- https://docs.microsoft.com/en-us/microsoft-365/compliance/use-notifications-and-policy-tips?view=o365-worldwide
- https://docs.microsoft.com/en-us/microsoft-365/compliance/dlp-policy-tips-reference?view=o365-worldwide

for where they are used/expected behavior-->

<!--You can use notifications and overrides to educate your users about DLP policies and help them remain compliant without blocking their work. For example, if a user tries to share a document containing sensitive information, a DLP policy can both send them an email notification and show them a policy tip in the context of the document library that allows them to override the policy if they have a business justification.-->

When a user attempts an action on a sensitive item in a context that meets the conditions and exceptions of a rule, you can let them know about it through user notification emails and in context policy tips popups. These notifications are useful because they increase awareness and help educate people about your organization's DLP policies. 

For example, content like an Excel workbook on a OneDrive for Business site that contains personally identifiable information (PII) and is shared with an external user.

![Message bar shows policy tip in Excel 2016](../media/7002ff54-1656-4a6c-993f-37427d6508c8.png)

> [!NOTE]
> Notification emails are sent unprotected.

You can also give people the option to override the policy, so that they're not blocked if they have a valid business need or if the policy is detecting a false positive.

The user notifications and policy tips configuration options vary depending on the monitoring locations you selected. If you selected:

- Exchange
- SharePoint
- OneDrive
- Teams Chat and Channel
- MCAS


You can enable/disable user notifications for various Microsoft apps, see [Data Loss Prevention policy tips reference](dlp-policy-tips-reference.md#data-loss-prevention-policy-tips-reference)
- You can enable/disable **Notifying users in Office 365 service with a policy tip.
    - email notifications to the user who sen, shared, or last modified the content
    OR
    - notify specific people

as well as choosing to customize the email text, subject and the policy tip text.

![User notification and policy tip configuration options that are available for Exchange, SharePoint, OneDrive, Teams Chat and Channel, and MCAS](../media/dlp-user-notification-non-devices.png)

If you selected Devices only, you will get all the same options that are available for Exchange, SharePoint, OneDrive, Teams Chat and Channel and MCAS plus the option to customize the notification title and content that appears on the Windows 10 device.

![User notification and policy tip configuration options that are available for Devices](../media/dlp-user-notification-devices.png)  

> [!NOTE]
> User notifications and policy tips are not available for the On-premises location

To learn more about user notification and policy tip configuration and use, including how to customize the notification and tip text, see 
- [Send email notifications and show policy tips for DLP policies](use-notifications-and-policy-tips.md#send-email-notifications-and-show-policy-tips-for-dlp-policies)
- [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference)

> [!NOTE]
> Only the policy tip from the highest priority, most restrictive rule will be shown. For example, a policy tip from a rule that blocks access to content will be shown over a policy tip from a rule that simply sends a notification. This prevents people from seeing a cascade of policy tips.
  
<!--The email can notify the person who sent, shared, or last modified the content and, for site content, the primary site collection administrator and document owner. In addition, you can add or remove whomever you choose from the email notification.
  
In addition to sending an email notification, a user notification displays a policy tip:
  
- In Outlook and Outlook on the web.
    
- For the document on a SharePoint Online or OneDrive for Business site.
    
- In Excel, PowerPoint, and Word, when the document is stored on a site included in a DLP policy.
    
The email notification and policy tip explain why content conflicts with a DLP policy. If you choose, the email notification and policy tip can allow users to override a rule by reporting a false positive or providing a business justification. This can help you educate users about your DLP policies and enforce them without preventing people from doing their work. Information about overrides and false positives is also logged for reporting (see below about the DLP reports) and included in the incident reports (next section), so that the compliance officer can regularly review this information.
  
Here's what a policy tip looks like in a OneDrive for Business account.
  
![Policy tip for a document in a OneDrive account](../media/f9834d35-94f0-4511-8555-0fe69855ce6d.png)

 To learn more about user notifications and policy tips in DLP policies, see [Use notifications and policy tips](use-notifications-and-policy-tips.md).

> [!NOTE]
> The default behavior of a DLP policy, when there is no alert configured, is not to alert or trigger. This applies only to default information types. For custom information types, the system will alert even if there is no action defined in the policy.
-->




#### User Overrides

<!-- This section covers what they are and how to best use them in conjunction with Test/Turn it on right away and link out to where to find the business justification for the override (DLP reports?  https://docs.microsoft.com/en-us/microsoft-365/compliance/view-the-dlp-reports?view=o365-worldwide)-->

- If the policy tips in the most restrictive rule allow people to override the rule, then overriding this rule also overrides any other rules that the content matched.
 
![User notifications and user overrides sections of DLP rule editor](../media/37b560d4-6e4e-489e-9134-d4b9daf60296.png)
 
 
- 
#### Incident reports

<!--DLP interacts with other M365 information protection services, like IR. Link this to a process outline for triaging/managing/resolving DLP incidents


https://docs.microsoft.com/en-us/microsoft-365/compliance/view-the-dlp-reports?view=o365-worldwide
https://docs.microsoft.com/en-us/microsoft-365/compliance/dlp-configure-view-alerts-policies?view=o365-worldwide-->

When a rule is matched, you can send an incident report to your compliance officer (or any people you choose) with details of the event. This report includes information about the item that was matched, the actual content that matched the rule, and the name of the person who last modified the content. For email messages, the report also includes as an attachment the original message that matches a DLP policy.
  
![Page for configuring incident reports](../media/31c6da0e-981c-415e-91bf-d94ca391a893.png)

DLP scans email differently from items in SharePoint Online or OneDrive for Business. In SharePoint Online and OneDrive for Business, DLP scans existing items as well as new ones and generates an incident report whenever a match is found. In Exchange Online, DLP only scans new email messages and generates a report if there is a policy match. DLP ***does not*** scan or match previously existing email items that are stored in a mailbox or archive.


#### Additional options

covers the impact of rule processing order on the planned behavior of the policy, give examples and where it applies (to the Exchange location only)