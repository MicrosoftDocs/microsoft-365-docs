---
title: "Office 365 Message Encryption FAQ"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 12/03/2019
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 0432dce9-d9b6-4e73-8a13-4a932eb0081e
description: "Have a question about how the new message protection capabilities in Office 365 work? Check for an answer here."
---

# Office 365 Message Encryption FAQ

Have a question about how the new message protection capabilities in Office 365 work? Check for an answer here. Also, take a look at [Frequently asked questions about data protection in Azure Information Protection](https://docs.microsoft.com/information-protection/get-started/faqs-rms) for answers to questions about the data protection service, Azure Rights Management, in Azure Information Protection.

## What is Office 365 Message Encryption (OME)?

OME combines email encryption and rights management capabilities. Rights management capabilities are powered by Azure Information Protection.
  
## Who can use OME?

You can use the new capabilities for OME under the following conditions:
  
- If you have never set up OME or IRM for Exchange Online in Office 365.

- If you have set up OME and IRM, you can use these steps if you are using the Azure Rights Management service from Azure Information Protection.

- If you are using Exchange Online with Active Directory Rights Management service (AD RMS), you can't enable these new capabilities right away. Instead, you need to [migrate AD RMS to Azure Information Protection](https://docs.microsoft.com/information-protection/plan-design/migrate-from-ad-rms-to-azure-rms) first. When you've finished the migration, you can successfully set up OME.

  If you choose to continue to use on-premises AD RMS with Exchange Online instead of migrating to Azure Information Protection, you will not be able to use these new capabilities.

## What subscriptions do I need to use the new OME capabilities?

To use the new OME capabilities, you need one of the following plans:
  
- Office 365 Message Encryption is offered as part of Office 365 Enterprise E3 and E5, Microsoft Enterprise E3 and E5, Microsoft 365 Business, Office 365 A1, A3, and A5, and Office 365 Government G3 and G5. Customers do not need additional licenses to receive the new protection capabilities powered by Azure Information Protection.

- You can also add Azure Information Protection Plan 1 to the following plans to receive the new Office 365 Message Encryption capabilities: Exchange Online Plan 1, Exchange Online Plan 2, Office 365 F1, Office 365 Business Essentials, Office 365 Business Premium, or Office 365 Enterprise E1.

- Each user benefiting from Office 365 Message Encryption needs to be licensed to be covered by the feature.

- For the full list see the [Exchange Online service descriptions](https://technet.microsoft.com/library/exchange-online-service-description.aspx) for Office 365 Message Encryption.

## Can I use Exchange Online with bring your own key (BYOK) in Azure Information Protection?

Yes! Microsoft recommends that you complete the steps to set up BYOK before you set up OME.
  
For more information about BYOK, see [Planning and implementing your Azure Information Protection tenant key](https://docs.microsoft.com/information-protection/plan-design/plan-implement-tenant-key).
  
## Do OME and BYOK with Azure Information Protection change Microsoft's approach to third-party data requests such as subpoenas?

No. OME and the option to provide and control your own encryption keys, called BYOK, from Azure Information Protection were not designed to respond to law enforcement subpoenas. OME, with BYOK for Azure Information Protection, was designed for compliance-focused customers. Microsoft takes third-party requests for customer data very seriously. As a cloud service provider, we always advocate for the privacy of customer data. In the event we get a subpoena, we always attempt to redirect the third party to the customer to obtain the information. (Please read Brad Smith's blog: [Protecting customer data from government snooping](https://blogs.microsoft.com/blog/2013/12/04/protecting-customer-data-from-government-snooping/)). We periodically publish detailed information of the request we receive. For more information regarding third-party data requests, see [Responding to government and law enforcement requests to access customer data](https://www.microsoft.com/trustcenter/privacy/govt-requests-for-data) on the Microsoft Trust Center. Also, see "Disclosure of Customer Data" in the [Online Services Terms (OST)](https://www.microsoft.com/Licensing/product-licensing/products.aspx).
  
## How is this feature related to legacy Office 365 Message Encryption (OME) and Information Rights Management (IRM) features?

The new capabilities for Office 365 Message Encryption are an evolution of the existing IRM and legacy OME solutions. The following table provides more details.
  
**Comparison of legacy OME, IRM, and new OME capabilities**

|**Capability**|**Previous versions of OME**|**IRM**|**New OME capabilities**|
|:-----|:-----|:-----|:-----|
|**Sending an encrypted email**|Only through Exchange mail flow rules|End-user initiated from Outlook for Windows, Outlook for Mac, or Outlook on the web; or through Exchange mail flow rules|End-user initiated from Outlook for Windows, Outlook for Mac, or Outlook on the web; or through mail flow rules|
|**Rights management**|-|Do Not Forward option and custom templates|Do Not Forward option, encrypt-only option, default and custom templates|
|**Supported recipient type**|External recipients only|Internal recipients only|Internal and external recipients|
|**Experience for recipient**|External recipients received an HTML message that they downloaded and opened in a browser or downloaded mobile app.|Internal recipients only received encrypted email in Outlook for Windows, Outlook for Mac, and Outlook on the web.|Internal and external recipients receive email in Outlook for Windows, Outlook for Mac, Outlook on the web, Outlook for Android, and Outlook for iOS, or through a web portal, regardless of whether or not they are in the same Office 365 organization or in any Office 365 organization. The OME portal requires no separate download.|
|**Bring Your Own Key support**|Not available|Not available| BYOK supported|

## How do I enable the new OME capabilities for my organization?

See [Set up new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md).
  
## Will the previous version of OME be deprecated?

You can still use the previous version of OME, it will not be deprecated at this time. However, we highly encourage organizations to use the new and improved OME solution. Customers that have not already deployed OME cannot set up a new deployment of the previous version of OME.
  
## My organization uses Active Directory Rights Management, can I use this functionality?

No. If you are using Exchange Online with Active Directory Rights Management service (AD RMS), you can't enable these new capabilities right away. Instead, you need to [migrate AD RMS to Azure Information Protection](https://docs.microsoft.com/information-protection/plan-design/migrate-from-ad-rms-to-azure-rms) first.
  
## My organization has an Exchange Hybrid deployment. Can I use this feature?

On-premises users can send encrypted mail using Exchange Online mail flow rules. In order to do this, you need to route email through Exchange Online. For more information, see [Part 2: Configure mail to flow from your email server to Office 365](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-to-route-mail#part-2-configure-mail-to-flow-from-your-email-server-to-office-365).
  
## What email client do I need to use in order to create an OME encrypted message? What applications are supported for sending protected messages?

You can create protected messages from Outlook 2016, and Outlook 2013 for Windows and Mac, and from Outlook on the web.
  
## What email clients are supported to read and reply to protected emails?

Office 365 users can read and respond from Outlook for Windows and Mac (2013 and 2016), Outlook on the web, and Outlook mobile (Android and iOS). You can also use the iOS native mail client if your organization allows it. If you are a non-Office 365 user, you can read and reply to encrypted messages on the web through your web browser.
  
## What file types are supported as attachments in protected emails? Do attachments inherit the protection policies associated with protected emails?

You can attach any file type to a protected mail, however protection policies are applied only on the file formats mentioned [here](https://docs.microsoft.com/information-protection/rms-client/client-admin-guide-file-types).
  
If a file format is supported, such as a Word, Excel, or PowerPoint file, the file is always protected, even after the attachment has been downloaded by the recipient. For example, if an attachment is protected by Do Not Forward, and the original recipient downloads and forwards the attachment to a new recipient, the new recipient will not be able to open the protected file.
  
## Are PDF file attachments supported?

Yes! You can enable encryption for PDF attachments for your Office 365 organizations. To enable encryption for PDF attachments, run the following command in [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell):

```powershell
Set-IRMConfiguration -EnablePdfEncryption $true
```

PDF encryption allows you to protect sensitive PDF documents through secure communication or secure collaboration. Messages inherit the OME protection of the data loss prevention (DLP) policy or mail flow rule in Exchange Online. If an Outlook or Outlook on the web user attaches an unprotected PDF attachment to a protected message, the message inherits the protection of the message. Users can only open the encrypted attachments in applications that support protected PDFs (for example, the OME Portal and the Azure Information Protection Viewer).
  
## Are OneDrive for Business attachments supported?

Not yet. OneDrive for Business attachments are not supported and end-users can't encrypt a mail that contains a cloud OneDrive for Business attachment.
  
## What email clients support preview of encrypted attachments in protected emails?

When attachments are protected with a protected mail, Outlook clients provide tha ability to preview the document directly. Outlook supports preview of Office documents (Docx, xlsx, pptx, doc, xls, ppt). Outlook on the web supports preview of Office documents (docx, xlsx, pptx) and PDF.  

## Can I automatically encrypt messages by setting up policies?

Yes. Use mail flow rules in Exchange Online to automatically encrypt a message based on certain conditions. For example, you can create policies that are based on recipient ID, recipient domain, or on the content in the body or subject of the message. See [Define mail flow rules to encrypt email messages in Office 365](define-mail-flow-rules-to-encrypt-email.md).
  
## Can I automatically remove encryption on incoming and outgoing mail?

Admins can set up a mail flow rule to remove encryption for outgoing mail. You can't set up a rule to remove encryption for incoming mail.

## Can I automatically encrypt messages by setting up policies in Data Loss Prevention (DLP) through the Security &amp; Compliance Center?

Yes! You can set up mail flow rules in Exchange Online or by using DLP in the Security &amp; Compliance Center.
  
## Can I customize encrypted messages with my company branding?

Yes! For information on customizing email messages and the OME portal, see Add your organization's brand to your encrypted messages. See [Add your organization's brand to your encrypted messages](add-your-organization-brand-to-encrypted-messages.md).
  
## Are there any reporting capabilities or insights for encrypted emails?

There is an Encryption report in the Security and Compliance Center. See [View email security reports in the Security & Compliance Center](../security/office-365-security/view-email-security-reports.md).
  
## Can I use message encryption with compliance features such as eDiscovery?

Yes. All encrypted email messages are discoverable by Office 365 compliance features.

## Can I remove encryption from email?

Admins can set up a mail flow rule to remove encryption from outgoing mail. You can't remove encryption using a mail flow rule from incoming messages.

## Is delegated access supported?

Not at this time.

## Can I open encrypted messages sent to a shared mailbox?

Yes! Encrypted messages are supported for a shared mailbox.

- Users can open protected mails in a shared mMailbox where the shared mailbox received a protected mail as part of a distribution group.

- Users can view attachments that inherit protection from email when they use Outlook for Windows, Outlook for Mac, and Outlook on the web.

The following table lists the supported clients for shared mailboxes.

| Platform | Read mail | View email attachments |
|----------|-----------|------------------------|
| Outlook on the web | Yes | Yes                |
| Outlook for Windows| Yes | Yes                |
| Outlook for Mac    | Yes | Yes                |
| Outlook for Android| Yes | No                 |
| Outlook for iOS    | Yes | No                 |
|

There are currently two known limitations:

- We only support access provided by direct user assignment to the shared mailbox. We don't support assignment through an email enabled security group.

- You can't open attachments to emails that you receive on mobile devices by using Outlook mobile.
