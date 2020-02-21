---
title: "Use mailbox auditing records to investigate compromised accounts"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MET150
ms.assetid: 
description: "Use the MailItemsAccessed mailbox auditing action to perform forensic investigations of compromised user accounts."
---

# Use mailbox auditing records to investigate compromised accounts

A compromised user account (also called an *account takeover*) is a type of attack an attacker gains to a user account and operates as the user. These types of attacks sometimes cause more damage than the attacker may have intended. When investigating compromised email accounts, you have to assume that more mail data was compromised than may be indicated by tracing the attacker’s actual presence. Depending on the type of data in email messages, you have to assume that sensitive information was compromised or face regulatory fines unless you can prove that sensitive information wasn’t exposed. For example, HIPAA-regulated organizations face significant fines if there is evidence that patient health information (PHI) was exposed. In these cases, attackers are unlikely to be interested in PHI, but organizations still must report data breaches unless they can prove otherwise.

To help you with investigating compromise email accounts, we’re now auditing accesses of mail data by mail protocols and clients with the *MailItemsAccessed* mailbox auditing action. This new audited action will help investigators better understand email data breaches and help you identify the scope of compromises to specific mail items that may been compromised. The goal of using this new auditing action is forensics defensibility to help assert that a specific piece of mail data was not compromised. If an attacker gained access to a specific piece of mail, Exchange Online audits the event even though there is no indication that the mail item was actually read.

> [!NOTE]
> Access to user mailboxes by eDiscovery searches is audited separately in the Microsoft 365 audit log. eDiscovery won't generate MailItemsAccessed audit records. For more information, see [Search for eDiscovery activities in the Microsoft 365 audit log](search-for-ediscovery-activities-in-the-audit-log.md).

## The MailItemsAccessed mailbox auditing action

The new MailItemsAccessed action is part of the new [Advanced Audit](advanced-audit.md) functionality. It's part of [Exchange mailbox auditing](https://docs.microsoft.com/en-us/office365/securitycompliance/enable-mailbox-auditing#mailbox-auditing-actions) and is enabled by default for users that are assigned an Office 365 or Microsoft 365 E5 license or for organizations with an Microsoft 365 E5 Compliance add-on subscription.

The MailItemsAccessed mailbox auditing action covers all mail protocols: POP, IMAP, MAPI, EWS, Exchange ActiveSync, and REST. It also covers both types of accessing mail: *sync* and *bind*.

### Auditing sync access

Sync operations are only recorded when a mailbox is accessed by a desktop version of the Outlook client for Windows or Mac. During the sync operation, these clients typically download a large set of mail items from the cloud to a local computer. The audit volume for sync operations are huge. So, instead of generating an audit record for each mail item that’s synched, we just generate an audit event for the mail folder containing items that were synched. This makes the assumption that *all* mail items in the synched folder have been compromised. The access type is recorded in the OperationsProperties field within the AuditData property of the audit record and can be filtered by running the following command:

```powershell
Search-MailboxAuditLog -Identity kwok -StartDate 1/5/2019 -EndDate 1/18/2019 -Operations MailItemsAccessed -ResultSize 10000 -ShowDetails | Where {$\_.OperationProperties -like "\*MailAccessType:Sync\*"}
```

![](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png)

### Auditing bind access

A bind operation is an individual access to an email message. For bind access, the internet-message-id of individual messages will be recorded in the audit record. The MailItemsAccessed audit action records bind operations and then aggregates into a single audit record. All bind operations that occur within a 2-minute interval are aggregated in a single audit record. in the Folders field within the AuditData property. Each message that was accessed is identified by its internet-message-id. The number of bind operations that were aggregated in the record is displayed in the OperationCount field in the AuditData property.

## ![Runspaceld . e6fe43db-2e7f-4453-8d9d-cf62401e182f Operati on Mai 1 ItemsAccessed Operati onResu1t Succeeded L ogonType Owner External Access False DestF01 derid Des tF01 derpathName Folderld Fol derpathName Fol derName MemberRi ghts Membersi d MemberUpn (Windows NT 10.0; i entIPAddress Cl i entMachi neName Clientp rocessName Clientversion Internal L ogonType Owner Mai 1 boxOwnerUPN Mai 1 boxOwnerSi d Des tMai 1 boxOwne rlJPN Des tMai 1 boxOwnerSi d Des tMai 1 boxGui d Cros sMai 1 boxoperati on L ogonUserDi spl ayName L ogonUserSid Sourceltems SourceF01ders SourceItemIdsList Sourceltemsubj ectsList SourceItemAttachmentsList SourceItemF01 de rpathNamesL i st SourceF01 derpathNamesList Sou rnetMess ageldsL i s t Itemld Itemsubj ect ItemAttachments ItemInternetMessageId Di rtyP roperti es Originatingserver Sessi onld Operati onP roperti es Audi tope rati onsCountInAgg regatedRecord .2 AggregatedRecordF01 dersData Appld Cl i entAppId Mai 1 boxGui d Mai 1 boxRes 01 vedOwne rName Las tAccessed Identi ty Isvalid Obj ectState wow64 ; Trident/ 7 . O; Touch ; rv:11.O) like Gecko; admi naa830edad9050849405E18123021. onmi crosoft . com . s-1-5-21-724521725-2336880675-2689004279-15574744 . s-1-5-21-724521725-2336880675-2689004279-15574744 DM5PROOMB0424 (15. 20.1539. 000) . 83cfdb36-f76f-4f64-aafd-8092c3c5c630 " • "L gAAAABLy1EVJMgj R08x3DbRqCQZAQBoehgC2DS JT5 aSH/QIKem4AAAAAAEMAAAB " , "path" : "\\\\lnbox" , "Folderltems " : \[{"InternetMessageId " : " \<SN2PROOMB01571C097E E2C3C01A5F3469B58EOaSN2PROOMB0157 . namprdOO . prod . outl 00k . com\> " } , {"1nternetMessageId " • " \<SN2PROOMB01577327C464992FC9DCC85EB58EoaSN2PROOMB0157 . namprdOO . prod . outl 00k . com\> " } \] 6fOOb664-d723-4414-9aa3-95d45e6a3656 . 1/4/2019 PM AAMkADBj NGF 1 NTM4LW3NTktNGJ jMS1i Y j 15 L WU 3ZTkZZGQ4Yj CXZABGAAAAAABLy1EVJMgj R08x 3DbRqCQZBWBoehgC2DS JT5 aSH/QIKem4AAABhOUaAABoehgC2DS JT5 aSH/QIKem4AAADBh1 k True New ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image2.png)


## Throttling MailItemsAccessed auditing records

If more than 1000 MailItemsAccessed audit records are generated in less than 24 hours, Exchange Online will stop generating auditing records for MailItemsAccessed activity. Exchange halt *MailItemsAccessed* auditing. *MailItemsAccessed* auditing will be resumed following a 24-hour period. When a mailbox is throttled, MailItemsAccessed activity will not be logged for 24 hours after the mailbox was throttled. If this occurs, there’s a potential that mailbox could have been compromised during this period. Here’s a few things to keep in mind about throttling:

  - Less than 1% of all mailboxes in Exchange Online are throttled

  - When a mailbox is throttling, only audit records for MailItemsAccessed activity are not audited. Other mailbox auditing actions aren’t affected.

  - Mailboxes are throttled only for Bind operations. Audit records for sync operations are not throttled.

You can determine whether throttling has occurred based on the “OperationProperties” field through the command below. If “IsThrottled” is true, there were *MailItemsAccessed* activity that was not recorded in the auditing.

> Search-MailboxAuditLog -Identity kwok -StartDate 1/5/2019 -EndDate 1/18/2019 -Operations MailItemsAccessed -ResultSize 10000 -ShowDetails |
> 
> Where {$\_.OperationProperties -like "\*IsThrottled:True\*"} | fl \*

We hope this post has helped you understand more about how to use your audit data effectively to protect your organization. Leave us a comment below with feedback\!

## Use audit records for MailItemsAccessed for forensic investigations

The mainstream scenario for the *MailItemsAccessed* action is in some ways a paradox: EXO auditing records mail data access activity so that you can be confident that a piece of mail data has not been compromised. For this reason, in circumstances where we’re not certain that some data has been accessed, we assume that it has.

Using *MailItemsAccessed* audit records for forensics purposes is typically performed after a data breach has been resolved and the attacker has been evicted. To begin your investigation, you should identify the set of mailboxes that they have been compromised and determine the timeframe when attacker had access to mailboxes in your organization. Then, you can use the Search-UnifiedAuditLog or Search-MailboxAudit log cmdlets in Exchange Online PowerShell to search audit records that correspond to the data breach. For example, you can run one of the following commands to search for MailItemsAccessed audit records:

> Search-UnifiedAuditLog -StartDate 01/06/2020 -EndDate 02/20/2020 -UserIds meganb,nestorw -Operations MailItemsAccessed -ResultSize 1000

1.  Check whether the mailbox has been throttled. If so, this would mean that some mailbox auditing records would not have been logged. In the case that any audit records have the “IsThrottled” is “True,” you should assume that for a 24-hour period afterwards that record was generated, that any access to the mailbox was not audited and that all mail data has been compromised.

> To search for MailItemsAccessed records where the mailbox was throttled, run the following command:
> 
> Unified audit log
> 
> Search-UnifiedAuditLog -StartDate 01/06/2020 -EndDate 02/20/2020 -UserIds meganb,nestorw -Operations MailItemsAccessed -ResultSize 1000 | Where {$\_.AuditData -like '\*"IsThrottled","Value":"True"\*'} | FL
> 
> Mailbox audit log

2.  Check for sync activities. If an attacker uses an email client to downloaded messages in a mailbox, they can disconnect the computer from the Internet and access the messages locally without interacting with the server. This means that mailbox auditing would not be able to audit these activities.

> To search for MailItemsAccessed records where the mail items where accessed by a sync operation, run the following command:
> 
> Unified audit log
> 
> Search-UnifiedAuditLog -StartDate 01/06/2020 -EndDate 02/20/2020 -UserIds meganb,nestorw -Operations MailItemsAccessed -ResultSize 1000 | Where {$\_.AuditData -like '\*"MailAccessType","Value":"Sync"\*'} | FL
> 
> Mailbox audit log

3.  Check sync activities to determine in any of them have occurred in the same context as the one used by the attacker access the mailbox. Context is identified and differentiated by the IP address of the client computer used to access the mailbox and the mail protocol. Use the properties listed below to investigate. These properties are located in the AuditData JSON object. If any of the syncs occur in the same context as the attacker activity, assume the attacker has synced all mail items in the compromise mailbox to their client, which means the entire mailbox has probably been compromised.

| Property         | Description |
| :---------------- | :----------|
| ClientInfoString | Describes protocol, client (includes version)|
| ClientIPAddress  | IP address of the client machine.|
| SessionId        | Session ID helps to differentiate attacker actions vs day-to-day user activities on the same account (in the case of an compromised account)|
| UserId           | UPN of the user reading the message.|

4.  Check for bind activities. After performing steps 2 and step 3, you can be confident that all other access to email messages by the attacker will be captured in the MailItemsAccessed audit records that have a MailAccessType property with a value of “Bind”.

> To search for MailItemsAccessed records where the mail items where accessed by a Bind operation, run the following command.
> 
> Unified audit log
> 
> Search-UnifiedAuditLog -StartDate 01/06/2020 -EndDate 02/20/2020 -UserIds meganb,nestorw -Operations MailItemsAccessed -ResultSize 1000 | Where {$\_.AuditData -like '\*"MailAccessType","Value":"Bind"\*'} | FL
> 
> Mailbox audit log
> 
> Note that the email messages that were access are identified by their internet message Id. You can also check to see if any audit records have the same context as the ones for other attacker activity.
> 
> You can use the audit data for bind operations in two different ways:

  - Access or collect all email messages the attacker accessed by using the internet-message-id to find them and then checking to see if any of those messages contains sensitive information.

  - Use the internet-message-id to search audit records related to a set of potentially sensitive email messages. This is useful if you’re just concerned about a small number of messages.


## Filtering duplicate audit records

Duplicating audit records for the same bind operations that occur within an hour of each other are filtered out to remove auditing noise. Sync operations are also filtered out at one-hour intervals. The exception to this de-duplication process occurs if, for the same internet-message-id, any of the properties described in the following table are different. If one of these properties is different in a duplicate operation, a new audit record is generated. This process is described in more detail in the next section.

| Property         | Description                                                                                                                                                                                                                                                                                                                                                                                            |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| ClientInfoString | The client protocol, client used to access the mailbox (includes the version)                                                                                                                                                                                                                                                                                                                          |
| ClientIPAddress  | IP address of the client computer.                                                                                                                                                                                                                                                                                                                                                                     |
| Folders          | The full folder path of the mail item that was accessed.                                                                                                                                                                                                                                                                                                                                               |
| Logon\_type      | The logon type of the user who performed the action. The logon types (and their corresponding Enum value) are Owner (0), Admin (1), or Delegate (2).                                                                                                                                                                                                                                                   |
| MailAccessType   | Whether the access is a bind or a sync operation.                                                                                                                                                                                                                                                                                                                                                      |
| Mailbox UPN      | The UPN of the mailbox where the message being read is located.                                                                                                                                                                                                                                                                                                                                        |
| User             | The UPN of the user reading the message.                                                                                                                                                                                                                                                                                                                                                               |
| Session Id       | The Session Id helps to differentiate attacker actions and day-to-day user activities in the same mailbox (in the case of account compromise) For more information about sessions, see \[Contextualizing Attacker Activity within Sessions in Exchange Online\]( https://techcommunity.microsoft.com/t5/exchange-team-blog/contextualizing-attacker-activity-within-sessions-in-exchange/ba-p/608801). |

## Identifying different operation contexts between different audit records

It’s common that an attacker may access a mailbox at the same time the mailbox owner is accessing it. To differentiate between access by the attacker and the mailbox owner, there are audit record properties that define the context of the access As previously explained, when the values for these properties are different, even when the activity occurs within the aggregation interval, separate audit records are generated. In the following example, there are three different audit records. Each one is differentiated by the Session Id and ClientIPAddress properties. The messages that were accessed are also identified.

<table>
<thead>
<tr class="header">
<th><em>Audit record 1</em></th>
<th><em>Audit record 2</em></th>
<th><em>Audit Record 3</em></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ClientIPAddress 1</p>
<p>SessionId 1</p></td>
<td><p>ClientIPAddress 2</p>
<p>SessionId 2</p></td>
<td><p>ClientIPAddress 1</p>
<p>SessionId 3</p></td>
</tr>
<tr class="even">
<td><p>internet-message-id_a</p>
<p>internet-message-id_d</p>
<p>internet-message-id_e</p>
<p>internet-message-id_f</p></td>
<td><p>internet-message-id_a</p>
<p>internet-message-id_c</p></td>
<td>internet-message-id_b</td>
</tr>
</tbody>
</table>

From the screenshot below, even though we are accessing mail from EWSEditor and OWA simultaneously, the accesses are collated into different audit records depending on the context under which the access took place (“ClientInfoString”).

![PS C:
lientlnfostri ng
Las tAccessed
Search—Mai 1 boxAudi tLog
\-Identi ty
admi n
\-ShowDetai1s -Operati ons
Mai 1 ItemsAccessed
\-Resul tsize
2000 |
Select LastAccessed ,operation ,Audi toperationsCountInAggregatedRecord ,C
PM
PM
PM
PM
PM
PM
PM
Operati on
Mai 1 ItemsAccessed
Mai 1 ItemsAccessed
Mai 1 ItemsAccessed
Mai 1 ItemsAccessed
Mai 1 ItemsAccessed
Mai 1 ItemsAccessed
Mai 1 ItemsAccessed
Audi toperationsCountInAggregatedRecord Clientlnfostring
1/4/2019
1/4/2019
1/4/2019
1/4/2019
1/4/2019
1/4/2019
1/4/2019
2\.
2\.
2\.
2\.
2\.
2\.
2:46.
•45.
•45.
•45.
•45.
•44.
•44.
• 40
• 11
• 11
• 11
• 11
• 10
• 10
7
4
11
11
10
7
10
Cl i ent=OWA ; Acti on—Vi ap roxy
Client=webservi ces ; EWSEdi tor (Exchangeservi cesC1ient/O. 0.0. O) ;
Client=webservi ces ; EWSEdi tor (Exchangeservi cesC1ient/O. 0.0. O) ;
Client=webservi ces ; EWSEdi tor (Exchangeservi cesC1ient/O. 0.0. O) ;
Client=webservi ces ; EWSEdi tor (Exchangeservi cesC1ient/O. 0.0. O) ;
(Windows NT 10.0; WOW64; Trident/ 7 . O; Touch;
(Windows NT 10.0; WOW64; Trident/ 7 . O; Touch;
rv:11.O) like Gecko;
rv:11.O) like Gecko; ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image3.png)

If any of the properties below changes, a separate audit record will be created to track the new context. Accesses will be sorted into the separate audit records depending on the context under which the activity took place.

| Property                                                                                                                                    | Description                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Client IP                                                                                                                                   | IP address of the client machine.                                                                                                        |
| Parent Folder                                                                                                                               | Full folder path of the mail item.                                                                                                       |
| User                                                                                                                                        | UPN of the user reading the message.                                                                                                     |
| Logon\_type                                                                                                                                 | Whether the action is taken as an owner, delegate or admin.                                                                              |
| Mailbox UPN                                                                                                                                 | UPN of the mailbox housing the message being read.                                                                                       |
| [Session ID](https://blogs.technet.microsoft.com/exchange/2019/01/04/contextualizing-attacker-activity-within-sessions-in-exchange-online/) | Session ID helps to differentiate attacker actions vs day-to-day user activities on the same account (in the case of account compromise) |
| Client Info String                                                                                                                          | Describes protocol, client (includes version)                                                                                            |
| MailAccessType                                                                                                                              | Whether the access is a bind or a sync operation                                                                                         |


