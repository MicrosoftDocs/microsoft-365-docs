---
title: "Revoke email encrypted by Office 365 Advanced Message Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.date: 10/8/2019
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
description: "As an Office 365 administrator, you can revoke certain emails that were encrypted with Office 365 Advanced Message Encryption."
---

# Revoke email encrypted by Office 365 Advanced Message Encryption

Email revocation is offered as part of Office 365 Advanced Message Encryption. Office 365 Advanced Message Encryption is included in [Microsoft 365 Enterprise E5](https://www.microsoft.com/microsoft-365/enterprise/home), Office 365 E5, Microsoft 365 E5 (Nonprofit Staff Pricing), Office 365 Enterprise E5 (Nonprofit Staff Pricing), and Office 365 Education A5. If your organization has a subscription that does not include Office 365 Advanced Message Encryption, you can purchase it with the Microsoft 365 E5 Compliance SKU add-on for Microsoft 365 E3, Microsoft 365 E3 (Nonprofit Staff Pricing), or the Office 365 Advanced Compliance SKU add-on for Microsoft 365 E3, Microsoft 365 E3 (Nonprofit Staff Pricing), or Office 365 SKUs.

This article is part of a larger series of articles about [Office 365 Message Encryption](ome.md).

If a message was encrypted using Office 365 Advanced Message Encryption, and you are an Office 365 admin, you can do revoke the message under certain conditions. This article describes the circumstances under which revocation is possible and how to do it.
  
## Encrypted emails that you can revoke

You can revoke encrypted emails if the recipient received a link-based, branded encrypted email. If the recipient received a native inline experience in a supported Outlook client, then those emails cannot be revoked.

Whether a recipient receives a link-based experience or an inline experience depends on the recipient identity type: Office 365 and Microsoft Account recipients (for example, outlook.com users) get an inline experience in supported Outlook clients. All other recipient types, such as Gmail recipients, get a link-based experience.

## Recipient experience for revoked encrypted emails

Once an email has been revoked, the recipient receives an error when they access the encrypted email through the Office 365 Message Encryption portal: “The message has been revoked by the sender”.

![Screenshot that shows a revoked encrypted email.](../media/revoked-encrypted-email.png)

## How to revoke an encrypted email

### Step 1. Obtain the Message ID of the email

Before you can revoke an encrypted mail you gather the Message ID of the mail. The MessageId is usually of the format:

`<xxxxxxxxxxxxxxxxxxxxxxx@xxxxxx.xxxx.prod.outlook.com>`  

There are multiple ways to find the Message ID of the email that you want to revoke. This section describes a couple of options, but you can use any method that provides the ID.

#### To identify the Message ID of the email you want to revoke by using Message Trace in the Security &amp; Compliance Center

1. Search for the email by sender or recipient using [New Message Trace in Office 365 Security & Compliance Center](https://blogs.technet.microsoft.com/exchange/2018/05/02/new-message-trace-in-office-365-security-compliance-center/).

2. Once you've located the email, select it to bring up the **Message trace details** pane. Expand **More Information** to locate the Message ID.

#### To identify the Message ID of the email you want to revoke by using Office Message Encryption reports in the Security &amp; Compliance Center

1. In the Security &amp; Compliance Center, navigate to the **Message encryption report**. For information on this report, see [View email security reports in the Security &amp; Compliance Center](../security/office-365-security/view-email-security-reports.md).

2. Choose the **View details** table and identify the message that you want to revoke.

3. Double-click the message to view details that include the Message ID.

### Step 2. Verify that the mail is revocable

To verify whether you can revoke a message, check whether the Revocation Status field is visible in the Encryption report, in the **Details** table in the Security &amp; Compliance Center.

To verify whether you can revoke a particular email message by using Windows Powershell, complete these steps.

1. Using a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the Get-OMEMessageStatus cmdlet as follows:

     ```powershell
     Get-OMEMessageStatus -MessageId "<message id>" | ft -a  Subject, IsRevocable
     ```

   This returns the subject of the message and whether the message is revocable. For example,

     ```text
     Subject IsRevocable
     ------- -----------
     “Test message”  True
     ```

### Step 3. Revoke the mail

Once you know the Message ID of the email you want to revoke, and you have verified that the message is revocable, you can revoke the email using the Security &amp; Compliance Center or Windows Powershell.

To revoke the message using the Security &amp; Compliance Center

To revoke the email in the Security &amp; Compliance Center, in the Encryption report, in the **Details** table for the message, choose **Revoke message**.

You can revoke an email by using Windows Powershell by using the Set-OMEMessageRevocation cmdlet.

1. [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the Set-OMEMessageRevocation cmdlet as follows:

    ```powershell
    Set-OMEMessageRevocation -Revoke $true -MessageId "<messageId>"
    ```

3. To check whether the email was revoked, run the Get-OMEMessageStatus cmdlet as follows:

    ```powershell
    Get-OMEMessageStatus -MessageId "<messageId>" | ft -a  Subject, Revoked
    ```

    If revocation was successful, the cmdlet returns the following result:  

     ```text
     Revoked: True
     ```

## More information about Office 365 Advanced Message Encryption

- [Office 365 Advanced Message Encryption](ome-advanced-message-encryption.md)

- [Office 365 Advanced Message Encryption - email expiration](ome-advanced-expiration.md)

- [Message policy and compliance service description](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/message-policy-and-compliance)
