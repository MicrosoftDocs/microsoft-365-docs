---
title: "Key Compliance and Security Considerations for the Energy Industry"
ms.author: bcarter
author: brendacarter
manager: laurawi
ms.date: 1/26/2024
audience: ITPro
ms.topic: article
ms.collection:
- highpri
- Ent_O365
- Strat_O365_Enterprise
- M365-security-compliance
ms.service: o365-solutions
ms.localizationpriority: high
description: Microsoft 365 helps energy organizations move to a modern collaboration platform, while helping keep data and systems secure and compliant with regulations.
ms.custom: seo-marvel-jun2020
---

# Key Compliance and Security Considerations for the Energy Industry

![Illustration metaphor for a global view of various industries using the cloud.](../media/solution-arch-center/MSC17_global_016.png)

## Introduction

The energy industry provides society with fuel and critical infrastructure that people rely on every day. In order to ensure the reliability of infrastructure related to bulk power systems, regulatory authorities impose strict standards on energy industry organizations. These regulatory standards relate not only to the generation and transmission of power, but also to the data and communications that are critical to the day-to-day operations of energy companies.

Organizations in the energy industry work with and exchange many types of information as part of their regular operations. This information includes customer data, capital engineering design documentation, resource location maps, project management artifacts, performance metrics, field service reports, environmental data, and performance metrics. As these organizations look to transform their operations and collaboration systems into modern digital platforms, they're looking to Microsoft as a trusted Cloud Service Provider (CSP) and Microsoft 365 as their best-of-breed collaboration platform. Since Microsoft 365 is built on the Microsoft Azure platform, organizations should examine both platforms as they consider their compliance and security controls when moving to the Cloud.

In North America, the North America Electric Reliability Corporation (NERC) enforces reliability standards that are referred to as NERC [Critical Infrastructure Protection (CIP) standards](https://www.nerc.com/pa/Stand/Pages/ReliabilityStandards.aspx). NERC is subject to oversight by the U.S. Federal Energy Regulatory Commission (FERC) and governmental authorities in Canada. All bulk power system owners, operators, and users must register with NERC and must comply with NERC CIP standards. Cloud Service Providers and third-party vendors such as Microsoft aren't subject to NERC CIP standards. However, the CIP standards include objectives that should be considered when Registered Entities use vendors in the operation of the Bulk Electric System (BES). Microsoft customers operating Bulk Electric Systems are wholly responsible for ensuring their own compliance with NERC CIP standards.

For information about Microsoft cloud services and NERC, see the following resources:

- [NERC CIP Standards and Cloud Computing](https://aka.ms/AzureNERC)
- [Cloud Implementation Guide for NERC Audits](https://aka.ms/AzureNERCGuide)

Regulatory standards that are recommended for consideration by energy organizations include FedRAMP (US Federal Risk and Authorization Management Program) which is based on and augments the NIST SP 800-53 Rev 4 standard (National Institute of Standards and Technology).

- Microsoft Office 365 and Office 365 U.S. Government have each been granted a FedRAMP ATO (Authorization to Operate) at the Moderate Impact Level.
- Azure and Azure Government have each been granted a FedRAMP High P-ATO (Provisional Authorization to Operate), which represents the highest level of FedRAMP authorization.

For information about Microsoft cloud services and FedRAMP, see the following resources:

- [Microsoft FedRAMP overview](/compliance/regulatory/offering-FedRAMP)
- [Office 365 FedRAMP reports](https://servicetrust.microsoft.com/ViewPage/MSComplianceGuideV3?docTab=7027ead0-3d6b-11e9-b9e1-290b1eb4cdeb_FedRAMP_Reports)

These achievements are significant for the energy industry because a comparison between the FedRAMP Moderate control set and NERC CIP requirements shows that FedRAMP Moderate controls encompass all the NERC CIP requirements. For additional information, Microsoft developed a [Cloud Implementation Guide for NERC Audits](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=68df41b2-873d-4e4b-a7c8-8a0d4fdefb88&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_Compliance_Guides) that includes a control mapping between the current set of NERC CIP standards and FedRAMP Moderate control set as documented in NIST 800-53 Rev 4.

As the energy industry looks to modernize their collaboration platforms, careful consideration is required for the configuration and deployment of collaboration tools and security controls, including:

- Assessment of common collaboration scenarios
- Access to data required by employees to be productive
- Regulatory compliance requirements
- Associated risks to data, customers and the organization

Microsoft 365 is a modern workplace cloud environment. It provides secure and flexible collaboration across the enterprise, including controls and policy enforcement to adhere to the most stringent regulatory compliance frameworks. Through the following articles, this paper explores how Microsoft 365 helps the energy industry move to a modern collaboration platform while helping to keep data and systems both secure and compliant with regulations:

- Provide a Comprehensive Collaboration Platform with Microsoft Teams
- Provide Secure and Compliant Collaboration in the Energy Industry
- Identify Sensitive Data and Prevent Data Loss
- Govern Data by Effectively Managing Records
- Comply with FERC and FTC Regulations for Energy Markets
- Protect Against Data Exfiltration and Insider Risk

As a Microsoft partner, Protiviti contributed to and provided material feedback to this article.

## Provide a Comprehensive Collaboration Platform with Microsoft Teams

Collaboration typically requires multiple forms of communication, the ability to store and access documents, and the ability to integrate other applications as needed. Whether they're global enterprises or local companies, employees in the energy sector typically need to collaborate and communicate with members of other departments or across teams. They also often need to communicate with external partners, vendors, or clients. As a result, using systems that create silos or make it difficult to share information is typically not recommended. That said, we still want to ensure that employees are sharing information securely and according to policy.

Providing employees with a modern and cloud-based collaboration platform that allows them to choose and easily integrate the tools that make them most productive empowers them to find the best ways to work and collaborate. Using Microsoft Teams, together with security controls and governance policies to protect the organization, can help your workforce to easily collaborate in the cloud.

Microsoft Teams provides a collaboration hub for your organization to bring people together to work and collaborate together on common initiatives or projects. It allows team members to conduct conversations, collaborate, and coauthor documents. It enables people to store and share files with team members or those outside the team. It also allows them to hold live meetings with integrated enterprise voice and video. Microsoft Teams can be customized with easy access to Microsoft apps such as Planner, Dynamics 365, Power BI, and other third-party line-of-business applications. Teams simplifies access to Office 365 services and third-party apps to centralize collaboration and communication needs for the organization.

Every Microsoft Team is backed by an Office 365 Group. An Office 365 Group is considered the membership provider for Office 365 services, including Microsoft Teams. Office 365 Groups are used to securely control which users are considered members and which are owners of the group. This design allows us to easily control which users have access to varying capabilities within Teams. As a result, Team members and owners can only access the capabilities that they're permitted to utilize.

A common scenario where Microsoft Teams can benefit energy organizations is collaborating with contractors or external firms as part of a field service program, such as vegetation management. Contractors are typically engaged to manage vegetation or remove trees around power system installations. They often need to receive work instructions, communicate with dispatchers and other field service personnel, take and share pictures of external surroundings, sign out when work is complete, and share data back with head office. Traditionally, these programs are run using phone, text, paper work orders, or custom applications. This method can present many challenges. For example:

- Processes are manual or analog, making metrics difficult to track
- Communications aren't all captured in one place
- Data is siloed and not necessarily shared with all employees that need it
- Work might not be performed consistently or efficiently
- Custom applications aren't integrated with collaboration tools, making it difficult to extract and share data or measure performance

Microsoft Teams can provide an easy-to-use collaboration space to securely share information and conduct conversations between team members and external field service contractors. Teams can be used to conduct meetings, place voice calls, centrally store and share work orders, collect field data, upload photos, integrate with business process solutions (built with Power Apps and Power Automate), and integrate line-of-business apps. This type of field service data might be considered low impact; however, efficiencies can be gained by centralizing communications and access data between employees and field service personnel in these scenarios.

Another example where Microsoft Teams can benefit the energy industry is when field service personnel are working to restore service during an outage. Field staff often requires fast access to schematic data for substations, generating stations, or blue prints for assets in the field. This data is considered high impact and must be protected according to NERC CIP regulations. Field service work during outages requires communication between field staff and office employees, and in turn with end customers. Centralizing communications and data sharing in Microsoft Teams provides field staff with an easy method to both access critical data and communicate information or status back to head office.
For example, Microsoft Teams enables field staff to join conference calls while on route to an outage. Field staff can also take photos or video of their environment and share those with head office, which is particularly important when field equipment doesn't match schematics. Data and status collected from the field can then be surfaced to office employees and leadership through data visualization tools such as Power BI. Ultimately, Microsoft Teams can make field staff more efficient and productive in these critical situations.

### Teams: Improve collaboration and reduce compliance risk

Microsoft 365 provides common policy capabilities for Microsoft Teams through its use of Office 365 Groups as an underlying membership provider. These policies can help improve collaboration and help meet compliance needs.

**Office 365 Group Naming Policies** help ensure that Office 365 Groups, and therefore Microsoft Teams, are named according to corporate policy. The name of a Team can present challenges if not named appropriately. For example, employees might not know which teams to work or share information within if they're incorrectly named. Group naming policies help enforce good hygiene and might also prevent use of specific words, such as reserved words or inappropriate terminology.

**Office 365 Group Expiration Policies** help to ensure that Office 365 Groups, and therefore Microsoft Teams, aren't retained for longer periods of time than required by the organization. This capability helps to prevent two key information management issues:

- The proliferation of Microsoft Teams that aren't necessary or used
- The over-retention of data that is no longer required by the organization

Administrators can specify an expiration period in days for Office 365 Groups (such as 90, 180 or 365 days). If a service backed by an Office 365 group is inactive for the expiration period, group owners are notified. If no action is taken, then the Office 365 Group and all its related services including Microsoft Teams are deleted.

The over-retention of data in a Microsoft Team can pose litigation risks to organizations. The use of expiration policies is a recommended method for protecting the organization. Combined with built-in retention labels and policies, Microsoft 365 helps ensure that organizations are only retaining the data required to meet regulatory compliance obligations.

### Teams: Integrate custom requirements with ease

Microsoft Teams enables self-service creation of Teams by default. However, many regulated organizations want to control and understand which collaboration spaces are currently in use by employees, which spaces contain sensitive data, and who the owners are of spaces throughout their organization. To facilitate these controls, Microsoft 365 allows organizations to disable self-service Teams creation. Also, using built-in Microsoft 365 business process automation tools, such as Power Apps and Power Automate, allows organizations to build simple processes to request a new Team. Completing an easy to use form, an approval can be automatically requested by a manager. Once approved, the Team can be automatically provisioned and the requestor is sent a link to their new Team. By building such processes, organizations can also integrate custom requirements to facilitate other business processes.

## Provide Secure and Compliant Collaboration in the Energy Industry

As mentioned, Microsoft Office 365 and Office 365 U.S. Government have each achieved FedRAMP ATO at the Moderate Impact Level. Azure and Azure Government have achieved a FedRAMP High P-ATO which represents the highest level of FedRAMP authorization. Additionally, the FedRAMP moderate control set encompasses all of the NERC CIP requirements, thereby allowing energy industry organizations ("registered entities") to leverage existing FedRAMP authorizations as a scalable and efficient approach to addressing NERC audit requirements. However, it's important to note that FedRAMP isn't a point-in-time certification but an assessment and authorization program that includes provisions for [continuous monitoring](https://www.fedramp.gov/assets/resources/documents/CSP_Continuous_Monitoring_Strategy_Guide.pdf). Although this provision applies primarily to the CSP, Microsoft customers operating Bulk Electric Systems are responsible for ensuring their own compliance with NERC CIP standards. It's generally a recommended practice to continuously monitor the organization's compliance posture to help ensure ongoing compliance with regulations.

Microsoft provides a key tool to assist with monitoring compliance with regulations over time:

- **Microsoft Purview Compliance Manager** helps the organization understand its current compliance posture and the actions it can take to help improve that posture. Compliance Manager calculates a risk-based score measuring progress in completing actions that help reduce risks around data protection and regulatory standards. Compliance Manager provides an initial score based on the Microsoft 365 data protection baseline. This baseline is a set of controls that include common industry regulations and standards. While this score is a good starting point, Compliance Manager becomes more powerful once an organization adds assessments that are more relevant to their industry. Compliance Manager supports a number of regulatory standards that are relevant for NERC CIP compliance obligations, including the [FedRAMP Moderate Control Set](https://www.fedramp.gov/documents/), [NIST 800-53 Rev. 4](https://go.microsoft.com/fwlink/?linkid=2109075), and [AICPA SOC 2](https://go.microsoft.com/fwlink/p/?linkid=2115184). Energy industry organizations might also create or import custom control sets if needed.

The workflow capabilities built into Compliance Manager allow energy organizations to transform and digitize their regulatory compliance processes. Traditionally, compliance teams in the energy industry face the following challenges:

- Inconsistent reporting or tracking of progress on remediation actions
- Inefficient or ineffective processes
- Insufficient resources or lack of ownership
- Lack of real-time information and human error

By automating aspects of regulatory compliance processes through the use of Compliance Manager, organizations can reduce the administrative burden on legal and compliance functions. This tooling can help address these challenges by providing more up-to-date information on remediation actions, more consistent reporting, and documented ownership of actions (linked to the implementation of actions). Organizations can automatically track remediation actions over time and see overall efficiency gains. This feature enables staff to focus more effort on gaining insights and developing strategies to help navigate risk more effectively.

Compliance Manager doesn't express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Recommendations from Compliance Manager shouldn't be interpreted as a guarantee of compliance. The customer actions provided in Compliance Manager are recommendations. It's up to each organization to evaluate the effectiveness of these recommendations to meet their regulatory obligations prior to implementation. Recommendations found in Compliance Manager shouldn't be interpreted as a guarantee of compliance.

Many cyber security-related controls are included in the [FedRAMP Moderate Control Set](https://www.fedramp.gov/documents/) and [NERC CIP standards](https://www.nerc.com/pa/Stand/Pages/ReliabilityStandards.aspx). However, key controls related to the Microsoft 365 platform include security management controls (CIP-003-6), account and access management/access revocation (CIP-004-6), electronic security perimeter (CIP-005-5), security event monitoring, and incident response (CIP-008-5). The following foundational Microsoft 365 capabilities help to address the risks and requirements included in these articles.

### Secure User Identities and Control Access

Protecting access to documents and applications begins with strongly securing user identities. As a foundation, this action requires providing a secure platform for the enterprise to store and manage identities and providing a trusted means of authentication. It also requires dynamically controlling access to these applications. As employees work, they might move from application to application or across multiple locations and devices. As a result, access to data must be authenticated at each step of the way. In addition, the authentication process must support a strong protocol and multiple factors of authentication (one-time SMS pass code, authenticator app, certificate, etc.) to ensure that identities haven't been compromised. Finally, enforcing risk-based access policies are a key recommendation to protecting data and applications from insider threats, inadvertent data leaks, and data exfiltration.

Microsoft 365 provides a secure identify platform with **Microsoft Entra ID** where identities are centrally stored and securely managed. Microsoft Entra ID, along with a host of related Microsoft 365 security services, forms the basis for providing employees with the access they need to work securely while also protecting the organization from threats.

**Microsoft Entra multifactor authentication (MFA)** is built into the platform and provides an additional layer of protection to help ensure users are who they say they are when accessing sensitive data and applications. Microsoft Entra multifactor authentication requires at least two forms of authentication, such as a password and a known mobile device. It supports several second factor authentication options, including: the Microsoft Authenticator app, a one-time passcode delivered via SMS, receiving a phone call where a user must enter a PIN, and smart cards or certificate-based authentication. In the event a password is compromised, a potential hacker still needs the user's phone to gain access to organizational data. In addition, Microsoft 365 uses Modern Authentication as a key protocol, bringing the same strong authentication experience from web browsers to collaboration tools, including Microsoft Outlook and Microsoft Office apps.

**Microsoft Entra Conditional Access** provides a robust solution for automating access control decisions and enforcing policies to protect company assets. A common example is when an employee tries to access an application containing sensitive customer data and they're automatically required to perform a multifactor authentication. Azure Conditional Access brings together signals from a user's access request (such as properties about the user, their device, location, network, and the app or repository they're trying to access). It dynamically evaluates every attempt to access the application against policies you configure. If the user or device risk is elevated, or if other conditions aren't met, Microsoft Entra ID automatically enforces policy (such as dynamically requiring MFA, restricting, or even blocking access). This design helps ensure that sensitive assets are protected in dynamically changing environments.

**Microsoft Defender for Office 365** provides an integrated service to protect organizations from malicious links and malware delivered through email. One of the most common attack vectors affecting users today is email phishing attacks. These attacks can be carefully targeted at specific high-profile employees and can be crafted to be very convincing. They typically contain some call to action requiring a user to select a malicious link or open an attachment with malware. Once infected, an attacker can steal a user's credentials and move laterally across the organization. They can also exfiltrate emails and data looking for sensitive information. Microsoft Defender for Office 365  evaluates links at click-time for potentially malicious sites and blocks them. Email attachments are opened in a protected sandbox prior to delivering them to a user's mailbox.

**Microsoft Defender for Cloud Apps** provides organizations with the ability enforce policies at a granular level. This design includes detecting behavioral anomalies based on individual user profiles that are automatically defined using Machine Learning. Defender for Cloud Apps builds on Azure Conditional Access policies by evaluating additional signals related to user behavior and properties of the documents being accessed. Over time, Defender for Cloud Apps learns the typical behavior for each employee (the data they access and the applications they use). Based on learned behavioral patterns, policies can automatically enforce security controls if an employee goes outside of that behavioral profile. For example, if an employee typically accesses an accounting app from 9:00 a.m. to 5:00 p.m., Monday to Friday, but that same user begins to access that application heavily on a Sunday evening, Defender for Cloud Apps can dynamically enforce policies to require the user to re-authenticate. This requirement helps ensure that credentials haven't been compromised. In addition, Defender for Cloud Apps can help discover and identify Shadow IT in the organization. This feature helps InfoSec teams ensure that employees use sanctioned tools when working with sensitive data. Finally, Defender for Cloud Apps can protect sensitive data anywhere in the Cloud, even outside of the Microsoft 365 platform. It allows organizations to sanction (or unsanction) specific external Cloud apps, controlling access and monitoring when users work in those applications.

**Microsoft Entra ID**, and the related Microsoft 365 security services, provide the foundation upon which a modern cloud collaboration platform can be rolled out to energy industry organizations. Microsoft Entra ID includes controls to protect access to data and applications. In addition to providing strong security, these controls help organizations meet regulatory compliance obligations.

Microsoft Entra ID and Microsoft 365 services and are deeply integrated and provides the following important capabilities:

- Centrally store and securely manage user identities
- Use a strong authentication protocol, including multifactor authentication, to authenticate users on access requests
- Provide a consistent and robust authentication experience across any application
- Dynamically validate policies on all access requests, incorporating multiple signals into the policy decision-making process (including identity, user/group membership, application, device, network, location, and real-time risk score)
- Validate granular policies based on user behavior and file properties and dynamically enforce additional security measures when required
- Identify shadow IT in the organization and allow InfoSec teams to sanction or block cloud applications
- Monitor and control access to Microsoft and non-Microsoft cloud applications
- Proactively protect against email phishing and ransomware attacks

## Identify Sensitive Data and Prevent Data Loss

The FedRAMP Moderate Control Set and NERC CIP standards also include information protection as a key control requirement (CIP-011-2). These requirements specifically address the need to identify information related to BES (Bulk Electric System) Cyber System Information and the protection and secure handling of that information (including storage, transit, and use). Specific examples of BES Cyber System Information can include security procedures or security information about systems that are fundamental to operating the bulk electric system (BES Cyber Systems, Physical Access Control Systems, and Electronic Access Control or monitoring systems) that isn't publicly available and could be used to allow unauthorized access or unauthorized distribution. However, the same need exists to identify and protect customer information that is critical to the day-to-day operations of energy organizations.

Microsoft 365 allows sensitive data to be identified and protected within the organization through a combination of powerful capabilities, including:

- **Microsoft Purview Information Protection** for both user-based classification and automated classification of sensitive data

- **Microsoft Purview Data Loss Prevention (DLP)** for automated identification of sensitive data using sensitive data types (that is, regular expressions) and keywords, and policy enforcement

**Microsoft Purview Information Protection** allows employees to classify documents and emails with sensitivity labels. Sensitivity labels can be applied manually by users to documents within the Microsoft Office apps and to emails within Microsoft Outlook. Sensitivity labels can automatically apply document markings, protection through encryption, and enforce rights management. Sensitivity labels can also be applied automatically by configuring policies that use keywords and sensitive data types (credit card numbers, social security numbers, identity numbers, etc.).

Microsoft also provides trainable classifiers. These use machine learning models to identify sensitive data based on what the content is, as opposed to simply through pattern matching or by the elements within the content. A classifier learns how to identify a type of content by looking at many examples of the content to be classified. Training a classifier begins by providing it with examples of content within a particular category. Once it processes the examples, the model is tested by providing it with a mix of both matching and non-matching examples. The classifier then predicts whether a given example falls into the category or not. A person then confirms the results, sorting the positives, negatives, false positives, and false negatives to help increase the accuracy of the classifier's predictions. When the trained classifier is published, it processes and automatically classifies content in SharePoint Online, Exchange Online, and OneDrive.

Applying sensitivity labels to documents and emails embeds metadata within the object that identifies the chosen sensitivity, thereby allowing the sensitivity to travel with the data. As a result, even if a labeled document is stored on a user's desktop or within an on-premises system, it's still protected. This design enables other Microsoft 365 solutions, such as Microsoft Defender for Cloud Apps or network edge devices, to identify sensitive data and automatically enforce security controls. Sensitivity labels have the added benefit of educating employees about which data within an organization is considered sensitive and how to handle that data.

**Microsoft Purview Data Loss Prevention (DLP)** automatically identifies documents, emails, and conversations that contain sensitive data by scanning these items for sensitive data types, and then enforcing policies on those objects. Policies are enforced on documents within SharePoint and OneDrive for Business. Policies are also enforced when users send email and in Microsoft Teams within chat and channel conversations. Policies can be configured to look for keywords, sensitive data types, retention labels, and whether data is shared within the organization or externally. Controls are provided to help organizations fine-tune DLP policies to better avoid false positives. When sensitive data is found, customizable policy tips can be displayed to users within Microsoft 365 applications. Policy tips inform users that their content contains sensitive data and can propose corrective actions. Policies can also prevent users from accessing documents, sharing documents, or sending emails that contain certain types of sensitive data. Microsoft 365 supports over 100 built-in sensitive data types. Organizations can configure custom sensitive data types to meet their policies.

Rolling out Microsoft Purview Information Protection and DLP policies to organizations requires careful planning. It also requires user education so employees understand the organization's data classification schema and which types of data are sensitive. Providing employees with tools and education programs that help them identify sensitive data and help them understand how to handle it makes them part of the solution for mitigating information security risks.

## Govern Data by Effectively Managing Records

Regulations require many organizations to manage the retention of key organizational documents according to a managed corporate retention schedule. Organizations face regulatory compliance risks if data is under-retained (deleted too early), or legal risks if data is over-retained (kept too long). Effective records management strategies help ensure that organization documents are retained according to predetermined retention periods which are designed to minimize risk to the organization. Retention periods are prescribed in a centrally managed organizational record retention schedule. Retention periods are based on the nature of each type of document, the regulatory compliance requirements for retaining specific types of data, and the defined policies of the organization.

Assigning record retention periods accurately across organizational documents might require a granular process which assigns retention periods uniquely to individual documents. Applying record retention policies at scale can be challenging for many reasons. These reasons include the vast number of documents within energy industry organizations together with the fact that, in many cases, retention periods can be triggered by organizational events (such as contracts expiring or an employee leaving the organization).

Microsoft 365 provides capabilities for defining retention labels and policies to easily implement records management requirements. A record manager defines a retention label, which represents a "record type" in a traditional retention schedule. The retention label contains settings which define:

- How long a record is retained for
- The concurrency requirements or what occurs when retention period expires (delete the document, start a disposition review, or take no action)
- What triggers the retention period to start (created date, last modified date, labeled date, or an event), and
- If the document or email is a record (meaning it can't be edited or deleted)

Retention labels are then published to SharePoint or OneDrive sites, Exchange mailboxes, and Office 365 Groups. Users can then apply retention labels manually to documents and emails. Or, record managers can use rules to automatically apply retention labels. Auto-apply rules can be based on keywords or sensitive data found within documents or emails, such as credit card numbers, social security numbers, or other personally identifiable information (PII). Auto-apply rules can also be based on SharePoint metadata.

The FedRAMP Moderate Control Set and NERC CIP standards also include Asset Reuse and Disposal as a key control requirement (CIP-011-2). These requirements once again specifically address BES (Bulk Electric System) Cyber System Information. However, other jurisdictional regulations require energy industry organizations to manage and dispose of records effectively for many types of information. This information includes financial statements, capital project information, budgets, customer data, etc. In all cases, energy organizations are required to maintain robust records management programs and evidence related to the defensible disposition of corporate records.

With each retention label, Microsoft 365 allows record managers to determine if a disposition review is required. Then when those record types come up for disposition, after their retention period has expired, a review must be conducted by the designated disposition reviewers before content is deleted. Once the disposition review is approved, content deletion proceeds. However, evidence of the deletion (the user that performed the deletion and date/time in which it occurred) is still retained for multiple years as a certificate of destruction. If organizations require longer or permanent retention of certificates of destruction, they can use Microsoft Sentinel  for long-term cloud-based storage of log and audit data. Microsoft Sentinel gives organizations full control over the long-term storage and retention of activity data, log data, and retention/disposition data.

## Comply with FERC and FTC Regulations for Energy Markets

The U.S. Federal Energy Regulatory Commission (FERC) oversees [regulations related to energy markets and trading for the electric energy and natural gas markets](https://www.ferc.gov). The U.S. Federal Trade Commission (FTC) oversees similar [regulations in the petroleum market](https://www.ftc.gov/sites/default/files/documents/rules/prohibition-energy-market-manipulation-rule/091113mmrguide.pdf). In both cases these regulatory bodies set out rules and guidance to prohibit the manipulation of energy markets. FERC, for example, recommends that energy organizations invest in technology resources to monitor trading, trader communications, and compliance with internal controls. Regulators also recommend that energy organizations evaluate, on a regular basis, the ongoing effectiveness of the organization's compliance program.

Traditionally, communication monitoring solutions are costly and they can be complex to configure and manage. Also, organizations can experience challenges with monitoring the many, varying communication channels available to employees. Microsoft 365 provides several built-in robust capabilities for monitoring employee communications, supervising employee activities, and helping to comply with FERC regulations for energy markets.

### Implement Supervisory Control

Microsoft 365 enables organizations to configure supervision policies which capture employee communications (based on configured conditions) and allow these to be reviewed by designated supervisors. Supervision policies can capture internal/external email and attachments, Microsoft Teams chat and channel communications, Skype for Business Online chat communications and attachments, and communications through third-party services (such as Facebook or Dropbox).

The comprehensive nature of communications that might be captured and reviewed within an organization and the extensive conditions with which policies can be configured allow Microsoft 365 Supervision Policies to help organizations comply with FERC energy market regulations. Supervision policies can be configured to review communications for individuals or groups. In addition, supervisors can be configured to be individuals or groups. Comprehensive conditions can be configured to capture communications based on inbound or outbound messages, domains, retention labels, keywords or phrases, keyword dictionaries, sensitive data types, attachments, message size, or attachment size. Reviewers are provided with a dashboard where they can review flagged communications, act on communications that potentially violate policies, or mark flagged items as resolved. They might also review the results of previous reviews and items that have been resolved.

Microsoft 365 provides reports which allow supervision policy review activities to be audited based on the policy and the reviewer. The available reports can be used to validate that supervision policies are working as defined by the organizations written supervision policies. Reports can also be used to identify communications that require review, including communications that aren't compliant with corporate policy. Finally, all activities related to configuring supervision policies and reviewing communications are audited in the Office 365 unified audit log.

Microsoft 365 Supervision Policies allow organizations to monitor communications for compliance with corporate policies, such as human resources harassment violations and offensive language in company communications. It also allows organizations to reduce risk, by monitoring communications when organizations are undergoing sensitive organizational changes, such as mergers and acquisitions, or leadership changes.

### Communication compliance

With many communication channels available to employees, organizations increasingly require effective solutions for detecting and investigating communications in regulated industries such as energy trading markets. These challenges can include increasing numbers of communication channels and message volume and the risk of potential fines for policy violations.

[Microsoft Purview Communication Compliance](/microsoft-365/compliance/communication-compliance) is a compliance solution that helps minimize communication risks by helping you detect, investigate, and act on inappropriate messages in your organization. Pre-defined and custom policies allow you to scan internal and external communications for policy matches so they can be examined by designated reviewers. Reviewers can investigate scanned email, Microsoft Teams, Viva Engage, or third-party communications in your organization and take appropriate actions to make sure they're compliant with your organization's message standards.

Communication Compliance helps compliance teams effectively and efficiently review messages for potential violations of:

- corporate Policies, such as acceptable use, ethical standards, and corporate specific policies
- sensitivity or sensitive business disclosures, such as unauthorized communications about sensitive projects like upcoming acquisitions, mergers, earnings disclosures, reorganizations, or leadership team changes
- regulatory compliance requirements, such as employee communications regarding the types of businesses or transactions in which an organization engages in compliance with FERC regulations for energy markets

Communication compliance provides built-in threat, harassment, and profanity classifiers to help reduce false positives when reviewing communications. This classification saves reviewers time during the investigation and remediation process. It helps reviewers focus on specific messages within long threads that have been highlighted by policy alerts. This result helps compliance teams more quickly identify and remediate risks. It provides compliance teams with the ability to easily configure and fine-tune policies, adjusting the solution to the organization's specific needs and reducing false positives. Communication compliance can also help to identify potentially risky user behavior over time, highlighting potential patterns in risky behavior or policy violations. Finally, it provides flexible built-in remediation workflows. These workflows help reviewers quickly take action to escalate to legal or human resources teams according to defined corporate processes.

## Protect against data exfiltration and insider risk

A common threat to enterprises is data exfiltration, or the act of extracting data from an organization. This action can be a significant concern for energy organizations due to the sensitive nature of the information that might be accessed by employees or field service staff day-to-day. This data includes both BES (Bulk Electric System) Cyber System information as well as business-related information and customer data. With the increasing methods of communications available and many tools for moving data, advanced tools are typically required to mitigate risks of data leaks, policy violations, and insider risk.

### Insider risk management

Enabling employees with online collaboration tools that might be accessed anywhere inherently brings risk to an organization. Employees might inadvertently or maliciously leak data to attackers or to competitors. Alternatively, they might exfiltrate data for personal use or take data with them to a future employer. These scenarios present serious risks to organizations from a security and a compliance standpoint. Identifying these risks when they occur and quickly mitigating them requires both intelligent tools for data collection and collaboration across departments such as legal, human resources, and information security.

[Microsoft Purview Insider Risk Management](/microsoft-365/compliance/insider-risk-management) is a compliance solution that helps minimize internal risks by enabling you to detect, investigate, and act on malicious and inadvertent activities in your organization. Insider risk policies allow you to define the types of risks to identify and detect in your organization, including acting on cases and escalating cases to Microsoft eDiscovery (Premium) if needed. Risk analysts in your organization can quickly take appropriate actions to make sure users are compliant with your organization's compliance standards.

For example, insider risk management can correlate signals from a user's devices (such as copying files to a USB drive or emailing a personal email account) with activities from online services (such as Office 365 email, SharePoint Online, Microsoft Teams, OneDrive for Business) to identify data exfiltration patterns. It can also correlate these activities with employees leaving an organization which is a common behavioral pattern associated with data exfiltration. It can detect multiple potentially risky activities and behavior over time. When common patterns emerge, it can raise alerts and help investigators focus on key activities to verify a policy violation with a high degree of confidence. Insider risk management can also obfuscate data from investigators to help meet data privacy regulations while still surfacing key activities that help them efficiently perform investigations. When ready, it allows investigators to package and securely send key activity data to human resources and legal departments following common escalation workflows for raising cases for remediation action.

Insider risk management is a significant increase in capabilities in Microsoft 365 for detecting and investigating insider risks while allowing organizations to still meet data privacy regulations and follow established escalations paths when cases require higher-level action.

## Conclusion

Microsoft 365 provides an integrated and comprehensive solution which enables easy-to-use cloud-based collaboration across the enterprise with Microsoft Teams. Microsoft Teams also enables better communication and collaboration with field service staff, helping energy organizations to be more efficient and effective. Better collaboration across the enterprise and with field staff can ultimately help energy organizations to better serve customers.

Energy industry organizations must comply with strict regulations related to how they store, secure, manage, and retain information related to their operations and customers. They must also comply with regulations related to how they monitor and prevent the manipulation of energy markets. Microsoft 365 provides robust security controls for protecting data, identities, devices, and applications from risks and complying with strict energy industry regulations. Built-in tools are provided to help energy organizations assess their compliance, as well as take action and track remediation activities over time. These tools also provide easy to use methods for monitoring and supervising communications. The Microsoft 365 platform is built on foundational components like Microsoft Azure and Microsoft Entra ID, helping to secure the overall platform and helping the organization meet compliance requirements for FedRAMP Moderate and High control sets. This design, in turn, contributes to an energy organization's ability to meet NERC CIP standards.

Overall, Microsoft 365 helps energy organizations to better protect the organization, to have more robust compliance programs, and to enable staff to focus on gaining better insights and implementing strategies to better reduce risk.
