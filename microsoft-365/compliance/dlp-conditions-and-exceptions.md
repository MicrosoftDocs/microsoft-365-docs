---
title: "DLP policy conditions and exceptions (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "learn about dlp policy conditions and exceptions"
---

# DLP policy conditions and exceptions (preview)

Conditions and exceptions in DLP policies identify sensitive items that the policy is applied to. Conditions define what to include and exceptions define what to exclude. For every condition there is a corresponding exception and they use the exact same syntax.

 Most conditions and exceptions have one property that supports one or more values. For example, if the DLP policy is being applied to Exchange emails, the **The sender** is condition requires the sender of the message. Some conditions have two properties. For example, the **A message header includes any of these words** condition requires one property to specify the message header field, and a second property to specify the text to look for in the header field. Some conditions or exceptions don’t have any properties. For example, the **Attachment is password protected** condition simply looks for attachments in messages that are password protected.

## Conditions and exceptions for DLP policies

The tables in the following sections describe the conditions and exceptions that are available in DLP.

- [Senders](#senders)
- [Recipients](#recipients)
- [Message subject or body](#message-subject-or-body)
- [Attachments](#attachments)
- [Message headers](#message-headers)
- [Message properties](#message-properties)

## Senders


|**condition or exception in DLP**  |**condition/exception parameters in Microsoft 365 PowerShell** |**property type**  |**description**|
|---------|---------|---------|---------|
|Sender is |condition: *From* <br/> exception: *ExceptIfFrom*      |Addresses |     Messages that are sent by the specified mailboxes, mail users, mail contacts, or Microsoft 365 groups in the organization.|
|Sender IP address is     |condition: *SenderIPRanges*<br/> exception: *ExceptIfSenderIPRanges*         |  IPAddressRanges       | Messages where the sender's IP address matches the specified IP address, or falls within the specified IP address range.       |
|Sender address contains words   | condition: *FromAddressContainsWords* <br/> exception: *ExceptIfFromAddressContainsWords*        |   Words      |   Messages that contain the specified words in the sender's email address.|
| Sender address matches patterns    | condition: *FromAddressMatchesPatterns* <br/> exception: *ExceptFromAddressMatchesPatterns*       |      Patterns   |  Messages where the sender's email address contains text patterns that match the specified regular expressions.  |
|Sender domain is  |  condition: *SenderDomainIs* <br/> exception: *ExceptIfSenderDomainIs*       |DomainName         |     Messages where the domain of the sender's email address matches the specified value. If you need to find sender domains that *contain* the specified domain (for example, any subdomain of a domain), use **The sender address matches**(*FromAddressMatchesPatterns*) condition and specify the domain by using the syntax: '\.domain\.com$'.    |

## Recipients

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell** |	**property type** |	**description**|
|---------|---------|---------|---------|
|Recipient is|	condition: *SentTo* <br/> exception: *ExceptIfSentTo* | Addresses |	Messages where one of the recipients is the specified mailbox, mail user, or mail contact in the organization. The recipients can be in the **To**, **Cc**, or **Bcc** fields of the message.|
|Recipient domain is|	condition: *RecipientDomainIs* <br/> exception: *ExceptIfRecipientDomainIs* |	DomainName |	Messages where the domain of the sender's email address matches the specified value.|
|Recipient address contains words|	condition: *RecipientAddressContainsWords* <br/> exception: *ExceptIfRecipientAddressContainsWords*|	Words|	Messages that contain the specified words in the recipient's email address. <br/>**Note**: This condition doesn't consider messages that are sent to recipient proxy addresses. It only matches messages that are sent to the recipient's primary email address.|
|Recipient address matches patterns| condition: *RecipientAddressMatchesPatterns* <br/> exception: *ExceptIfRecipientAddressMatchesPatterns*|	Patterns	|Messages where a recipient's email address contains text patterns that match the specified regular expressions. <br/> **Note**: This condition doesn't consider messages that are sent to recipient proxy addresses. It only matches messages that are sent to the recipient's primary email address.|
|Sent to member of|	condition: *SentToMemberOf* <br/> exception: *ExceptIfSentToMemberOf*|	Addresses|	Messages that contain recipients who are members of the specified distribution group, mail-enabled security group, or Microsoft 365 group. The group can be in the **To**, **Cc**, or **Bcc** fields of the message.|

## Message subject or body

|**condition or exception in DLP** | **condition/exception parameters in Microsoft 365 PowerShell** |**property type**|	**description**|
|---------|---------|---------|---------|
|Subject contains words or phrases|	condition: *SubjectContainsWords* <br/> exception: *ExceptIf SubjectContainsWords*|	Words	|Messages that have the specified words in the Subject field.|
|Subject matches patterns|condition: *SubjectMatchesPatterns* <br/> exception: *ExceptIf SubjectMatchesPatterns*|Patterns	|Messages where the Subject field contain text patterns that match the specified regular expressions.|
|Content contains|	condition: *ContentContainsSensitiveInformation* <br/> exception *ExceptIfContentContainsSensitiveInformation*|	SensitiveInformationTypes|	Messages or documents that contain sensitive information as defined by data loss prevention (DLP) policies.|


## Attachments

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell**|	**property type**	|**description**|
|---------|---------|---------|---------|
|Attachment is password protected|condition: *DocumentIsPasswordProtected* <br/> exception: *ExceptIfDocumentIsPasswordProtected*|none| Messages where an attachment is password protected (and therefore can't be scanned). Password detection only works for Office documents and .zip files.|
|Attachment’s file extension is|condition: *ContentExtensionMatchesWords* <br/> exception: *ExceptIfContentExtensionMatchesWords*|	Words	|Messages where an attachment's file extension matches any of the specified words.|
|Any email attachment’s content could not be scanned|condition: *DocumentIsUnsupported* <br/>exception: *ExceptIf DocumentIsUnsupported*|	n/a|	Messages where an attachment isn't natively recognized by Exchange Online.|
|Any email attachment’s content didn’t complete scanning|	condition: *ProcessingLimitExceeded* <br/> exception: *ExceptIfProcessingLimitExceeded*|	n/a	|Messages where the rules engine couldn't complete the scanning of the attachments. You can use this condition to create rules that work together to identify and process messages where the content couldn't be fully scanned.|
|Document name contains words|condition: *DocumentNameMatchesWords* <br/> exception: *ExceptIfDocumentNameMatchesWords* |Words	|Messages where an attachment's file name matches any of the specified words.|
|Document name matches patterns|condition: *DocumentNameMatchesPatterns* <br/> exception: *ExceptIfDocumentNameMatchesPatterns*|	Patterns	|Messages where an attachment's file name contains text patterns that match the specified regular expressions.|
|Document property is|condition: *ContentPropertyContainsWords* <br/> exception: *ExceptIfContentPropertyContainsWords*	|Words|	Messages or documents where an attachment's file extension matches any of the specified words.|
|Document size equals or is greater than| condition: *DocumentSizeOver* <br/> exception: *ExceptIfDocumentSizeOver*|	Size	|Messages where any attachment is greater than or equal to the specified value.|

## Message Headers

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell**|	**property type**|	**description**|
|---------|---------|---------|---------|
|Header contains words or phrases|condition: *HeaderContainsWords* <br/> exception: *ExceptIfHeaderContainsWords*|	Hash Table	|Messages that contain the specified header field, and the value of that header field contains the specified words.|
|Header matches patterns|	condition: *HeaderMatchesPatterns* <br/> exception: *ExceptIfHeaderMatchesPatterns*|	Hash Table	|Messages that contain the specified header field, and the value of that header field contains the specified regular expressions.|

## Message properties

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell**|	**property type**	|**description**|
|---------|---------|---------|---------|
|Message size over|condition: *MessageSizeOver* <br/> exception: *ExceptIfMessageSizeOver*|	Size	|Messages where the total size (message plus attachments) is greater than or equal to the specified value. <br/>**Note**: Message size limits on mailboxes are evaluated before mail flow rules. A message that's too large for a mailbox will be rejected before a rule with this condition is able to act on the message.|

