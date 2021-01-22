---
title: S/MIME for encryption in Exchange Online - Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: 887c710b-0ec6-4ff0-8065-5f05f74afef3
description: Admins can learn about using S/MIME (Secure/Multipurpose Internet Mail Extensions) in Exchange Online to encrypt emails and digitally sign them.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# S/MIME for message signing and encryption in Exchange Online

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


S/MIME (Secure/Multipurpose Internet Mail Extensions) is a widely accepted method (or more precisely, a protocol) for sending digitally signed and encrypted messages. S/MIME allows you to encrypt emails and digitally sign them. When you use S/MIME with an email message, it helps the people who receive that message to be certain that what they see in their inbox is the exact message that started with the sender. It will also help people who receive messages to be certain that the message came from the specific sender and not from someone pretending to be the sender. To do this, S/MIME provides for cryptographic security services such as authentication, message integrity, and non-repudiation of origin (using digital signatures). It also helps enhance privacy and data security (using encryption) for electronic messaging. For a more complete background about the history and architecture of S/MIME in the context of email, see [Understanding S/MIME](https://docs.microsoft.com/previous-versions/tn-archive/aa995740(v=exchg.65)).

As an Exchange Online admin, you can enable S/MIME-based security for the mailboxes in your organization. Use the guidance in the topics linked here along with Exchange Online PowerShell to set up S/MIME. To use S/MIME in supported email clients, the users in your organization must have certificates issued for signing and encryption purposes and data published to your on-premises Active Directory Domain Service (AD DS). Your AD DS must be located on computers at a physical location that you control and not at a remote facility or cloud-based service somewhere on the internet. For more information about AD DS, see [Active Directory Domain Services Overview](https://docs.microsoft.com/windows-server/identity/ad-ds/get-started/virtual-dc/active-directory-domain-services-overview).

## Supported scenarios and technical considerations

You can set up S/MIME to work with any of the following end points:

- Outlook 2010 or later
- Outlook on the web (formerly known as Outlook Web App)
- Exchange ActiveSync (EAS)

The steps that you follow to set up S/MIME with each of these end points is slightly different. Generally, you will need to do the following steps:

1. Install a Windows-based Certification Authority (CA) and set up a public key infrastructure to issue S/MIME certificates. Certificates issued by third-party certificate providers are also supported. For details, see [Active Directory Certificate Services Overview](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831740(v=ws.11)).

   **Notes**:

   - Certificates issued by a third-party CA have the advantage of being automatically trusted by all clients and devices. Certificates that are issued by an internal, private CA aren't automatically trusted by clients and devices, and not all devices (for example, phones) can be configured to trust private certificates.

   - Consider using an intermediate certificate instead of the root certificate to issue certificates to users. That way, if you ever need to revoke and reissue certificates, the root certificate is still intact.

2. Publish the user certificate in an on-premises AD DS account in the **UserSMIMECertificate** and/or **UserCertificate** attributes.

3. For Exchange Online organizations, synchronize the user certificates from AD DS to Azure Active Directory by using an appropriate version of Azure AD Connect. These certificates will then get synchronized from Azure Active Directory to Exchange Online directory and will be used when encrypting a message to a recipient.

4. Set up a virtual certificate collection in order to validate S/MIME. This information is used by Outlook on the web when validating the signature of an email and ensuring that it was signed by a trusted certificate.

5. Set up the Outlook or EAS end point to use S/MIME.

> [!NOTE]
> You can't install S/MIME control in Outlook on the web on Mac, iOS, Android, or other non-Windows devices. For more information, see [Encrypt messages by using S/MIME in Outlook on the web](https://support.microsoft.com/office/878c79fc-7088-4b39-966f-14512658f480).

## Set up S/MIME with Outlook on the web

Setting up S/MIME for Exchange Online with Outlook on the web involves the following key steps:

1. [Configure S/MIME settings for Outlook on the web](configure-s-mime-settings-for-outlook-web-app.md)
2. [Set up virtual certificate collection to validate S/MIME](set-up-virtual-certificate-collection-to-validate-s-mime.md)
3. [Sync user certificates to Office 365 for S/MIME](sync-user-certificates-to-office-365-for-s-mime.md)

## Related message encryption technologies

As message security becomes more important, admins need to understand the principles and concepts of secure messaging. This understanding is especially important because of the growing variety of protection-related technologies (including S/MIME) that are available. To understand more about S/MIME and how it works in context of email, see [Understanding S/MIME](https://docs.microsoft.com/previous-versions/tn-archive/aa995740(v=exchg.65)). A variety of encryption technologies work together to provide protection for messages at rest and in-transit. S/MIME can work simultaneously with the following technologies but is not dependent on them:

- **Transport Layer Security (TLS)** encrypts the tunnel or the route between email servers in order to help prevent snooping and eavesdropping.

- **Secure Sockets Layer (SSL)** encrypts the connection between email clients and Microsoft 365 servers.

- **BitLocker** encrypts the data on a hard drive in a datacenter so that if someone gets unauthorized access, they can't read it.

### S/MIME compared with Office 365 Message Encryption

S/MIME requires a certificate and publishing infrastructure that is often used in business-to-business and business-to-consumer situations. The user controls the cryptographic keys in S/MIME and can choose whether to use them for each message they send. Email programs such as Outlook search a trusted root certificate authority location to perform digital signing and verification of the signature. Office 365 Message Encryption is a policy-based encryption service that can be configured by an administrator, and not an individual user, to encrypt mail sent to anyone inside or outside of the organization. It's an online service that's built on Azure Rights Management (RMS) and does not rely on a public key infrastructure. Office 365 Message Encryption also provides additional capabilities, such as the capability to customize the mail with organization's brand. For more information about Office 365 Message Encryption, see [Encryption in Office 365](https://docs.microsoft.com/microsoft-365/compliance/encryption).

## More information

[Outlook on the web](https://docs.microsoft.com/exchange/exchange-admin-center)

[Secure Mail (2000)](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-2000-server/cc962043(v=technet.10))
