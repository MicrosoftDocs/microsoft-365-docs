---
title: "Send email notifications and show policy tips for DLP policies"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleNotifyUser'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
description: Learn how to add a policy tip to a data loss prevention (DLP) policy to notify a user that they are working with content that conflicts with a DLP policy.
---

# Send email notifications and show policy tips for DLP policies

You can use a data loss prevention (DLP) policy to identify, monitor, and protect sensitive information across Office 365. You want people in your organization who work with this sensitive information to stay compliant with your DLP policies, but you don't want to block them unnecessarily from getting their work done. This is where email notifications and policy tips can help.
  
![Message bar shows policy tip in Excel 2016](../media/7002ff54-1656-4a6c-993f-37427d6508c8.png)
  
A policy tip is a notification or warning that appears when someone is working with content that conflicts with a DLP policy—for example, content like an Excel workbook on a OneDrive for Business site that contains personally identifiable information (PII) and is shared with an external user.
  
You can use email notifications and policy tips to increase awareness and help educate people about your organization's policies. You can also give people the option to override the policy, so that they're not blocked if they have a valid business need or if the policy is detecting a false positive.
  
In the Security &amp; Compliance Center, when you create a DLP policy, you can configure the user notifications to:
  
- Send an email notification to the people you choose that describes the issue.
    
- Display a policy tip for content that conflicts with the DLP policy:
    
  - For email in Outlook on the web and Outlook 2013 and later, the policy tip appears at the top of a message above the recipients while the message is being composed.
    
  - For documents in a OneDrive for Business account or SharePoint Online site, the policy tip is indicated by a warning icon that appears on the item. To view more information, you can select an item and then choose **Information** ![Information pane icon](../media/50b6d51b-92b4-4c5f-bb4b-4ca2d4aa3d04.png) in the upper-right corner of the page to open the details pane. 
    
  - For Excel, PowerPoint, and Word documents that are stored on a OneDrive for Business site or SharePoint Online site that's included in the DLP policy, the policy tip appears on the Message Bar and the Backstage view ( **File** menu \> **Info**).
    
## Add user notifications to a DLP policy

When you create a DLP policy, you can enable **User notifications**. When user notifications are enabled, Microsoft 365 sends out both email notifications and policy tips. You can customize who notification emails are sent to, the email text and the policy tip text.
  
1. Go to [https://protection.office.com](https://protection.office.com).
    
2. Sign in using your work or school account. You're now in the Security &amp; Compliance Center.
    
3. In the Security &amp; Compliance Center \> left navigation \> **Data loss prevention** \> **Policy** \> **+ Create a policy**.
    
    ![Create a policy button](../media/b1e48a08-92e2-47ca-abdc-4341694ddc7c.png)
  
4. Choose the DLP policy template that protects the types of sensitive information that you need \> **Next**.
    
    To start with an empty template, choose **Custom** \> **Custom policy** \> **Next**.
    
5. Name the policy \> **Next**.
    
6. To choose the locations that you want the DLP policy to protect, do one of the following:
    
   - Choose **All locations in Office 365** \> **Next**.
    
   - Choose **Let me choose specific locations** \> **Next**.
    
   To include or exclude an entire location such as all Exchange email or all OneDrive accounts, switch the **Status** of that location on or off. 
    
   To include only specific SharePoint sites or OneDrive accounts, switch the **Status** to on, and then click the links under **Include** to choose specific sites or accounts. 
    
7. Choose **Use advanced settings** \> **Next**.
    
8. Choose **+ New rule**.
    
9. In the rule editor, under **User notifications**, switch the status on.
    
    ![User notifications section of rule editor](../media/47705927-c60b-4054-a072-ab914f33d15d.png)

> [!NOTE]
> DLP policies apply to all documents that match the policy, whether those documents are new or existing. However, an email notification is only generated when new content matches an existing DLP policy. Existing content is protected, but will not generate a user notification via email.
  
## Options for configuring email notifications

For each rule in a DLP policy, you can:
  
- Send the notification to the people you choose. These people can include the owner of the content, the person who last modified the content, the owner of the site where the content is stored, or a specific user.
    
- Customize the text that's included in the notification by using HTML or tokens. See the section below for more information.
    
> [!NOTE]
>  Email notifications can be sent only to individual recipients—not groups or distribution lists. Only new content will trigger an email notification. Editing existing content will trigger policy tips, but not an email notification. 
  
![Email notification options](../media/4e7b9500-2a78-44e6-9067-09f4bfd50301.png)
  
### Default email notification

Notifications have a Subject line that begins with the action taken, such as "Notification", "Message Blocked" for email, or "Access Blocked" for documents. If the notification is about a document, the notification message body includes a link that takes you to the site where the document's stored and opens the policy tip for the document, where you can resolve any issues (see the section below about policy tips). If the notification is about a message, the notification includes as an attachment the message that matches a DLP policy.
  
![Notification message](../media/35813d40-5fd8-425f-9624-55655e74fa6b.png)
  
By default, notifications display text similar to the following for an item on a site. The notification text is configured separately for each rule, so the text that's displayed differs depending on which rule is matched.

|**If the DLP policy rule does this…**|**Then the default notification for SharePoint or OneDrive for Business documents says this…**|**Then the default notification for Outlook messages says this…**|
|:-----|:-----|:-----|
|Sends a notification but doesn't allow override  <br/> |This item conflicts with a policy in your organization.  <br/> |Your email message conflicts with a policy in your organization.  <br/> |
|Blocks access, sends a notification, and allows override  <br/> |This item conflicts with a policy in your organization. If you don't resolve this conflict, access to this file might be blocked.  <br/> |Your email message conflicts with a policy in your organization. The message wasn't delivered to all recipients.  <br/> |
|Blocks access and sends a notification  <br/> |This item conflicts with a policy in your organization. Access to this item is blocked for everyone except its owner, last modifier, and the primary site collection administrator.  <br/> |Your email message conflicts with a policy in your organization. The message wasn't delivered to all recipients.  <br/> |
   
### Custom email notification

You can create a custom email notification instead of sending the default email notification to your end users or admins. The custom email notification supports HTML and has a 5,000-character limit. You can use HTML to include images, formatting, and other branding in the notification.
  
You can also use the following tokens to help customize the email notification. These tokens are variables that are replaced by specific information in the notification that's sent.

|**Token**|**Description**|
|:-----|:-----|
|%%AppliedActions%%  <br/> |The actions applied to the content.  <br/> |
|%%ContentURL%%  <br/> |The URL of the document on the SharePoint Online site or OneDrive for Business site.  <br/> |
|%%MatchedConditions%%  <br/> |The conditions that were matched by the content. Use this token to inform people of possible issues with the content.  <br/> |
   
![Notification message showing where tokens appear](../media/cd3f36b3-40db-4f30-99e4-190750bd1955.png)
  
## Options for configuring policy tips

For each rule in a DLP policy, you can configure policy tips to:
  
- Simply notify the person that the content conflicts with a DLP policy, so that they can take action to resolve the conflict. You can use the default text (see the tables below) or enter custom text about your organization's specific policies.
    
- Allow the person to override the DLP policy. Optionally, you can:
    
  - Require the person to enter a business justification for overriding the policy. This information is logged and you can view it in the DLP reports in the **Reports** section of the Security &amp; Compliance Center. 
    
  - Allow the person to report a false positive and override the DLP policy. This information is also logged for reporting, so that you can use false positives to fine tune your rules.
    
![Policy tip options](../media/0d2f2c68-028a-4900-afe6-1d9fce5303ef.png)
  
For example, you may have a DLP policy applied to OneDrive for Business sites that detects personally identifiable information (PII), and this policy has three rules:
  
1. First rule: If fewer than five instances of this sensitive information are detected in a document, and the document is shared with people inside the organization, the **Send a notification** action displays a policy tip. For policy tips, no override options are necessary because this rule is simply notifying people and not blocking access. 
    
2. Second rule: If greater than five instances of this sensitive information are detected in a document, and the document is shared with people inside the organization, the **Block access to content** action restricts the permissions for the file, and the **Send a notification** action allows people to override the actions in this rule by providing a business justification. Your organization's business sometimes requires internal people to share PII data, and you don't want your DLP policy to block this work. 
    
3. Third rule: If greater than five instances of this sensitive information are detected in a document, and the document is shared with people outside the organization, the **Block access to content** action restricts the permissions for the file, and the **Send a notification** action does not allow people to override the actions in this rule because the information is shared externally. Under no circumstances should people in your organization be allowed to share PII data outside the organization. 
    
Here are some fine points to understand about using a policy tip to override a rule:
  
- The option to override is per rule, and it overrides all of the actions in the rule (except sending a notification, which can't be overridden).
    
- It's possible for content to match several rules in a DLP policy, but only the policy tip from the most restrictive, highest-priority rule will be shown. For example, a policy tip from a rule that blocks access to content will be shown over a policy tip from a rule that simply sends a notification. This prevents people from seeing a cascade of policy tips.
    
- If the policy tips in the most restrictive rule allow people to override the rule, then overriding this rule also overrides any other rules that the content matched.
    
## Policy tips on OneDrive for Business sites and SharePoint Online sites

When a document on a OneDrive for Business site or SharePoint Online site matches a rule in a DLP policy, and that rule uses policy tips, the policy tips display special icons on the document:
  
1. If the rule sends a notification about the file, the warning icon appears.
    
2. If the rule blocks access to the document, the blocked icon appears.
    
   ![Policy tip icons on documents in a OneDrive account](../media/d3e9f772-03f9-4d28-82f8-3064784332a2.png)
  
To take action on a document, you can select an item \> choose **Information** ![Information pane icon](../media/50b6d51b-92b4-4c5f-bb4b-4ca2d4aa3d04.png) in the upper-right corner of the page to open the details pane \> **View policy tip**.
  
The policy tip lists the issues with the content, and if the policy tips are configured with these options, you can choose **Resolve**, and then **Override** the policy tip or **Report** a false positive. 
  
![Information pane showing policy tip](../media/0a191e70-80f0-4702-90f4-7a5b7aabcaab.png)
  
![Policy tip with option to override](../media/e250bff9-41d5-4ce4-82ea-1dc2d043fab1.png)
  
DLP policies are synced to sites and contented is evaluated against them periodically and asynchronously, so there may be a short delay between the time you create the DLP policy and the time you begin to see policy tips. There may be a similar delay from when you resolve or override a policy tip to when the icon on the document on the site goes away.
  
### Default text for policy tips on sites

By default, policy tips display text similar to the following for an item on a site. The notification text is configured separately for each rule, so the text that's displayed differs depending on which rule is matched.

|**If the DLP policy rule does this…**|**Then the default policy tip says this…**|
|:-----|:-----|
|Sends a notification but doesn't allow override  <br/> |This item conflicts with a policy in your organization.  <br/> |
|Blocks access, sends a notification, and allows override  <br/> |This item conflicts with a policy in your organization. If you don't resolve this conflict, access to this file might be blocked.  <br/> |
|Blocks access and sends a notification  <br/> |This item conflicts with a policy in your organization. Access to this item is blocked for everyone except its owner, last modifier, and the primary site collection administrator.  <br/> |
   
### Custom text for policy tips on sites

You can customize the text for policy tips separately from the email notification. Unlike custom text for email notifications (see above section), custom text for policy tips does not accept HTML or tokens. Instead, custom text for policy tips is plain text only with a 256-character limit.
  
## Support Matrix for DLP policy tips across Microsoft apps


|**App and platform**|**DLP policy tip support**|**Sensitive information types supported**|**Conditions and exceptions supported**|**Comments**|
|--------------------|--------------------------|-----------------------------------------|------------------------------------|------------|
|Outlook Web Access <br/> |Yes <br/> |All <br/> |Subset  <br/> |See  [DLP predicates supported for DLP policy tips in Outlook Web Access](#dlp-predicates-supported-for-dlp-policy-tips-in-outlook-web-access)  <br/> |
|Outlook Desktop (Outlook 2013 and beyond) <br/> |Yes <br/> |Subset <br/> |Subset  <br/> |See [Outlook 2013 and later supports showing policy tips for only some sensitive information types](#outlook-2013-and-later-supports-showing-policy-tips-for-only-some-sensitive-information-types) and [Outlook 2013 and later supports showing policy tips for only some conditions and exceptions](#outlook-2013-and-later-supports-showing-policy-tips-for-only-some-conditions-and-exceptions) for details on support for sensitive information types and DLP conditions and actions supported for showing DLP policy tips on Outlook Desktop. <br/> |
|Outlook Mobile (iOS, Android)/Outlook Mac <br/> |No <br/> |None <br/> |None <br/> |DLP policy tips are not supported on Outlook mobile <br/> |
|Sharepoint Online/One Drive for Business Web client <br/> |Yes <br/> |All <br/> |All SPO/ODB conditions and exceptions in DLP <br/> | <br/> |
|Sharepoint Desktop/ One Drive for Business Desktop client <br/> |No <br/> |None <br/> |None <br/> |DLP policy tips are not supported on Sharepoint or OneDrive desktop client apps <br/> |
|Word, Excel, Powerpoint Web Client <br/> |Yes <br/> |All <br/> |All SPO/ODB conditions and exceptions in DLP <br/> |DLP policy tip is supported if the document is hosted on SPO or ODB web app and the DLP policy is already stamped. <br/> |
|Word, Excel, Powerpoint Desktop Client <br/> |Yes <br/> |Subset <br/> |Subset <br/> |Policy tips for WXP client apps will work for documents stored on Sharepoint Online or One Drive for Business Sites for all DLP policies which have exactly the below or a subset of conditions or actions in the DLP policy :<br/> Content contains sensitive information types, Access Scope (Content is shared internally/externally), Notify User (policy tips/user notifications), Block everyone, Incident reports <br/><br/>If any other condition or action is present, the DLP policy tip for that policy will not appear in the desktop apps of Word, Excel or PowerPoint. <br/> |
|Word, Excel, Powerpoint Mobile Client <br/> |No <br/> |None <br/> |None <br/> |DLP policy tips are not supported in mobile apps for Office. <br/> |
|Teams Web/ Teams Desktop/ Teams Mobile/ Teams Mac <br/> |Yes <br/> |All <br/> |All Teams conditions and exceptions in DLP policy <br/> |Policy tips will show when a message is flagged as : “This message has been flagged. What can I do?” <br/><br/> When clicking the link, the user can review the sensitive info types detected and override or report an issue if allowed by the admin <br/><br/> Note that no policy tips are shown for files. When the recipient tries to access the document, they might get access denied if not allowed. <br/> |
|Desktop Endpoint Devices <br/> |Yes <br/> |Subset  <br/> |All Endpoint DLP conditions and exceptions and actions in DLP policy <br/> |See Data Loss Prevention on Endpoint supports policy tips for only some sensitive information types for more details <br/> |
|Mac devices <br/> |No <br/> |None <br/> |None <br/> |Data loss prevention policies are not enforceable on Mac devices today <br/> |
|3rd party cloud apps <br/> |No <br/> |None <br/> |None <br/> |Data Loss Prevention <br/> |
|On-prem <br/> |No <br/> |None <br/> |None <br/> | <br/> |

## Data Loss Prevention on Endpoint supports policy tips for only some sensitive information types

The list of out-of-the-box sensitive information types that will be detected in documents residing on endpoint devices are the following :

|**Sensitive information types**|**Sensitive information types**|**Sensitive information types**|
|:-----|:-----|:-----|
|Credit Card Number <br/> |Brazil National ID Card (RG) <br/> |Greek Tax identification Number <br/> |
|EU Debit Card Number <br/> |Brazil Legal Entity Number (CNPJ) <br/> |Hungary Personal Identification Number <br/> |
|U.S. Social Security Number (SSN) <br/> |Denmark Personal Identification Number <br/> |Hungary Tax identification Number <br/> |
|U.S. Individual Taxpayer Identification Number (ITIN) <br/> |Belgium National Number <br/> |Italy Fiscal Code <br/> |
|Canada Social Insurance Number <br/> |Germany Identity Card Number <br/> |Lithuania Personal Code <br/> |
|U.K. National Insurance Number (NINO) <br/> |Ireland Personal Public Service (PPS) Number <br/> |Malta Identity Card Number <br/> |
|U.K. Driver's License Number <br/> |Netherlands Citizen's Service (BSN) Number <br/> |Slovenia Unique Master Citizen Number <br/> |
|German Driver's License Number <br/> |Norway Identity Number <br/> |Sweden Tax Identification Number <br/> |
|German Passport Number <br/> |Portugal Citizen Card Number <br/> |Latvia Personal Code <br/> |
|U.K. National Health Service Number <br/> |Croatia Personal Identification (OIB) Number <br/> |Spain DNI <br/> |
|France Social Security Number (INSEE) <br/> |Croatia Identity Card Number <br/> |Malta Tax ID Number <br/> |
|France Driver's License Number <br/> |Czech Personal Identity Number <br/> |Spain Tax Identification Number <br/> |
|Canada Driver's License Number <br/> |Greece National ID Card <br/> |U.K. Unique Taxpayer Reference Number <br/> |
|U.S. Driver's License Number <br/> |South Africa Identification Number <br/> |France Tax Identification Number (numéro SPI.) <br/> |
|Japan Driver's License Number <br/> |International Classification of Diseases (ICD-10-CM) <br/> |Germany Tax Identification Number <br/> |
|Japan Resident Registration Number <br/> |International Classification of Diseases (ICD-9-CM) <br/> |Portugal Tax Identification Number <br/> |
|Japan Social Insurance Number (SIN) <br/> |Azure Publish Setting Password <br/> |Romania Personal Numerical Code (CNP) <br/> |
|Japan Passport Number <br/> |Azure Storage Account Key (Generic) <br/> |Slovakia Personal Number <br/> |
|Japan Bank Account Number <br/> |SQL Server Connection String <br/> |Austria Driver's License Number <br/> |
|France Passport Number <br/> |Azure DocumentDB Auth Key <br/> |Belgium Driver's License Number <br/> |
|U.S. / U.K. Passport Number <br/> |Azure IAAS Database Connection String and Azure SQL Connection String <br/> |Bulgaria Driver's License Number <br/> |
|SWIFT Code <br/> |Azure IoT Connection String <br/> |Croatia Driver's License Number <br/> |
|U.S. Bank Account Number <br/> |Azure Redis Cache Connection String <br/> |Cyprus Driver's License Number <br/> |
|ABA Routing Number <br/> |Azure SAS <br/> |Czech Driver's License Number <br/> |
|Drug Enforcement Agency (DEA) Number <br/> |Azure Service Bus Connection String <br/> |Denmark Driver's License Number <br/> |
|Australia Medical Account Number <br/> |Azure Storage Account Key <br/> |Estonia Driver's License Number <br/> |
|Australia Tax File Number <br/> |EU Passport Number <br/> |Greece Driver's License Number <br/> |
|Israel National ID <br/> |EU National Identification Number <br/> |Hungary Driver's License Number <br/> |
|New Zealand Ministry of Health Number <br/> |EU Social Security Number (SSN) or Equivalent ID <br/> |Ireland Driver's License Number <br/> |
|Spain Social Security Number (SSN) <br/> |EU Driver's License Number <br/> |Latvia Driver's License Number <br/> |
|Sweden National ID <br/> |EU Tax Identification Number (TIN) <br/> |Lithuania Driver's License Number <br/> |
|Australia Bank Account Number <br/> |CSCAN-AZURE0060 Azure Storage Account Shared Access Signature <br/> |Luxemburg Driver's License Number <br/> |
|Australia Passport Number <br/> |CSCAN-GENERAL0140 General Symmetric Key <br/> |Malta Driver's License Number <br/> |
|Canada Bank Account Number <br/> |Australian Company Number <br/> |Netherlands Driver's License Number <br/> |
|Canada Passport Number <br/> |Austria Value Added Tax (VAT) Number <br/> |Poland Driver's License Number <br/> |
|Canada Personal Health Identification Number (PHIN) <br/> |Ukraine Passport Number (Domestic) <br/> |Romania Driver's License Number <br/> |
|Canada Health Service Number <br/> |Ukraine Passport Number (International) <br/> |Slovakia Driver's License Number <br/> |
|France National ID Card (CNI) <br/> |Finland European Health Insurance Number <br/> |Slovenia Driver's License Number <br/> |
|IP Address <br/> |France Health Insurance Number <br/> |Sweden Driver's License Number <br/> |
|International Banking Account Number (IBAN) <br/> |Russian Passport Number (Domestic) <br/> |Finland Driver's License Number <br/> |
|Israel Bank Account Number <br/> |Russian Passport Number (International) <br/> |Portugal Driver's License Number <br/> |
|Italy Driver's License Number <br/> |New Zealand bank account number <br/> |Spain Driver's License Number <br/> |
|Saudi Arabia National ID <br/> |New Zealand Inland Revenue number <br/> |Hungarian Social Security Number (TAJ) <br/> |
|Sweden Passport Number <br/> |Australian Business Number <br/> |Belgium Passport Number <br/> |
|U.K. Electoral Roll Number <br/> |Polish REGON Number <br/> |Cyprus Passport Number <br/> |
|Thai Population Identification Code <br/> |Swiss Social Security Number AHV <br/> |Denmark Passport Number <br/> |
|Turkish National Identification number <br/> |Germany Value Added Tax Number <br/> |Latvia Passport Number <br/> |
|Japanese Residence Card Number <br/> |Japanese My Number Personal <br/> |Lithuania Passport Number <br/> |
|Finland National ID <br/> |Japanese My Number Corporate <br/> |Luxemburg Passport Number <br/> |
|Taiwan National ID <br/> |Netherlands Value Added Tax Number <br/> |Netherlands Passport Number <br/> |
|Poland National ID (PESEL) <br/> |Italy Value Added Tax Number <br/> |Spain Passport Number <br/> |
|Poland Identity Card <br/> |Hungarian Value Added Tax Number <br/> |Austria Social Security Number <br/> |
|Poland Passport <br/> |France Value Added Tax Number <br/> |Greece Social Security Number (AMKA) <br/> |
|Finland Passport Number <br/> |Belgium Value Added Tax Number <br/> |Austria Passport Number <br/> |
|Malaysia Identity Card Number <br/> |New Zealand Driver License Number <br/> |Bulgaria Passport Number <br/> |
|South Korea Resident Registration Number <br/> |New Zealand Social Welfare Number <br/> |Croatia Passport Number <br/> |
|Singapore National Registration Identity Card (NRIC) Number <br/> |Austria Tax Identification Number <br/> |Czech Republic Passport Number <br/> |
|Taiwan Passport Number <br/> |Luxemburg National Identification Number (Non-natural persons) <br/> |Estonia Passport Number <br/> |
|Taiwan Resident Certificate (ARC/TARC) <br/> |Netherlands Tax Identification Number <br/> |Portugal Passport Number <br/> |
|Argentina National Identity (DNI) Number <br/> |Slovenia Tax Identification Number <br/> |Slovakia Passport Number <br/> |
|Chile Identity Card Number <br/> |Croatia National ID Card Number <br/> |Slovenia Passport Number <br/> |
|China Resident Identity Card (PRC) Number <br/> |Luxemburg National Identification Number (Natural persons) <br/> |Greece Passport Number <br/> |
|Hong Kong Identity Card (HKID) Number <br/> |Poland Tax Identification Number <br/> |Hungary Passport Number <br/> |
|India Unique Identification (Aadhaar) Number <br/> |Austria Identity Card <br/> |Ireland Passport Number <br/> |
|India Permanent Account Number (PAN) <br/> |Bulgaria Uniform Civil Number <br/> |Italy Passport Number <br/> |
|Indonesia Identity Card (KTP) Number <br/> |Cyprus Identity Card <br/> |Malta Passport Number <br/> |
|Philippines Unified Multi-Purpose ID Number <br/> |Cyprus Tax Identification Number <br/> |Romania Passport Number <br/> |
|Brazil CPF Number <br/> |Estonia Personal Identification Code <br/> | <br/> |

Please note that custom sensitive information types will also be detected in addition to the above out-of-the-box sensitive information types

## Policy tips in Outlook on the web and Outlook 2013 and later

When you compose a new email in Outlook on the web and Outlook 2013 and later, you'll see a policy tip if you add content that matches a rule in a DLP policy, and that rule uses policy tips. The policy tip appears at the top of the message, above the recipients, while the message is being composed.
  
![Policy tip at the top of a message being composed](../media/9b3b6b74-17c5-4562-82d5-d17ecaaa8d95.png)
  
Policy tips work whether the sensitive information appears in the message body, subject line, or even a message attachment as shown here.
  
![Policy tip showing that an attachment conflicts with a DLP policy](../media/59ae6655-215f-47d9-ad1d-39c0d1e61740.png)
  
If the policy tips are configured to allow override, you can choose **Show Details** \> **Override** \> enter a business justification or report a false positive \> **Override**.
  
![Policy tip in message expanded to show Override option](../media/28bfb997-48a6-41f0-8682-d5e62488458a.png)
  
![Policy tip dialog where you can override the policy tip](../media/f97e836c-04bd-44b4-aec6-ed9526ea31f8.png)
  
Note that when you add sensitive information to an email, there may be latency between when the sensitive information is added and when the policy tip appears.

### DLP predicates supported for DLP policy tips in Outlook Web Access

DLP policy tips in Outlook Web Access is supported for all the conditions, exceptions and actions that are applicable on Exchange workload in a DLP policy except the following conditions and corresponding exceptions:

-	Sender Domain Is
-	Recipient is a member of
-	Header contains words or phrases
-	Header matches patterns
-	Document size equals or is greater than
-	Message type is
-	Message importance is
-	Content character set contains words
-	Subject or body contains words or phrases
-	Subject or body matches patterns
-	Content character set contains words
-	Content is received from
-	Has sender overridden the policy tip 
-	Message size equals or is greater than
-	Sender AD attribute contains words or phrases
-	Sender AD attribute matches patterns
-	Document content contains words or phrases
-	Document content matches patterns

### Outlook 2013 and later supports showing policy tips for only some conditions and exceptions

Currently, Outlook 2013 and later supports showing policy tips for policies which do not contain any condition or exception apart from the below mentioned conditions and corresponding exceptions :

- Content contains sensitive information types (sensitivity labels is not supported)
- Content is shared

Note that all the conditions work for emails authored in Outlook client app, where they will match content and enforce protective actions on content. However, showing policy tips to users is not yet supported for any conditions that are used apart from the ones mentioned above.

### Outlook 2013 and later supports showing policy tips for only some sensitive information types

The list of out-of-the-box sensitive information types that will be detected for showing DLP policy tips in Outlook on Desktop (2013 and later) are the following :

|**Sensitive information types**|**Sensitive information types**|**Sensitive information types**|
|:-----|:-----|:-----|
|Credit Card Number <br/> |Canada Bank Account Number <br/> |Philippines Unified Multi-Purpose ID Number <br/> |
|EU Debit Card Number <br/> |Canada Passport Number <br/> |Brazil CPF Number <br/> |
|U.S. Social Security Number (SSN) <br/> |Canada Personal Health Identification Number (PHIN) <br/> |Brazil National ID Card (RG) <br/> |
|U.S. Individual Taxpayer Identification Number (ITIN) <br/> |Canada Health Service Number <br/> |Brazil Legal Entity Number (CNPJ) <br/> |
|Canada Social Insurance Number <br/> |France National ID Card (CNI) <br/> |Denmark Personal Identification Number <br/> |
|U.K. National Insurance Number (NINO) <br/> |IP Address <br/> |Belgium National Number <br/> |
|U.K. Driver's License Number <br/> |International Banking Account Number (IBAN) <br/> |Germany Identity Card Number <br/> |
|German Driver's License Number <br/> |Israel Bank Account Number <br/> |Ireland Personal Public Service (PPS) Number <br/> |
|German Passport Number <br/> |Italy Driver's License Number <br/> |Netherlands Citizen's Service (BSN) Number <br/> |
|U.K. National Health Service Number <br/> |Saudi Arabia National ID <br/> |Norway Identity Number <br/> |
|France Social Security Number (INSEE) <br/> |Sweden Passport Number <br/> |Portugal Citizen Card Number <br/> |
|France Driver's License Number <br/> |U.K. Electoral Roll Number <br/> |Croatia Personal Identification (OIB) Number <br/> |
|Canada Driver's License Number <br/> |Thai Population Identification Code <br/> |Croatia Identity Card Number <br/> |
|U.S. Driver's License Number <br/> |Turkish National Identification number <br/> |Czech Personal Identity Number <br/> |
|Japan Driver's License Number <br/> |Japanese Residence Card Number <br/> |Greece National ID Card <br/> |
|Japan Resident Registration Number <br/> |Finland National ID <br/> |South Africa Identification Number <br/> |
|Japan Social Insurance Number (SIN) <br/> |Taiwan National ID <br/> |International Classification of Diseases (ICD-10-CM) <br/> |
|Japan Passport Number <br/> |Poland National ID (PESEL) <br/> |International Classification of Diseases (ICD-9-CM) <br/> |
|Japan Bank Account Number <br/> |Poland Identity Card <br/> |Azure Publish Setting Password <br/> |
|France Passport Number <br/> |Poland Passport <br/> |Azure Storage Account Key (Generic) <br/> |
|U.S. / U.K. Passport Number <br/> |Finland Passport Number <br/> |SQL Server Connection String <br/> |
|SWIFT Code <br/> |Malaysia Identity Card Number <br/> |Azure DocumentDB Auth Key <br/> |
|U.S. Bank Account Number <br/> |South Korea Resident Registration Number <br/> |Azure IAAS Database Connection String and Azure SQL Connection String <br/> |
|ABA Routing Number <br/> |Singapore National Registration Identity Card (NRIC) Number <br/> |Azure IoT Connection String <br/> |
|Drug Enforcement Agency (DEA) Number <br/> |Taiwan Passport Number <br/> |Azure Redis Cache Connection String <br/> |
|Australia Medical Account Number <br/> |Taiwan Resident Certificate (ARC/TARC) <br/> |Azure SAS <br/> |
|Australia Tax File Number <br/> |Argentina National Identity (DNI) Number <br/> |Azure Service Bus Connection String <br/> |
|Israel National ID <br/> |Chile Identity Card Number <br/> |Azure Storage Account Key <br/> |
|New Zealand Ministry of Health Number <br/> |China Resident Identity Card (PRC) Number <br/> |EU Passport Number <br/> |
|Spain Social Security Number (SSN) <br/> |Hong Kong Identity Card (HKID) Number <br/> |EU National Identification Number <br/> |
|Sweden National ID <br/> |India Unique Identification (Aadhaar) Number <br/> |EU Social Security Number (SSN) or Equivalent ID <br/> |
|Australia Bank Account Number <br/> |India Permanent Account Number (PAN) <br/> |EU Driver's License Number <br/> |
|Australia Passport Number <br/> |Indonesia Identity Card (KTP) Number <br/> |EU Tax Identification Number (TIN) <br/> |

Please note that custom sensitive information types are also supported for DLP policy tips in addition to the above out-of-the-box sensitive information types

### Policy tips in the Exchange admin center vs. the Security &amp; Compliance Center

Policy tips can work either with DLP policies and mail flow rules created in the Exchange admin center, or with DLP policies created in the Security &amp; Compliance Center, but not both. This is because these policies are stored in different locations, but policy tips can draw only from a single location.
  
If you've configured policy tips in the Exchange admin center, any policy tips that you configure in the Security &amp; Compliance Center won't appear to users in Outlook on the web and Outlook 2013 and later until you turn off the tips in the Exchange admin center. This ensures that your current Exchange mail flow rules (also known as transport rules) will continue to work until you choose to switch over to the Security &amp; Compliance Center.
  
Note that while policy tips can draw only from a single location, email notifications are always sent, even if you're using DLP policies in both the Security &amp; Compliance Center and the Exchange admin center.
  
### Default text for policy tips in email

By default, policy tips display text similar to the following for email.

|**If the DLP policy rule does this…**|**Then the default policy tip says this…**|
|:-----|:-----|
|Sends a notification but doesn't allow override  <br/> |Your email conflicts with a policy in your organization.  <br/> |
|Blocks access, sends a notification, and allows override  <br/> |Your email conflicts with a policy in your organization.  <br/> |
|Blocks access and sends a notification  <br/> |Your email conflicts with a policy in your organization.  <br/> |
   
## Policy tips in Excel, PowerPoint, and Word

When people work with sensitive content in the desktop versions of Excel, PowerPoint, and Word, policy tips can notify them in real time that the content conflicts with a DLP policy. This requires that:
  
- The Office document is stored on a OneDrive for Business site or SharePoint Online site.
    
- The site is included in a DLP policy that's configured to use policy tips.
    
Office desktop programs automatically sync DLP policies directly from Office 365, and then scan your documents to ensure that they don't conflict with your DLP policies and display policy tips in real time.

> [!NOTE]
> Office desktop apps scan documents themselves to determine if DLP policy tips should be shown; they do not show policy tips that SharePoint Online sites or OneDrive for Business sites have already determined should be shown on a file. As a result, you may not always see a DLP policy tip in the desktop apps that you see in the SharePoint Online sites or OneDrive for Business sites. In contrast, the Office applications on the web only show DLP policy tips that SharePoint Online sites or OneDrive for Business sites have already determined should be shown.
  
Depending on how you configure the policy tips in the DLP policy, people can choose to simply ignore the policy tip, override the policy with or without a business justification, or report a false positive.
  
Policy tips appear on the Message Bar.
  
![Message bar shows policy tip in Excel 2016](../media/7002ff54-1656-4a6c-993f-37427d6508c8.png)
  
And policy tips also appear in the Backstage view (on the **File** tab). 
  
![Backstage shows policy tip in Excel 2016](../media/44c561f6-8f3f-4878-b1b0-b7543f8a4120.png)
  
If policy tips in the DLP policy are configured with these options, you can choose **Resolve** to **Override** a policy tip or **Report** a false positive. 
  
![Options on policy tip in Backstage in Excel 2016](../media/5b3857ba-907e-456e-ae43-888b594c049c.png)
  
In each of these Office desktop programs, people can choose to turn off policy tips. If turned off, policy tips that are simple notifications will not appear on the Message Bar or Backstage view (on the **File** tab). However, policy tips about blocking and overriding will still appear, and they will still receive the email notification. In addition, turning off policy tips does not exempt the document from any DLP policies that have been applied to it. 
  
### Default text for policy tips in Excel 2016, PowerPoint 2016, and Word 2016

By default, policy tips display text similar to the following on the Message Bar and Backstage view of an open document. The notification text is configured separately for each rule, so the text that's displayed differs depending on which rule is matched.

|**If the DLP policy rule does this…**|**Then the default policy tip says this…**|
|:-----|:-----|
|Sends a notification but doesn't allow override  <br/> |This file conflicts with a policy in your organization. Go to the **File** menu for more information.  <br/> |
|Blocks access, sends a notification, and allows override  <br/> |This file conflicts with a policy in your organization. If you don't resolve this conflict, access to this file might be blocked. Go to the **File** menu for more information.  <br/> |
|Blocks access and sends a notification  <br/> |This file conflicts with a policy in your organization. If you don't resolve this conflict, access to this file might be blocked. Go to the **File** menu for more information.  <br/> |
   
### Custom text for policy tips in Excel, PowerPoint, and Word

You can customize the text for policy tips separately from the email notification. Unlike custom text for email notifications (see above section), custom text for policy tips does not accept HTML or tokens. Instead, custom text for policy tips is plain text only with a 256-character limit.
  
## More information

- [Overview of data loss prevention policies](data-loss-prevention-policies.md)
    
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
- [DLP policy conditions, exceptions, and actions (preview)](./dlp-microsoft-teams.md?view=o365-worldwide)
    
- [Create a DLP policy to protect documents with FCI or other properties](protect-documents-that-have-fci-or-other-properties.md)
    
- [What the DLP policy templates include](what-the-dlp-policy-templates-include.md)
    
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
