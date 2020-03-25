---
title: "Create a sensitive information type policy for your organization using Office 365 Message Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 8/28/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
search.appverid:
- MET150
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- Strat_O365_Enterprise
description: "Summary: Office 365 Message Encryption policy for sensitive information types."
---

# Create a sensitive information type policy for your organization using Office 365 Message Encryption

You can use either Exchange mail flow rules or Office 365 Data Loss Prevention (DLP) to create a sensitive information type policy with Office 365 Message Encryption. To create an Exchange mail flow rule, you can use either the Exchange admin center (EAC) or PowerShell.

## To create the policy by using mail flow rules in the EAC

Sign in to the Exchange admin center (EAC) and go to **Mail flow** > **Rules**. On the Rules page, create a rule that applies Office 365 Message Encryption. You can create a rule based on conditions such as the presence of certain keywords or sensitive information types in the message or attachment.

### To create the policy by using mail flow rules in PowerShell

Use a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell). Use the Set-IRMConfiguration and New-TransportRule cmdlets to create the policy.

## Example mail flow rule created with PowerShell

Run the following commands in PowerShell to create an Exchange mail flow rule that automatically encrypts emails sent outside your organization with the *Encrypt-Only* policy if the emails or their attachments contain the following sensitive information types:

- ABA routing number
- Credit card Number
- Drug Enforcement Agency (DEA) number
- U.S. / U.K. passport number
- U.S. bank account number
- U.S. Individual Taxpayer Identification Number (ITIN)
- U.S. Social Security Number (SSN)

```powershell
Set-IRMConfiguration -DecryptAttachmentForEncryptOnly $true
New-TransportRule -Name "Encrypt outbound sensitive emails (out of box rule)" -SentToScope  NotInOrganization  -ApplyRightsProtectionTemplate "Encrypt" -MessageContainsDataClassifications @(@{Name="ABA Routing Number"; minCount="1"},@{Name="Credit Card Number"; minCount="1"},@{Name="Drug Enforcement Agency (DEA) Number"; minCount="1"},@{Name="U.S. / U.K. Passport Number"; minCount="1"},@{Name="U.S. Bank Account Number"; minCount="1"},@{Name="U.S. Individual Taxpayer Identification Number (ITIN)"; minCount="1"},@{Name="U.S. Social Security Number (SSN)"; minCount="1"}) -SenderNotificationType "NotifyOnly"
```

For more information, see [Set-IRMConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/set-irmconfiguration?view=exchange-ps) and [New-TransportRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/New-TransportRule?view=exchange-ps).

## How recipients access attachments

After Office 365 encrypts a message, recipients have unrestricted access to attachments when they access and open their encrypted email.

## To prepare for this change

You may want to update any applicable end-user documentation and training materials to prepare people in your organization for this change. Share these Office 365 Message Encryption resources with your users as appropriate:

- [Send, view, and reply to encrypted messages in Outlook for PC](https://support.office.com/article/eaa43495-9bbb-4fca-922a-df90dee51980)
- [Office 365 Essentials Video: Office Message Encryption](https://youtu.be/CQR0cG_iEUc)

## View these changes in the Audit log

Office 365 audits this activity and makes it available to Office 365 administrators. The operation is ‘New-TransportRule’ and a snippet of a sample audit entry from the Audit Log Search in Security & Compliance Center is below:

```text
*{"CreationTime":"2018-11-28T23:35:01","Id":"a1b2c3d4-daa0-4c4f-a019-03a1234a1b0c","Operation":"New-TransportRule","OrganizationId":"123456-221d-12345 ","RecordType":1,"ResultStatus":"True","UserKey":"Microsoft Operator","UserType":3,"Version":1,"Workload":"Exchange","ClientIP":"123.456.147.68:17584","ObjectId":"","UserId":"Microsoft Operator","ExternalAccess":true,"OrganizationName":"contoso.onmicrosoft.com","OriginatingServer":"CY4PR13MBXXXX (15.20.1382.008)","Parameters": {"Name":"Organization","Value":"123456-221d-12346"{"Name":"ApplyRightsProtectionTemplate","Value":"Encrypt"},{"Name":"Name","Value":"Encrypt outbound sensitive emails (out of box rule)"},{"Name":"MessageContainsDataClassifications”…etc.*
```

## To disable or customize the sensitive information types policy

Once you've created the Exchange mail flow rule, you can [disable or edit the rule](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/manage-mail-flow-rules#enable-or-disable-a-mail-flow-rule) by going to **Mail flow** > **Rules** in the Exchange admin center (EAC) and disable the rule “*Encrypt outbound sensitive emails (out of box rule)*”.
